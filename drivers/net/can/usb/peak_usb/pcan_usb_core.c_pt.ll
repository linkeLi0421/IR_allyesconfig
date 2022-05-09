; ModuleID = '/llk/IR_all_yes/drivers/net/can/usb/peak_usb/pcan_usb_core.c_pt.bc'
source_filename = "../drivers/net/can/usb/peak_usb/pcan_usb_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.peak_usb_adapter = type { ptr, i32, i32, %struct.can_clock, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [2 x i8], i8, i8, i32, i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.peak_time_ref = type { i64, i64, i32, i32, i64, i32, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.peak_usb_device = type { %struct.can_priv, ptr, i32, i32, ptr, ptr, %struct.atomic_t, %struct.usb_anchor, [10 x %struct.peak_tx_urb_context], ptr, %struct.usb_anchor, i32, i8, i8, i8, ptr, ptr }
%struct.peak_tx_urb_context = type { ptr, i32, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.can_frame = type { i32, %union.anon.148, i8, i8, i8, [8 x i8] }
%union.anon.148 = type { i8 }

@__UNIQUE_ID_author464 = internal constant [63 x i8] c"peak_usb.author=Stephane Grosjean <s.grosjean@peak-system.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description465 = internal constant [61 x i8] c"peak_usb.description=CAN driver for PEAK-System USB adapters\00", section ".modinfo", align 1
@__UNIQUE_ID_file466 = internal constant [52 x i8] c"peak_usb.file=drivers/net/can/usb/peak_usb/peak_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license467 = internal constant [24 x i8] c"peak_usb.license=GPL v2\00", section ".modinfo", align 1
@pcan_dump_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s dumping %s (%d bytes):\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcan_dump_mem\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/can/usb/peak_usb/pcan_usb_core.c\00", [51 x i8] zeroinitializer }, align 32
@pcan_dump_mem._entry_ptr = internal global ptr @pcan_dump_mem._entry, section ".printk_index", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"peak_usb\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memory\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"peak_usb \00", [22 x i8] zeroinitializer }, align 32
@peak_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.3, ptr @peak_usb_probe, ptr @peak_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @peak_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@peak_usb_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: failed to stop all can devices (err %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"peak_usb_exit\00", [18 x i8] zeroinitializer }, align 32
@peak_usb_exit._entry_ptr = internal global ptr @peak_usb_exit._entry, section ".printk_index", align 4
@peak_usb_exit._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 1024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: PCAN-USB interfaces driver unloaded\0A\00", [53 x i8] zeroinitializer }, align 32
@peak_usb_exit._entry_ptr.11 = internal global ptr @peak_usb_exit._entry.9, section ".printk_index", align 4
@__initcall__kmod_peak_usb__468_1027_peak_usb_init6 = internal global ptr @peak_usb_init, section ".initcall6.init", align 4
@__exitcall_peak_usb_exit = internal global ptr @peak_usb_exit, section ".exitcall.exit", align 4
@peak_usb_table = internal constant { [7 x %struct.usb_device_id], [56 x i8] } { [7 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3186, i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @pcan_usb to i32) }, %struct.usb_device_id { i16 3, i16 3186, i16 13, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @pcan_usb_pro to i32) }, %struct.usb_device_id { i16 3, i16 3186, i16 18, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @pcan_usb_fd to i32) }, %struct.usb_device_id { i16 3, i16 3186, i16 17, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @pcan_usb_pro_fd to i32) }, %struct.usb_device_id { i16 3, i16 3186, i16 19, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @pcan_usb_chip to i32) }, %struct.usb_device_id { i16 3, i16 3186, i16 20, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @pcan_usb_x6 to i32) }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@peak_usb_create_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 805, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: couldn't alloc candev\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"peak_usb_create_dev\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@peak_usb_create_dev._entry_ptr = internal global ptr @peak_usb_create_dev._entry, section ".printk_index", align 4
@peak_usb_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @peak_usb_ndo_open, ptr @peak_usb_ndo_stop, ptr @peak_usb_ndo_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@peak_usb_create_dev._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.2, i32 859, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"couldn't register CAN device: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@peak_usb_create_dev._entry_ptr.18 = internal global ptr @peak_usb_create_dev._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"attached to %s channel %u (device %u)\0A\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"couldn't set bitrate (err %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"couldn't set data bitrate (err %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"couldn't start device (err %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't start device: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't setup any rx URB\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rx performance may be slow\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't setup any tx URB\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tx performance may be slow\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"couldn't submit control: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Rx urb aborted (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"received usb message\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed resubmitting read bulk urb: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Tx urb aborted (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"packet dropped\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tx urb submitting failed err=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@peak_usb_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 934, ptr @.str.5, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s removed\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"peak_usb_disconnect\00", [44 x i8] zeroinitializer }, align 32
@peak_usb_disconnect._entry_ptr = internal global ptr @peak_usb_disconnect._entry, section ".printk_index", align 4
@pcan_usb = external dso_local constant %struct.peak_usb_adapter, align 4
@pcan_usb_pro = external dso_local constant %struct.peak_usb_adapter, align 4
@pcan_usb_fd = external dso_local constant %struct.peak_usb_adapter, align 4
@pcan_usb_pro_fd = external dso_local constant %struct.peak_usb_adapter, align 4
@pcan_usb_chip = external dso_local constant %struct.peak_usb_adapter, align 4
@pcan_usb_x6 = external dso_local constant %struct.peak_usb_adapter, align 4
@peak_usb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: usb_register failed (err %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"peak_usb_init\00", [18 x i8] zeroinitializer }, align 32
@peak_usb_init._entry_ptr = internal global ptr @peak_usb_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967294]
@__sancov_gen_cov_switch_values.45 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967212, i64 4294967294]
@__sancov_gen_cov_switch_values.46 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967225, i64 4294967294]
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 62, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 64, i32 17 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 64, i32 28 }
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"peak_usb_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 972, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1017, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1023, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"peak_usb_table\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 30, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 804, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [20 x i8] c"peak_usb_netdev_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 778, i32 36 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 859, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 887, i32 22 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 747, i32 24 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 769, i32 9 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 723, i32 23 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 577, i32 22 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 476, i32 23 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 480, i32 23 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 519, i32 23 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 523, i32 23 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 549, i32 22 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 250, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 260, i32 19 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 282, i32 22 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 321, i32 23 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 374, i32 23 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 404, i32 24 }
@___asan_gen_.165 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 104, i32 6 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1367, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1368, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 934, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [48 x i8] c"../drivers/net/can/usb/peak_usb/pcan_usb_core.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 986, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author464, ptr @__UNIQUE_ID_description465, ptr @__UNIQUE_ID_file466, ptr @__UNIQUE_ID_license467, ptr @__exitcall_peak_usb_exit, ptr @__initcall__kmod_peak_usb__468_1027_peak_usb_init6, ptr @pcan_dump_mem._entry, ptr @pcan_dump_mem._entry_ptr, ptr @peak_usb_create_dev._entry, ptr @peak_usb_create_dev._entry.16, ptr @peak_usb_create_dev._entry_ptr, ptr @peak_usb_create_dev._entry_ptr.18, ptr @peak_usb_disconnect._entry, ptr @peak_usb_disconnect._entry_ptr, ptr @peak_usb_exit, ptr @peak_usb_exit._entry, ptr @peak_usb_exit._entry.9, ptr @peak_usb_exit._entry_ptr, ptr @peak_usb_exit._entry_ptr.11, ptr @peak_usb_init._entry, ptr @peak_usb_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @peak_usb_driver, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @peak_usb_table, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @peak_usb_netdev_ops, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @init_usb_anchor.__key, ptr @.str.36, ptr @init_usb_anchor.__key.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcan_dump_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_usb_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_usb_exit._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_usb_table to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_usb_create_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_usb_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_usb_create_dev._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_usb_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peak_usb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcan_dump_mem(ptr noundef %prompt, ptr noundef %p, i32 noundef %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %prompt, null
  %spec.select = select i1 %tobool.not, ptr @.str.4, ptr %prompt
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull %spec.select, i32 noundef %l) #15
  tail call void @print_hex_dump(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %p, i32 noundef %l, i1 noundef zeroext false) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @peak_usb_init_time_ref(ptr noundef writeonly %time_ref, ptr noundef %adapter) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %time_ref, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = call ptr @memset(ptr %time_ref, i32 0, i32 40)
  %adapter1 = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 6
  %1 = ptrtoint ptr %adapter1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %adapter, ptr %adapter1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @peak_usb_update_ts_now(ptr nocapture noundef %time_ref, i32 noundef %ts_now) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ts_dev_2 = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 3
  %0 = ptrtoint ptr %ts_dev_2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ts_now, ptr %ts_dev_2, align 4
  %tv_host = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 1
  %1 = ptrtoint ptr %tv_host to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %tv_host, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then:                                          ; preds = %entry
  %ts_dev_1 = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 2
  %3 = ptrtoint ptr %ts_dev_1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ts_dev_1, align 8
  %sub = sub i32 %ts_now, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %ts_now)
  %cmp4 = icmp ugt i32 %4, %ts_now
  br i1 %cmp4, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %adapter = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 6
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 4
  %ts_used_bits = getelementptr inbounds %struct.peak_usb_adapter, ptr %6, i32 0, i32 26
  %7 = ptrtoint ptr %ts_used_bits to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ts_used_bits, align 1
  %conv = zext i8 %8 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub6 = xor i32 %notmask, -1
  %and = and i32 %sub, %sub6
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %delta_ts.0 = phi i32 [ %and, %if.then5 ], [ %sub, %if.then.if.end_crit_edge ]
  %conv7 = zext i32 %delta_ts.0 to i64
  %ts_total = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 4
  %9 = ptrtoint ptr %ts_total to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ts_total, align 8
  %add = add i64 %10, %conv7
  store i64 %add, ptr %ts_total, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @peak_usb_set_ts_now(ptr nocapture noundef %time_ref, i32 noundef %ts_now) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %time_ref to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %time_ref, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i64 @ktime_get() #12
  %2 = ptrtoint ptr %time_ref to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call1, ptr %time_ref, align 8
  %tv_host = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 1
  %3 = ptrtoint ptr %tv_host to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %tv_host, align 8
  br label %if.end17

if.else:                                          ; preds = %entry
  %tv_host4 = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 1
  %4 = ptrtoint ptr %tv_host4 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tv_host4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp ne i64 %5, 0
  %sub = sub i64 %5, %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4200000000000, i64 %sub)
  %cmp10 = icmp ugt i64 %sub, 4200000000000
  %or.cond = select i1 %tobool.not, i1 %cmp10, i1 false
  br i1 %or.cond, label %if.then11, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %time_ref to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %time_ref, align 8
  %ts_total = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 4
  %7 = ptrtoint ptr %ts_total to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %ts_total, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.else.if.end14_crit_edge
  %call15 = tail call i64 @ktime_get() #12
  %8 = ptrtoint ptr %tv_host4 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call15, ptr %tv_host4, align 8
  %tick_count = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 5
  %9 = ptrtoint ptr %tick_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tick_count, align 8
  %inc = add i32 %10, 1
  store i32 %inc, ptr %tick_count, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %if.then
  %ts_dev_2 = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 3
  %11 = ptrtoint ptr %ts_dev_2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ts_dev_2, align 4
  %ts_dev_1 = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 2
  %13 = ptrtoint ptr %ts_dev_1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ts_dev_1, align 8
  store i32 %ts_now, ptr %ts_dev_2, align 4
  %tv_host.i = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 1
  %14 = ptrtoint ptr %tv_host.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tv_host.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %cmp.i = icmp sgt i64 %15, 0
  br i1 %cmp.i, label %if.then.i, label %if.end17.peak_usb_update_ts_now.exit_crit_edge

if.end17.peak_usb_update_ts_now.exit_crit_edge:   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %peak_usb_update_ts_now.exit

if.then.i:                                        ; preds = %if.end17
  %sub.i = sub i32 %ts_now, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %ts_now)
  %cmp4.i = icmp ugt i32 %12, %ts_now
  br i1 %cmp4.i, label %if.then5.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %adapter.i = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 6
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 4
  %ts_used_bits.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %17, i32 0, i32 26
  %18 = ptrtoint ptr %ts_used_bits.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ts_used_bits.i, align 1
  %conv.i = zext i8 %19 to i32
  %notmask.i = shl nsw i32 -1, %conv.i
  %sub6.i = xor i32 %notmask.i, -1
  %and.i = and i32 %sub.i, %sub6.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then.i.if.end.i_crit_edge
  %delta_ts.0.i = phi i32 [ %and.i, %if.then5.i ], [ %sub.i, %if.then.i.if.end.i_crit_edge ]
  %conv7.i = zext i32 %delta_ts.0.i to i64
  %ts_total.i = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 4
  %20 = ptrtoint ptr %ts_total.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ts_total.i, align 8
  %add.i = add i64 %21, %conv7.i
  store i64 %add.i, ptr %ts_total.i, align 8
  br label %peak_usb_update_ts_now.exit

