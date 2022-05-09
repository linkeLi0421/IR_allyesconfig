; ModuleID = '/llk/IR_all_yes/drivers/net/can/usb/gs_usb.c_pt.bc'
source_filename = "../drivers/net/can/usb/gs_usb.c"
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.gs_device_config = type { i8, i8, i8, i8, i32, i32 }
%struct.gs_usb = type { [2 x ptr], %struct.usb_anchor, ptr, i8 }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.gs_device_bt_const = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_can = type { %struct.can_priv, ptr, ptr, ptr, ptr, %struct.can_bittiming_const, i32, %struct.spinlock, [10 x %struct.gs_tx_context], %struct.usb_anchor, %struct.atomic_t }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_tx_context = type { ptr, i32 }
%struct.gs_device_bittiming = type { i32, i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.gs_device_mode = type { i32, i32 }
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
%struct.gs_host_frame = type { i32, i32, i8, i8, i8, i8, [8 x i8] }

@__initcall__kmod_gs_usb__464_1052_gs_usb_driver_init6 = internal global ptr @gs_usb_driver_init, section ".initcall6.init", align 4
@gs_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @gs_usb_probe, ptr @gs_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gs_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_gs_usb_driver_exit = internal global ptr @gs_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author465 = internal constant [59 x i8] c"gs_usb.author=Maximilian Schneider <mws@schneidersoft.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description466 = internal constant [190 x i8] c"gs_usb.description=Socket CAN device driver for Geschwister Schneider Technologie-, Entwicklungs- und Vertriebs UG. USB2.0 to CAN interfaces\0Aand bytewerk.org candleLight USB CAN interfaces.\00", section ".modinfo", align 1
@__UNIQUE_ID_file467 = internal constant [39 x i8] c"gs_usb.file=drivers/net/can/usb/gs_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license468 = internal constant [22 x i8] c"gs_usb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gs_usb\00", [25 x i8] zeroinitializer }, align 32
@gs_usb_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 1027, i16 7504, i16 24687, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 1027, i16 4617, i16 8995, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gs_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 945, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Couldn't send data format (err=%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gs_usb_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/can/usb/gs_usb.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gs_usb_probe._entry_ptr = internal global ptr @gs_usb_probe._entry, section ".printk_index", align 4
@gs_usb_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 965, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Couldn't get device config: (err=%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@gs_usb_probe._entry_ptr.8 = internal global ptr @gs_usb_probe._entry.6, section ".printk_index", align 4
@gs_usb_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 971, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Configuring for %u interfaces\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gs_usb_probe._entry_ptr.12 = internal global ptr @gs_usb_probe._entry.9, section ".printk_index", align 4
@gs_usb_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 976, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Driver cannot handle more that %u CAN interfaces\0A\00", [46 x i8] zeroinitializer }, align 32
@gs_usb_probe._entry_ptr.15 = internal global ptr @gs_usb_probe._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@gs_make_candev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 826, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Couldn't get bit timing const for channel (err=%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gs_make_candev\00", [17 x i8] zeroinitializer }, align 32
@gs_make_candev._entry_ptr = internal global ptr @gs_make_candev._entry, section ".printk_index", align 4
@gs_make_candev._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 834, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Couldn't allocate candev\0A\00", [38 x i8] zeroinitializer }, align 32
@gs_make_candev._entry_ptr.23 = internal global ptr @gs_make_candev._entry.21, section ".printk_index", align 4
@gs_usb_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @gs_can_open, ptr @gs_can_close, ptr @gs_can_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@gs_make_candev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&dev->tx_ctx_lock\00", [46 x i8] zeroinitializer }, align 32
@gs_usb_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gs_usb_set_phys_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@gs_make_candev._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.3, i32 901, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't register candev (err=%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@gs_make_candev._entry_ptr.27 = internal global ptr @gs_make_candev._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No memory left for USB buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"usb_submit failed (err=%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't start device (err=%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unexpected out of range echo id %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unexpected unused echo id %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't shutdown device (err=%d)\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid tx context %u\0A\00", [41 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb xmit fail %u\0A\00", [46 x i8] zeroinitializer }, align 32
@gs_usb_set_bittiming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 449, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't set bittimings (err=%d)\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gs_usb_set_bittiming\00", [43 x i8] zeroinitializer }, align 32
@gs_usb_set_bittiming._entry_ptr = internal global ptr @gs_usb_set_bittiming._entry, section ".printk_index", align 4
@gs_usb_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 1023, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Disconnect (nodata)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gs_usb_disconnect\00", [46 x i8] zeroinitializer }, align 32
@gs_usb_disconnect._entry_ptr = internal global ptr @gs_usb_disconnect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"gs_usb_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1045, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1052, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"gs_usb_table\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1035, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 944, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 964, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 971, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 974, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1367, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1368, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 824, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 834, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [18 x i8] c"gs_usb_netdev_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 734, i32 36 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 863, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [19 x i8] c"gs_usb_ethtool_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 794, i32 33 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 901, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 609, i32 9 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 633, i32 9 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 684, i32 22 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 355, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 365, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 720, i32 23 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 504, i32 22 }
@___asan_gen_.158 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 104, i32 6 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 461, i32 23 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 448, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private constant [32 x i8] c"../drivers/net/can/usb/gs_usb.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1023, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author465, ptr @__UNIQUE_ID_description466, ptr @__UNIQUE_ID_file467, ptr @__UNIQUE_ID_license468, ptr @__exitcall_gs_usb_driver_exit, ptr @__initcall__kmod_gs_usb__464_1052_gs_usb_driver_init6, ptr @gs_make_candev._entry, ptr @gs_make_candev._entry.21, ptr @gs_make_candev._entry.25, ptr @gs_make_candev._entry_ptr, ptr @gs_make_candev._entry_ptr.23, ptr @gs_make_candev._entry_ptr.27, ptr @gs_usb_disconnect._entry, ptr @gs_usb_disconnect._entry_ptr, ptr @gs_usb_driver_exit, ptr @gs_usb_probe._entry, ptr @gs_usb_probe._entry.13, ptr @gs_usb_probe._entry.6, ptr @gs_usb_probe._entry.9, ptr @gs_usb_probe._entry_ptr, ptr @gs_usb_probe._entry_ptr.12, ptr @gs_usb_probe._entry_ptr.15, ptr @gs_usb_probe._entry_ptr.8, ptr @gs_usb_set_bittiming._entry, ptr @gs_usb_set_bittiming._entry_ptr, ptr @gs_usb_driver, ptr @.str, ptr @gs_usb_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @init_usb_anchor.__key, ptr @.str.16, ptr @init_usb_anchor.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @gs_usb_netdev_ops, ptr @gs_make_candev.__key, ptr @.str.24, ptr @gs_usb_ethtool_ops, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_usb_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_usb_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_usb_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_usb_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_make_candev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_make_candev._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_usb_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_make_candev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_usb_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_make_candev._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_usb_set_bittiming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_usb_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @gs_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gs_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @gs_usb_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -272760832, ptr %call7.i, align 8
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %5, 8
  %or = or i32 %shl.i, -2147483648
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %6 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %9 to i16
  %call4 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext %conv, ptr noundef nonnull %call7.i, i16 noundef zeroext 4, i32 noundef 1000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev7 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.1, i32 noundef %call4) #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i131 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 12) #13
  %tobool10.not = icmp eq ptr %call7.i131, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 8
  %add.ptr.i135 = getelementptr i8, ptr %12, i32 -128
  %13 = ptrtoint ptr %add.ptr.i135 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i135, align 8
  %shl.i138 = shl i32 %14, 8
  %or17 = or i32 %shl.i138, -2147483520
  %15 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber20 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %bInterfaceNumber20 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bInterfaceNumber20, align 2
  %conv21 = zext i8 %18 to i16
  %call22 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i135, i32 noundef %or17, i8 noundef zeroext 5, i8 noundef zeroext -63, i16 noundef zeroext 1, i16 noundef zeroext %conv21, ptr noundef nonnull %call7.i131, i16 noundef zeroext 12, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end28, label %if.end30

do.end28:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %dev29 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.7, i32 noundef %call22) #14
  tail call void @kfree(ptr noundef nonnull %call7.i131) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end12
  %icount31 = getelementptr inbounds %struct.gs_device_config, ptr %call7.i131, i32 0, i32 3
  %19 = ptrtoint ptr %icount31 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %icount31, align 1
  %conv32 = zext i8 %20 to i32
  %add = add nuw nsw i32 %conv32, 1
  %dev36 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev36, ptr noundef nonnull @.str.10, i32 noundef %add) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp37 = icmp ugt i8 %20, 1
  br i1 %cmp37, label %do.end42, label %if.end44

do.end42:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.14, i32 noundef 2) #14
  tail call void @kfree(ptr noundef nonnull %call7.i131) #10
  br label %cleanup

if.end44:                                         ; preds = %if.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 128) #13
  %tobool46.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool46.not, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i131) #10
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %rx_submitted = getelementptr inbounds %struct.gs_usb, ptr %call7.i.i, i32 0, i32 1
  tail call fastcc void @init_usb_anchor(ptr noundef %rx_submitted)
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %23 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent.i, align 8
  %add.ptr.i140 = getelementptr i8, ptr %24, i32 -128
  %udev = getelementptr inbounds %struct.gs_usb, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i140, ptr %udev, align 8
  %sw_version.i = getelementptr inbounds %struct.gs_device_config, ptr %call7.i131, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end67.for.body_crit_edge, %if.end48
  %i.0159 = phi i32 [ 0, %if.end48 ], [ %inc71, %if.end67.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i141 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 40) #13
  %tobool.not.i = icmp eq ptr %call7.i.i141, null
  br i1 %tobool.not.i, label %for.body.gs_make_candev.exit.thread_crit_edge, label %if.end.i

for.body.gs_make_candev.exit.thread_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_make_candev.exit.thread