peak_usb_update_ts_now.exit:                      ; preds = %if.end.i, %if.end17.peak_usb_update_ts_now.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @peak_usb_get_ts_time(ptr nocapture noundef readonly %time_ref, i32 noundef %ts, ptr nocapture noundef writeonly %time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tv_host = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 1
  %0 = ptrtoint ptr %tv_host to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tv_host, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.else26, label %if.then

if.then:                                          ; preds = %entry
  %ts_dev_1 = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 2
  %2 = ptrtoint ptr %ts_dev_1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ts_dev_1, align 8
  %ts_dev_2 = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 3
  %4 = ptrtoint ptr %ts_dev_2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ts_dev_2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %ts)
  %cmp3 = icmp ugt i32 %3, %ts
  br i1 %cmp3, label %if.then1.if.end15.sink.split_crit_edge, label %if.then1.if.end15_crit_edge

if.then1.if.end15_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then1.if.end15.sink.split_crit_edge:           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %ts)
  %cmp6 = icmp ult i32 %3, %ts
  br i1 %cmp6, label %if.else.if.end15.sink.split_crit_edge, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.else.if.end15.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.else.if.end15.sink.split_crit_edge, %if.then1.if.end15.sink.split_crit_edge
  %.sink = phi i64 [ 1, %if.then1.if.end15.sink.split_crit_edge ], [ -1, %if.else.if.end15.sink.split_crit_edge ]
  %adapter9 = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 6
  %6 = ptrtoint ptr %adapter9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter9, align 4
  %ts_used_bits10 = getelementptr inbounds %struct.peak_usb_adapter, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %ts_used_bits10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ts_used_bits10, align 1
  %sh_prom12 = zext i8 %9 to i64
  %shl13.neg = shl i64 %.sink, %sh_prom12
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.else.if.end15_crit_edge, %if.then1.if.end15_crit_edge
  %delta_ts.0 = phi i64 [ 0, %if.then1.if.end15_crit_edge ], [ 0, %if.else.if.end15_crit_edge ], [ %shl13.neg, %if.end15.sink.split ]
  %sub17 = sub i32 %ts, %5
  %conv18 = sext i32 %sub17 to i64
  %add = add i64 %delta_ts.0, %conv18
  %ts_total = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 4
  %10 = ptrtoint ptr %ts_total to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ts_total, align 8
  %add19 = add i64 %add, %11
  %adapter20 = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 6
  %12 = ptrtoint ptr %adapter20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter20, align 4
  %us_per_ts_scale = getelementptr inbounds %struct.peak_usb_adapter, ptr %13, i32 0, i32 28
  %14 = ptrtoint ptr %us_per_ts_scale to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %us_per_ts_scale, align 4
  %conv21 = zext i32 %15 to i64
  %mul = mul i64 %add19, %conv21
  %us_per_ts_shift = getelementptr inbounds %struct.peak_usb_adapter, ptr %13, i32 0, i32 27
  %16 = ptrtoint ptr %us_per_ts_shift to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %us_per_ts_shift, align 4
  %sh_prom24 = zext i8 %17 to i64
  %shr = lshr i64 %mul, %sh_prom24
  %18 = ptrtoint ptr %time_ref to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %time_ref, align 8
  %mul.i = mul i64 %shr, 1000
  %add.i = add i64 %mul.i, %19
  br label %if.end28

if.else26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call27 = tail call i64 @ktime_get() #12
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.end15
  %storemerge = phi i64 [ %call27, %if.else26 ], [ %add.i, %if.end15 ]
  %20 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %storemerge, ptr %time, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @peak_usb_netif_rx(ptr noundef %skb, ptr nocapture noundef readonly %time_ref, i32 noundef %ts_low) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i.i, align 4
  %tv_host.i = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 1
  %2 = ptrtoint ptr %tv_host.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tv_host.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i, label %if.else26.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %ts_dev_1.i = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 2
  %4 = ptrtoint ptr %ts_dev_1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ts_dev_1.i, align 8
  %ts_dev_2.i = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 3
  %6 = ptrtoint ptr %ts_dev_2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ts_dev_2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.i = icmp ult i32 %5, %7
  br i1 %cmp.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %ts_low)
  %cmp3.i = icmp ugt i32 %5, %ts_low
  br i1 %cmp3.i, label %if.then1.i.if.end15.sink.split.i_crit_edge, label %if.then1.i.if.end15.i_crit_edge

if.then1.i.if.end15.i_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.then1.i.if.end15.sink.split.i_crit_edge:       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %ts_low)
  %cmp6.i = icmp ult i32 %5, %ts_low
  br i1 %cmp6.i, label %if.else.i.if.end15.sink.split.i_crit_edge, label %if.else.i.if.end15.i_crit_edge

if.else.i.if.end15.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.else.i.if.end15.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i

if.end15.sink.split.i:                            ; preds = %if.else.i.if.end15.sink.split.i_crit_edge, %if.then1.i.if.end15.sink.split.i_crit_edge
  %.sink.i = phi i64 [ 1, %if.then1.i.if.end15.sink.split.i_crit_edge ], [ -1, %if.else.i.if.end15.sink.split.i_crit_edge ]
  %adapter9.i = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 6
  %8 = ptrtoint ptr %adapter9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter9.i, align 4
  %ts_used_bits10.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %9, i32 0, i32 26
  %10 = ptrtoint ptr %ts_used_bits10.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ts_used_bits10.i, align 1
  %sh_prom12.i = zext i8 %11 to i64
  %shl13.neg.i = shl i64 %.sink.i, %sh_prom12.i
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end15.sink.split.i, %if.else.i.if.end15.i_crit_edge, %if.then1.i.if.end15.i_crit_edge
  %delta_ts.0.i = phi i64 [ 0, %if.then1.i.if.end15.i_crit_edge ], [ 0, %if.else.i.if.end15.i_crit_edge ], [ %shl13.neg.i, %if.end15.sink.split.i ]
  %sub17.i = sub i32 %ts_low, %7
  %conv18.i = sext i32 %sub17.i to i64
  %add.i = add i64 %delta_ts.0.i, %conv18.i
  %ts_total.i = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 4
  %12 = ptrtoint ptr %ts_total.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ts_total.i, align 8
  %add19.i = add i64 %add.i, %13
  %adapter20.i = getelementptr inbounds %struct.peak_time_ref, ptr %time_ref, i32 0, i32 6
  %14 = ptrtoint ptr %adapter20.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter20.i, align 4
  %us_per_ts_scale.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %15, i32 0, i32 28
  %16 = ptrtoint ptr %us_per_ts_scale.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %us_per_ts_scale.i, align 4
  %conv21.i = zext i32 %17 to i64
  %mul.i = mul i64 %add19.i, %conv21.i
  %us_per_ts_shift.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %15, i32 0, i32 27
  %18 = ptrtoint ptr %us_per_ts_shift.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %us_per_ts_shift.i, align 4
  %sh_prom24.i = zext i8 %19 to i64
  %shr.i = lshr i64 %mul.i, %sh_prom24.i
  %20 = ptrtoint ptr %time_ref to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %time_ref, align 8
  %mul.i.i = mul i64 %shr.i, 1000
  %add.i.i = add i64 %mul.i.i, %21
  br label %peak_usb_get_ts_time.exit

if.else26.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call27.i = tail call i64 @ktime_get() #12
  br label %peak_usb_get_ts_time.exit

peak_usb_get_ts_time.exit:                        ; preds = %if.else26.i, %if.end15.i
  %storemerge.i = phi i64 [ %call27.i, %if.else26.i ], [ %add.i.i, %if.end15.i ]
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %storemerge.i, ptr %hwtstamps.i, align 8
  %call1 = tail call i32 @netif_rx(ptr noundef %skb) #12
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @peak_usb_netif_rx_64(ptr noundef %skb, i32 noundef %ts_low, i32 noundef %ts_high) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 7
  %conv = zext i32 %ts_high to i64
  %shl = shl nuw i64 %conv, 32
  %conv1 = zext i32 %ts_low to i64
  %or = or i64 %shl, %conv1
  %mul = mul i64 %or, 1000
  %2 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %mul, ptr %hwtstamps.i, align 8
  %call3 = tail call i32 @netif_rx(ptr noundef %skb) #12
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @peak_usb_restart_complete(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state, align 4
  %netdev = getelementptr inbounds %struct.peak_usb_device, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 103
  %3 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @peak_usb_async_complete(ptr noundef %urb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %1) #12
  tail call void @usb_free_urb(ptr noundef %urb) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @peak_usb_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @driver_for_each_device(ptr noundef getelementptr inbounds (%struct.usb_driver, ptr @peak_usb_driver, i32 0, i32 12), ptr noundef null, ptr noundef null, ptr noundef nonnull @peak_usb_do_device_exit) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef %call) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @usb_deregister(ptr noundef nonnull @peak_usb_driver) #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_for_each_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @peak_usb_do_device_exit(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev.013 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not14 = icmp eq ptr %dev.013, null
  br i1 %tobool.not14, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %entry.for.body_crit_edge
  %dev.015 = phi ptr [ %dev.0, %if.end7.for.body_crit_edge ], [ %dev.013, %entry.for.body_crit_edge ]
  %netdev1 = getelementptr inbounds %struct.peak_usb_device, ptr %dev.015, i32 0, i32 5
  %1 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev1, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %for.body.if.end7_crit_edge, label %if.then

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then:                                          ; preds = %for.body
  %adapter = getelementptr inbounds %struct.peak_usb_device, ptr %dev.015, i32 0, i32 1
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 4
  %dev_exit = getelementptr inbounds %struct.peak_usb_adapter, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %dev_exit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_exit, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.then.if.end7_crit_edge, label %if.then4

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %9(ptr noundef nonnull %dev.015) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.then.if.end7_crit_edge, %for.body.if.end7_crit_edge
  %prev_siblings = getelementptr inbounds %struct.peak_usb_device, ptr %dev.015, i32 0, i32 15
  %10 = ptrtoint ptr %prev_siblings to i32
  call void @__asan_load4_noabort(i32 %10)
  %dev.0 = load ptr, ptr %prev_siblings, align 4
  %tobool.not = icmp eq ptr %dev.0, null
  br i1 %tobool.not, label %if.end7.for.end_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end7.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @peak_usb_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @peak_usb_driver, ptr noundef null, ptr noundef nonnull @.str.3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3, i32 noundef %call) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @peak_usb_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %2 = inttoptr i32 %1 to ptr
  %intf_probe = getelementptr inbounds %struct.peak_usb_adapter, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %intf_probe to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf_probe, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 %4(ptr noundef %intf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %err.0 = phi i32 [ 0, %if.then.if.end4_crit_edge ], [ -12, %entry.if.end4_crit_edge ]
  %ctrl_count = getelementptr inbounds %struct.peak_usb_adapter, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %ctrl_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctrl_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp64.not = icmp eq i32 %6, 0
  br i1 %cmp64.not, label %if.end4.cleanup_crit_edge, label %for.body.lr.ph

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %sizeof_dev_private.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %2, i32 0, i32 31
  %ep_msg_in.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %2, i32 0, i32 24
  %clock15.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %2, i32 0, i32 3
  %bittiming_const.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %2, i32 0, i32 4
  %data_bittiming_const.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %2, i32 0, i32 5
  %do_get_berr_counter.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %2, i32 0, i32 23
  %ctrlmode_supported.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %2, i32 0, i32 2
  %ethtool_ops.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %2, i32 0, i32 7
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %dev31.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.065 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 -128
  %9 = ptrtoint ptr %sizeof_dev_private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sizeof_dev_private.i, align 4
  %11 = tail call i32 @llvm.umax.i32(i32 %10, i32 700) #12
  %call1.i = tail call ptr @alloc_candev_mqs(i32 noundef %11, i32 noundef 10, i32 noundef 1, i32 noundef 1) #12
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3) #15
  br label %if.then7

if.end4.i:                                        ; preds = %for.body
  %add.ptr.i174.i = getelementptr i8, ptr %call1.i, i32 2304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 32) #16
  %cmd_buf.i = getelementptr i8, ptr %call1.i, i32 2872
  %13 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %cmd_buf.i, align 4
  %tobool8.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool8.not.i, label %if.end4.i.lbl_free_candev.i_crit_edge, label %if.end10.i

if.end4.i.lbl_free_candev.i_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lbl_free_candev.i

if.end10.i:                                       ; preds = %if.end4.i
  %udev.i = getelementptr i8, ptr %call1.i, i32 2628
  %14 = ptrtoint ptr %udev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i.i, ptr %udev.i, align 4
  %netdev11.i = getelementptr i8, ptr %call1.i, i32 2632
  %15 = ptrtoint ptr %netdev11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call1.i, ptr %netdev11.i, align 4
  %adapter.i = getelementptr i8, ptr %call1.i, i32 2616
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %2, ptr %adapter.i, align 4
  %ctrl_idx12.i = getelementptr i8, ptr %call1.i, i32 2620
  %17 = ptrtoint ptr %ctrl_idx12.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %i.065, ptr %ctrl_idx12.i, align 4
  %state.i = getelementptr i8, ptr %call1.i, i32 2624
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %state.i, align 4
  %19 = ptrtoint ptr %ep_msg_in.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ep_msg_in.i, align 4
  %ep_msg_in13.i = getelementptr i8, ptr %call1.i, i32 2993
  %21 = ptrtoint ptr %ep_msg_in13.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %ep_msg_in13.i, align 1
  %arrayidx.i = getelementptr %struct.peak_usb_adapter, ptr %2, i32 0, i32 25, i32 %i.065
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %ep_msg_out14.i = getelementptr i8, ptr %call1.i, i32 2994
  %24 = ptrtoint ptr %ep_msg_out14.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %ep_msg_out14.i, align 2
  %clock.i = getelementptr i8, ptr %call1.i, i32 2440
  %25 = ptrtoint ptr %clock15.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clock15.i, align 4
  %27 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %clock.i, align 4
  %28 = ptrtoint ptr %bittiming_const.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bittiming_const.i, align 4
  %bittiming_const17.i = getelementptr i8, ptr %call1.i, i32 2332
  %30 = ptrtoint ptr %bittiming_const17.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %bittiming_const17.i, align 4
  %do_set_bittiming.i = getelementptr i8, ptr %call1.i, i32 2588
  %31 = ptrtoint ptr %do_set_bittiming.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @peak_usb_set_bittiming, ptr %do_set_bittiming.i, align 4
  %32 = ptrtoint ptr %data_bittiming_const.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data_bittiming_const.i, align 4
  %data_bittiming_const20.i = getelementptr i8, ptr %call1.i, i32 2336
  %34 = ptrtoint ptr %data_bittiming_const20.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %data_bittiming_const20.i, align 4
  %do_set_data_bittiming.i = getelementptr i8, ptr %call1.i, i32 2592
  %35 = ptrtoint ptr %do_set_data_bittiming.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @peak_usb_set_data_bittiming, ptr %do_set_data_bittiming.i, align 4
  %do_set_mode.i = getelementptr i8, ptr %call1.i, i32 2596
  %36 = ptrtoint ptr %do_set_mode.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @peak_usb_set_mode, ptr %do_set_mode.i, align 4
  %37 = ptrtoint ptr %do_get_berr_counter.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %do_get_berr_counter.i, align 4
  %do_get_berr_counter24.i = getelementptr i8, ptr %call1.i, i32 2608
  %39 = ptrtoint ptr %do_get_berr_counter24.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %do_get_berr_counter24.i, align 4
  %40 = ptrtoint ptr %ctrlmode_supported.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ctrlmode_supported.i, align 4
  %ctrlmode_supported26.i = getelementptr i8, ptr %call1.i, i32 2480
  %42 = ptrtoint ptr %ctrlmode_supported26.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %ctrlmode_supported26.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 16
  %43 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @peak_usb_netdev_ops, ptr %netdev_ops.i, align 8
  %flags.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 14
  %44 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %45, 262144
  store i32 %or.i, ptr %flags.i, align 8
  %46 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ethtool_ops.i, align 4
  %ethtool_ops27.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 44
  %48 = ptrtoint ptr %ethtool_ops27.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %ethtool_ops27.i, align 16
  %rx_submitted.i = getelementptr i8, ptr %call1.i, i32 2876
  %49 = getelementptr i8, ptr %call1.i, i32 2884
  %50 = call ptr @memset(ptr %49, i32 0, i32 104)
  %51 = ptrtoint ptr %rx_submitted.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %rx_submitted.i, ptr %rx_submitted.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %call1.i, i32 2880
  %52 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %rx_submitted.i, ptr %prev.i.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %49, ptr noundef nonnull @.str.36, ptr noundef nonnull @init_usb_anchor.__key) #12
  %lock.i.i = getelementptr i8, ptr %call1.i, i32 2936
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @init_usb_anchor.__key.37, i16 noundef signext 3) #12
  %tx_submitted.i = getelementptr i8, ptr %call1.i, i32 2640
  %53 = getelementptr i8, ptr %call1.i, i32 2648
  %54 = call ptr @memset(ptr %53, i32 0, i32 104)
  %55 = ptrtoint ptr %tx_submitted.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %tx_submitted.i, ptr %tx_submitted.i, align 4
  %prev.i.i175.i = getelementptr i8, ptr %call1.i, i32 2644
  %56 = ptrtoint ptr %prev.i.i175.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %tx_submitted.i, ptr %prev.i.i175.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %53, ptr noundef nonnull @.str.36, ptr noundef nonnull @init_usb_anchor.__key) #12
  %lock.i177.i = getelementptr i8, ptr %call1.i, i32 2700
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i177.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @init_usb_anchor.__key.37, i16 noundef signext 3) #12
  %active_tx_urbs.i = getelementptr i8, ptr %call1.i, i32 2636
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_urbs.i, i32 noundef 4) #12
  %57 = ptrtoint ptr %active_tx_urbs.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 0, ptr %active_tx_urbs.i, align 4
  %echo_index.i = getelementptr i8, ptr %call1.i, i32 2756
  %58 = ptrtoint ptr %echo_index.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 10, ptr %echo_index.i, align 4
  %echo_index.1.i = getelementptr i8, ptr %call1.i, i32 2768
  %59 = ptrtoint ptr %echo_index.1.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 10, ptr %echo_index.1.i, align 4
  %echo_index.2.i = getelementptr i8, ptr %call1.i, i32 2780
  %60 = ptrtoint ptr %echo_index.2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 10, ptr %echo_index.2.i, align 4
  %echo_index.3.i = getelementptr i8, ptr %call1.i, i32 2792
  %61 = ptrtoint ptr %echo_index.3.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 10, ptr %echo_index.3.i, align 4
  %echo_index.4.i = getelementptr i8, ptr %call1.i, i32 2804
  %62 = ptrtoint ptr %echo_index.4.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 10, ptr %echo_index.4.i, align 4
  %echo_index.5.i = getelementptr i8, ptr %call1.i, i32 2816
  %63 = ptrtoint ptr %echo_index.5.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 10, ptr %echo_index.5.i, align 4
  %echo_index.6.i = getelementptr i8, ptr %call1.i, i32 2828
  %64 = ptrtoint ptr %echo_index.6.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 10, ptr %echo_index.6.i, align 4
  %echo_index.7.i = getelementptr i8, ptr %call1.i, i32 2840
  %65 = ptrtoint ptr %echo_index.7.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 10, ptr %echo_index.7.i, align 4
  %echo_index.8.i = getelementptr i8, ptr %call1.i, i32 2852
  %66 = ptrtoint ptr %echo_index.8.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 10, ptr %echo_index.8.i, align 4
  %echo_index.9.i = getelementptr i8, ptr %call1.i, i32 2864
  %67 = ptrtoint ptr %echo_index.9.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 10, ptr %echo_index.9.i, align 4
  %68 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %driver_data.i.i.i, align 4
  %prev_siblings.i = getelementptr i8, ptr %call1.i, i32 2996
  %70 = ptrtoint ptr %prev_siblings.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %prev_siblings.i, align 4
  store ptr %add.ptr.i174.i, ptr %driver_data.i.i.i, align 4
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 133, i32 1
  %71 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %dev31.i, ptr %parent.i, align 8
  %conv.i = trunc i32 %i.065 to i16
  %dev_id.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 60
  %72 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv.i, ptr %dev_id.i, align 2
  %call33.i = tail call i32 @register_candev(ptr noundef nonnull %call1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end40.i, label %do.end38.i

do.end38.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31.i, ptr noundef nonnull @.str.17, i32 noundef %call33.i) #15
  br label %lbl_restore_intf_data.i

if.end40.i:                                       ; preds = %if.end10.i
  %73 = ptrtoint ptr %prev_siblings.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev_siblings.i, align 4
  %tobool42.not.i = icmp eq ptr %74, null
  br i1 %tobool42.not.i, label %if.end40.i.if.end45.i_crit_edge, label %if.then43.i

if.end40.i.if.end45.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45.i

if.then43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  %next_siblings.i = getelementptr inbounds %struct.peak_usb_device, ptr %74, i32 0, i32 16
  %75 = ptrtoint ptr %next_siblings.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr.i174.i, ptr %next_siblings.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then43.i, %if.end40.i.if.end45.i_crit_edge
  %bcdDevice.i = getelementptr i8, ptr %8, i32 940
  %76 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %bcdDevice.i, align 4
  %conv47.i = trunc i16 %77 to i8
  %device_rev.i = getelementptr i8, ptr %call1.i, i32 2992
  %78 = ptrtoint ptr %device_rev.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv47.i, ptr %device_rev.i, align 4
  %79 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %adapter.i, align 4
  %dev_init.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %80, i32 0, i32 9
  %81 = ptrtoint ptr %dev_init.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev_init.i, align 4
  %tobool49.not.i = icmp eq ptr %82, null
  br i1 %tobool49.not.i, label %if.end45.i.if.end57.i_crit_edge, label %if.then50.i

if.end45.i.if.end57.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.i