if.end.i:                                         ; preds = %for.body
  %27 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 -128
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.i = shl i32 %30, 8
  %or5.i = or i32 %shl.i.i, -2147483520
  %conv.i = trunc i32 %i.0159 to i16
  %call6.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i.i, i32 noundef %or5.i, i8 noundef zeroext 4, i8 noundef zeroext -63, i16 noundef zeroext %conv.i, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i141, i16 noundef zeroext 40, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end11.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.19, i32 noundef %call6.i) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i141) #10
  %31 = inttoptr i32 %call6.i to ptr
  br label %gs_make_candev.exit

if.end11.i:                                       ; preds = %if.end.i
  %call12.i = tail call ptr @alloc_candev_mqs(i32 noundef 620, i32 noundef 10, i32 noundef 1, i32 noundef 1) #10
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %do.end17.i, label %if.end20.i

do.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.22) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i141) #10
  br label %gs_make_candev.exit.thread

if.end20.i:                                       ; preds = %if.end11.i
  %add.ptr.i185.i = getelementptr i8, ptr %call12.i, i32 2304
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call12.i, i32 0, i32 16
  %32 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @gs_usb_netdev_ops, ptr %netdev_ops.i, align 8
  %flags.i = getelementptr inbounds %struct.net_device, ptr %call12.i, i32 0, i32 14
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 8
  %or22.i = or i32 %34, 262144
  store i32 %or22.i, ptr %flags.i, align 8
  %bt_const23.i = getelementptr i8, ptr %call12.i, i32 2632
  %35 = call ptr @memcpy(ptr %bt_const23.i, ptr @.str, i32 7)
  %tseg1_min.i = getelementptr inbounds %struct.gs_device_bt_const, ptr %call7.i.i141, i32 0, i32 2
  %36 = ptrtoint ptr %tseg1_min.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tseg1_min.i, align 8
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #10
  %tseg1_min26.i = getelementptr i8, ptr %call12.i, i32 2648
  %39 = ptrtoint ptr %tseg1_min26.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %tseg1_min26.i, align 4
  %tseg1_max.i = getelementptr inbounds %struct.gs_device_bt_const, ptr %call7.i.i141, i32 0, i32 3
  %40 = ptrtoint ptr %tseg1_max.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tseg1_max.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #10
  %tseg1_max28.i = getelementptr i8, ptr %call12.i, i32 2652
  %43 = ptrtoint ptr %tseg1_max28.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %tseg1_max28.i, align 4
  %tseg2_min.i = getelementptr inbounds %struct.gs_device_bt_const, ptr %call7.i.i141, i32 0, i32 4
  %44 = ptrtoint ptr %tseg2_min.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tseg2_min.i, align 8
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #10
  %tseg2_min30.i = getelementptr i8, ptr %call12.i, i32 2656
  %47 = ptrtoint ptr %tseg2_min30.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %tseg2_min30.i, align 4
  %tseg2_max.i = getelementptr inbounds %struct.gs_device_bt_const, ptr %call7.i.i141, i32 0, i32 5
  %48 = ptrtoint ptr %tseg2_max.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tseg2_max.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #10
  %tseg2_max32.i = getelementptr i8, ptr %call12.i, i32 2660
  %51 = ptrtoint ptr %tseg2_max32.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %tseg2_max32.i, align 4
  %sjw_max.i = getelementptr inbounds %struct.gs_device_bt_const, ptr %call7.i.i141, i32 0, i32 6
  %52 = ptrtoint ptr %sjw_max.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sjw_max.i, align 8
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #10
  %sjw_max34.i = getelementptr i8, ptr %call12.i, i32 2664
  %55 = ptrtoint ptr %sjw_max34.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %sjw_max34.i, align 4
  %brp_min.i = getelementptr inbounds %struct.gs_device_bt_const, ptr %call7.i.i141, i32 0, i32 7
  %56 = ptrtoint ptr %brp_min.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %brp_min.i, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #10
  %brp_min36.i = getelementptr i8, ptr %call12.i, i32 2668
  %59 = ptrtoint ptr %brp_min36.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %brp_min36.i, align 4
  %brp_max.i = getelementptr inbounds %struct.gs_device_bt_const, ptr %call7.i.i141, i32 0, i32 8
  %60 = ptrtoint ptr %brp_max.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %brp_max.i, align 8
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #10
  %brp_max38.i = getelementptr i8, ptr %call12.i, i32 2672
  %63 = ptrtoint ptr %brp_max38.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %brp_max38.i, align 4
  %brp_inc.i = getelementptr inbounds %struct.gs_device_bt_const, ptr %call7.i.i141, i32 0, i32 9
  %64 = ptrtoint ptr %brp_inc.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %brp_inc.i, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #10
  %brp_inc40.i = getelementptr i8, ptr %call12.i, i32 2676
  %67 = ptrtoint ptr %brp_inc40.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %brp_inc40.i, align 4
  %68 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %parent.i, align 8
  %add.ptr.i187.i = getelementptr i8, ptr %69, i32 -128
  %udev.i = getelementptr i8, ptr %call12.i, i32 2624
  %70 = ptrtoint ptr %udev.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr.i187.i, ptr %udev.i, align 4
  %iface.i = getelementptr i8, ptr %call12.i, i32 2628
  %71 = ptrtoint ptr %iface.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %intf, ptr %iface.i, align 4
  %netdev42.i = getelementptr i8, ptr %call12.i, i32 2620
  %72 = ptrtoint ptr %netdev42.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call12.i, ptr %netdev42.i, align 4
  %channel43.i = getelementptr i8, ptr %call12.i, i32 2680
  %73 = ptrtoint ptr %channel43.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %i.0159, ptr %channel43.i, align 4
  %tx_submitted.i = getelementptr i8, ptr %call12.i, i32 2808
  %74 = getelementptr i8, ptr %call12.i, i32 2816
  %75 = call ptr @memset(ptr %74, i32 0, i32 104)
  %76 = ptrtoint ptr %tx_submitted.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %tx_submitted.i, ptr %tx_submitted.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %call12.i, i32 2812
  %77 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %tx_submitted.i, ptr %prev.i.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %74, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_usb_anchor.__key) #10
  %lock.i.i = getelementptr i8, ptr %call12.i, i32 2868
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_usb_anchor.__key.17, i16 noundef signext 3) #10
  %active_tx_urbs.i = getelementptr i8, ptr %call12.i, i32 2920
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_urbs.i, i32 noundef 4) #10
  %78 = ptrtoint ptr %active_tx_urbs.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile i32 0, ptr %active_tx_urbs.i, align 4
  %tx_ctx_lock.i = getelementptr i8, ptr %call12.i, i32 2684
  tail call void @__raw_spin_lock_init(ptr noundef %tx_ctx_lock.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @gs_make_candev.__key, i16 noundef signext 3) #10
  %arrayidx.i = getelementptr i8, ptr %call12.i, i32 2728
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %add.ptr.i185.i, ptr %arrayidx.i, align 4
  %echo_id.i = getelementptr i8, ptr %call12.i, i32 2732
  %80 = ptrtoint ptr %echo_id.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 10, ptr %echo_id.i, align 4
  %arrayidx.1.i = getelementptr i8, ptr %call12.i, i32 2736
  %81 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %add.ptr.i185.i, ptr %arrayidx.1.i, align 4
  %echo_id.1.i = getelementptr i8, ptr %call12.i, i32 2740
  %82 = ptrtoint ptr %echo_id.1.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 10, ptr %echo_id.1.i, align 4
  %arrayidx.2.i = getelementptr i8, ptr %call12.i, i32 2744
  %83 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %add.ptr.i185.i, ptr %arrayidx.2.i, align 4
  %echo_id.2.i = getelementptr i8, ptr %call12.i, i32 2748
  %84 = ptrtoint ptr %echo_id.2.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 10, ptr %echo_id.2.i, align 4
  %arrayidx.3.i = getelementptr i8, ptr %call12.i, i32 2752
  %85 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %add.ptr.i185.i, ptr %arrayidx.3.i, align 4
  %echo_id.3.i = getelementptr i8, ptr %call12.i, i32 2756
  %86 = ptrtoint ptr %echo_id.3.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 10, ptr %echo_id.3.i, align 4
  %arrayidx.4.i = getelementptr i8, ptr %call12.i, i32 2760
  %87 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %add.ptr.i185.i, ptr %arrayidx.4.i, align 4
  %echo_id.4.i = getelementptr i8, ptr %call12.i, i32 2764
  %88 = ptrtoint ptr %echo_id.4.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 10, ptr %echo_id.4.i, align 4
  %arrayidx.5.i = getelementptr i8, ptr %call12.i, i32 2768
  %89 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %add.ptr.i185.i, ptr %arrayidx.5.i, align 4
  %echo_id.5.i = getelementptr i8, ptr %call12.i, i32 2772
  %90 = ptrtoint ptr %echo_id.5.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 10, ptr %echo_id.5.i, align 4
  %arrayidx.6.i = getelementptr i8, ptr %call12.i, i32 2776
  %91 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %add.ptr.i185.i, ptr %arrayidx.6.i, align 4
  %echo_id.6.i = getelementptr i8, ptr %call12.i, i32 2780
  %92 = ptrtoint ptr %echo_id.6.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 10, ptr %echo_id.6.i, align 4
  %arrayidx.7.i = getelementptr i8, ptr %call12.i, i32 2784
  %93 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %add.ptr.i185.i, ptr %arrayidx.7.i, align 4
  %echo_id.7.i = getelementptr i8, ptr %call12.i, i32 2788
  %94 = ptrtoint ptr %echo_id.7.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 10, ptr %echo_id.7.i, align 4
  %arrayidx.8.i = getelementptr i8, ptr %call12.i, i32 2792
  %95 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %add.ptr.i185.i, ptr %arrayidx.8.i, align 4
  %echo_id.8.i = getelementptr i8, ptr %call12.i, i32 2796
  %96 = ptrtoint ptr %echo_id.8.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 10, ptr %echo_id.8.i, align 4
  %arrayidx.9.i = getelementptr i8, ptr %call12.i, i32 2800
  %97 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %add.ptr.i185.i, ptr %arrayidx.9.i, align 4
  %echo_id.9.i = getelementptr i8, ptr %call12.i, i32 2804
  %98 = ptrtoint ptr %echo_id.9.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 10, ptr %echo_id.9.i, align 4
  %state.i = getelementptr i8, ptr %call12.i, i32 2472
  %99 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 4, ptr %state.i, align 4
  %fclk_can.i = getelementptr inbounds %struct.gs_device_bt_const, ptr %call7.i.i141, i32 0, i32 1
  %100 = ptrtoint ptr %fclk_can.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %fclk_can.i, align 4
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #10
  %clock.i = getelementptr i8, ptr %call12.i, i32 2440
  %103 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %clock.i, align 4
  %bittiming_const.i = getelementptr i8, ptr %call12.i, i32 2332
  %104 = ptrtoint ptr %bittiming_const.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %bt_const23.i, ptr %bittiming_const.i, align 4
  %do_set_bittiming.i = getelementptr i8, ptr %call12.i, i32 2588
  %105 = ptrtoint ptr %do_set_bittiming.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @gs_usb_set_bittiming, ptr %do_set_bittiming.i, align 4
  %ctrlmode_supported.i = getelementptr i8, ptr %call12.i, i32 2480
  %106 = ptrtoint ptr %ctrlmode_supported.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 256, ptr %ctrlmode_supported.i, align 4
  %107 = ptrtoint ptr %call7.i.i141 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %call7.i.i141, align 8
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #10
  %and.i = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool59.not.i = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool59.not.i, i32 256, i32 258
  %and65.i = lshr i32 %109, 1
  %110 = and i32 %and65.i, 1
  %111 = or i32 %spec.store.select.i, %110
  %and72.i = and i32 %109, 4
  %112 = or i32 %and72.i, %111
  %113 = ptrtoint ptr %ctrlmode_supported.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %ctrlmode_supported.i, align 4
  %and79.i = and i32 %109, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.end20.i.if.end85.i_crit_edge, label %if.then81.i