if.then50.i:                                      ; preds = %if.end45.i
  %call53.i = tail call i32 %82(ptr noundef %add.ptr.i174.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.then50.i.if.end57.i_crit_edge, label %if.then50.i.lbl_unregister_candev.i_crit_edge

if.then50.i.lbl_unregister_candev.i_crit_edge:    ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lbl_unregister_candev.i

if.then50.i.if.end57.i_crit_edge:                 ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then50.i.if.end57.i_crit_edge, %if.end45.i.if.end57.i_crit_edge
  %83 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %adapter.i, align 4
  %dev_set_bus.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %84, i32 0, i32 16
  %85 = ptrtoint ptr %dev_set_bus.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev_set_bus.i, align 4
  %tobool59.not.i = icmp eq ptr %86, null
  br i1 %tobool59.not.i, label %if.end57.i.if.end67.i_crit_edge, label %if.then60.i

if.end57.i.if.end67.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.i

if.then60.i:                                      ; preds = %if.end57.i
  %call63.i = tail call i32 %86(ptr noundef %add.ptr.i174.i, i8 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.then60.i.if.end67.i_crit_edge, label %adap_dev_free.i

if.then60.i.if.end67.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then60.i.if.end67.i_crit_edge, %if.end57.i.if.end67.i_crit_edge
  %87 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %adapter.i, align 4
  %dev_get_device_id.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %88, i32 0, i32 17
  %89 = ptrtoint ptr %dev_get_device_id.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev_get_device_id.i, align 4
  %tobool69.not.i = icmp eq ptr %90, null
  br i1 %tobool69.not.i, label %if.end67.i.for.inc_crit_edge, label %if.then70.i

if.end67.i.for.inc_crit_edge:                     ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then70.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #14
  %device_number.i = getelementptr i8, ptr %call1.i, i32 2988
  %call73.i = tail call i32 %90(ptr noundef %add.ptr.i174.i, ptr noundef %device_number.i) #12
  br label %for.inc

adap_dev_free.i:                                  ; preds = %if.then60.i
  %91 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %adapter.i, align 4
  %dev_free.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %92, i32 0, i32 11
  %93 = ptrtoint ptr %dev_free.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev_free.i, align 4
  %tobool77.not.i = icmp eq ptr %94, null
  br i1 %tobool77.not.i, label %adap_dev_free.i.lbl_unregister_candev.i_crit_edge, label %if.then78.i

adap_dev_free.i.lbl_unregister_candev.i_crit_edge: ; preds = %adap_dev_free.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lbl_unregister_candev.i

if.then78.i:                                      ; preds = %adap_dev_free.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %94(ptr noundef %add.ptr.i174.i) #12
  br label %lbl_unregister_candev.i

lbl_unregister_candev.i:                          ; preds = %if.then78.i, %adap_dev_free.i.lbl_unregister_candev.i_crit_edge, %if.then50.i.lbl_unregister_candev.i_crit_edge
  %err.0.i = phi i32 [ %call63.i, %if.then78.i ], [ %call63.i, %adap_dev_free.i.lbl_unregister_candev.i_crit_edge ], [ %call53.i, %if.then50.i.lbl_unregister_candev.i_crit_edge ]
  tail call void @unregister_candev(ptr noundef nonnull %call1.i) #12
  br label %lbl_restore_intf_data.i

lbl_restore_intf_data.i:                          ; preds = %lbl_unregister_candev.i, %do.end38.i
  %err.1.i = phi i32 [ %call33.i, %do.end38.i ], [ %err.0.i, %lbl_unregister_candev.i ]
  %cmd_buf.i101 = getelementptr i8, ptr %call1.i, i32 2872
  %95 = ptrtoint ptr %prev_siblings.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prev_siblings.i, align 4
  %97 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %96, ptr %driver_data.i.i.i, align 4
  %98 = ptrtoint ptr %cmd_buf.i101 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cmd_buf.i101, align 4
  tail call void @kfree(ptr noundef %99) #12
  br label %lbl_free_candev.i

lbl_free_candev.i:                                ; preds = %lbl_restore_intf_data.i, %if.end4.i.lbl_free_candev.i_crit_edge
  %err.2.i = phi i32 [ %err.1.i, %lbl_restore_intf_data.i ], [ -12, %if.end4.i.lbl_free_candev.i_crit_edge ]
  tail call void @free_candev(ptr noundef nonnull %call1.i) #12
  br label %if.then7

if.then7:                                         ; preds = %lbl_free_candev.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %do.end.i ], [ %err.2.i, %lbl_free_candev.i ]
  tail call void @peak_usb_disconnect(ptr noundef %intf)
  br label %cleanup

for.inc:                                          ; preds = %if.then70.i, %if.end67.i.for.inc_crit_edge
  %100 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %2, align 4
  %device_number75.i = getelementptr i8, ptr %call1.i, i32 2988
  %102 = ptrtoint ptr %device_number75.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %device_number75.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.19, ptr noundef %101, i32 noundef %i.065, i32 noundef %103) #15
  %inc = add nuw i32 %i.065, 1
  %104 = ptrtoint ptr %ctrl_count to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ctrl_count, align 4
  %cmp = icmp ult i32 %inc, %105
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then7, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %retval.0.i.ph, %if.then7 ], [ %err.0, %if.end4.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @peak_usb_disconnect(ptr noundef %intf) #0 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not23 = icmp eq ptr %1, null
  br i1 %tobool.not23, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev8 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %dev.024 = phi ptr [ %1, %for.body.lr.ph ], [ %6, %if.end.for.body_crit_edge ]
  %netdev1 = getelementptr inbounds %struct.peak_usb_device, ptr %dev.024, i32 0, i32 5
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #12
  %prev_siblings = getelementptr inbounds %struct.peak_usb_device, ptr %dev.024, i32 0, i32 15
  %4 = call ptr @memset(ptr %name, i32 255, i32 16)
  %5 = ptrtoint ptr %prev_siblings to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev_siblings, align 4
  %state = getelementptr inbounds %struct.peak_usb_device, ptr %dev.024, i32 0, i32 3
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %and = and i32 %8, -2
  store i32 %and, ptr %state, align 4
  %call4 = call i32 @strlcpy(ptr noundef nonnull %name, ptr noundef %3, i32 noundef 16) #12
  call void @unregister_netdev(ptr noundef %3) #12
  %cmd_buf = getelementptr inbounds %struct.peak_usb_device, ptr %dev.024, i32 0, i32 9
  %9 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd_buf, align 4
  call void @kfree(ptr noundef %10) #12
  %next_siblings = getelementptr inbounds %struct.peak_usb_device, ptr %dev.024, i32 0, i32 16
  %11 = ptrtoint ptr %next_siblings to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %next_siblings, align 4
  %adapter = getelementptr inbounds %struct.peak_usb_device, ptr %dev.024, i32 0, i32 1
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 4
  %dev_free = getelementptr inbounds %struct.peak_usb_adapter, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %dev_free to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_free, align 4
  %tobool5.not = icmp eq ptr %15, null
  br i1 %tobool5.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void %15(ptr noundef nonnull %dev.024) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  call void @free_candev(ptr noundef %3) #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8, ptr noundef nonnull @.str.39, ptr noundef nonnull %name) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #12
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @peak_usb_set_bittiming(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr i8, ptr %netdev, i32 2616
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %dev_set_bittiming = getelementptr inbounds %struct.peak_usb_adapter, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %dev_set_bittiming to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_set_bittiming, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %bittiming = getelementptr i8, ptr %netdev, i32 2340
  %call2 = tail call i32 %3(ptr noundef %add.ptr.i, ptr noundef %bittiming) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.20, i32 noundef %call2) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @peak_usb_set_data_bittiming(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr i8, ptr %netdev, i32 2616
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %dev_set_data_bittiming = getelementptr inbounds %struct.peak_usb_adapter, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev_set_data_bittiming to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_set_data_bittiming, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %data_bittiming = getelementptr i8, ptr %netdev, i32 2372
  %call2 = tail call i32 %3(ptr noundef %add.ptr.i, ptr noundef %data_bittiming) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.21, i32 noundef %call2) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @peak_usb_set_mode(ptr noundef %netdev, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp eq i32 %mode, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %adapter.i = getelementptr i8, ptr %netdev, i32 2616
  %0 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter.i, align 4
  %dev_restart_async.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %dev_restart_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_restart_async.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %state.i.i = getelementptr i8, ptr %netdev, i32 2472
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state.i.i, align 4
  %netdev.i.i = getelementptr i8, ptr %netdev, i32 2632
  %5 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev.i.i, align 4
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 103
  %7 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %8) #12
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #12
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.if.then_crit_edge, label %if.end3.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end3.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2592, i32 noundef 32) #16
  %tobool5.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not.i, label %if.end3.i.if.then.sink.split_crit_edge, label %if.end7.i

if.end3.i.if.then.sink.split_crit_edge:           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.sink.split

if.end7.i:                                        ; preds = %if.end3.i
  %10 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter.i, align 4
  %dev_restart_async9.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %dev_restart_async9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_restart_async9.i, align 4
  %call10.i = tail call i32 %13(ptr noundef %add.ptr.i, ptr noundef nonnull %call.i, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end7.i.cleanup_crit_edge, label %if.end13.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %if.then.sink.split

if.then.sink.split:                               ; preds = %if.end13.i, %if.end3.i.if.then.sink.split_crit_edge
  %retval.0.i.ph.ph = phi i32 [ %call10.i, %if.end13.i ], [ -12, %if.end3.i.if.then.sink.split_crit_edge ]
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #12
  br label %if.then

if.then:                                          ; preds = %if.then.sink.split, %if.end.i.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end.i.if.then_crit_edge ], [ %retval.0.i.ph.ph, %if.then.sink.split ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i.ph) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end7.i.cleanup_crit_edge, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %if.then ], [ 0, %if.then.i ], [ 0, %if.end7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @peak_usb_ndo_open(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call i32 @open_candev(ptr noundef %netdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %netdev1.i = getelementptr i8, ptr %netdev, i32 2632
  %0 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1.i, align 4
  %adapter.i = getelementptr i8, ptr %netdev, i32 2616
  %udev.i = getelementptr i8, ptr %netdev, i32 2628
  %ep_msg_in.i = getelementptr i8, ptr %netdev, i32 2993
  %rx_submitted.i = getelementptr i8, ptr %netdev, i32 2876
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.0258.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then24.i.thread, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %for.body.i
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 4
  %rx_buffer_size.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %rx_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_buffer_size.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #17
  %tobool3.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not.i, label %if.end8.i.i.if.then24.i_crit_edge, label %if.end5.i

if.end8.i.i.if.then24.i_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24.i

if.end5.i:                                        ; preds = %if.end8.i.i
  %6 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev.i, align 4
  %8 = ptrtoint ptr %ep_msg_in.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ep_msg_in.i, align 1
  %conv.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %11, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or8.i = or i32 %or.i.i, -1073741696
  %12 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i, align 4
  %rx_buffer_size10.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %13, i32 0, i32 29
  %14 = ptrtoint ptr %rx_buffer_size10.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_buffer_size10.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %7, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 10
  %17 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or8.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 19
  %19 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %15, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 28
  %20 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @peak_usb_read_bulk_callback, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 27
  %21 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i, ptr %context4.i.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 13
  %22 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %transfer_flags.i, align 4
  %or11.i = or i32 %23, 256
  store i32 %or11.i, ptr %transfer_flags.i, align 4
  tail call void @usb_anchor_urb(ptr noundef nonnull %call.i, ptr noundef %rx_submitted.i) #12
  %call12.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call.i, i32 noundef 3264) #12
  %24 = zext i32 %call12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12.i, label %if.end5.i.if.end19.i_crit_edge [
    i32 0, label %for.inc.i
    i32 -19, label %if.then17.i
  ]

if.end5.i.if.end19.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev1.i, align 4
  tail call void @netif_device_detach(ptr noundef %26) #12
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %if.end5.i.if.end19.i_crit_edge
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call.i) #12
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %if.then24.i

for.inc.i:                                        ; preds = %if.end5.i
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #12
  %inc.i = add nuw nsw i32 %i.0258.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.inc.i.if.end29.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end29.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then24.i:                                      ; preds = %if.end19.i, %if.end8.i.i.if.then24.i_crit_edge
  %err.1.ph.ph.i = phi i32 [ %call12.i, %if.end19.i ], [ -12, %if.end8.i.i.if.then24.i_crit_edge ]
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0258.i)
  %cmp25.i = icmp eq i32 %i.0258.i, 0
  br i1 %cmp25.i, label %peak_usb_start.exit, label %if.then24.i.if.end28.i_crit_edge

if.then24.i.if.end28.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.then24.i.thread:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0258.i)
  %cmp25.i23 = icmp eq i32 %i.0258.i, 0
  br i1 %cmp25.i23, label %peak_usb_start.exit.thread25, label %if.then24.i.thread.if.end28.i_crit_edge

if.then24.i.thread.if.end28.i_crit_edge:          ; preds = %if.then24.i.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

peak_usb_start.exit.thread25:                     ; preds = %if.then24.i.thread
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.24) #15
  br label %if.then4

if.end28.i:                                       ; preds = %if.then24.i.thread.if.end28.i_crit_edge, %if.then24.i.if.end28.i_crit_edge
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.25) #15
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end28.i, %for.inc.i.if.end29.i_crit_edge
  %tx_contexts.i = getelementptr i8, ptr %netdev, i32 2752
  %ep_msg_out.i = getelementptr i8, ptr %netdev, i32 2994
  br label %for.body33.i

for.body33.i:                                     ; preds = %for.inc61.i.for.body33.i_crit_edge, %if.end29.i
  %i.1259.i = phi i32 [ 0, %if.end29.i ], [ %inc62.i, %for.inc61.i.for.body33.i_crit_edge ]
  %call36.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %tobool37.not.i = icmp eq ptr %call36.i, null
  br i1 %tobool37.not.i, label %for.body33.i.if.then66.i_crit_edge, label %if.end8.i211.i

for.body33.i.if.then66.i_crit_edge:               ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then66.i

if.end8.i211.i:                                   ; preds = %for.body33.i
  %27 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i, align 4
  %tx_buffer_size.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %28, i32 0, i32 30
  %29 = ptrtoint ptr %tx_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_buffer_size.i, align 4
  %call9.i210.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 3264) #17
  %tobool42.not.i = icmp eq ptr %call9.i210.i, null
  br i1 %tobool42.not.i, label %if.then43.i, label %for.inc61.i

if.then43.i:                                      ; preds = %if.end8.i211.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_free_urb(ptr noundef nonnull %call36.i) #12
  br label %if.then66.i