if.end20.i.if.end85.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85.i

if.then81.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %ctrlmode_supported.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ctrlmode_supported.i, align 4
  %or84.i = or i32 %115, 8
  store i32 %or84.i, ptr %ctrlmode_supported.i, align 4
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then81.i, %if.end20.i.if.end85.i_crit_edge
  %parent.i142 = getelementptr inbounds %struct.net_device, ptr %call12.i, i32 0, i32 133, i32 1
  %116 = ptrtoint ptr %parent.i142 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %dev36, ptr %parent.i142, align 8
  %117 = ptrtoint ptr %sw_version.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %sw_version.i, align 4
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %119)
  %cmp88.i = icmp ult i32 %119, 2
  %and91.i = and i32 %109, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  %or.cond.i = select i1 %cmp88.i, i1 true, i1 %tobool92.not.i
  br i1 %or.cond.i, label %if.end85.i.if.end95.i_crit_edge, label %if.then93.i

if.end85.i.if.end95.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95.i

if.then93.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %call12.i, i32 0, i32 44
  %120 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @gs_usb_ethtool_ops, ptr %ethtool_ops.i, align 16
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then93.i, %if.end85.i.if.end95.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i141) #10
  %121 = ptrtoint ptr %netdev42.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %netdev42.i, align 4
  %call97.i = tail call i32 @register_candev(ptr noundef %122) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.i)
  %tobool98.not.i = icmp eq i32 %call97.i, 0
  br i1 %tobool98.not.i, label %if.end95.i.gs_make_candev.exit_crit_edge, label %if.then99.i

if.end95.i.gs_make_candev.exit_crit_edge:         ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_make_candev.exit

if.then99.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %netdev42.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %netdev42.i, align 4
  tail call void @free_candev(ptr noundef %124) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.26, i32 noundef %call97.i) #14
  %125 = inttoptr i32 %call97.i to ptr
  br label %gs_make_candev.exit

gs_make_candev.exit.thread:                       ; preds = %do.end17.i, %for.body.gs_make_candev.exit.thread_crit_edge
  %arrayidx147 = getelementptr [2 x ptr], ptr %call7.i.i, i32 0, i32 %i.0159
  %126 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr inttoptr (i32 -12 to ptr), ptr %arrayidx147, align 4
  br label %if.then56

gs_make_candev.exit:                              ; preds = %if.then99.i, %if.end95.i.gs_make_candev.exit_crit_edge, %do.end.i
  %retval.0.i = phi ptr [ %31, %do.end.i ], [ %125, %if.then99.i ], [ %add.ptr.i185.i, %if.end95.i.gs_make_candev.exit_crit_edge ]
  %arrayidx = getelementptr [2 x ptr], ptr %call7.i.i, i32 0, i32 %i.0159
  %127 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %retval.0.i, ptr %arrayidx, align 4
  %tobool.not.i143 = icmp eq ptr %retval.0.i, null
  %cmp.i144 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i143, %cmp.i144
  br i1 %spec.select.i, label %gs_make_candev.exit.if.then56_crit_edge, label %if.end67

gs_make_candev.exit.if.then56_crit_edge:          ; preds = %gs_make_candev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56

if.then56:                                        ; preds = %gs_make_candev.exit.if.then56_crit_edge, %gs_make_candev.exit.thread
  %retval.0.i151 = phi ptr [ inttoptr (i32 -12 to ptr), %gs_make_candev.exit.thread ], [ %retval.0.i, %gs_make_candev.exit.if.then56_crit_edge ]
  %128 = ptrtoint ptr %retval.0.i151 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0159)
  %cmp61160.not = icmp eq i32 %i.0159, 0
  br i1 %cmp61160.not, label %if.then56.for.end_crit_edge, label %for.body63.lr.ph

if.then56.for.end_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body63.lr.ph:                                 ; preds = %if.then56
  %cmp61.not = icmp eq i32 %i.0159, 1
  br label %for.body63

for.body63:                                       ; preds = %for.body63.for.body63_crit_edge, %for.body63.lr.ph
  %129 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %call7.i.i, align 8
  %netdev.i = getelementptr inbounds %struct.gs_can, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %netdev.i, align 4
  tail call void @unregister_candev(ptr noundef %132) #10
  %tx_submitted.i145 = getelementptr inbounds %struct.gs_can, ptr %130, i32 0, i32 9
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_submitted.i145) #10
  %133 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %netdev.i, align 4
  tail call void @free_candev(ptr noundef %134) #10
  br i1 %cmp61.not, label %for.body63.for.end_crit_edge, label %for.body63.for.body63_crit_edge

for.body63.for.body63_crit_edge:                  ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body63

for.body63.for.end_crit_edge:                     ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body63.for.end_crit_edge, %if.then56.for.end_crit_edge
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted) #10
  tail call void @kfree(ptr noundef nonnull %call7.i131) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end67:                                         ; preds = %gs_make_candev.exit
  %parent = getelementptr inbounds %struct.gs_can, ptr %retval.0.i, i32 0, i32 1
  %135 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call7.i.i, ptr %parent, align 4
  %inc71 = add nuw nsw i32 %i.0159, 1
  %exitcond = icmp eq i32 %i.0159, %conv32
  br i1 %exitcond, label %for.end72, label %if.end67.for.body_crit_edge

if.end67.for.body_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end72:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i131) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end72, %for.end, %if.then47, %do.end42, %do.end28, %if.end8.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call22, %do.end28 ], [ -22, %do.end42 ], [ %128, %for.end ], [ 0, %for.end72 ], [ -12, %if.then47 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gs_usb_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %for.body.preheader.for.inc_crit_edge, label %if.then3

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39) #14
  br label %cleanup

if.then3:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %netdev.i = getelementptr inbounds %struct.gs_can, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev.i, align 4
  tail call void @unregister_candev(ptr noundef %5) #10
  %tx_submitted.i = getelementptr inbounds %struct.gs_can, ptr %3, i32 0, i32 9
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_submitted.i) #10
  %6 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev.i, align 4
  tail call void @free_candev(ptr noundef %7) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr [2 x ptr], ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool2.not.1 = icmp eq ptr %9, null
  br i1 %tobool2.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then3.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then3.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %netdev.i.1 = getelementptr inbounds %struct.gs_can, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %netdev.i.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev.i.1, align 4
  tail call void @unregister_candev(ptr noundef %11) #10
  %tx_submitted.i.1 = getelementptr inbounds %struct.gs_can, ptr %9, i32 0, i32 9
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_submitted.i.1) #10
  %12 = ptrtoint ptr %netdev.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev.i.1, align 4
  tail call void @free_candev(ptr noundef %13) #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then3.1, %for.inc.for.inc.1_crit_edge
  %rx_submitted = getelementptr inbounds %struct.gs_usb, ptr %1, i32 0, i32 1
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.1, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_usb_anchor(ptr noundef %anchor) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_usb_anchor.__key) #10
  %lock = getelementptr inbounds %struct.usb_anchor, ptr %anchor, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_usb_anchor.__key.17, i16 noundef signext 3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_usb_set_bittiming(ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iface = getelementptr i8, ptr %netdev, i32 2628
  %0 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iface, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 20) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %prop_seg = getelementptr i8, ptr %netdev, i32 2352
  %3 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prop_seg, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %call7.i, align 8
  %phase_seg1 = getelementptr i8, ptr %netdev, i32 2356
  %7 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phase_seg1, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %phase_seg13 = getelementptr inbounds %struct.gs_device_bittiming, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %phase_seg13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %phase_seg13, align 4
  %phase_seg2 = getelementptr i8, ptr %netdev, i32 2360
  %11 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phase_seg2, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %phase_seg24 = getelementptr inbounds %struct.gs_device_bittiming, ptr %call7.i, i32 0, i32 2
  %14 = ptrtoint ptr %phase_seg24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %phase_seg24, align 8
  %sjw = getelementptr i8, ptr %netdev, i32 2364
  %15 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sjw, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %sjw5 = getelementptr inbounds %struct.gs_device_bittiming, ptr %call7.i, i32 0, i32 3
  %18 = ptrtoint ptr %sjw5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %sjw5, align 4
  %brp = getelementptr i8, ptr %netdev, i32 2368
  %19 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %brp, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %brp6 = getelementptr inbounds %struct.gs_device_bittiming, ptr %call7.i, i32 0, i32 4
  %22 = ptrtoint ptr %brp6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %brp6, align 8
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent.i, align 8
  %add.ptr.i39 = getelementptr i8, ptr %24, i32 -128
  %25 = ptrtoint ptr %add.ptr.i39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i39, align 8
  %shl.i = shl i32 %26, 8
  %or = or i32 %shl.i, -2147483648
  %channel = getelementptr i8, ptr %netdev, i32 2680
  %27 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channel, align 4
  %conv = trunc i32 %28 to i16
  %call10 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i39, i32 noundef %or, i8 noundef zeroext 1, i8 noundef zeroext 65, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 20, i32 noundef 1000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %parent = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133, i32 1
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.37, i32 noundef %call10) #14
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.end.if.end14_crit_edge
  %31 = tail call i32 @llvm.smin.i32(i32 %call10, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %31, %if.end14 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_can_open(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr i8, ptr %netdev, i32 2616
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 4
  %call2 = tail call i32 @open_candev(ptr noundef %netdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup72_crit_edge

entry.cleanup72_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

if.end:                                           ; preds = %entry
  %active_channels = getelementptr inbounds %struct.gs_usb, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %active_channels to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %for.cond.preheader, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

for.cond.preheader:                               ; preds = %if.end
  %udev = getelementptr i8, ptr %netdev, i32 2624
  %rx_submitted = getelementptr inbounds %struct.gs_usb, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0141 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %call5 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %for.body.cleanup72_crit_edge, label %if.end8

for.body.cleanup72_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

if.end8:                                          ; preds = %for.body
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 15
  %call9 = tail call ptr @usb_alloc_coherent(ptr noundef %5, i32 noundef 20, i32 noundef 3264, ptr noundef %transfer_dma) #10
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.28) #14
  tail call void @usb_free_urb(ptr noundef nonnull %call5) #10
  br label %cleanup72

if.end12:                                         ; preds = %if.end8
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i = shl i32 %9, 8
  %or16 = or i32 %shl.i, -1073708928
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 8
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 10
  %11 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or16, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 14
  %12 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 19
  %13 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 20, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 28
  %14 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @gs_usb_receive_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 27
  %15 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %1, ptr %context4.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 13
  %16 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %transfer_flags, align 4
  %or17 = or i32 %17, 4
  store i32 %or17, ptr %transfer_flags, align 4
  tail call void @usb_anchor_urb(ptr noundef nonnull %call5, ptr noundef %rx_submitted) #10
  %call18 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call5, i32 noundef 3264) #10
  %18 = zext i32 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call18, label %if.end12.cleanup_crit_edge [
    i32 0, label %for.inc
    i32 -19, label %if.then22
  ]

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then22:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %netdev23 = getelementptr i8, ptr %netdev, i32 2620
  %19 = ptrtoint ptr %netdev23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev23, align 4
  tail call void @netif_device_detach(ptr noundef %20) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end12.cleanup_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.29, i32 noundef %call18) #14
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call5) #10
  tail call void @usb_free_urb(ptr noundef nonnull %call5) #10
  br label %if.end27

for.inc:                                          ; preds = %if.end12
  tail call void @usb_free_urb(ptr noundef nonnull %call5) #10
  %inc = add nuw nsw i32 %i.0141, 1
  %exitcond.not = icmp eq i32 %inc, 30
  br i1 %exitcond.not, label %for.inc.if.end27_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end27_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end27:                                         ; preds = %for.inc.if.end27_crit_edge, %cleanup, %if.end.if.end27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 8) #13
  %tobool29.not = icmp eq ptr %call7.i, null
  br i1 %tobool29.not, label %if.end27.cleanup72_crit_edge, label %if.end31

if.end27.cleanup72_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

if.end31:                                         ; preds = %if.end27
  %ctrlmode32 = getelementptr i8, ptr %netdev, i32 2476
  %22 = ptrtoint ptr %ctrlmode32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ctrlmode32, align 4
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  %and36 = lshr i32 %23, 1
  %and36.lobit = and i32 %and36, 1
  %flags.0 = select i1 %tobool33.not, i32 %and36.lobit, i32 2
  %and42 = and i32 %23, 8
  %24 = or i32 %and42, %flags.0
  %and47 = and i32 %23, 4
  %25 = or i32 %24, %and47
  %26 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16777216, ptr %call7.i, align 8
  %27 = shl nuw nsw i32 %25, 24
  %flags52 = getelementptr inbounds %struct.gs_device_mode, ptr %call7.i, i32 0, i32 1
  %28 = ptrtoint ptr %flags52 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %flags52, align 4
  %iface = getelementptr i8, ptr %netdev, i32 2628
  %29 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iface, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %30, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent.i, align 8
  %add.ptr.i128 = getelementptr i8, ptr %32, i32 -128
  %33 = ptrtoint ptr %add.ptr.i128 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i128, align 8
  %shl.i131 = shl i32 %34, 8
  %or57 = or i32 %shl.i131, -2147483648
  %channel = getelementptr i8, ptr %netdev, i32 2680
  %35 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %channel, align 4
  %conv = trunc i32 %36 to i16
  %call58 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i128, i32 noundef %or57, i8 noundef zeroext 2, i8 noundef zeroext 65, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 8, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.30, i32 noundef %call58) #14
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup72

if.end62:                                         ; preds = %if.end31
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  %state = getelementptr i8, ptr %netdev, i32 2472
  %37 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %state, align 4
  %38 = ptrtoint ptr %active_channels to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %active_channels, align 4
  %inc65 = add i8 %39, 1
  store i8 %inc65, ptr %active_channels, align 4
  %40 = ptrtoint ptr %ctrlmode32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ctrlmode32, align 4
  %and68 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.then70, label %if.end62.cleanup72_crit_edge

if.end62.cleanup72_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

if.then70:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %42 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %43, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %cleanup72

cleanup72:                                        ; preds = %if.then70, %if.end62.cleanup72_crit_edge, %if.then61, %if.end27.cleanup72_crit_edge, %if.then11, %for.body.cleanup72_crit_edge, %entry.cleanup72_crit_edge
  %retval.2 = phi i32 [ %call58, %if.then61 ], [ %call2, %entry.cleanup72_crit_edge ], [ -12, %if.end27.cleanup72_crit_edge ], [ 0, %if.then70 ], [ 0, %if.end62.cleanup72_crit_edge ], [ -12, %if.then11 ], [ -12, %for.body.cleanup72_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_can_close(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr i8, ptr %netdev, i32 2616
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %active_channels = getelementptr inbounds %struct.gs_usb, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %active_channels to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %active_channels, align 4
  %dec = add i8 %5, -1
  store i8 %dec, ptr %active_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool.not = icmp eq i8 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rx_submitted = getelementptr inbounds %struct.gs_usb, ptr %1, i32 0, i32 1
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_submitted = getelementptr i8, ptr %netdev, i32 2808
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_submitted) #10
  %active_tx_urbs = getelementptr i8, ptr %netdev, i32 2920
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_urbs, i32 noundef 4) #10
  %6 = ptrtoint ptr %active_tx_urbs to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %active_tx_urbs, align 4
  %iface.i = getelementptr i8, ptr %netdev, i32 2628
  %7 = ptrtoint ptr %iface.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iface.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 8) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %gs_cmd_reset.exit

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

gs_cmd_reset.exit:                                ; preds = %if.end
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %call7.i.i.i, align 8
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 -128
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.i = shl i32 %14, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %channel.i = getelementptr i8, ptr %netdev, i32 2680
  %15 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel.i, align 4
  %conv.i = trunc i32 %16 to i16
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i.i, i32 noundef %or.i, i8 noundef zeroext 2, i8 noundef zeroext 65, i16 noundef zeroext %conv.i, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 8, i32 noundef 1000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %gs_cmd_reset.exit.if.then4_crit_edge, label %gs_cmd_reset.exit.if.end5_crit_edge

gs_cmd_reset.exit.if.end5_crit_edge:              ; preds = %gs_cmd_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