for.inc61.i:                                      ; preds = %if.end8.i211.i
  %add.ptr.i15 = getelementptr %struct.peak_tx_urb_context, ptr %tx_contexts.i, i32 %i.1259.i
  %31 = ptrtoint ptr %add.ptr.i15 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.i, ptr %add.ptr.i15, align 4
  %urb46.i = getelementptr %struct.peak_tx_urb_context, ptr %tx_contexts.i, i32 %i.1259.i, i32 2
  %32 = ptrtoint ptr %urb46.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call36.i, ptr %urb46.i, align 4
  %33 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %udev.i, align 4
  %35 = ptrtoint ptr %ep_msg_out.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ep_msg_out.i, align 2
  %conv49.i = zext i8 %36 to i32
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %34, align 8
  %shl.i214.i = shl i32 %38, 8
  %shl1.i215.i = shl nuw nsw i32 %conv49.i, 15
  %or.i216.i = or i32 %shl.i214.i, %shl1.i215.i
  %or51.i = or i32 %or.i216.i, -1073741824
  %39 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter.i, align 4
  %tx_buffer_size53.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %40, i32 0, i32 30
  %41 = ptrtoint ptr %tx_buffer_size53.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_buffer_size53.i, align 4
  %dev1.i217.i = getelementptr inbounds %struct.urb, ptr %call36.i, i32 0, i32 8
  %43 = ptrtoint ptr %dev1.i217.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %34, ptr %dev1.i217.i, align 4
  %pipe2.i218.i = getelementptr inbounds %struct.urb, ptr %call36.i, i32 0, i32 10
  %44 = ptrtoint ptr %pipe2.i218.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or51.i, ptr %pipe2.i218.i, align 4
  %transfer_buffer3.i219.i = getelementptr inbounds %struct.urb, ptr %call36.i, i32 0, i32 14
  %45 = ptrtoint ptr %transfer_buffer3.i219.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call9.i210.i, ptr %transfer_buffer3.i219.i, align 4
  %transfer_buffer_length.i220.i = getelementptr inbounds %struct.urb, ptr %call36.i, i32 0, i32 19
  %46 = ptrtoint ptr %transfer_buffer_length.i220.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %42, ptr %transfer_buffer_length.i220.i, align 4
  %complete.i221.i = getelementptr inbounds %struct.urb, ptr %call36.i, i32 0, i32 28
  %47 = ptrtoint ptr %complete.i221.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @peak_usb_write_bulk_callback, ptr %complete.i221.i, align 4
  %context4.i222.i = getelementptr inbounds %struct.urb, ptr %call36.i, i32 0, i32 27
  %48 = ptrtoint ptr %context4.i222.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr.i15, ptr %context4.i222.i, align 4
  %transfer_flags54.i = getelementptr inbounds %struct.urb, ptr %call36.i, i32 0, i32 13
  %49 = ptrtoint ptr %transfer_flags54.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %transfer_flags54.i, align 4
  %or55.i = or i32 %50, 256
  store i32 %or55.i, ptr %transfer_flags54.i, align 4
  %inc62.i = add nuw nsw i32 %i.1259.i, 1
  %exitcond284.not.i = icmp eq i32 %inc62.i, 10
  br i1 %exitcond284.not.i, label %for.inc61.i.if.end71.i_crit_edge, label %for.inc61.i.for.body33.i_crit_edge

for.inc61.i.for.body33.i_crit_edge:               ; preds = %for.inc61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body33.i

for.inc61.i.if.end71.i_crit_edge:                 ; preds = %for.inc61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71.i

if.then66.i:                                      ; preds = %if.then43.i, %for.body33.i.if.then66.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1259.i)
  %cmp67.i = icmp eq i32 %i.1259.i, 0
  br i1 %cmp67.i, label %if.then69.i, label %if.end70.i

if.then69.i:                                      ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.26) #15
  br label %peak_usb_start.exit.thread18

if.end70.i:                                       ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.27) #15
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.end70.i, %for.inc61.i.if.end71.i_crit_edge
  %51 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adapter.i, align 4
  %dev_start.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %52, i32 0, i32 20
  %53 = ptrtoint ptr %dev_start.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_start.i, align 4
  %tobool73.not.i = icmp eq ptr %54, null
  br i1 %tobool73.not.i, label %if.end71.i.if.end81.i_crit_edge, label %if.then74.i

if.end71.i.if.end81.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.i

if.then74.i:                                      ; preds = %if.end71.i
  %call77.i = tail call i32 %54(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %if.then74.i.if.end81.i_crit_edge, label %if.then74.i.err_adapter.i_crit_edge

if.then74.i.err_adapter.i_crit_edge:              ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_adapter.i

if.then74.i.if.end81.i_crit_edge:                 ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then74.i.if.end81.i_crit_edge, %if.end71.i.if.end81.i_crit_edge
  %state.i = getelementptr i8, ptr %netdev, i32 2624
  %55 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %state.i, align 4
  %or82.i = or i32 %56, 2
  store i32 %or82.i, ptr %state.i, align 4
  %57 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adapter.i, align 4
  %dev_set_bus.i = getelementptr inbounds %struct.peak_usb_adapter, ptr %58, i32 0, i32 16
  %59 = ptrtoint ptr %dev_set_bus.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev_set_bus.i, align 4
  %tobool84.not.i = icmp eq ptr %60, null
  br i1 %tobool84.not.i, label %if.end81.i.peak_usb_start.exit.thread_crit_edge, label %if.then85.i

if.end81.i.peak_usb_start.exit.thread_crit_edge:  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %peak_usb_start.exit.thread

if.then85.i:                                      ; preds = %if.end81.i
  %call88.i = tail call i32 %60(ptr noundef %add.ptr.i, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %tobool89.not.i = icmp eq i32 %call88.i, 0
  br i1 %tobool89.not.i, label %if.then85.i.peak_usb_start.exit.thread_crit_edge, label %if.then85.i.err_adapter.i_crit_edge

if.then85.i.err_adapter.i_crit_edge:              ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_adapter.i

if.then85.i.peak_usb_start.exit.thread_crit_edge: ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %peak_usb_start.exit.thread

peak_usb_start.exit.thread:                       ; preds = %if.then85.i.peak_usb_start.exit.thread_crit_edge, %if.end81.i.peak_usb_start.exit.thread_crit_edge
  %state93.i = getelementptr i8, ptr %netdev, i32 2472
  %61 = ptrtoint ptr %state93.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %state93.i, align 4
  br label %if.end5

err_adapter.i:                                    ; preds = %if.then85.i.err_adapter.i_crit_edge, %if.then74.i.err_adapter.i_crit_edge
  %err.6.i = phi i32 [ %call77.i, %if.then74.i.err_adapter.i_crit_edge ], [ %call88.i, %if.then85.i.err_adapter.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %err.6.i)
  %cmp94.i = icmp eq i32 %err.6.i, -19
  br i1 %cmp94.i, label %if.then96.i, label %err_adapter.i.if.end98.i_crit_edge

err_adapter.i.if.end98.i_crit_edge:               ; preds = %err_adapter.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98.i

if.then96.i:                                      ; preds = %err_adapter.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %netdev1.i, align 4
  tail call void @netif_device_detach(ptr noundef %63) #12
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then96.i, %err_adapter.i.if.end98.i_crit_edge
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %err.6.i) #15
  %urb104.i = getelementptr i8, ptr %netdev, i32 2760
  %64 = ptrtoint ptr %urb104.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %urb104.i, align 4
  tail call void @usb_free_urb(ptr noundef %65) #12
  %66 = ptrtoint ptr %urb104.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %urb104.i, align 4
  %urb104.1.i = getelementptr i8, ptr %netdev, i32 2772
  %67 = ptrtoint ptr %urb104.1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %urb104.1.i, align 4
  tail call void @usb_free_urb(ptr noundef %68) #12
  %69 = ptrtoint ptr %urb104.1.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %urb104.1.i, align 4
  %urb104.2.i = getelementptr i8, ptr %netdev, i32 2784
  %70 = ptrtoint ptr %urb104.2.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %urb104.2.i, align 4
  tail call void @usb_free_urb(ptr noundef %71) #12
  %72 = ptrtoint ptr %urb104.2.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %urb104.2.i, align 4
  %urb104.3.i = getelementptr i8, ptr %netdev, i32 2796
  %73 = ptrtoint ptr %urb104.3.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %urb104.3.i, align 4
  tail call void @usb_free_urb(ptr noundef %74) #12
  %75 = ptrtoint ptr %urb104.3.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %urb104.3.i, align 4
  %urb104.4.i = getelementptr i8, ptr %netdev, i32 2808
  %76 = ptrtoint ptr %urb104.4.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %urb104.4.i, align 4
  tail call void @usb_free_urb(ptr noundef %77) #12
  %78 = ptrtoint ptr %urb104.4.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %urb104.4.i, align 4
  %urb104.5.i = getelementptr i8, ptr %netdev, i32 2820
  %79 = ptrtoint ptr %urb104.5.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %urb104.5.i, align 4
  tail call void @usb_free_urb(ptr noundef %80) #12
  %81 = ptrtoint ptr %urb104.5.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %urb104.5.i, align 4
  %urb104.6.i = getelementptr i8, ptr %netdev, i32 2832
  %82 = ptrtoint ptr %urb104.6.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %urb104.6.i, align 4
  tail call void @usb_free_urb(ptr noundef %83) #12
  %84 = ptrtoint ptr %urb104.6.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %urb104.6.i, align 4
  %urb104.7.i = getelementptr i8, ptr %netdev, i32 2844
  %85 = ptrtoint ptr %urb104.7.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %urb104.7.i, align 4
  tail call void @usb_free_urb(ptr noundef %86) #12
  %87 = ptrtoint ptr %urb104.7.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %urb104.7.i, align 4
  %urb104.8.i = getelementptr i8, ptr %netdev, i32 2856
  %88 = ptrtoint ptr %urb104.8.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %urb104.8.i, align 4
  tail call void @usb_free_urb(ptr noundef %89) #12
  %90 = ptrtoint ptr %urb104.8.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %urb104.8.i, align 4
  %urb104.9.i = getelementptr i8, ptr %netdev, i32 2868
  %91 = ptrtoint ptr %urb104.9.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %urb104.9.i, align 4
  tail call void @usb_free_urb(ptr noundef %92) #12
  %93 = ptrtoint ptr %urb104.9.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %urb104.9.i, align 4
  br label %peak_usb_start.exit.thread18

peak_usb_start.exit.thread18:                     ; preds = %if.end98.i, %if.then69.i
  %err.7.i = phi i32 [ -12, %if.then69.i ], [ %err.6.i, %if.end98.i ]
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted.i) #12
  br label %if.then4

peak_usb_start.exit:                              ; preds = %if.then24.i
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.24) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.ph.ph.i)
  %tobool3.not = icmp eq i32 %err.1.ph.ph.i, 0
  br i1 %tobool3.not, label %peak_usb_start.exit.if.end5_crit_edge, label %peak_usb_start.exit.if.then4_crit_edge

peak_usb_start.exit.if.then4_crit_edge:           ; preds = %peak_usb_start.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

peak_usb_start.exit.if.end5_crit_edge:            ; preds = %peak_usb_start.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %peak_usb_start.exit.if.then4_crit_edge, %peak_usb_start.exit.thread18, %peak_usb_start.exit.thread25
  %retval.0.i21 = phi i32 [ %err.7.i, %peak_usb_start.exit.thread18 ], [ %err.1.ph.ph.i, %peak_usb_start.exit.if.then4_crit_edge ], [ -12, %peak_usb_start.exit.thread25 ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.23, i32 noundef %retval.0.i21) #15
  tail call void @close_candev(ptr noundef %netdev) #12
  br label %cleanup

if.end5:                                          ; preds = %peak_usb_start.exit.if.end5_crit_edge, %peak_usb_start.exit.thread
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %94 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %95, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i21, %if.then4 ], [ 0, %if.end5 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @peak_usb_ndo_stop(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state = getelementptr i8, ptr %netdev, i32 2624
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, -3
  store i32 %and, ptr %state, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  tail call void @close_candev(ptr noundef %netdev) #12
  %state1 = getelementptr i8, ptr %netdev, i32 2472
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %state1, align 4
  %rx_submitted.i = getelementptr i8, ptr %netdev, i32 2876
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted.i) #12
  %urb1.i = getelementptr i8, ptr %netdev, i32 2760
  %5 = ptrtoint ptr %urb1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %urb1.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.cleanup.i_crit_edge, label %lor.lhs.false.i

entry.cleanup.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %entry
  %echo_index.i = getelementptr i8, ptr %netdev, i32 2756
  %7 = ptrtoint ptr %echo_index.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %echo_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %8)
  %cmp4.not.i = icmp eq i32 %8, 10
  br i1 %cmp4.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup.i_crit_edge

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_free_urb(ptr noundef nonnull %6) #12
  %9 = ptrtoint ptr %urb1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %urb1.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %lor.lhs.false.i.cleanup.i_crit_edge, %entry.cleanup.i_crit_edge
  %urb1.1.i = getelementptr i8, ptr %netdev, i32 2772
  %10 = ptrtoint ptr %urb1.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb1.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %11, null
  br i1 %tobool.not.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %lor.lhs.false.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.1.i