gs_cmd_reset.exit.if.then4_crit_edge:             ; preds = %gs_cmd_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.then4:                                         ; preds = %gs_cmd_reset.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %retval.0.i28 = phi i32 [ %call4.i, %gs_cmd_reset.exit.if.then4_crit_edge ], [ -12, %if.end.if.then4_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.33, i32 noundef %retval.0.i28) #14
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %gs_cmd_reset.exit.if.end5_crit_edge
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %arrayidx = getelementptr i8, ptr %netdev, i32 2728
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %arrayidx, align 4
  %echo_id = getelementptr i8, ptr %netdev, i32 2732
  %18 = ptrtoint ptr %echo_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 10, ptr %echo_id, align 4
  %arrayidx.1 = getelementptr i8, ptr %netdev, i32 2736
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %arrayidx.1, align 4
  %echo_id.1 = getelementptr i8, ptr %netdev, i32 2740
  %20 = ptrtoint ptr %echo_id.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 10, ptr %echo_id.1, align 4
  %arrayidx.2 = getelementptr i8, ptr %netdev, i32 2744
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i, ptr %arrayidx.2, align 4
  %echo_id.2 = getelementptr i8, ptr %netdev, i32 2748
  %22 = ptrtoint ptr %echo_id.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 10, ptr %echo_id.2, align 4
  %arrayidx.3 = getelementptr i8, ptr %netdev, i32 2752
  %23 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %arrayidx.3, align 4
  %echo_id.3 = getelementptr i8, ptr %netdev, i32 2756
  %24 = ptrtoint ptr %echo_id.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 10, ptr %echo_id.3, align 4
  %arrayidx.4 = getelementptr i8, ptr %netdev, i32 2760
  %25 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i, ptr %arrayidx.4, align 4
  %echo_id.4 = getelementptr i8, ptr %netdev, i32 2764
  %26 = ptrtoint ptr %echo_id.4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 10, ptr %echo_id.4, align 4
  %arrayidx.5 = getelementptr i8, ptr %netdev, i32 2768
  %27 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i, ptr %arrayidx.5, align 4
  %echo_id.5 = getelementptr i8, ptr %netdev, i32 2772
  %28 = ptrtoint ptr %echo_id.5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 10, ptr %echo_id.5, align 4
  %arrayidx.6 = getelementptr i8, ptr %netdev, i32 2776
  %29 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr.i, ptr %arrayidx.6, align 4
  %echo_id.6 = getelementptr i8, ptr %netdev, i32 2780
  %30 = ptrtoint ptr %echo_id.6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 10, ptr %echo_id.6, align 4
  %arrayidx.7 = getelementptr i8, ptr %netdev, i32 2784
  %31 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.i, ptr %arrayidx.7, align 4
  %echo_id.7 = getelementptr i8, ptr %netdev, i32 2788
  %32 = ptrtoint ptr %echo_id.7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 10, ptr %echo_id.7, align 4
  %arrayidx.8 = getelementptr i8, ptr %netdev, i32 2792
  %33 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr.i, ptr %arrayidx.8, align 4
  %echo_id.8 = getelementptr i8, ptr %netdev, i32 2796
  %34 = ptrtoint ptr %echo_id.8 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 10, ptr %echo_id.8, align 4
  %arrayidx.9 = getelementptr i8, ptr %netdev, i32 2800
  %35 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i, ptr %arrayidx.9, align 4
  %echo_id.9 = getelementptr i8, ptr %netdev, i32 2804
  %36 = ptrtoint ptr %echo_id.9 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 10, ptr %echo_id.9, align 4
  tail call void @close_candev(ptr noundef %netdev) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_can_start_xmit(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %netdev1 = getelementptr i8, ptr %netdev, i32 2620
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %4 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol.i, align 8
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %5, label %entry.can_dropped_invalid_skb.exit_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

entry.can_dropped_invalid_skb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp2.not.i = icmp eq i32 %8, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !100

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %10)
  %cmp6.i = icmp ugt i8 %10, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !101

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %12)
  %cmp16.not.i = icmp eq i32 %12, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !100

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %14)
  %cmp21.i = icmp ugt i8 %14, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !101

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

if.end34.i:                                       ; preds = %lor.rhs18.i.if.end34.i_crit_edge, %lor.rhs.i.if.end34.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.end34.i
  %.b70.i.i = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !100

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 104, i32 noundef 9, ptr noundef null) #10
  br label %can_dropped_invalid_skb.exit

if.end37.i.i:                                     ; preds = %if.end34.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %17 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %18 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp38.i.i = icmp eq i16 %18, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end37.i.i.if.end_crit_edge

if.end37.i.i.if.end_crit_edge:                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 17
  %19 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ifindex.i.i, align 4
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %16, align 8
  %22 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i.i, align 8
  %skbcnt.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %skbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %skbcnt.i.i, align 4
  %25 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load45.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear46.i.i = and i16 %bf.load45.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear46.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %27, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i, 0
  %bf.clear54.i.i = and i16 %bf.set.i.i, 7167
  %bf.set51.i.i = or i16 %bf.clear54.i.i, -24576
  %storemerge.i.i = select i1 %tobool47.not.i.i, i16 %bf.clear54.i.i, i16 %bf.set51.i.i
  %28 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %storemerge.i.i, ptr %ip_summed.i.i, align 8
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i, align 4
  %31 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i76.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i77.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i78.i.i = sub i32 %sub.ptr.lhs.cast.i76.i.i, %sub.ptr.rhs.cast.i77.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i78.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %33 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %34 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %35 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  br label %if.end

can_dropped_invalid_skb.exit:                     ; preds = %if.then.i.i, %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, %if.then.i.can_dropped_invalid_skb.exit_crit_edge, %entry.can_dropped_invalid_skb.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %36 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %37, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then40.i.i, %if.end37.i.i.if.end_crit_edge
  %tx_ctx_lock.i = getelementptr i8, ptr %netdev, i32 2684
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_ctx_lock.i) #10
  %echo_id.i = getelementptr i8, ptr %netdev, i32 2732
  %38 = ptrtoint ptr %echo_id.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %echo_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %39)
  %cmp7.i = icmp eq i32 %39, 10
  br i1 %cmp7.i, label %if.end.gs_alloc_tx_context.exit_crit_edge, label %for.inc.i

if.end.gs_alloc_tx_context.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_alloc_tx_context.exit

for.inc.i:                                        ; preds = %if.end
  %echo_id.1.i = getelementptr i8, ptr %netdev, i32 2740
  %40 = ptrtoint ptr %echo_id.1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %echo_id.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %41)
  %cmp7.1.i = icmp eq i32 %41, 10
  br i1 %cmp7.1.i, label %for.inc.i.gs_alloc_tx_context.exit_crit_edge, label %for.inc.1.i

for.inc.i.gs_alloc_tx_context.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_alloc_tx_context.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %echo_id.2.i = getelementptr i8, ptr %netdev, i32 2748
  %42 = ptrtoint ptr %echo_id.2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %echo_id.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %43)
  %cmp7.2.i = icmp eq i32 %43, 10
  br i1 %cmp7.2.i, label %for.inc.1.i.gs_alloc_tx_context.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.gs_alloc_tx_context.exit_crit_edge:   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_alloc_tx_context.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %echo_id.3.i = getelementptr i8, ptr %netdev, i32 2756
  %44 = ptrtoint ptr %echo_id.3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %echo_id.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %45)
  %cmp7.3.i = icmp eq i32 %45, 10
  br i1 %cmp7.3.i, label %for.inc.2.i.gs_alloc_tx_context.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.gs_alloc_tx_context.exit_crit_edge:   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_alloc_tx_context.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %echo_id.4.i = getelementptr i8, ptr %netdev, i32 2764
  %46 = ptrtoint ptr %echo_id.4.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %echo_id.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %47)
  %cmp7.4.i = icmp eq i32 %47, 10
  br i1 %cmp7.4.i, label %for.inc.3.i.gs_alloc_tx_context.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.gs_alloc_tx_context.exit_crit_edge:   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_alloc_tx_context.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %echo_id.5.i = getelementptr i8, ptr %netdev, i32 2772
  %48 = ptrtoint ptr %echo_id.5.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %echo_id.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %49)
  %cmp7.5.i = icmp eq i32 %49, 10
  br i1 %cmp7.5.i, label %for.inc.4.i.gs_alloc_tx_context.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.gs_alloc_tx_context.exit_crit_edge:   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_alloc_tx_context.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %echo_id.6.i = getelementptr i8, ptr %netdev, i32 2780
  %50 = ptrtoint ptr %echo_id.6.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %echo_id.6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %51)
  %cmp7.6.i = icmp eq i32 %51, 10
  br i1 %cmp7.6.i, label %for.inc.5.i.gs_alloc_tx_context.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.gs_alloc_tx_context.exit_crit_edge:   ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_alloc_tx_context.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %echo_id.7.i = getelementptr i8, ptr %netdev, i32 2788
  %52 = ptrtoint ptr %echo_id.7.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %echo_id.7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %53)
  %cmp7.7.i = icmp eq i32 %53, 10
  br i1 %cmp7.7.i, label %for.inc.6.i.gs_alloc_tx_context.exit_crit_edge, label %for.inc.7.i

for.inc.6.i.gs_alloc_tx_context.exit_crit_edge:   ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_alloc_tx_context.exit

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %echo_id.8.i = getelementptr i8, ptr %netdev, i32 2796
  %54 = ptrtoint ptr %echo_id.8.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %echo_id.8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %55)
  %cmp7.8.i = icmp eq i32 %55, 10
  br i1 %cmp7.8.i, label %for.inc.7.i.gs_alloc_tx_context.exit_crit_edge, label %for.inc.8.i

for.inc.7.i.gs_alloc_tx_context.exit_crit_edge:   ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_alloc_tx_context.exit

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %echo_id.9.i = getelementptr i8, ptr %netdev, i32 2804
  %56 = ptrtoint ptr %echo_id.9.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %echo_id.9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %57)
  %cmp7.9.i = icmp eq i32 %57, 10
  br i1 %cmp7.9.i, label %for.inc.8.i.gs_alloc_tx_context.exit_crit_edge, label %gs_alloc_tx_context.exit.thread

for.inc.8.i.gs_alloc_tx_context.exit_crit_edge:   ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_alloc_tx_context.exit

gs_alloc_tx_context.exit.thread:                  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_ctx_lock.i, i32 noundef %call2.i) #10
  br label %cleanup

gs_alloc_tx_context.exit:                         ; preds = %for.inc.8.i.gs_alloc_tx_context.exit_crit_edge, %for.inc.7.i.gs_alloc_tx_context.exit_crit_edge, %for.inc.6.i.gs_alloc_tx_context.exit_crit_edge, %for.inc.5.i.gs_alloc_tx_context.exit_crit_edge, %for.inc.4.i.gs_alloc_tx_context.exit_crit_edge, %for.inc.3.i.gs_alloc_tx_context.exit_crit_edge, %for.inc.2.i.gs_alloc_tx_context.exit_crit_edge, %for.inc.1.i.gs_alloc_tx_context.exit_crit_edge, %for.inc.i.gs_alloc_tx_context.exit_crit_edge, %if.end.gs_alloc_tx_context.exit_crit_edge
  %i.029.lcssa.i = phi i32 [ 0, %if.end.gs_alloc_tx_context.exit_crit_edge ], [ 1, %for.inc.i.gs_alloc_tx_context.exit_crit_edge ], [ 2, %for.inc.1.i.gs_alloc_tx_context.exit_crit_edge ], [ 3, %for.inc.2.i.gs_alloc_tx_context.exit_crit_edge ], [ 4, %for.inc.3.i.gs_alloc_tx_context.exit_crit_edge ], [ 5, %for.inc.4.i.gs_alloc_tx_context.exit_crit_edge ], [ 6, %for.inc.5.i.gs_alloc_tx_context.exit_crit_edge ], [ 7, %for.inc.6.i.gs_alloc_tx_context.exit_crit_edge ], [ 8, %for.inc.7.i.gs_alloc_tx_context.exit_crit_edge ], [ 9, %for.inc.8.i.gs_alloc_tx_context.exit_crit_edge ]
  %echo_id.lcssa.i = phi ptr [ %echo_id.i, %if.end.gs_alloc_tx_context.exit_crit_edge ], [ %echo_id.1.i, %for.inc.i.gs_alloc_tx_context.exit_crit_edge ], [ %echo_id.2.i, %for.inc.1.i.gs_alloc_tx_context.exit_crit_edge ], [ %echo_id.3.i, %for.inc.2.i.gs_alloc_tx_context.exit_crit_edge ], [ %echo_id.4.i, %for.inc.3.i.gs_alloc_tx_context.exit_crit_edge ], [ %echo_id.5.i, %for.inc.4.i.gs_alloc_tx_context.exit_crit_edge ], [ %echo_id.6.i, %for.inc.5.i.gs_alloc_tx_context.exit_crit_edge ], [ %echo_id.7.i, %for.inc.6.i.gs_alloc_tx_context.exit_crit_edge ], [ %echo_id.8.i, %for.inc.7.i.gs_alloc_tx_context.exit_crit_edge ], [ %echo_id.9.i, %for.inc.8.i.gs_alloc_tx_context.exit_crit_edge ]
  %arrayidx.i = getelementptr %struct.gs_can, ptr %add.ptr.i, i32 0, i32 8, i32 %i.029.lcssa.i
  %58 = ptrtoint ptr %echo_id.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %i.029.lcssa.i, ptr %echo_id.lcssa.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_ctx_lock.i, i32 noundef %call2.i) #10
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %gs_alloc_tx_context.exit.cleanup_crit_edge, label %if.end6

gs_alloc_tx_context.exit.cleanup_crit_edge:       ; preds = %gs_alloc_tx_context.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %gs_alloc_tx_context.exit
  %call7 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #10
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.nomem_urb_crit_edge, label %if.end10

if.end6.nomem_urb_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %nomem_urb

if.end10:                                         ; preds = %if.end6
  %udev = getelementptr i8, ptr %netdev, i32 2624
  %59 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %udev, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 15
  %call11 = tail call ptr @usb_alloc_coherent(ptr noundef %60, i32 noundef 20, i32 noundef 2592, ptr noundef %transfer_dma) #10
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.28) #14
  br label %nomem_hf

if.end14:                                         ; preds = %if.end10
  %echo_id = getelementptr inbounds %struct.gs_tx_context, ptr %arrayidx.i, i32 0, i32 1
  %61 = ptrtoint ptr %echo_id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %echo_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %62)
  %cmp = icmp ugt i32 %62, 9
  br i1 %cmp, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.34, i32 noundef %62) #14
  %63 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %udev, align 4
  %65 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %64, i32 noundef 20, ptr noundef nonnull %call11, i32 noundef %66) #10
  br label %nomem_hf

if.end16:                                         ; preds = %if.end14
  %67 = ptrtoint ptr %call11 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %62, ptr %call11, align 1
  %channel = getelementptr i8, ptr %netdev, i32 2680
  %68 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %channel, align 4
  %conv = trunc i32 %69 to i8
  %channel18 = getelementptr inbounds %struct.gs_host_frame, ptr %call11, i32 0, i32 3
  %70 = ptrtoint ptr %channel18 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv, ptr %channel18, align 1
  %flags = getelementptr inbounds %struct.gs_host_frame, ptr %call11, i32 0, i32 4
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %flags, align 1
  %reserved = getelementptr inbounds %struct.gs_host_frame, ptr %call11, i32 0, i32 5
  %72 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %reserved, align 1
  %73 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 8
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  %can_id19 = getelementptr inbounds %struct.gs_host_frame, ptr %call11, i32 0, i32 1
  %78 = ptrtoint ptr %can_id19 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %77, ptr %can_id19, align 1
  %ctrlmode = getelementptr i8, ptr %netdev, i32 2476
  %79 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ctrlmode, align 4
  %and.i = and i32 %80, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end16.if.end.i_crit_edge, label %land.lhs.true.i

if.end16.if.end.i_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end16
  %81 = getelementptr inbounds %struct.can_frame, ptr %74, i32 0, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %81, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %83)
  %cmp.i = icmp eq i8 %83, 8
  br i1 %cmp.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %len8_dlc.i = getelementptr inbounds %struct.can_frame, ptr %74, i32 0, i32 4
  %84 = ptrtoint ptr %len8_dlc.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %len8_dlc.i, align 1
  %86 = add i8 %85, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %86)
  %87 = icmp ult i8 %86, 7
  br i1 %87, label %land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge, label %land.lhs.true2.i.if.end.i_crit_edge

land.lhs.true2.i.if.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_get_cc_dlc.exit

if.end.i:                                         ; preds = %land.lhs.true2.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.end16.if.end.i_crit_edge
  %88 = getelementptr inbounds %struct.can_frame, ptr %74, i32 0, i32 1
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %88, align 4
  br label %can_get_cc_dlc.exit

can_get_cc_dlc.exit:                              ; preds = %if.end.i, %land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge
  %retval.0.i122 = phi i8 [ %90, %if.end.i ], [ %85, %land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge ]
  %can_dlc = getelementptr inbounds %struct.gs_host_frame, ptr %call11, i32 0, i32 2
  %91 = ptrtoint ptr %can_dlc to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %retval.0.i122, ptr %can_dlc, align 1
  %data21 = getelementptr inbounds %struct.gs_host_frame, ptr %call11, i32 0, i32 6
  %data22 = getelementptr inbounds %struct.can_frame, ptr %74, i32 0, i32 5
  %92 = getelementptr inbounds %struct.can_frame, ptr %74, i32 0, i32 1
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %92, align 4
  %conv24 = zext i8 %94 to i32
  %95 = call ptr @memcpy(ptr %data21, ptr %data22, i32 %conv24)
  %96 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %udev, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 8
  %shl.i = shl i32 %99, 8
  %or = or i32 %shl.i, -1073676288
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 8
  %100 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 10
  %101 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 14
  %102 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call11, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 19
  %103 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 20, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 28
  %104 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @gs_usb_xmit_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 27
  %105 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %arrayidx.i, ptr %context4.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 13
  %106 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %transfer_flags, align 4
  %or28 = or i32 %107, 4
  store i32 %or28, ptr %transfer_flags, align 4
  %tx_submitted = getelementptr i8, ptr %netdev, i32 2808
  tail call void @usb_anchor_urb(ptr noundef nonnull %call7, ptr noundef %tx_submitted) #10
  %call29 = tail call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %netdev, i32 noundef %62, i32 noundef 0) #10
  %active_tx_urbs = getelementptr i8, ptr %netdev, i32 2920
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_urbs, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %active_tx_urbs, i32 1, i32 3, i32 1) #10
  %108 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_tx_urbs, ptr %active_tx_urbs, i32 1, ptr elementtype(i32) %active_tx_urbs) #10, !srcloc !102
  %call30 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call7, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.else42, label %if.then34, !prof !100

if.then34:                                        ; preds = %can_get_cc_dlc.exit
  %call.i.i118 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_urbs, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %active_tx_urbs, i32 1, i32 3, i32 1) #10
  %109 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_tx_urbs, ptr %active_tx_urbs, i32 1, ptr elementtype(i32) %active_tx_urbs) #10, !srcloc !103
  tail call void @can_free_echo_skb(ptr noundef %netdev, i32 noundef %62, ptr noundef null) #10
  %110 = ptrtoint ptr %echo_id to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 10, ptr %echo_id, align 4
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call7) #10
  %111 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %udev, align 4
  %113 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %112, i32 noundef 20, ptr noundef nonnull %call11, i32 noundef %114) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call30)
  %cmp38 = icmp eq i32 %call30, -19
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_device_detach(ptr noundef %netdev) #10
  br label %if.end49

if.else:                                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.29, i32 noundef %call30) #14
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %115 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %116, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %if.end49

if.else42:                                        ; preds = %can_get_cc_dlc.exit
  %call.i.i119 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_tx_urbs, i32 noundef 4) #10
  %117 = ptrtoint ptr %active_tx_urbs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %active_tx_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %118)
  %cmp45 = icmp sgt i32 %118, 9
  br i1 %cmp45, label %if.then47, label %if.else42.if.end49_crit_edge

if.else42.if.end49_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then47:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %119 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %120, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.else42.if.end49_crit_edge, %if.else, %if.then40
  tail call void @usb_free_urb(ptr noundef nonnull %call7) #10
  br label %cleanup

nomem_hf:                                         ; preds = %if.then15, %if.then13
  tail call void @usb_free_urb(ptr noundef nonnull %call7) #10
  br label %nomem_urb

nomem_urb:                                        ; preds = %nomem_hf, %if.end6.nomem_urb_crit_edge
  %echo_id.i124 = getelementptr inbounds %struct.gs_tx_context, ptr %arrayidx.i, i32 0, i32 1
  %121 = ptrtoint ptr %echo_id.i124 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 10, ptr %echo_id.i124, align 4
  tail call void @consume_skb(ptr noundef %skb) #10
  %tx_dropped52 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %122 = ptrtoint ptr %tx_dropped52 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %tx_dropped52, align 4
  %inc53 = add i32 %123, 1
  store i32 %inc53, ptr %tx_dropped52, align 4
  br label %cleanup