lor.lhs.false.1.i:                                ; preds = %cleanup.i
  %echo_index.1.i = getelementptr i8, ptr %netdev, i32 2768
  %12 = ptrtoint ptr %echo_index.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %echo_index.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %13)
  %cmp4.not.1.i = icmp eq i32 %13, 10
  br i1 %cmp4.not.1.i, label %if.end.1.i, label %lor.lhs.false.1.i.cleanup.1.i_crit_edge

lor.lhs.false.1.i.cleanup.1.i_crit_edge:          ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.1.i

if.end.1.i:                                       ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_free_urb(ptr noundef nonnull %11) #12
  %14 = ptrtoint ptr %urb1.1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %urb1.1.i, align 4
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.end.1.i, %lor.lhs.false.1.i.cleanup.1.i_crit_edge, %cleanup.i.cleanup.1.i_crit_edge
  %urb1.2.i = getelementptr i8, ptr %netdev, i32 2784
  %15 = ptrtoint ptr %urb1.2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %urb1.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %16, null
  br i1 %tobool.not.2.i, label %cleanup.1.i.cleanup.2.i_crit_edge, label %lor.lhs.false.2.i

cleanup.1.i.cleanup.2.i_crit_edge:                ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.2.i

lor.lhs.false.2.i:                                ; preds = %cleanup.1.i
  %echo_index.2.i = getelementptr i8, ptr %netdev, i32 2780
  %17 = ptrtoint ptr %echo_index.2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %echo_index.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %18)
  %cmp4.not.2.i = icmp eq i32 %18, 10
  br i1 %cmp4.not.2.i, label %if.end.2.i, label %lor.lhs.false.2.i.cleanup.2.i_crit_edge

lor.lhs.false.2.i.cleanup.2.i_crit_edge:          ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.2.i

if.end.2.i:                                       ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_free_urb(ptr noundef nonnull %16) #12
  %19 = ptrtoint ptr %urb1.2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %urb1.2.i, align 4
  br label %cleanup.2.i

cleanup.2.i:                                      ; preds = %if.end.2.i, %lor.lhs.false.2.i.cleanup.2.i_crit_edge, %cleanup.1.i.cleanup.2.i_crit_edge
  %urb1.3.i = getelementptr i8, ptr %netdev, i32 2796
  %20 = ptrtoint ptr %urb1.3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %urb1.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %21, null
  br i1 %tobool.not.3.i, label %cleanup.2.i.cleanup.3.i_crit_edge, label %lor.lhs.false.3.i

cleanup.2.i.cleanup.3.i_crit_edge:                ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.3.i

lor.lhs.false.3.i:                                ; preds = %cleanup.2.i
  %echo_index.3.i = getelementptr i8, ptr %netdev, i32 2792
  %22 = ptrtoint ptr %echo_index.3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %echo_index.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %23)
  %cmp4.not.3.i = icmp eq i32 %23, 10
  br i1 %cmp4.not.3.i, label %if.end.3.i, label %lor.lhs.false.3.i.cleanup.3.i_crit_edge

lor.lhs.false.3.i.cleanup.3.i_crit_edge:          ; preds = %lor.lhs.false.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.3.i

if.end.3.i:                                       ; preds = %lor.lhs.false.3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_free_urb(ptr noundef nonnull %21) #12
  %24 = ptrtoint ptr %urb1.3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %urb1.3.i, align 4
  br label %cleanup.3.i

cleanup.3.i:                                      ; preds = %if.end.3.i, %lor.lhs.false.3.i.cleanup.3.i_crit_edge, %cleanup.2.i.cleanup.3.i_crit_edge
  %urb1.4.i = getelementptr i8, ptr %netdev, i32 2808
  %25 = ptrtoint ptr %urb1.4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %urb1.4.i, align 4
  %tobool.not.4.i = icmp eq ptr %26, null
  br i1 %tobool.not.4.i, label %cleanup.3.i.cleanup.4.i_crit_edge, label %lor.lhs.false.4.i

cleanup.3.i.cleanup.4.i_crit_edge:                ; preds = %cleanup.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.4.i

lor.lhs.false.4.i:                                ; preds = %cleanup.3.i
  %echo_index.4.i = getelementptr i8, ptr %netdev, i32 2804
  %27 = ptrtoint ptr %echo_index.4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %echo_index.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %28)
  %cmp4.not.4.i = icmp eq i32 %28, 10
  br i1 %cmp4.not.4.i, label %if.end.4.i, label %lor.lhs.false.4.i.cleanup.4.i_crit_edge

lor.lhs.false.4.i.cleanup.4.i_crit_edge:          ; preds = %lor.lhs.false.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.4.i

if.end.4.i:                                       ; preds = %lor.lhs.false.4.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_free_urb(ptr noundef nonnull %26) #12
  %29 = ptrtoint ptr %urb1.4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %urb1.4.i, align 4
  br label %cleanup.4.i

cleanup.4.i:                                      ; preds = %if.end.4.i, %lor.lhs.false.4.i.cleanup.4.i_crit_edge, %cleanup.3.i.cleanup.4.i_crit_edge
  %urb1.5.i = getelementptr i8, ptr %netdev, i32 2820
  %30 = ptrtoint ptr %urb1.5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %urb1.5.i, align 4
  %tobool.not.5.i = icmp eq ptr %31, null
  br i1 %tobool.not.5.i, label %cleanup.4.i.cleanup.5.i_crit_edge, label %lor.lhs.false.5.i

cleanup.4.i.cleanup.5.i_crit_edge:                ; preds = %cleanup.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.5.i

lor.lhs.false.5.i:                                ; preds = %cleanup.4.i
  %echo_index.5.i = getelementptr i8, ptr %netdev, i32 2816
  %32 = ptrtoint ptr %echo_index.5.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %echo_index.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %33)
  %cmp4.not.5.i = icmp eq i32 %33, 10
  br i1 %cmp4.not.5.i, label %if.end.5.i, label %lor.lhs.false.5.i.cleanup.5.i_crit_edge

lor.lhs.false.5.i.cleanup.5.i_crit_edge:          ; preds = %lor.lhs.false.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.5.i

if.end.5.i:                                       ; preds = %lor.lhs.false.5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_free_urb(ptr noundef nonnull %31) #12
  %34 = ptrtoint ptr %urb1.5.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %urb1.5.i, align 4
  br label %cleanup.5.i

cleanup.5.i:                                      ; preds = %if.end.5.i, %lor.lhs.false.5.i.cleanup.5.i_crit_edge, %cleanup.4.i.cleanup.5.i_crit_edge
  %urb1.6.i = getelementptr i8, ptr %netdev, i32 2832
  %35 = ptrtoint ptr %urb1.6.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %urb1.6.i, align 4
  %tobool.not.6.i = icmp eq ptr %36, null
  br i1 %tobool.not.6.i, label %cleanup.5.i.cleanup.6.i_crit_edge, label %lor.lhs.false.6.i

cleanup.5.i.cleanup.6.i_crit_edge:                ; preds = %cleanup.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.6.i

lor.lhs.false.6.i:                                ; preds = %cleanup.5.i
  %echo_index.6.i = getelementptr i8, ptr %netdev, i32 2828
  %37 = ptrtoint ptr %echo_index.6.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %echo_index.6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %38)
  %cmp4.not.6.i = icmp eq i32 %38, 10
  br i1 %cmp4.not.6.i, label %if.end.6.i, label %lor.lhs.false.6.i.cleanup.6.i_crit_edge

lor.lhs.false.6.i.cleanup.6.i_crit_edge:          ; preds = %lor.lhs.false.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.6.i

if.end.6.i:                                       ; preds = %lor.lhs.false.6.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_free_urb(ptr noundef nonnull %36) #12
  %39 = ptrtoint ptr %urb1.6.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %urb1.6.i, align 4
  br label %cleanup.6.i

cleanup.6.i:                                      ; preds = %if.end.6.i, %lor.lhs.false.6.i.cleanup.6.i_crit_edge, %cleanup.5.i.cleanup.6.i_crit_edge
  %urb1.7.i = getelementptr i8, ptr %netdev, i32 2844
  %40 = ptrtoint ptr %urb1.7.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %urb1.7.i, align 4
  %tobool.not.7.i = icmp eq ptr %41, null
  br i1 %tobool.not.7.i, label %cleanup.6.i.cleanup.7.i_crit_edge, label %lor.lhs.false.7.i

cleanup.6.i.cleanup.7.i_crit_edge:                ; preds = %cleanup.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.7.i

lor.lhs.false.7.i:                                ; preds = %cleanup.6.i
  %echo_index.7.i = getelementptr i8, ptr %netdev, i32 2840
  %42 = ptrtoint ptr %echo_index.7.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %echo_index.7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %43)
  %cmp4.not.7.i = icmp eq i32 %43, 10
  br i1 %cmp4.not.7.i, label %if.end.7.i, label %lor.lhs.false.7.i.cleanup.7.i_crit_edge

lor.lhs.false.7.i.cleanup.7.i_crit_edge:          ; preds = %lor.lhs.false.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.7.i

if.end.7.i:                                       ; preds = %lor.lhs.false.7.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_free_urb(ptr noundef nonnull %41) #12
  %44 = ptrtoint ptr %urb1.7.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %urb1.7.i, align 4
  br label %cleanup.7.i

cleanup.7.i:                                      ; preds = %if.end.7.i, %lor.lhs.false.7.i.cleanup.7.i_crit_edge, %cleanup.6.i.cleanup.7.i_crit_edge
  %urb1.8.i = getelementptr i8, ptr %netdev, i32 2856
  %45 = ptrtoint ptr %urb1.8.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %urb1.8.i, align 4
  %tobool.not.8.i = icmp eq ptr %46, null
  br i1 %tobool.not.8.i, label %cleanup.7.i.cleanup.8.i_crit_edge, label %lor.lhs.false.8.i

cleanup.7.i.cleanup.8.i_crit_edge:                ; preds = %cleanup.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.8.i

lor.lhs.false.8.i:                                ; preds = %cleanup.7.i
  %echo_index.8.i = getelementptr i8, ptr %netdev, i32 2852
  %47 = ptrtoint ptr %echo_index.8.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %echo_index.8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %48)
  %cmp4.not.8.i = icmp eq i32 %48, 10
  br i1 %cmp4.not.8.i, label %if.end.8.i, label %lor.lhs.false.8.i.cleanup.8.i_crit_edge

lor.lhs.false.8.i.cleanup.8.i_crit_edge:          ; preds = %lor.lhs.false.8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.8.i

if.end.8.i:                                       ; preds = %lor.lhs.false.8.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_free_urb(ptr noundef nonnull %46) #12
  %49 = ptrtoint ptr %urb1.8.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %urb1.8.i, align 4
  br label %cleanup.8.i

cleanup.8.i:                                      ; preds = %if.end.8.i, %lor.lhs.false.8.i.cleanup.8.i_crit_edge, %cleanup.7.i.cleanup.8.i_crit_edge
  %urb1.9.i = getelementptr i8, ptr %netdev, i32 2868
  %50 = ptrtoint ptr %urb1.9.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %urb1.9.i, align 4
  %tobool.not.9.i = icmp eq ptr %51, null
  br i1 %tobool.not.9.i, label %cleanup.8.i.peak_usb_unlink_all_urbs.exit_crit_edge, label %lor.lhs.false.9.i

cleanup.8.i.peak_usb_unlink_all_urbs.exit_crit_edge: ; preds = %cleanup.8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %peak_usb_unlink_all_urbs.exit

lor.lhs.false.9.i:                                ; preds = %cleanup.8.i
  %echo_index.9.i = getelementptr i8, ptr %netdev, i32 2864
  %52 = ptrtoint ptr %echo_index.9.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %echo_index.9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %53)
  %cmp4.not.9.i = icmp eq i32 %53, 10
  br i1 %cmp4.not.9.i, label %if.end.9.i, label %lor.lhs.false.9.i.peak_usb_unlink_all_urbs.exit_crit_edge