cleanup:                                          ; preds = %nomem_urb, %if.end49, %gs_alloc_tx_context.exit.cleanup_crit_edge, %gs_alloc_tx_context.exit.thread, %can_dropped_invalid_skb.exit
  %retval.0 = phi i32 [ 0, %nomem_urb ], [ 0, %if.end49 ], [ 0, %can_dropped_invalid_skb.exit ], [ 16, %gs_alloc_tx_context.exit.cleanup_crit_edge ], [ 16, %gs_alloc_tx_context.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gs_usb_receive_bulk_callback(ptr noundef %urb) #2 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #10
  %4 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !104
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !101

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/can/usb/gs_usb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 309, 0\0A.popsection", ""() #10, !srcloc !105
  unreachable

do.end9:                                          ; preds = %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cond = icmp eq i32 %6, 0
  br i1 %cond, label %sw.epilog, label %do.end9.cleanup_crit_edge

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %do.end9
  %channel = getelementptr inbounds %struct.gs_host_frame, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %channel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp = icmp ugt i8 %8, 1
  br i1 %cmp, label %sw.epilog.device_detach_crit_edge, label %if.end12

sw.epilog.device_detach_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_detach

if.end12:                                         ; preds = %sw.epilog
  %conv = zext i8 %8 to i32
  %arrayidx = getelementptr [2 x ptr], ptr %1, i32 0, i32 %conv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %netdev14 = getelementptr inbounds %struct.gs_can, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %netdev14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev14, align 4
  %stats15 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 36
  %state.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not = icmp eq i32 %15, 0
  br i1 %tobool.i.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp18 = icmp eq i32 %17, -1
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end17
  %call22 = call ptr @alloc_can_skb(ptr noundef %12, ptr noundef nonnull %cf) #10
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.then20.cleanup_crit_edge, label %if.end25

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.then20
  %can_id = getelementptr inbounds %struct.gs_host_frame, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %can_id to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %can_id, align 1
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cf, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %22, align 8
  %24 = load ptr, ptr %cf, align 4
  %can_dlc = getelementptr inbounds %struct.gs_host_frame, ptr %3, i32 0, i32 2
  %25 = ptrtoint ptr %can_dlc to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %can_dlc, align 1
  %ctrlmode = getelementptr inbounds %struct.can_priv, ptr %10, i32 0, i32 22
  %27 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ctrlmode, align 4
  %and.i = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %26)
  %cmp.i = icmp ugt i8 %26, 8
  %or.cond.i = and i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then.i, label %if.end25.can_frame_set_cc_len.exit_crit_edge

if.end25.can_frame_set_cc_len.exit_crit_edge:     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_frame_set_cc_len.exit

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %len8_dlc.i = getelementptr inbounds %struct.can_frame, ptr %24, i32 0, i32 4
  %29 = ptrtoint ptr %len8_dlc.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %26, ptr %len8_dlc.i, align 1
  br label %can_frame_set_cc_len.exit

can_frame_set_cc_len.exit:                        ; preds = %if.then.i, %if.end25.can_frame_set_cc_len.exit_crit_edge
  %30 = call i8 @llvm.umin.i8(i8 %26, i8 8) #10
  %31 = getelementptr inbounds %struct.can_frame, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %30, ptr %31, align 4
  %data = getelementptr inbounds %struct.can_frame, ptr %24, i32 0, i32 5
  %data27 = getelementptr inbounds %struct.gs_host_frame, ptr %3, i32 0, i32 6
  %33 = ptrtoint ptr %data27 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %data27, align 1
  %35 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %data, align 8
  %36 = ptrtoint ptr %can_id to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %can_id, align 1
  %38 = and i32 %37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool30.not = icmp eq i32 %38, 0
  br i1 %tobool30.not, label %can_frame_set_cc_len.exit.if.end32_crit_edge, label %if.then31

can_frame_set_cc_len.exit.if.end32_crit_edge:     ; preds = %can_frame_set_cc_len.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then31:                                        ; preds = %can_frame_set_cc_len.exit
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @gs_update_state(ptr noundef %10, ptr noundef %24)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %can_frame_set_cc_len.exit.if.end32_crit_edge
  %39 = ptrtoint ptr %stats15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %stats15, align 8
  %inc = add i32 %40, 1
  store i32 %inc, ptr %stats15, align 8
  %41 = ptrtoint ptr %can_dlc to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %can_dlc, align 1
  %conv35 = zext i8 %42 to i32
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 36, i32 2
  %43 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %44, %conv35
  store i32 %add, ptr %rx_bytes, align 8
  %call37 = call i32 @netif_rx(ptr noundef nonnull %call22) #10
  br label %if.end56

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %17)
  %cmp39 = icmp ugt i32 %17, 9
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.31, i32 noundef %17) #14
  br label %resubmit_urb

if.end43:                                         ; preds = %if.else
  %tx_ctx_lock.i = getelementptr inbounds %struct.gs_can, ptr %10, i32 0, i32 7
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_ctx_lock.i) #10
  %echo_id.i = getelementptr %struct.gs_can, ptr %10, i32 0, i32 8, i32 %17, i32 1
  %45 = ptrtoint ptr %echo_id.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %echo_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %17)
  %cmp6.i = icmp ne i32 %46, %17
  %arrayidx.i = getelementptr %struct.gs_can, ptr %10, i32 0, i32 8, i32 %17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_ctx_lock.i, i32 noundef %call3.i) #10
  %tobool46.not150 = icmp eq ptr %arrayidx.i, null
  %tobool46.not = select i1 %cmp6.i, i1 true, i1 %tobool46.not150
  br i1 %tobool46.not, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %3, align 1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.32, i32 noundef %48) #14
  br label %resubmit_urb

if.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 36, i32 1
  %49 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_packets, align 4
  %inc51 = add i32 %50, 1
  store i32 %inc51, ptr %tx_packets, align 4
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %3, align 1
  %call53 = tail call i32 @can_get_echo_skb(ptr noundef %12, i32 noundef %52, ptr noundef null) #10
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 36, i32 3
  %53 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_bytes, align 4
  %add55 = add i32 %54, %call53
  store i32 %add55, ptr %tx_bytes, align 4
  %55 = ptrtoint ptr %echo_id.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 10, ptr %echo_id.i, align 4
  %active_tx_urbs = getelementptr inbounds %struct.gs_can, ptr %10, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_urbs, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %active_tx_urbs, i32 1, i32 3, i32 1) #10
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_tx_urbs, ptr %active_tx_urbs, i32 1, ptr elementtype(i32) %active_tx_urbs) #10, !srcloc !103
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 103
  %57 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %58) #10
  br label %if.end56

if.end56:                                         ; preds = %if.end49, %if.end32
  %flags = getelementptr inbounds %struct.gs_host_frame, ptr %3, i32 0, i32 4
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %flags, align 1
  %61 = and i8 %60, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool59.not = icmp eq i8 %61, 0
  br i1 %tobool59.not, label %if.end56.resubmit_urb_crit_edge, label %if.then60

if.end56.resubmit_urb_crit_edge:                  ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %resubmit_urb

if.then60:                                        ; preds = %if.end56
  %call61 = call ptr @alloc_can_err_skb(ptr noundef %12, ptr noundef nonnull %cf) #10
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %if.then60.resubmit_urb_crit_edge, label %if.end64

if.then60.resubmit_urb_crit_edge:                 ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  br label %resubmit_urb

if.end64:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cf, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 8
  %or = or i32 %65, 4
  store i32 %or, ptr %63, align 8
  %66 = load ptr, ptr %cf, align 4
  %67 = getelementptr inbounds %struct.can_frame, ptr %66, i32 0, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 8, ptr %67, align 4
  %arrayidx67 = getelementptr %struct.can_frame, ptr %66, i32 0, i32 5, i32 1
  %69 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %arrayidx67, align 1
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 36, i32 11
  %70 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_over_errors, align 4
  %inc68 = add i32 %71, 1
  store i32 %inc68, ptr %rx_over_errors, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 36, i32 4
  %72 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_errors, align 4
  %inc69 = add i32 %73, 1
  store i32 %inc69, ptr %rx_errors, align 4
  %call70 = call i32 @netif_rx(ptr noundef nonnull %call61) #10
  br label %resubmit_urb

resubmit_urb:                                     ; preds = %if.end64, %if.then60.resubmit_urb_crit_edge, %if.end56.resubmit_urb_crit_edge, %if.then47, %if.then41
  %udev = getelementptr inbounds %struct.gs_usb, ptr %1, i32 0, i32 2
  %74 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %udev, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 8
  %shl.i = shl i32 %77, 8
  %or75 = or i32 %shl.i, -1073708928
  %dev1.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %78 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %79 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or75, ptr %pipe2.i, align 4
  %80 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %3, ptr %transfer_buffer, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %81 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 20, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %82 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @gs_usb_receive_bulk_callback, ptr %complete.i, align 4
  %83 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %1, ptr %context, align 4
  %call76 = call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call76)
  %cmp77 = icmp eq i32 %call76, -19
  br i1 %cmp77, label %resubmit_urb.device_detach_crit_edge, label %resubmit_urb.cleanup_crit_edge

resubmit_urb.cleanup_crit_edge:                   ; preds = %resubmit_urb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

resubmit_urb.device_detach_crit_edge:             ; preds = %resubmit_urb
  call void @__sanitizer_cov_trace_pc() #12
  br label %device_detach

device_detach:                                    ; preds = %resubmit_urb.device_detach_crit_edge, %sw.epilog.device_detach_crit_edge
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 4
  %tobool84.not = icmp eq ptr %85, null
  br i1 %tobool84.not, label %device_detach.for.inc_crit_edge, label %if.then85