lor.lhs.false.9.i.peak_usb_unlink_all_urbs.exit_crit_edge: ; preds = %lor.lhs.false.9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %peak_usb_unlink_all_urbs.exit

if.end.9.i:                                       ; preds = %lor.lhs.false.9.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_free_urb(ptr noundef nonnull %51) #12
  %54 = ptrtoint ptr %urb1.9.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %urb1.9.i, align 4
  br label %peak_usb_unlink_all_urbs.exit

peak_usb_unlink_all_urbs.exit:                    ; preds = %if.end.9.i, %lor.lhs.false.9.i.peak_usb_unlink_all_urbs.exit_crit_edge, %cleanup.8.i.peak_usb_unlink_all_urbs.exit_crit_edge
  %tx_submitted.i = getelementptr i8, ptr %netdev, i32 2640
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_submitted.i) #12
  %active_tx_urbs.i = getelementptr i8, ptr %netdev, i32 2636
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_urbs.i, i32 noundef 4) #12
  %55 = ptrtoint ptr %active_tx_urbs.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 0, ptr %active_tx_urbs.i, align 4
  %adapter = getelementptr i8, ptr %netdev, i32 2616
  %56 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adapter, align 4
  %dev_stop = getelementptr inbounds %struct.peak_usb_adapter, ptr %57, i32 0, i32 21
  %58 = ptrtoint ptr %dev_stop to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_stop, align 4
  %tobool.not = icmp eq ptr %59, null
  br i1 %tobool.not, label %peak_usb_unlink_all_urbs.exit.if.end_crit_edge, label %if.then

peak_usb_unlink_all_urbs.exit.if.end_crit_edge:   ; preds = %peak_usb_unlink_all_urbs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %peak_usb_unlink_all_urbs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 %59(ptr noundef %add.ptr.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %peak_usb_unlink_all_urbs.exit.if.end_crit_edge
  %60 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adapter, align 4
  %dev_set_bus = getelementptr inbounds %struct.peak_usb_adapter, ptr %61, i32 0, i32 16
  %62 = ptrtoint ptr %dev_set_bus to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_set_bus, align 4
  %tobool6.not = icmp eq ptr %63, null
  br i1 %tobool6.not, label %if.end.if.end14_crit_edge, label %if.then7

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then7:                                         ; preds = %if.end
  %call10 = tail call i32 %63(ptr noundef %add.ptr.i, i8 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then7.if.end14_crit_edge, label %if.then7.cleanup15_crit_edge

if.then7.cleanup15_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end14:                                         ; preds = %if.then7.if.end14_crit_edge, %if.end.if.end14_crit_edge
  br label %cleanup15

cleanup15:                                        ; preds = %if.end14, %if.then7.cleanup15_crit_edge
  %retval.1 = phi i32 [ 0, %if.end14 ], [ %call10, %if.then7.cleanup15_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @peak_usb_ndo_start_xmit(ptr noundef %skb, ptr noundef %netdev) #0 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #12
  %adapter = getelementptr i8, ptr %netdev, i32 2616
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %tx_buffer_size = getelementptr inbounds %struct.peak_usb_adapter, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %tx_buffer_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_buffer_size, align 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %size, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %7 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %protocol.i, align 8
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %8, label %entry.can_dropped_invalid_skb.exit.thread_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

entry.can_dropped_invalid_skb.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %can_dropped_invalid_skb.exit.thread

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp2.not.i = icmp eq i32 %11, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit.thread_crit_edge, !prof !109

if.then.i.can_dropped_invalid_skb.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %can_dropped_invalid_skb.exit.thread

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %13)
  %cmp6.i = icmp ugt i8 %13, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit.thread_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !110

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit.thread_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %can_dropped_invalid_skb.exit.thread

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %15)
  %cmp16.not.i = icmp eq i32 %15, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit.thread_crit_edge, !prof !109

if.then14.i.can_dropped_invalid_skb.exit.thread_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %can_dropped_invalid_skb.exit.thread

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %6, i32 0, i32 1
  %16 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %17)
  %cmp21.i = icmp ugt i8 %17, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit.thread_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !110

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit.thread_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %can_dropped_invalid_skb.exit.thread

if.end34.i:                                       ; preds = %lor.rhs18.i.if.end34.i_crit_edge, %lor.rhs.i.if.end34.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %18 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.end34.i
  %.b70.i.i = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit.thread_crit_edge, label %if.then.i.i, !prof !109

land.rhs.i.i.can_dropped_invalid_skb.exit.thread_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %can_dropped_invalid_skb.exit.thread

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 104, i32 noundef 9, ptr noundef null) #12
  br label %can_dropped_invalid_skb.exit.thread

if.end37.i.i:                                     ; preds = %if.end34.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %20 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %21 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp38.i.i = icmp eq i16 %21, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end37.i.i.can_dropped_invalid_skb.exit_crit_edge

if.end37.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %can_dropped_invalid_skb.exit

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 17
  %22 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ifindex.i.i, align 4
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %19, align 8
  %25 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i.i, align 8
  %skbcnt.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %skbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %skbcnt.i.i, align 4
  %28 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load45.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear46.i.i = and i16 %bf.load45.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear46.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %29 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %30, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i, 0
  %bf.clear54.i.i = and i16 %bf.set.i.i, 7167
  %bf.set51.i.i = or i16 %bf.clear54.i.i, -24576
  %storemerge.i.i = select i1 %tobool47.not.i.i, i16 %bf.clear54.i.i, i16 %bf.set51.i.i
  %31 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %storemerge.i.i, ptr %ip_summed.i.i, align 8
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %34 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i76.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i77.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i78.i.i = sub i32 %sub.ptr.lhs.cast.i76.i.i, %sub.ptr.rhs.cast.i77.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i78.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %36 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %37 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %38 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  br label %can_dropped_invalid_skb.exit

can_dropped_invalid_skb.exit.thread:              ; preds = %if.then.i.i, %land.rhs.i.i.can_dropped_invalid_skb.exit.thread_crit_edge, %lor.rhs18.i.can_dropped_invalid_skb.exit.thread_crit_edge, %if.then14.i.can_dropped_invalid_skb.exit.thread_crit_edge, %lor.rhs.i.can_dropped_invalid_skb.exit.thread_crit_edge, %if.then.i.can_dropped_invalid_skb.exit.thread_crit_edge, %entry.can_dropped_invalid_skb.exit.thread_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %39 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %40, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

can_dropped_invalid_skb.exit:                     ; preds = %if.then40.i.i, %if.end37.i.i.can_dropped_invalid_skb.exit_crit_edge
  %echo_index = getelementptr i8, ptr %netdev, i32 2756
  %41 = ptrtoint ptr %echo_index to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %echo_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %42)
  %cmp3 = icmp eq i32 %42, 10
  br i1 %cmp3, label %can_dropped_invalid_skb.exit.for.end_crit_edge, label %for.inc

can_dropped_invalid_skb.exit.for.end_crit_edge:   ; preds = %can_dropped_invalid_skb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %can_dropped_invalid_skb.exit
  %echo_index.1 = getelementptr i8, ptr %netdev, i32 2768
  %43 = ptrtoint ptr %echo_index.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %echo_index.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %44)
  %cmp3.1 = icmp eq i32 %44, 10
  br i1 %cmp3.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %echo_index.2 = getelementptr i8, ptr %netdev, i32 2780
  %45 = ptrtoint ptr %echo_index.2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %echo_index.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %46)
  %cmp3.2 = icmp eq i32 %46, 10
  br i1 %cmp3.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %echo_index.3 = getelementptr i8, ptr %netdev, i32 2792
  %47 = ptrtoint ptr %echo_index.3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %echo_index.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %48)
  %cmp3.3 = icmp eq i32 %48, 10
  br i1 %cmp3.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %echo_index.4 = getelementptr i8, ptr %netdev, i32 2804
  %49 = ptrtoint ptr %echo_index.4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %echo_index.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %50)
  %cmp3.4 = icmp eq i32 %50, 10
  br i1 %cmp3.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %echo_index.5 = getelementptr i8, ptr %netdev, i32 2816
  %51 = ptrtoint ptr %echo_index.5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %echo_index.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %52)
  %cmp3.5 = icmp eq i32 %52, 10
  br i1 %cmp3.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %echo_index.6 = getelementptr i8, ptr %netdev, i32 2828
  %53 = ptrtoint ptr %echo_index.6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %echo_index.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %54)
  %cmp3.6 = icmp eq i32 %54, 10
  br i1 %cmp3.6, label %for.inc.5.for.end_crit_edge, label %for.inc.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %echo_index.7 = getelementptr i8, ptr %netdev, i32 2840
  %55 = ptrtoint ptr %echo_index.7 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %echo_index.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %56)
  %cmp3.7 = icmp eq i32 %56, 10
  br i1 %cmp3.7, label %for.inc.6.for.end_crit_edge, label %for.inc.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  %echo_index.8 = getelementptr i8, ptr %netdev, i32 2852
  %57 = ptrtoint ptr %echo_index.8 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %echo_index.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %58)
  %cmp3.8 = icmp eq i32 %58, 10
  br i1 %cmp3.8, label %for.inc.7.for.end_crit_edge, label %for.inc.8

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  %echo_index.9 = getelementptr i8, ptr %netdev, i32 2864
  %59 = ptrtoint ptr %echo_index.9 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %echo_index.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %60)
  %cmp3.9 = icmp eq i32 %60, 10
  br i1 %cmp3.9, label %for.inc.8.for.end_crit_edge, label %for.inc.8.cleanup_crit_edge

for.inc.8.cleanup_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %can_dropped_invalid_skb.exit.for.end_crit_edge
  %i.088.lcssa = phi i32 [ 0, %can_dropped_invalid_skb.exit.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ 7, %for.inc.6.for.end_crit_edge ], [ 8, %for.inc.7.for.end_crit_edge ], [ 9, %for.inc.8.for.end_crit_edge ]
  %tx_contexts = getelementptr i8, ptr %netdev, i32 2752
  %add.ptr = getelementptr %struct.peak_tx_urb_context, ptr %tx_contexts, i32 %i.088.lcssa
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end8

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %for.end
  %urb9 = getelementptr inbounds %struct.peak_tx_urb_context, ptr %add.ptr, i32 0, i32 2
  %61 = ptrtoint ptr %urb9 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %urb9, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %62, i32 0, i32 14
  %63 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %transfer_buffer, align 4
  %65 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %adapter, align 4
  %dev_encode_msg = getelementptr inbounds %struct.peak_usb_adapter, ptr %66, i32 0, i32 19
  %67 = ptrtoint ptr %dev_encode_msg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_encode_msg, align 4
  %call11 = call i32 %68(ptr noundef %add.ptr.i, ptr noundef %skb, ptr noundef %64, ptr noundef nonnull %size) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end19, label %if.then13

if.then13:                                        ; preds = %if.end8
  %call14 = call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.if.end17_crit_edge, label %if.then16

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.33) #15
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then13.if.end17_crit_edge
  call void @consume_skb(ptr noundef %skb) #12
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %69 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tx_dropped, align 4
  %inc18 = add i32 %70, 1
  store i32 %inc18, ptr %tx_dropped, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  %echo_index20 = getelementptr inbounds %struct.peak_tx_urb_context, ptr %add.ptr, i32 0, i32 1
  %71 = ptrtoint ptr %echo_index20 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %i.088.lcssa, ptr %echo_index20, align 4
  %tx_submitted = getelementptr i8, ptr %netdev, i32 2640
  call void @usb_anchor_urb(ptr noundef %62, ptr noundef %tx_submitted) #12
  %72 = ptrtoint ptr %echo_index20 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %echo_index20, align 4
  %call22 = call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %netdev, i32 noundef %73, i32 noundef 0) #12
  %active_tx_urbs = getelementptr i8, ptr %netdev, i32 2636
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_urbs, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %active_tx_urbs, i32 1, i32 3, i32 1) #12
  %74 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_tx_urbs, ptr %active_tx_urbs, i32 1, ptr elementtype(i32) %active_tx_urbs) #12, !srcloc !111
  %call23 = call i32 @usb_submit_urb(ptr noundef %62, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end19
  %75 = ptrtoint ptr %echo_index20 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %echo_index20, align 4
  call void @can_free_echo_skb(ptr noundef %netdev, i32 noundef %76, ptr noundef null) #12
  call void @usb_unanchor_urb(ptr noundef %62) #12
  %77 = ptrtoint ptr %echo_index20 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 10, ptr %echo_index20, align 4
  %call.i.i81 = call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_urbs, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %active_tx_urbs, i32 1, i32 3, i32 1) #12
  %78 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_tx_urbs, ptr %active_tx_urbs, i32 1, ptr elementtype(i32) %active_tx_urbs) #12, !srcloc !112
  %79 = zext i32 %call23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call23, label %sw.default [
    i32 -19, label %sw.bb
    i32 -2, label %if.then25.sw.bb29_crit_edge
  ]

if.then25.sw.bb29_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb29

sw.bb:                                            ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  call void @netif_device_detach(ptr noundef %netdev) #12
  br label %cleanup

sw.default:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.34, i32 noundef %call23) #15
  br label %sw.bb29

sw.bb29:                                          ; preds = %sw.default, %if.then25.sw.bb29_crit_edge
  %tx_dropped30 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %80 = ptrtoint ptr %tx_dropped30 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tx_dropped30, align 4
  %inc31 = add i32 %81, 1
  store i32 %inc31, ptr %tx_dropped30, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end19
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %82 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %84 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %83, i32 0, i32 12
  %85 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %84)
  %cmp.not.i.i = icmp eq i32 %86, %84
  br i1 %cmp.not.i.i, label %if.else.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.else.netif_trans_update.exit_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 %84, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.else.netif_trans_update.exit_crit_edge
  %call.i.i82 = call zeroext i1 @__kasan_check_read(ptr noundef %active_tx_urbs, i32 noundef 4) #12
  %88 = ptrtoint ptr %active_tx_urbs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %active_tx_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %89)
  %cmp34 = icmp sgt i32 %89, 9
  br i1 %cmp34, label %if.then35, label %netif_trans_update.exit.cleanup_crit_edge

netif_trans_update.exit.cleanup_crit_edge:        ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then35:                                        ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %91, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %netif_trans_update.exit.cleanup_crit_edge, %sw.bb29, %sw.bb, %if.end17, %for.end.cleanup_crit_edge, %for.inc.8.cleanup_crit_edge, %can_dropped_invalid_skb.exit.thread
  %retval.0 = phi i32 [ 0, %if.end17 ], [ 16, %for.end.cleanup_crit_edge ], [ 0, %netif_trans_update.exit.cleanup_crit_edge ], [ 0, %if.then35 ], [ 0, %sw.bb ], [ 0, %sw.bb29 ], [ 0, %can_dropped_invalid_skb.exit.thread ], [ 16, %for.inc.8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @peak_usb_read_bulk_callback(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %netdev1 = getelementptr inbounds %struct.peak_usb_device, ptr %1, i32 0, i32 5
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
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %8, label %sw.default [
    i32 0, label %sw.epilog
    i32 -84, label %if.end.cleanup_crit_edge
    i32 -2, label %if.end.cleanup_crit_edge60
    i32 -104, label %if.end.cleanup_crit_edge61
    i32 -108, label %if.end.cleanup_crit_edge62
  ]

if.end.cleanup_crit_edge62:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.cleanup_crit_edge61:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.cleanup_crit_edge60:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %call2 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %sw.default.resubmit_urb_crit_edge, label %if.then3

sw.default.resubmit_urb_crit_edge:                ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %resubmit_urb

if.then3:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.29, i32 noundef %11) #15
  br label %resubmit_urb

sw.epilog:                                        ; preds = %if.end
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %sw.epilog.resubmit_urb_crit_edge, label %land.lhs.true

sw.epilog.resubmit_urb_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %resubmit_urb

land.lhs.true:                                    ; preds = %sw.epilog
  %adapter = getelementptr inbounds %struct.peak_usb_device, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 4
  %dev_decode_buf = getelementptr inbounds %struct.peak_usb_adapter, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %dev_decode_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_decode_buf, align 4
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %land.lhs.true.resubmit_urb_crit_edge, label %if.then7

land.lhs.true.resubmit_urb_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %resubmit_urb

if.then7:                                         ; preds = %land.lhs.true
  %state = getelementptr inbounds %struct.peak_usb_device, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 4
  %and = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then7.resubmit_urb_crit_edge, label %if.then9

if.then7.resubmit_urb_crit_edge:                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %resubmit_urb

if.then9:                                         ; preds = %if.then7
  %call12 = tail call i32 %17(ptr noundef %1, ptr noundef %urb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then9.resubmit_urb_crit_edge, label %if.then14

if.then9.resubmit_urb_crit_edge:                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %resubmit_urb

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_buffer, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %22 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %transfer_buffer_length, align 4
  tail call void @pcan_dump_mem(ptr noundef nonnull @.str.30, ptr noundef %21, i32 noundef %23)
  br label %resubmit_urb

resubmit_urb:                                     ; preds = %if.then14, %if.then9.resubmit_urb_crit_edge, %if.then7.resubmit_urb_crit_edge, %land.lhs.true.resubmit_urb_crit_edge, %sw.epilog.resubmit_urb_crit_edge, %if.then3, %sw.default.resubmit_urb_crit_edge
  %udev = getelementptr inbounds %struct.peak_usb_device, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev, align 4
  %ep_msg_in = getelementptr inbounds %struct.peak_usb_device, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %ep_msg_in to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ep_msg_in, align 1
  %conv = zext i8 %27 to i32
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %25, align 8
  %shl.i = shl i32 %29, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or20 = or i32 %or.i, -1073741696
  %adapter22 = getelementptr inbounds %struct.peak_usb_device, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %adapter22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter22, align 4
  %rx_buffer_size = getelementptr inbounds %struct.peak_usb_adapter, ptr %31, i32 0, i32 29
  %32 = ptrtoint ptr %rx_buffer_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_buffer_size, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %34 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %25, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %35 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or20, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %36 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %37 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @peak_usb_read_bulk_callback, ptr %complete.i, align 4
  %38 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %1, ptr %context, align 4
  %rx_submitted = getelementptr inbounds %struct.peak_usb_device, ptr %1, i32 0, i32 10
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %rx_submitted) #12
  %call23 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %resubmit_urb.cleanup_crit_edge, label %if.end26

resubmit_urb.cleanup_crit_edge:                   ; preds = %resubmit_urb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %resubmit_urb
  tail call void @usb_unanchor_urb(ptr noundef %urb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call23)
  %cmp27 = icmp eq i32 %call23, -19
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_device_detach(ptr noundef %3) #12
  br label %cleanup

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.31, i32 noundef %call23) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then29, %resubmit_urb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge60, %if.end.cleanup_crit_edge61, %if.end.cleanup_crit_edge62, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @peak_usb_write_bulk_callback(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !110

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/can/usb/peak_usb/pcan_usb_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 296, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

do.end10:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %netdev12 = getelementptr inbounds %struct.peak_usb_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %netdev12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev12, align 4
  %active_tx_urbs = getelementptr inbounds %struct.peak_usb_device, ptr %3, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_urbs, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %active_tx_urbs, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_tx_urbs, ptr %active_tx_urbs, i32 1, ptr elementtype(i32) %active_tx_urbs) #12, !srcloc !112
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %do.end10.cleanup_crit_edge, label %if.end14

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %do.end10
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %11, label %sw.default [
    i32 0, label %sw.bb
    i32 -71, label %if.end14.sw.epilog_crit_edge
    i32 -2, label %if.end14.sw.epilog_crit_edge46
    i32 -104, label %if.end14.sw.epilog_crit_edge47
    i32 -108, label %if.end14.sw.epilog_crit_edge48
  ]

if.end14.sw.epilog_crit_edge48:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end14.sw.epilog_crit_edge47:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end14.sw.epilog_crit_edge46:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %13 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %14, i32 0, i32 12
  %16 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp.not.i.i = icmp eq i32 %17, %15
  br i1 %cmp.not.i.i, label %sw.bb.sw.epilog_crit_edge, label %do.body5.i.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body5.i.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %15, ptr %trans_start.i.i, align 16
  br label %sw.epilog

sw.default:                                       ; preds = %if.end14
  %call16 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %sw.default.sw.epilog_crit_edge, label %if.then18

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then18:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.32, i32 noundef %20) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then18, %sw.default.sw.epilog_crit_edge, %do.body5.i.i, %sw.bb.sw.epilog_crit_edge, %if.end14.sw.epilog_crit_edge, %if.end14.sw.epilog_crit_edge46, %if.end14.sw.epilog_crit_edge47, %if.end14.sw.epilog_crit_edge48
  %echo_index = getelementptr inbounds %struct.peak_tx_urb_context, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %echo_index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %echo_index, align 4
  %call21 = tail call i32 @can_get_echo_skb(ptr noundef %5, i32 noundef %22, ptr noundef null) #12
  %23 = ptrtoint ptr %echo_index to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 10, ptr %echo_index, align 4
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool24.not = icmp eq i32 %25, 0
  br i1 %tobool24.not, label %if.then25, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then25:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 1
  %26 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %tx_packets, align 4
  %tx_bytes27 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 3
  %28 = ptrtoint ptr %tx_bytes27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_bytes27, align 4
  %add = add i32 %29, %call21
  store i32 %add, ptr %tx_bytes27, align 4
  %_tx.i.i45 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %30 = ptrtoint ptr %_tx.i.i45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_tx.i.i45, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %31) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %sw.epilog.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_free_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !14, !15, !17, !19, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !37, !38, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !84, !85, !87, !88, !90, !91, !92, !93, !95, !97, !98, !99}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__UNIQUE_ID_author464, !1, !"__UNIQUE_ID_author464", i1 false, i1 false}
!1 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_description465, !3, !"__UNIQUE_ID_description465", i1 false, i1 false}
!3 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_file466, !5, !"__UNIQUE_ID_file466", i1 false, i1 false}
!5 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_license467, !5, !"__UNIQUE_ID_license467", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 62, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @pcan_dump_mem._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @pcan_dump_mem._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 64, i32 17}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 64, i32 28}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 1017, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @peak_usb_exit._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @peak_usb_exit._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 1023, i32 2}
!26 = !{ptr @peak_usb_exit._entry.9, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @peak_usb_exit._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__initcall__kmod_peak_usb__468_1027_peak_usb_init6, !29, !"__initcall__kmod_peak_usb__468_1027_peak_usb_init6", i1 false, i1 false}
!29 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 1027, i32 1}
!30 = !{ptr @__exitcall_peak_usb_exit, !31, !"__exitcall_peak_usb_exit", i1 false, i1 false}
!31 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 1028, i32 1}
!32 = !{ptr @peak_usb_driver, !33, !"peak_usb_driver", i1 false, i1 false}
!33 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 972, i32 26}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 804, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @peak_usb_create_dev._entry, !35, !"_entry", i1 false, i1 false}
!40 = !{ptr @peak_usb_create_dev._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 859, i32 3}
!43 = !{ptr @peak_usb_create_dev._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @peak_usb_create_dev._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 887, i32 22}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 747, i32 24}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 769, i32 9}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 723, i32 23}
!53 = !{ptr @peak_usb_netdev_ops, !54, !"peak_usb_netdev_ops", i1 false, i1 false}
!54 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 778, i32 36}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 577, i32 22}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 476, i32 23}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 480, i32 23}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 519, i32 23}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 523, i32 23}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 549, i32 22}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 250, i32 8}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 260, i32 19}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 282, i32 22}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 321, i32 23}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 374, i32 23}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 404, i32 24}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!81 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @init_usb_anchor.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!84 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @init_usb_anchor.__key.37, !86, !"__key", i1 false, i1 false}
!86 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!87 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 934, i32 3}
!90 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @peak_usb_disconnect._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @peak_usb_disconnect._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @peak_usb_table, !94, !"peak_usb_table", i1 false, i1 false}
!94 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 30, i32 35}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/can/usb/peak_usb/pcan_usb_core.c", i32 986, i32 3}
!97 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @peak_usb_init._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @peak_usb_init._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"branch_weights", i32 2000, i32 1}
!110 = !{!"branch_weights", i32 1, i32 2000}
!111 = !{i64 2148474484, i64 2148474510, i64 2148474539, i64 2148474573, i64 2148474604, i64 2148474627}
!112 = !{i64 2148476949, i64 2148476975, i64 2148477004, i64 2148477038, i64 2148477069, i64 2148477092}
!113 = !{i64 2157272246, i64 2157272755, i64 2157272283, i64 2157272339, i64 2157272373, i64 2157272397, i64 2157272438, i64 2157272459, i64 2157272487, i64 2157272521}