device_detach.for.inc_crit_edge:                  ; preds = %device_detach
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then85:                                        ; preds = %device_detach
  call void @__sanitizer_cov_trace_pc() #12
  %netdev88 = getelementptr inbounds %struct.gs_can, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %netdev88 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %netdev88, align 4
  call void @netif_device_detach(ptr noundef %87) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then85, %device_detach.for.inc_crit_edge
  %arrayidx83.1 = getelementptr [2 x ptr], ptr %1, i32 0, i32 1
  %88 = ptrtoint ptr %arrayidx83.1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx83.1, align 4
  %tobool84.not.1 = icmp eq ptr %89, null
  br i1 %tobool84.not.1, label %for.inc.cleanup_crit_edge, label %if.then85.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then85.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %netdev88.1 = getelementptr inbounds %struct.gs_can, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %netdev88.1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %netdev88.1, align 4
  call void @netif_device_detach(ptr noundef %91) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then85.1, %for.inc.cleanup_crit_edge, %resubmit_urb.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @gs_update_state(ptr nocapture noundef %dev, ptr nocapture noundef readonly %cf) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cf, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 21
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  %restarts = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 1, i32 5
  %3 = ptrtoint ptr %restarts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %restarts, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %restarts, align 4
  br label %if.end48

if.else:                                          ; preds = %entry
  %and4 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else10, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %state8 = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 21
  %5 = ptrtoint ptr %state8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %state8, align 4
  %bus_off = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %bus_off to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_off, align 4
  %inc9 = add i32 %7, 1
  store i32 %inc9, ptr %bus_off, align 4
  br label %if.end48

if.else10:                                        ; preds = %if.else
  %and12 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else10.if.end48_crit_edge, label %if.then14

if.else10.if.end48_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then14:                                        ; preds = %if.else10
  %arrayidx = getelementptr %struct.can_frame, ptr %cf, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %10 = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %if.else26, label %if.then22

if.then22:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %state24 = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 21
  %12 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %state24, align 4
  %error_warning = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %error_warning to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %error_warning, align 4
  %inc25 = add i32 %14, 1
  store i32 %inc25, ptr %error_warning, align 4
  br label %if.end48

if.else26:                                        ; preds = %if.then14
  %15 = and i32 %conv, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %16 = icmp eq i32 %15, 0
  %state44 = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 21
  br i1 %16, label %if.else42, label %if.then38

if.then38:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %state44 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %state44, align 4
  %error_passive = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %error_passive to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error_passive, align 4
  %inc41 = add i32 %19, 1
  store i32 %inc41, ptr %error_passive, align 4
  br label %if.end48

if.else42:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %state44 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %state44, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.else42, %if.then38, %if.then22, %if.else10.if.end48_crit_edge, %if.then6, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gs_usb_xmit_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %netdev2 = getelementptr inbounds %struct.gs_can, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev2, align 4
  %echo_id = getelementptr inbounds %struct.gs_tx_context, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %echo_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %echo_id, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %7, ptr noundef nonnull @.str.36, i32 noundef %9) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev3 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %10 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev3, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %12 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %transfer_buffer_length, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %14 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %transfer_buffer, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 15
  %16 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %11, i32 noundef %13, ptr noundef %15, i32 noundef %17) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_free_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_usb_set_phys_id(ptr nocapture noundef readonly %dev, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 4) #13
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16777216, ptr %call7.i.i, align 8
  %iface.i = getelementptr i8, ptr %dev, i32 2628
  %3 = ptrtoint ptr %iface.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iface.i, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %6, i32 -128
  %7 = ptrtoint ptr %add.ptr.i21.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i21.i, align 8
  %shl.i.i = shl i32 %8, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %channel.i = getelementptr i8, ptr %dev, i32 2680
  %9 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel.i, align 4
  %conv.i = trunc i32 %10 to i16
  %call10.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i21.i, i32 noundef %or.i, i8 noundef zeroext 7, i8 noundef zeroext 65, i16 noundef zeroext %conv.i, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4, i32 noundef 100) #10
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 4) #13
  %tobool.not.i5 = icmp eq ptr %call7.i.i4, null
  br i1 %tobool.not.i5, label %sw.bb1.sw.epilog_crit_edge, label %if.end.i14

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i14:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %call7.i.i4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %call7.i.i4, align 8
  %iface.i6 = getelementptr i8, ptr %dev, i32 2628
  %13 = ptrtoint ptr %iface.i6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iface.i6, align 4
  %parent.i.i7 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %parent.i.i7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i.i7, align 8
  %add.ptr.i21.i8 = getelementptr i8, ptr %16, i32 -128
  %17 = ptrtoint ptr %add.ptr.i21.i8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i21.i8, align 8
  %shl.i.i9 = shl i32 %18, 8
  %or.i10 = or i32 %shl.i.i9, -2147483648
  %channel.i11 = getelementptr i8, ptr %dev, i32 2680
  %19 = ptrtoint ptr %channel.i11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channel.i11, align 4
  %conv.i12 = trunc i32 %20 to i16
  %call10.i13 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i21.i8, i32 noundef %or.i10, i8 noundef zeroext 7, i8 noundef zeroext 65, i16 noundef zeroext %conv.i12, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i4, i16 noundef zeroext 4, i32 noundef 100) #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end.i14, %if.end.i
  %call7.i.i4.sink = phi ptr [ %call7.i.i4, %if.end.i14 ], [ %call7.i.i, %if.end.i ]
  %call10.i13.sink = phi i32 [ %call10.i13, %if.end.i14 ], [ %call10.i, %if.end.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i4.sink) #10
  %21 = tail call i32 @llvm.smin.i32(i32 %call10.i13.sink, i32 0) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ -12, %sw.bb.sw.epilog_crit_edge ], [ -12, %sw.bb1.sw.epilog_crit_edge ], [ %21, %sw.epilog.sink.split ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !77, !79, !80, !81, !82, !84, !86, !87, !88, !89}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__initcall__kmod_gs_usb__464_1052_gs_usb_driver_init6, !1, !"__initcall__kmod_gs_usb__464_1052_gs_usb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/can/usb/gs_usb.c", i32 1052, i32 1}
!2 = !{ptr @__exitcall_gs_usb_driver_exit, !1, !"__exitcall_gs_usb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author465, !4, !"__UNIQUE_ID_author465", i1 false, i1 false}
!4 = !{!"../drivers/net/can/usb/gs_usb.c", i32 1054, i32 1}
!5 = !{ptr @__UNIQUE_ID_description466, !6, !"__UNIQUE_ID_description466", i1 false, i1 false}
!6 = !{!"../drivers/net/can/usb/gs_usb.c", i32 1055, i32 1}
!7 = !{ptr @__UNIQUE_ID_file467, !8, !"__UNIQUE_ID_file467", i1 false, i1 false}
!8 = !{!"../drivers/net/can/usb/gs_usb.c", i32 1059, i32 1}
!9 = !{ptr @__UNIQUE_ID_license468, !8, !"__UNIQUE_ID_license468", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @gs_usb_driver, !12, !"gs_usb_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/can/usb/gs_usb.c", i32 1045, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/can/usb/gs_usb.c", i32 944, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @gs_usb_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @gs_usb_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/can/usb/gs_usb.c", i32 964, i32 3}
!23 = !{ptr @gs_usb_probe._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @gs_usb_probe._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/can/usb/gs_usb.c", i32 971, i32 2}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @gs_usb_probe._entry.9, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @gs_usb_probe._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/can/usb/gs_usb.c", i32 974, i32 3}
!32 = !{ptr @gs_usb_probe._entry.13, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @gs_usb_probe._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @init_usb_anchor.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @init_usb_anchor.__key.17, !38, !"__key", i1 false, i1 false}
!38 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/can/usb/gs_usb.c", i32 824, i32 3}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @gs_make_candev._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @gs_make_candev._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/can/usb/gs_usb.c", i32 834, i32 3}
!47 = !{ptr @gs_make_candev._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @gs_make_candev._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @gs_make_candev.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/net/can/usb/gs_usb.c", i32 863, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/can/usb/gs_usb.c", i32 901, i32 3}
!54 = !{ptr @gs_make_candev._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @gs_make_candev._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @gs_usb_netdev_ops, !57, !"gs_usb_netdev_ops", i1 false, i1 false}
!57 = !{!"../drivers/net/can/usb/gs_usb.c", i32 734, i32 36}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/can/usb/gs_usb.c", i32 609, i32 9}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/can/usb/gs_usb.c", i32 633, i32 9}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/can/usb/gs_usb.c", i32 684, i32 22}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/can/usb/gs_usb.c", i32 355, i32 8}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/can/usb/gs_usb.c", i32 365, i32 8}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/can/usb/gs_usb.c", i32 720, i32 23}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/can/usb/gs_usb.c", i32 504, i32 22}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/can/usb/gs_usb.c", i32 461, i32 23}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/can/usb/gs_usb.c", i32 448, i32 3}
!79 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @gs_usb_set_bittiming._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @gs_usb_set_bittiming._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @gs_usb_ethtool_ops, !83, !"gs_usb_ethtool_ops", i1 false, i1 false}
!83 = !{!"../drivers/net/can/usb/gs_usb.c", i32 794, i32 33}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/can/usb/gs_usb.c", i32 1023, i32 3}
!86 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @gs_usb_disconnect._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @gs_usb_disconnect._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @gs_usb_table, !90, !"gs_usb_table", i1 false, i1 false}
!90 = !{!"../drivers/net/can/usb/gs_usb.c", i32 1035, i32 35}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{!"branch_weights", i32 2000, i32 1}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{i64 2148241188, i64 2148241214, i64 2148241243, i64 2148241277, i64 2148241308, i64 2148241331}
!103 = !{i64 2148243653, i64 2148243679, i64 2148243708, i64 2148243742, i64 2148243773, i64 2148243796}
!104 = !{!"auto-init"}
!105 = !{i64 2157262655, i64 2157263148, i64 2157262692, i64 2157262748, i64 2157262782, i64 2157262806, i64 2157262847, i64 2157262868, i64 2157262896, i64 2157262930}
