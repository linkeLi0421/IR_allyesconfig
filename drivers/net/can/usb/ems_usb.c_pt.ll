; ModuleID = '/llk/IR_all_yes/drivers/net/can/usb/ems_usb.c_pt.bc'
source_filename = "../drivers/net/can/usb/ems_usb.c"
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
%struct.ems_usb = type { %struct.can_priv, [10 x ptr], ptr, ptr, %struct.atomic_t, %struct.usb_anchor, [10 x %struct.ems_tx_urb_context], %struct.usb_anchor, ptr, ptr, ptr, i32, %struct.ems_cpc_msg, [10 x ptr], [10 x i32] }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.ems_tx_urb_context = type { ptr, i32 }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.ems_cpc_msg = type <{ i8, i8, i8, i32, i32, %union.anon.145 }>
%union.anon.145 = type { %struct.cpc_can_msg, [48 x i8] }
%struct.cpc_can_msg = type { i32, i8, [8 x i8] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
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
%struct.can_frame = type { i32, %union.anon.149, i8, i8, i8, [8 x i8] }
%union.anon.149 = type { i8 }
%struct.cpc_can_error = type { i8, %struct.anon.147 }
%struct.anon.147 = type { i8, %union.anon.148 }
%union.anon.148 = type { %struct.cpc_sja1000_can_error }
%struct.cpc_sja1000_can_error = type { i8, i8, i8 }

@__UNIQUE_ID_author464 = internal constant [54 x i8] c"ems_usb.author=Sebastian Haas <haas@ems-wuensche.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description465 = internal constant [78 x i8] c"ems_usb.description=CAN driver for EMS Dr. Thomas Wuensche CAN/USB interfaces\00", section ".modinfo", align 1
@__UNIQUE_ID_file466 = internal constant [41 x i8] c"ems_usb.file=drivers/net/can/usb/ems_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license467 = internal constant [23 x i8] c"ems_usb.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_ems_usb__470_1084_ems_usb_driver_init6 = internal global ptr @ems_usb_driver_init, section ".initcall6.init", align 4
@ems_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @ems_usb_probe, ptr @ems_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ems_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ems_usb_driver_exit = internal global ptr @ems_usb_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ems_usb\00", [24 x i8] zeroinitializer }, align 32
@ems_usb_table = internal global { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 4822, i16 1092, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ems_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 977, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ems_usb: Couldn't alloc candev\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ems_usb_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/can/usb/ems_usb.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ems_usb_probe._entry_ptr = internal global ptr @ems_usb_probe._entry, section ".printk_index", align 4
@ems_usb_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"ems_usb\00\00\00\00\00\00\00\00\00", i32 1, i32 16, i32 1, i32 8, i32 4, i32 1, i32 64, i32 1 }, [48 x i8] zeroinitializer }, align 32
@ems_usb_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ems_usb_open, ptr @ems_usb_close, ptr @ems_usb_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"couldn't initialize controller: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"couldn't register CAN device: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"setting BTR0=0x%02x BTR1=0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"couldn't start device\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't start device: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No memory left for USB buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"couldn't setup read URBs\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rx performance may be slow\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"intr URB submit failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"couldn't submit control: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Rx URB aborted (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"format error\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed resubmitting read bulk urb: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Rx interrupt aborted %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed resubmitting intr urb: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"couldn't stop device\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"couldn't find free context\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"failed tx_urb %d\0A\00", [46 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Tx URB aborted (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.30 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 8, i64 14, i64 16, i64 17, i64 21, i64 23]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 17]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.33 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967225, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 8, i64 14, i64 21, i64 23]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 64, i64 128]
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"ems_usb_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1077, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1084, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"ems_usb_table\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 213, i32 29 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 977, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [24 x i8] c"ems_usb_bittiming_const\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 883, i32 41 }
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"ems_usb_netdev_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 876, i32 36 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1026, i32 22 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 1032, i32 22 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 927, i32 22 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 902, i32 24 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 723, i32 23 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 601, i32 23 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 633, i32 23 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 639, i32 23 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 650, i32 23 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 679, i32 22 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 425, i32 23 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 469, i32 24 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 486, i32 7 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 286, i32 23 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 295, i32 22 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 869, i32 23 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 799, i32 23 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 829, i32 24 }
@___asan_gen_.125 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 104, i32 6 }
@___asan_gen_.128 = private constant [33 x i8] c"../drivers/net/can/usb/ems_usb.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 513, i32 23 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1367, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1368, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author464, ptr @__UNIQUE_ID_description465, ptr @__UNIQUE_ID_file466, ptr @__UNIQUE_ID_license467, ptr @__exitcall_ems_usb_driver_exit, ptr @__initcall__kmod_ems_usb__470_1084_ems_usb_driver_init6, ptr @ems_usb_driver_exit, ptr @ems_usb_probe._entry, ptr @ems_usb_probe._entry_ptr, ptr @ems_usb_driver, ptr @.str, ptr @ems_usb_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ems_usb_bittiming_const, ptr @ems_usb_netdev_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @init_usb_anchor.__key, ptr @.str.26, ptr @init_usb_anchor.__key.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_usb_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_usb_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_usb_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ems_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ems_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ems_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @ems_usb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ems_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %actual_length.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_candev_mqs(i32 noundef 840, i32 noundef 10, i32 noundef 1, i32 noundef 1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i84 = getelementptr i8, ptr %1, i32 -128
  %udev = getelementptr i8, ptr %call, i32 2656
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr.i84, ptr %udev, align 4
  %netdev4 = getelementptr i8, ptr %call, i32 2660
  %3 = ptrtoint ptr %netdev4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %netdev4, align 4
  %state = getelementptr i8, ptr %call, i32 2472
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %state, align 4
  %clock = getelementptr i8, ptr %call, i32 2440
  %5 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8000000, ptr %clock, align 4
  %bittiming_const = getelementptr i8, ptr %call, i32 2332
  %6 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ems_usb_bittiming_const, ptr %bittiming_const, align 4
  %do_set_bittiming = getelementptr i8, ptr %call, i32 2588
  %7 = ptrtoint ptr %do_set_bittiming to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ems_usb_set_bittiming, ptr %do_set_bittiming, align 4
  %do_set_mode = getelementptr i8, ptr %call, i32 2596
  %8 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ems_usb_set_mode, ptr %do_set_mode, align 4
  %ctrlmode_supported = getelementptr i8, ptr %call, i32 2480
  %9 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %ctrlmode_supported, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %10 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ems_usb_netdev_ops, ptr %netdev_ops, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 14
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %or = or i32 %12, 262144
  store i32 %or, ptr %flags, align 8
  %rx_submitted = getelementptr i8, ptr %call, i32 2860
  %13 = getelementptr i8, ptr %call, i32 2868
  %14 = call ptr @memset(ptr %13, i32 0, i32 104)
  %15 = ptrtoint ptr %rx_submitted to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %rx_submitted, ptr %rx_submitted, align 4
  %prev.i.i = getelementptr i8, ptr %call, i32 2864
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rx_submitted, ptr %prev.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %13, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_usb_anchor.__key) #8
  %lock.i = getelementptr i8, ptr %call, i32 2920
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_usb_anchor.__key.27, i16 noundef signext 3) #8
  %tx_submitted = getelementptr i8, ptr %call, i32 2668
  %17 = getelementptr i8, ptr %call, i32 2676
  %18 = call ptr @memset(ptr %17, i32 0, i32 104)
  %19 = ptrtoint ptr %tx_submitted to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %tx_submitted, ptr %tx_submitted, align 4
  %prev.i.i85 = getelementptr i8, ptr %call, i32 2672
  %20 = ptrtoint ptr %prev.i.i85 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %tx_submitted, ptr %prev.i.i85, align 4
  tail call void @__init_waitqueue_head(ptr noundef %17, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_usb_anchor.__key) #8
  %lock.i87 = getelementptr i8, ptr %call, i32 2728
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i87, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_usb_anchor.__key.27, i16 noundef signext 3) #8
  %active_tx_urbs = getelementptr i8, ptr %call, i32 2664
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_urbs, i32 noundef 4) #8
  %21 = ptrtoint ptr %active_tx_urbs to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %active_tx_urbs, align 4
  %echo_index = getelementptr i8, ptr %call, i32 2784
  %22 = ptrtoint ptr %echo_index to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 10, ptr %echo_index, align 4
  %echo_index.1 = getelementptr i8, ptr %call, i32 2792
  %23 = ptrtoint ptr %echo_index.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 10, ptr %echo_index.1, align 4
  %echo_index.2 = getelementptr i8, ptr %call, i32 2800
  %24 = ptrtoint ptr %echo_index.2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 10, ptr %echo_index.2, align 4
  %echo_index.3 = getelementptr i8, ptr %call, i32 2808
  %25 = ptrtoint ptr %echo_index.3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 10, ptr %echo_index.3, align 4
  %echo_index.4 = getelementptr i8, ptr %call, i32 2816
  %26 = ptrtoint ptr %echo_index.4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 10, ptr %echo_index.4, align 4
  %echo_index.5 = getelementptr i8, ptr %call, i32 2824
  %27 = ptrtoint ptr %echo_index.5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 10, ptr %echo_index.5, align 4
  %echo_index.6 = getelementptr i8, ptr %call, i32 2832
  %28 = ptrtoint ptr %echo_index.6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 10, ptr %echo_index.6, align 4
  %echo_index.7 = getelementptr i8, ptr %call, i32 2840
  %29 = ptrtoint ptr %echo_index.7 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 10, ptr %echo_index.7, align 4
  %echo_index.8 = getelementptr i8, ptr %call, i32 2848
  %30 = ptrtoint ptr %echo_index.8 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 10, ptr %echo_index.8, align 4
  %echo_index.9 = getelementptr i8, ptr %call, i32 2856
  %31 = ptrtoint ptr %echo_index.9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 10, ptr %echo_index.9, align 4
  %call10 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %intr_urb = getelementptr i8, ptr %call, i32 2972
  %32 = ptrtoint ptr %intr_urb to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call10, ptr %intr_urb, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end.cleanup_candev_crit_edge, label %if.end14

if.end.cleanup_candev_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_candev

if.end14:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 4) #12
  %intr_in_buffer = getelementptr i8, ptr %call, i32 2980
  %34 = ptrtoint ptr %intr_in_buffer to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %intr_in_buffer, align 4
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %if.end14.cleanup_intr_urb_crit_edge, label %if.end19

if.end14.cleanup_intr_urb_crit_edge:              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_intr_urb

if.end19:                                         ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i88 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 79) #12
  %tx_msg_buffer = getelementptr i8, ptr %call, i32 2976
  %36 = ptrtoint ptr %tx_msg_buffer to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i88, ptr %tx_msg_buffer, align 4
  %tobool22.not = icmp eq ptr %call7.i.i88, null
  br i1 %tobool22.not, label %if.end19.cleanup_intr_in_buffer_crit_edge, label %if.end24

if.end19.cleanup_intr_in_buffer_crit_edge:        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_intr_in_buffer

if.end24:                                         ; preds = %if.end19
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %dev25 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %38 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev25, ptr %parent, align 8
  %active_params = getelementptr i8, ptr %call, i32 2988
  %msg1.i = getelementptr i8, ptr %call, i32 2999
  %cc_params.i = getelementptr i8, ptr %call, i32 3000
  %39 = ptrtoint ptr %active_params to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 6, ptr %active_params, align 1
  %length.i = getelementptr i8, ptr %call, i32 2989
  %40 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 13, ptr %length.i, align 1
  %msgid.i = getelementptr i8, ptr %call, i32 2990
  %41 = ptrtoint ptr %msgid.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %msgid.i, align 1
  %42 = ptrtoint ptr %msg1.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %msg1.i, align 1
  %acc_code0.i = getelementptr i8, ptr %call, i32 3001
  %acc_mask0.i = getelementptr i8, ptr %call, i32 3005
  %43 = ptrtoint ptr %acc_code0.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 0, ptr %acc_code0.i, align 1
  %btr0.i = getelementptr i8, ptr %call, i32 3009
  %44 = ptrtoint ptr %acc_mask0.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 -1, ptr %acc_mask0.i, align 1
  %45 = ptrtoint ptr %btr0.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %btr0.i, align 1
  %btr1.i = getelementptr i8, ptr %call, i32 3010
  %46 = ptrtoint ptr %btr1.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %btr1.i, align 1
  %outp_contr.i = getelementptr i8, ptr %call, i32 3011
  %47 = ptrtoint ptr %outp_contr.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -38, ptr %outp_contr.i, align 1
  %48 = ptrtoint ptr %cc_params.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %cc_params.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i) #8
  %49 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %actual_length.i, align 4, !annotation !83
  %50 = ptrtoint ptr %tx_msg_buffer to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tx_msg_buffer, align 4
  %arrayidx.i = getelementptr i8, ptr %51, i32 4
  %52 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %length.i, align 1
  %conv.i = zext i8 %53 to i32
  %add.i = add nuw nsw i32 %conv.i, 11
  %54 = call ptr @memcpy(ptr %arrayidx.i, ptr %active_params, i32 %add.i)
  %55 = load ptr, ptr %tx_msg_buffer, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 0, ptr %55, align 1
  %57 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %udev, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  %shl.i.i = shl i32 %60, 8
  %or.i = or i32 %shl.i.i, -1073676288
  %61 = load ptr, ptr %tx_msg_buffer, align 4
  %62 = load i8, ptr %length.i, align 1
  %conv7.i = zext i8 %62 to i32
  %add9.i = add nuw nsw i32 %conv7.i, 15
  %call10.i = call i32 @usb_bulk_msg(ptr noundef %58, i32 noundef %or.i, ptr noundef %61, i32 noundef %add9.i, ptr noundef nonnull %actual_length.i, i32 noundef 1000) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool29.not = icmp eq i32 %call10.i, 0
  br i1 %tobool29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.6, i32 noundef %call10.i) #11
  br label %cleanup_tx_msg_buffer

if.end31:                                         ; preds = %if.end24
  %call32 = call i32 @register_candev(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.then34

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.7, i32 noundef %call32) #11
  br label %cleanup_tx_msg_buffer

cleanup_tx_msg_buffer:                            ; preds = %if.then34, %if.then30
  %err.0 = phi i32 [ %call10.i, %if.then30 ], [ %call32, %if.then34 ]
  %63 = ptrtoint ptr %tx_msg_buffer to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_msg_buffer, align 4
  call void @kfree(ptr noundef %64) #8
  br label %cleanup_intr_in_buffer

cleanup_intr_in_buffer:                           ; preds = %cleanup_tx_msg_buffer, %if.end19.cleanup_intr_in_buffer_crit_edge
  %err.1 = phi i32 [ %err.0, %cleanup_tx_msg_buffer ], [ -12, %if.end19.cleanup_intr_in_buffer_crit_edge ]
  %65 = ptrtoint ptr %intr_in_buffer to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %intr_in_buffer, align 4
  call void @kfree(ptr noundef %66) #8
  br label %cleanup_intr_urb

cleanup_intr_urb:                                 ; preds = %cleanup_intr_in_buffer, %if.end14.cleanup_intr_urb_crit_edge
  %err.2 = phi i32 [ %err.1, %cleanup_intr_in_buffer ], [ -12, %if.end14.cleanup_intr_urb_crit_edge ]
  %67 = ptrtoint ptr %intr_urb to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %intr_urb, align 4
  call void @usb_free_urb(ptr noundef %68) #8
  br label %cleanup_candev

cleanup_candev:                                   ; preds = %cleanup_intr_urb, %if.end.cleanup_candev_crit_edge
  %err.3 = phi i32 [ %err.2, %cleanup_intr_urb ], [ -12, %if.end.cleanup_candev_crit_edge ]
  call void @free_candev(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup_candev, %if.end31.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %err.3, %cleanup_candev ], [ -12, %do.end ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ems_usb_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.ems_usb, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void @unregister_netdev(ptr noundef %3) #8
  tail call fastcc void @unlink_all_urbs(ptr noundef nonnull %1)
  %intr_urb = getelementptr inbounds %struct.ems_usb, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %intr_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intr_urb, align 4
  tail call void @usb_free_urb(ptr noundef %5) #8
  %intr_in_buffer = getelementptr inbounds %struct.ems_usb, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %intr_in_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intr_in_buffer, align 4
  tail call void @kfree(ptr noundef %7) #8
  %tx_msg_buffer = getelementptr inbounds %struct.ems_usb, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %tx_msg_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_msg_buffer, align 4
  tail call void @kfree(ptr noundef %9) #8
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 4
  tail call void @free_candev(ptr noundef %11) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ems_usb_set_bittiming(ptr noundef %netdev) #2 align 64 {
entry:
  %actual_length.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %brp = getelementptr i8, ptr %netdev, i32 2368
  %0 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %brp, align 4
  %sjw = getelementptr i8, ptr %netdev, i32 2364
  %2 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sjw, align 4
  %prop_seg = getelementptr i8, ptr %netdev, i32 2352
  %4 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prop_seg, align 4
  %phase_seg1 = getelementptr i8, ptr %netdev, i32 2356
  %6 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phase_seg1, align 4
  %add = add i32 %5, 15
  %sub3 = add i32 %add, %7
  %and4 = and i32 %sub3, 15
  %phase_seg2 = getelementptr i8, ptr %netdev, i32 2360
  %8 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phase_seg2, align 4
  %sub5 = shl i32 %9, 4
  %and6 = add i32 %sub5, 112
  %shl7 = and i32 %and6, 112
  %or8 = or i32 %shl7, %and4
  %conv9 = trunc i32 %or8 to i8
  %ctrlmode = getelementptr i8, ptr %netdev, i32 2476
  %10 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrlmode, align 4
  %12 = trunc i32 %11 to i8
  %13 = shl i8 %12, 5
  %14 = and i8 %13, -128
  %15 = or i8 %14, %conv9
  %sub = add i32 %1, 63
  %and = and i32 %sub, 63
  %sub1 = shl i32 %3, 6
  %and2 = add i32 %sub1, 192
  %or = or i32 %and2, %and
  %conv = trunc i32 %or to i8
  %conv15 = and i32 %or, 255
  %conv16 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.8, i32 noundef %conv15, i32 noundef %conv16) #11
  %active_params = getelementptr i8, ptr %netdev, i32 2988
  %btr017 = getelementptr i8, ptr %netdev, i32 3009
  %16 = ptrtoint ptr %btr017 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %btr017, align 1
  %btr121 = getelementptr i8, ptr %netdev, i32 3010
  %17 = ptrtoint ptr %btr121 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %15, ptr %btr121, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i) #8
  %18 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %actual_length.i, align 4, !annotation !83
  %tx_msg_buffer.i = getelementptr i8, ptr %netdev, i32 2976
  %19 = ptrtoint ptr %tx_msg_buffer.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_msg_buffer.i, align 4
  %arrayidx.i = getelementptr i8, ptr %20, i32 4
  %length.i = getelementptr i8, ptr %netdev, i32 2989
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %length.i, align 1
  %conv.i = zext i8 %22 to i32
  %add.i = add nuw nsw i32 %conv.i, 11
  %23 = call ptr @memcpy(ptr %arrayidx.i, ptr %active_params, i32 %add.i)
  %24 = load ptr, ptr %tx_msg_buffer.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 0, ptr %24, align 1
  %udev.i = getelementptr i8, ptr %netdev, i32 2656
  %26 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %udev.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i = shl i32 %29, 8
  %or.i = or i32 %shl.i.i, -1073676288
  %30 = load ptr, ptr %tx_msg_buffer.i, align 4
  %31 = load i8, ptr %length.i, align 1
  %conv7.i = zext i8 %31 to i32
  %add9.i = add nuw nsw i32 %conv7.i, 15
  %call10.i = call i32 @usb_bulk_msg(ptr noundef %27, i32 noundef %or.i, ptr noundef %30, i32 noundef %add9.i, ptr noundef nonnull %actual_length.i, i32 noundef 1000) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i) #8
  ret i32 %call10.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ems_usb_set_mode(ptr noundef %netdev, i32 noundef %mode) #2 align 64 {
entry:
  %actual_length.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp eq i32 %mode, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %active_params.i = getelementptr i8, ptr %netdev, i32 2988
  %cc_params.i = getelementptr i8, ptr %netdev, i32 3000
  %0 = ptrtoint ptr %cc_params.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %cc_params.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i.i) #8
  %1 = ptrtoint ptr %actual_length.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %actual_length.i.i, align 4, !annotation !83
  %tx_msg_buffer.i.i = getelementptr i8, ptr %netdev, i32 2976
  %2 = ptrtoint ptr %tx_msg_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_msg_buffer.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 4
  %length.i.i = getelementptr i8, ptr %netdev, i32 2989
  %4 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %length.i.i, align 1
  %conv.i.i = zext i8 %5 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 11
  %6 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %active_params.i, i32 %add.i.i)
  %7 = load ptr, ptr %tx_msg_buffer.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %7, align 1
  %udev.i.i = getelementptr i8, ptr %netdev, i32 2656
  %9 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i.i = shl i32 %12, 8
  %or.i.i = or i32 %shl.i.i.i, -1073676288
  %13 = load ptr, ptr %tx_msg_buffer.i.i, align 4
  %14 = load i8, ptr %length.i.i, align 1
  %conv7.i.i = zext i8 %14 to i32
  %add9.i.i = add nuw nsw i32 %conv7.i.i, 15
  %call10.i.i = call i32 @usb_bulk_msg(ptr noundef %10, i32 noundef %or.i.i, ptr noundef %13, i32 noundef %add9.i.i, ptr noundef nonnull %actual_length.i.i, i32 noundef 1000) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool.not = icmp eq i32 %call10.i.i, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.9) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %15 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @netif_tx_wake_queue(ptr noundef %16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ems_usb_open(ptr noundef %netdev) #2 align 64 {
entry:
  %actual_length.i.i144.i = alloca i32, align 4
  %actual_length.i.i131.i = alloca i32, align 4
  %actual_length.i.i118.i = alloca i32, align 4
  %actual_length.i.i.i = alloca i32, align 4
  %buf_dma.i = alloca i32, align 4
  %actual_length.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %active_params.i = getelementptr i8, ptr %netdev, i32 2988
  %cc_params.i = getelementptr i8, ptr %netdev, i32 3000
  %0 = ptrtoint ptr %cc_params.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %cc_params.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i.i) #8
  %1 = ptrtoint ptr %actual_length.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %actual_length.i.i, align 4, !annotation !83
  %tx_msg_buffer.i.i = getelementptr i8, ptr %netdev, i32 2976
  %2 = ptrtoint ptr %tx_msg_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_msg_buffer.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 4
  %length.i.i = getelementptr i8, ptr %netdev, i32 2989
  %4 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %length.i.i, align 1
  %conv.i.i = zext i8 %5 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 11
  %6 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %active_params.i, i32 %add.i.i)
  %7 = load ptr, ptr %tx_msg_buffer.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %7, align 1
  %udev.i.i = getelementptr i8, ptr %netdev, i32 2656
  %9 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i.i = shl i32 %12, 8
  %or.i.i = or i32 %shl.i.i.i, -1073676288
  %13 = load ptr, ptr %tx_msg_buffer.i.i, align 4
  %14 = load i8, ptr %length.i.i, align 1
  %conv7.i.i = zext i8 %14 to i32
  %add9.i.i = add nuw nsw i32 %conv7.i.i, 15
  %call10.i.i = call i32 @usb_bulk_msg(ptr noundef %10, i32 noundef %or.i.i, ptr noundef %13, i32 noundef %add9.i.i, ptr noundef nonnull %actual_length.i.i, i32 noundef 1000) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool.not = icmp eq i32 %call10.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @open_candev(ptr noundef %netdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %netdev1.i = getelementptr i8, ptr %netdev, i32 2660
  %15 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev1.i, align 4
  %intr_in_buffer.i = getelementptr i8, ptr %netdev, i32 2980
  %17 = ptrtoint ptr %intr_in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %intr_in_buffer.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %18, align 1
  %free_slots.i = getelementptr i8, ptr %netdev, i32 2984
  %20 = ptrtoint ptr %free_slots.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 50, ptr %free_slots.i, align 4
  %rx_submitted.i = getelementptr i8, ptr %netdev, i32 2860
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end5
  %i.0164.i = phi i32 [ 0, %if.end5 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_dma.i) #8
  %21 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %buf_dma.i, align 4, !annotation !83
  %call.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.for.end.i_crit_edge, label %if.end.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  %22 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udev.i.i, align 4
  %call2.i = call ptr @usb_alloc_coherent(ptr noundef %23, i32 noundef 64, i32 noundef 3264, ptr noundef nonnull %buf_dma.i) #8
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.11) #11
  br label %for.end.sink.split.i

if.end5.i:                                        ; preds = %if.end.i
  %24 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_dma.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 15
  %26 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %transfer_dma.i, align 4
  %27 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %udev.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %shl.i.i = shl i32 %30, 8
  %or9.i = or i32 %shl.i.i, -1073676160
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 8
  %31 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 10
  %32 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or9.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 14
  %33 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call2.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 19
  %34 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 64, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 28
  %35 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ems_usb_read_bulk_callback, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 27
  %36 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i, ptr %context4.i.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 13
  %37 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %transfer_flags.i, align 4
  %or10.i = or i32 %38, 4
  store i32 %or10.i, ptr %transfer_flags.i, align 4
  call void @usb_anchor_urb(ptr noundef nonnull %call.i, ptr noundef %rx_submitted.i) #8
  %call11.i = call i32 @usb_submit_urb(ptr noundef nonnull %call.i, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %for.inc.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %transfer_dma.i.le = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 15
  call void @usb_unanchor_urb(ptr noundef nonnull %call.i) #8
  %39 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %udev.i.i, align 4
  %41 = ptrtoint ptr %transfer_dma.i.le to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %transfer_dma.i.le, align 4
  call void @usb_free_coherent(ptr noundef %40, i32 noundef 64, ptr noundef nonnull %call2.i, i32 noundef %42) #8
  br label %for.end.sink.split.i

for.inc.i:                                        ; preds = %if.end5.i
  %arrayidx17.i = getelementptr %struct.ems_usb, ptr %add.ptr.i, i32 0, i32 13, i32 %i.0164.i
  %43 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call2.i, ptr %arrayidx17.i, align 4
  %44 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buf_dma.i, align 4
  %arrayidx18.i = getelementptr %struct.ems_usb, ptr %add.ptr.i, i32 0, i32 14, i32 %i.0164.i
  %46 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx18.i, align 4
  call void @usb_free_urb(ptr noundef nonnull %call.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_dma.i) #8
  %inc.i = add nuw nsw i32 %i.0164.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %for.inc.i.if.end26.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end26.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

for.end.sink.split.i:                             ; preds = %if.then13.i, %if.then4.i
  %err.1.ph.ph.i = phi i32 [ %call11.i, %if.then13.i ], [ -12, %if.then4.i ]
  call void @usb_free_urb(ptr noundef nonnull %call.i) #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.sink.split.i, %for.body.i.for.end.i_crit_edge
  %err.1.ph.i = phi i32 [ %err.1.ph.ph.i, %for.end.sink.split.i ], [ -12, %for.body.i.for.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_dma.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0164.i)
  %cmp21.i = icmp eq i32 %i.0164.i, 0
  br i1 %cmp21.i, label %if.then22.i, label %if.then25.i

if.then22.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.12) #11
  br label %ems_usb_start.exit

if.then25.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.13) #11
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %for.inc.i.if.end26.i_crit_edge
  %intr_urb.i = getelementptr i8, ptr %netdev, i32 2972
  %47 = ptrtoint ptr %intr_urb.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %intr_urb.i, align 4
  %49 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %udev.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 8
  %shl.i110.i = shl i32 %52, 8
  %or31.i = or i32 %shl.i110.i, 1073774720
  %53 = ptrtoint ptr %intr_in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %intr_in_buffer.i, align 4
  %dev1.i112.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 8
  %55 = ptrtoint ptr %dev1.i112.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %50, ptr %dev1.i112.i, align 4
  %pipe2.i113.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 10
  %56 = ptrtoint ptr %pipe2.i113.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or31.i, ptr %pipe2.i113.i, align 4
  %transfer_buffer3.i114.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 14
  %57 = ptrtoint ptr %transfer_buffer3.i114.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %transfer_buffer3.i114.i, align 4
  %transfer_buffer_length.i115.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 19
  %58 = ptrtoint ptr %transfer_buffer_length.i115.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4, ptr %transfer_buffer_length.i115.i, align 4
  %complete.i116.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 28
  %59 = ptrtoint ptr %complete.i116.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @ems_usb_read_interrupt_callback, ptr %complete.i116.i, align 4
  %context4.i117.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 27
  %60 = ptrtoint ptr %context4.i117.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr.i, ptr %context4.i117.i, align 4
  %61 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 25
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %61, align 4
  %start_frame.i.i = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 23
  %63 = ptrtoint ptr %start_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %start_frame.i.i, align 4
  %64 = load ptr, ptr %intr_urb.i, align 4
  %call34.i = call i32 @usb_submit_urb(ptr noundef %64, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.14, i32 noundef %call34.i) #11
  br label %ems_usb_start.exit

if.end37.i:                                       ; preds = %if.end26.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i.i.i) #8
  %65 = ptrtoint ptr %actual_length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %actual_length.i.i.i, align 4, !annotation !83
  %66 = ptrtoint ptr %tx_msg_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tx_msg_buffer.i.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %67, i32 4
  %68 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 3, ptr %arrayidx.i.i.i, align 1
  %cmd.sroa.5.0.arrayidx.i.sroa_idx.i.i = getelementptr i8, ptr %67, i32 5
  %69 = ptrtoint ptr %cmd.sroa.5.0.arrayidx.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 12, ptr %cmd.sroa.5.0.arrayidx.i.sroa_idx.i.i, align 1
  %cmd.sroa.6.0.arrayidx.i.sroa_idx.i.i = getelementptr i8, ptr %67, i32 6
  %70 = ptrtoint ptr %cmd.sroa.6.0.arrayidx.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %cmd.sroa.6.0.arrayidx.i.sroa_idx.i.i, align 1
  %cmd.sroa.7.0.arrayidx.i.sroa_idx.i.i = getelementptr i8, ptr %67, i32 7
  %71 = ptrtoint ptr %cmd.sroa.7.0.arrayidx.i.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 8)
  store i64 -1, ptr %cmd.sroa.7.0.arrayidx.i.sroa_idx.i.i, align 1
  %cmd.sroa.73.0.arrayidx.i.sroa_idx.i.i = getelementptr i8, ptr %67, i32 15
  %72 = ptrtoint ptr %cmd.sroa.73.0.arrayidx.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 5, ptr %cmd.sroa.73.0.arrayidx.i.sroa_idx.i.i, align 1
  %cmd.sroa.8.0.arrayidx.i.sroa_idx.i.i = getelementptr i8, ptr %67, i32 16
  %73 = call ptr @memset(ptr %cmd.sroa.8.0.arrayidx.i.sroa_idx.i.i, i32 255, i32 11)
  %74 = load ptr, ptr %tx_msg_buffer.i.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 0, ptr %74, align 1
  %76 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %udev.i.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 8
  %shl.i.i.i.i = shl i32 %79, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -1073676288
  %80 = load ptr, ptr %tx_msg_buffer.i.i, align 4
  %call10.i.i.i = call i32 @usb_bulk_msg(ptr noundef %77, i32 noundef %or.i.i.i, ptr noundef %80, i32 noundef 27, ptr noundef nonnull %actual_length.i.i.i, i32 noundef 1000) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i)
  %tobool39.not.i = icmp eq i32 %call10.i.i.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %if.end37.i.failed.i_crit_edge

if.end37.i.failed.i_crit_edge:                    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed.i

if.end41.i:                                       ; preds = %if.end37.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i.i118.i) #8
  %81 = ptrtoint ptr %actual_length.i.i118.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %actual_length.i.i118.i, align 4, !annotation !83
  %82 = ptrtoint ptr %tx_msg_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tx_msg_buffer.i.i, align 4
  %arrayidx.i.i121.i = getelementptr i8, ptr %83, i32 4
  %84 = ptrtoint ptr %arrayidx.i.i121.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 3, ptr %arrayidx.i.i121.i, align 1
  %cmd.sroa.5.0.arrayidx.i.sroa_idx.i122.i = getelementptr i8, ptr %83, i32 5
  %85 = ptrtoint ptr %cmd.sroa.5.0.arrayidx.i.sroa_idx.i122.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 12, ptr %cmd.sroa.5.0.arrayidx.i.sroa_idx.i122.i, align 1
  %cmd.sroa.6.0.arrayidx.i.sroa_idx.i123.i = getelementptr i8, ptr %83, i32 6
  %86 = ptrtoint ptr %cmd.sroa.6.0.arrayidx.i.sroa_idx.i123.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %cmd.sroa.6.0.arrayidx.i.sroa_idx.i123.i, align 1
  %cmd.sroa.7.0.arrayidx.i.sroa_idx.i124.i = getelementptr i8, ptr %83, i32 7
  %87 = ptrtoint ptr %cmd.sroa.7.0.arrayidx.i.sroa_idx.i124.i to i32
  call void @__asan_storeN_noabort(i32 %87, i32 8)
  store i64 -1, ptr %cmd.sroa.7.0.arrayidx.i.sroa_idx.i124.i, align 1
  %cmd.sroa.73.0.arrayidx.i.sroa_idx.i125.i = getelementptr i8, ptr %83, i32 15
  %88 = ptrtoint ptr %cmd.sroa.73.0.arrayidx.i.sroa_idx.i125.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 13, ptr %cmd.sroa.73.0.arrayidx.i.sroa_idx.i125.i, align 1
  %cmd.sroa.8.0.arrayidx.i.sroa_idx.i126.i = getelementptr i8, ptr %83, i32 16
  %89 = call ptr @memset(ptr %cmd.sroa.8.0.arrayidx.i.sroa_idx.i126.i, i32 255, i32 11)
  %90 = load ptr, ptr %tx_msg_buffer.i.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 0, ptr %90, align 1
  %92 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %udev.i.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 8
  %shl.i.i.i128.i = shl i32 %95, 8
  %or.i.i129.i = or i32 %shl.i.i.i128.i, -1073676288
  %96 = load ptr, ptr %tx_msg_buffer.i.i, align 4
  %call10.i.i130.i = call i32 @usb_bulk_msg(ptr noundef %93, i32 noundef %or.i.i129.i, ptr noundef %96, i32 noundef 27, ptr noundef nonnull %actual_length.i.i118.i, i32 noundef 1000) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i118.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i130.i)
  %tobool43.not.i = icmp eq i32 %call10.i.i130.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %if.end41.i.failed.i_crit_edge

if.end41.i.failed.i_crit_edge:                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed.i

if.end45.i:                                       ; preds = %if.end41.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i.i131.i) #8
  %97 = ptrtoint ptr %actual_length.i.i131.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %actual_length.i.i131.i, align 4, !annotation !83
  %98 = ptrtoint ptr %tx_msg_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tx_msg_buffer.i.i, align 4
  %arrayidx.i.i134.i = getelementptr i8, ptr %99, i32 4
  %100 = ptrtoint ptr %arrayidx.i.i134.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 3, ptr %arrayidx.i.i134.i, align 1
  %cmd.sroa.5.0.arrayidx.i.sroa_idx.i135.i = getelementptr i8, ptr %99, i32 5
  %101 = ptrtoint ptr %cmd.sroa.5.0.arrayidx.i.sroa_idx.i135.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 12, ptr %cmd.sroa.5.0.arrayidx.i.sroa_idx.i135.i, align 1
  %cmd.sroa.6.0.arrayidx.i.sroa_idx.i136.i = getelementptr i8, ptr %99, i32 6
  %102 = ptrtoint ptr %cmd.sroa.6.0.arrayidx.i.sroa_idx.i136.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %cmd.sroa.6.0.arrayidx.i.sroa_idx.i136.i, align 1
  %cmd.sroa.7.0.arrayidx.i.sroa_idx.i137.i = getelementptr i8, ptr %99, i32 7
  %103 = ptrtoint ptr %cmd.sroa.7.0.arrayidx.i.sroa_idx.i137.i to i32
  call void @__asan_storeN_noabort(i32 %103, i32 8)
  store i64 -1, ptr %cmd.sroa.7.0.arrayidx.i.sroa_idx.i137.i, align 1
  %cmd.sroa.73.0.arrayidx.i.sroa_idx.i138.i = getelementptr i8, ptr %99, i32 15
  %104 = ptrtoint ptr %cmd.sroa.73.0.arrayidx.i.sroa_idx.i138.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 29, ptr %cmd.sroa.73.0.arrayidx.i.sroa_idx.i138.i, align 1
  %cmd.sroa.8.0.arrayidx.i.sroa_idx.i139.i = getelementptr i8, ptr %99, i32 16
  %105 = call ptr @memset(ptr %cmd.sroa.8.0.arrayidx.i.sroa_idx.i139.i, i32 255, i32 11)
  %106 = load ptr, ptr %tx_msg_buffer.i.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_storeN_noabort(i32 %107, i32 4)
  store i32 0, ptr %106, align 1
  %108 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %udev.i.i, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %109, align 8
  %shl.i.i.i141.i = shl i32 %111, 8
  %or.i.i142.i = or i32 %shl.i.i.i141.i, -1073676288
  %112 = load ptr, ptr %tx_msg_buffer.i.i, align 4
  %call10.i.i143.i = call i32 @usb_bulk_msg(ptr noundef %109, i32 noundef %or.i.i142.i, ptr noundef %112, i32 noundef 27, ptr noundef nonnull %actual_length.i.i131.i, i32 noundef 1000) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i131.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i143.i)
  %tobool47.not.i = icmp eq i32 %call10.i.i143.i, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %if.end45.i.failed.i_crit_edge

if.end45.i.failed.i_crit_edge:                    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed.i

if.end49.i:                                       ; preds = %if.end45.i
  %113 = ptrtoint ptr %cc_params.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %cc_params.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i.i144.i) #8
  %114 = ptrtoint ptr %actual_length.i.i144.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -1, ptr %actual_length.i.i144.i, align 4, !annotation !83
  %115 = ptrtoint ptr %tx_msg_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %tx_msg_buffer.i.i, align 4
  %arrayidx.i.i146.i = getelementptr i8, ptr %116, i32 4
  %117 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %length.i.i, align 1
  %conv.i.i.i = zext i8 %118 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 11
  %119 = call ptr @memcpy(ptr %arrayidx.i.i146.i, ptr %active_params.i, i32 %add.i.i.i)
  %120 = load ptr, ptr %tx_msg_buffer.i.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_storeN_noabort(i32 %121, i32 4)
  store i32 0, ptr %120, align 1
  %122 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %udev.i.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 8
  %shl.i.i.i148.i = shl i32 %125, 8
  %or.i.i149.i = or i32 %shl.i.i.i148.i, -1073676288
  %126 = load ptr, ptr %tx_msg_buffer.i.i, align 4
  %127 = load i8, ptr %length.i.i, align 1
  %conv7.i.i.i = zext i8 %127 to i32
  %add9.i.i.i = add nuw nsw i32 %conv7.i.i.i, 15
  %call10.i.i150.i = call i32 @usb_bulk_msg(ptr noundef %123, i32 noundef %or.i.i149.i, ptr noundef %126, i32 noundef %add9.i.i.i, ptr noundef nonnull %actual_length.i.i144.i, i32 noundef 1000) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i144.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i150.i)
  %tobool51.not.i = icmp eq i32 %call10.i.i150.i, 0
  br i1 %tobool51.not.i, label %ems_usb_start.exit.thread, label %if.end49.i.failed.i_crit_edge

if.end49.i.failed.i_crit_edge:                    ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed.i

ems_usb_start.exit.thread:                        ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  %state.i = getelementptr i8, ptr %netdev, i32 2472
  %128 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %state.i, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %129 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %130, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  br label %cleanup

failed.i:                                         ; preds = %if.end49.i.failed.i_crit_edge, %if.end45.i.failed.i_crit_edge, %if.end41.i.failed.i_crit_edge, %if.end37.i.failed.i_crit_edge
  %err.3.i = phi i32 [ %call10.i.i.i, %if.end37.i.failed.i_crit_edge ], [ %call10.i.i130.i, %if.end41.i.failed.i_crit_edge ], [ %call10.i.i143.i, %if.end45.i.failed.i_crit_edge ], [ %call10.i.i150.i, %if.end49.i.failed.i_crit_edge ]
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.15, i32 noundef %err.3.i) #11
  br label %ems_usb_start.exit

ems_usb_start.exit:                               ; preds = %failed.i, %if.then36.i, %if.then22.i
  %retval.0.i = phi i32 [ %err.1.ph.i, %if.then22.i ], [ %call34.i, %if.then36.i ], [ %err.3.i, %failed.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %retval.0.i)
  %cond = icmp eq i32 %retval.0.i, -19
  br i1 %cond, label %if.then9, label %ems_usb_start.exit.if.end11_crit_edge

ems_usb_start.exit.if.end11_crit_edge:            ; preds = %ems_usb_start.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %ems_usb_start.exit
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %netdev1.i, align 4
  call void @netif_device_detach(ptr noundef %132) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %ems_usb_start.exit.if.end11_crit_edge
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i) #11
  call void @close_candev(ptr noundef %netdev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %ems_usb_start.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %if.end11 ], [ 0, %ems_usb_start.exit.thread ], [ %call10.i.i, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ems_usb_close(ptr noundef %netdev) #2 align 64 {
entry:
  %actual_length.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call fastcc void @unlink_all_urbs(ptr noundef %add.ptr.i)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %active_params.i = getelementptr i8, ptr %netdev, i32 2988
  %cc_params.i = getelementptr i8, ptr %netdev, i32 3000
  %2 = ptrtoint ptr %cc_params.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %cc_params.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i.i) #8
  %3 = ptrtoint ptr %actual_length.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %actual_length.i.i, align 4, !annotation !83
  %tx_msg_buffer.i.i = getelementptr i8, ptr %netdev, i32 2976
  %4 = ptrtoint ptr %tx_msg_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_msg_buffer.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %5, i32 4
  %length.i.i = getelementptr i8, ptr %netdev, i32 2989
  %6 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %length.i.i, align 1
  %conv.i.i = zext i8 %7 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 11
  %8 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %active_params.i, i32 %add.i.i)
  %9 = load ptr, ptr %tx_msg_buffer.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %9, align 1
  %udev.i.i = getelementptr i8, ptr %netdev, i32 2656
  %11 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i.i = shl i32 %14, 8
  %or.i.i = or i32 %shl.i.i.i, -1073676288
  %15 = load ptr, ptr %tx_msg_buffer.i.i, align 4
  %16 = load i8, ptr %length.i.i, align 1
  %conv7.i.i = zext i8 %16 to i32
  %add9.i.i = add nuw nsw i32 %conv7.i.i, 15
  %call10.i.i = call i32 @usb_bulk_msg(ptr noundef %12, i32 noundef %or.i.i, ptr noundef %15, i32 noundef %add9.i.i, ptr noundef nonnull %actual_length.i.i, i32 noundef 1000) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool.not = icmp eq i32 %call10.i.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.21) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @close_candev(ptr noundef %netdev) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ems_usb_start_xmit(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %entry.can_dropped_invalid_skb.exit_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

entry.can_dropped_invalid_skb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp2.not.i = icmp eq i32 %6, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !84

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp6.i = icmp ugt i8 %8, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !85

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %10)
  %cmp16.not.i = icmp eq i32 %10, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !84

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %12)
  %cmp21.i = icmp ugt i8 %12, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !85

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !84

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 104, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %34 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then40.i.i, %if.end37.i.i.if.end_crit_edge
  %call3 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.nomem_crit_edge, label %if.end5

if.end.nomem_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

if.end5:                                          ; preds = %if.end
  %udev = getelementptr i8, ptr %netdev, i32 2656
  %36 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %udev, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 15
  %call6 = tail call ptr @usb_alloc_coherent(ptr noundef %37, i32 noundef 31, i32 noundef 2592, ptr noundef %transfer_dma) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.11) #11
  tail call void @usb_free_urb(ptr noundef nonnull %call3) #8
  br label %nomem

if.end9:                                          ; preds = %if.end5
  %arrayidx = getelementptr i8, ptr %call6, i32 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %1, align 8
  %and = and i32 %39, 536870911
  %40 = tail call i32 @llvm.bswap.i32(i32 %and)
  %msg10 = getelementptr i8, ptr %call6, i32 15
  %41 = ptrtoint ptr %msg10 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %msg10, align 1
  %42 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 4
  %length = getelementptr i8, ptr %call6, i32 19
  %45 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %length, align 1
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %1, align 8
  %and13 = and i32 %47, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %tobool22.not = icmp sgt i32 %47, -1
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %conv = select i1 %tobool22.not, i8 13, i8 16
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv, ptr %arrayidx, align 1
  br label %if.end36

if.else:                                          ; preds = %if.end9
  %conv24 = select i1 %tobool22.not, i8 1, i8 15
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv24, ptr %arrayidx, align 1
  %50 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp181.not = icmp eq i8 %51, 0
  br i1 %cmp181.not, label %if.else.if.end36_crit_edge, label %for.body.lr.ph

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

for.body.lr.ph:                                   ; preds = %if.else
  %msg31 = getelementptr i8, ptr %call6, i32 20
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0182 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx29 = getelementptr %struct.can_frame, ptr %1, i32 0, i32 5, i32 %i.0182
  %52 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx29, align 1
  %arrayidx32 = getelementptr [8 x i8], ptr %msg31, i32 0, i32 %i.0182
  %54 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx32, align 1
  %inc = add nuw nsw i32 %i.0182, 1
  %55 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %42, align 4
  %conv26 = zext i8 %56 to i32
  %cmp = icmp ult i32 %inc, %conv26
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo = add i8 %56, 5
  br label %if.end36

if.end36:                                         ; preds = %for.end.loopexit, %if.else.if.end36_crit_edge, %if.then15
  %.lcssa.sink = phi i8 [ 5, %if.then15 ], [ 5, %if.else.if.end36_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %length35 = getelementptr i8, ptr %call6, i32 5
  %57 = ptrtoint ptr %length35 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %.lcssa.sink, ptr %length35, align 1
  %echo_index = getelementptr i8, ptr %netdev, i32 2784
  %58 = ptrtoint ptr %echo_index to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %echo_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %59)
  %cmp42 = icmp eq i32 %59, 10
  br i1 %cmp42, label %if.end36.for.end50_crit_edge, label %for.inc48

if.end36.for.end50_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end50

for.inc48:                                        ; preds = %if.end36
  %echo_index.1 = getelementptr i8, ptr %netdev, i32 2792
  %60 = ptrtoint ptr %echo_index.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %echo_index.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %61)
  %cmp42.1 = icmp eq i32 %61, 10
  br i1 %cmp42.1, label %for.inc48.for.end50_crit_edge, label %for.inc48.1

for.inc48.for.end50_crit_edge:                    ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end50

for.inc48.1:                                      ; preds = %for.inc48
  %echo_index.2 = getelementptr i8, ptr %netdev, i32 2800
  %62 = ptrtoint ptr %echo_index.2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %echo_index.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %63)
  %cmp42.2 = icmp eq i32 %63, 10
  br i1 %cmp42.2, label %for.inc48.1.for.end50_crit_edge, label %for.inc48.2

for.inc48.1.for.end50_crit_edge:                  ; preds = %for.inc48.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end50

for.inc48.2:                                      ; preds = %for.inc48.1
  %echo_index.3 = getelementptr i8, ptr %netdev, i32 2808
  %64 = ptrtoint ptr %echo_index.3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %echo_index.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %65)
  %cmp42.3 = icmp eq i32 %65, 10
  br i1 %cmp42.3, label %for.inc48.2.for.end50_crit_edge, label %for.inc48.3

for.inc48.2.for.end50_crit_edge:                  ; preds = %for.inc48.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end50

for.inc48.3:                                      ; preds = %for.inc48.2
  %echo_index.4 = getelementptr i8, ptr %netdev, i32 2816
  %66 = ptrtoint ptr %echo_index.4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %echo_index.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %67)
  %cmp42.4 = icmp eq i32 %67, 10
  br i1 %cmp42.4, label %for.inc48.3.for.end50_crit_edge, label %for.inc48.4

for.inc48.3.for.end50_crit_edge:                  ; preds = %for.inc48.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end50

for.inc48.4:                                      ; preds = %for.inc48.3
  %echo_index.5 = getelementptr i8, ptr %netdev, i32 2824
  %68 = ptrtoint ptr %echo_index.5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %echo_index.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %69)
  %cmp42.5 = icmp eq i32 %69, 10
  br i1 %cmp42.5, label %for.inc48.4.for.end50_crit_edge, label %for.inc48.5

for.inc48.4.for.end50_crit_edge:                  ; preds = %for.inc48.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end50

for.inc48.5:                                      ; preds = %for.inc48.4
  %echo_index.6 = getelementptr i8, ptr %netdev, i32 2832
  %70 = ptrtoint ptr %echo_index.6 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %echo_index.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %71)
  %cmp42.6 = icmp eq i32 %71, 10
  br i1 %cmp42.6, label %for.inc48.5.for.end50_crit_edge, label %for.inc48.6

for.inc48.5.for.end50_crit_edge:                  ; preds = %for.inc48.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end50

for.inc48.6:                                      ; preds = %for.inc48.5
  %echo_index.7 = getelementptr i8, ptr %netdev, i32 2840
  %72 = ptrtoint ptr %echo_index.7 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %echo_index.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %73)
  %cmp42.7 = icmp eq i32 %73, 10
  br i1 %cmp42.7, label %for.inc48.6.for.end50_crit_edge, label %for.inc48.7

for.inc48.6.for.end50_crit_edge:                  ; preds = %for.inc48.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end50

for.inc48.7:                                      ; preds = %for.inc48.6
  %echo_index.8 = getelementptr i8, ptr %netdev, i32 2848
  %74 = ptrtoint ptr %echo_index.8 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %echo_index.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %75)
  %cmp42.8 = icmp eq i32 %75, 10
  br i1 %cmp42.8, label %for.inc48.7.for.end50_crit_edge, label %for.inc48.8

for.inc48.7.for.end50_crit_edge:                  ; preds = %for.inc48.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end50

for.inc48.8:                                      ; preds = %for.inc48.7
  %echo_index.9 = getelementptr i8, ptr %netdev, i32 2856
  %76 = ptrtoint ptr %echo_index.9 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %echo_index.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %77)
  %cmp42.9 = icmp eq i32 %77, 10
  br i1 %cmp42.9, label %for.inc48.8.for.end50_crit_edge, label %for.inc48.8.if.then52_crit_edge

for.inc48.8.if.then52_crit_edge:                  ; preds = %for.inc48.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

for.inc48.8.for.end50_crit_edge:                  ; preds = %for.inc48.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end50

for.end50:                                        ; preds = %for.inc48.8.for.end50_crit_edge, %for.inc48.7.for.end50_crit_edge, %for.inc48.6.for.end50_crit_edge, %for.inc48.5.for.end50_crit_edge, %for.inc48.4.for.end50_crit_edge, %for.inc48.3.for.end50_crit_edge, %for.inc48.2.for.end50_crit_edge, %for.inc48.1.for.end50_crit_edge, %for.inc48.for.end50_crit_edge, %if.end36.for.end50_crit_edge
  %i.1183.lcssa = phi i32 [ 0, %if.end36.for.end50_crit_edge ], [ 1, %for.inc48.for.end50_crit_edge ], [ 2, %for.inc48.1.for.end50_crit_edge ], [ 3, %for.inc48.2.for.end50_crit_edge ], [ 4, %for.inc48.3.for.end50_crit_edge ], [ 5, %for.inc48.4.for.end50_crit_edge ], [ 6, %for.inc48.5.for.end50_crit_edge ], [ 7, %for.inc48.6.for.end50_crit_edge ], [ 8, %for.inc48.7.for.end50_crit_edge ], [ 9, %for.inc48.8.for.end50_crit_edge ]
  %arrayidx41 = getelementptr %struct.ems_usb, ptr %add.ptr.i, i32 0, i32 6, i32 %i.1183.lcssa
  %tobool51.not = icmp eq ptr %arrayidx41, null
  br i1 %tobool51.not, label %for.end50.if.then52_crit_edge, label %if.end55

for.end50.if.then52_crit_edge:                    ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

if.then52:                                        ; preds = %for.end50.if.then52_crit_edge, %for.inc48.8.if.then52_crit_edge
  %78 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %udev, align 4
  %80 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %79, i32 noundef 31, ptr noundef nonnull %call6, i32 noundef %81) #8
  tail call void @usb_free_urb(ptr noundef nonnull %call3) #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.22) #11
  br label %cleanup

if.end55:                                         ; preds = %for.end50
  %82 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %add.ptr.i, ptr %arrayidx41, align 4
  %echo_index57 = getelementptr inbounds %struct.ems_tx_urb_context, ptr %arrayidx41, i32 0, i32 1
  %83 = ptrtoint ptr %echo_index57 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %i.1183.lcssa, ptr %echo_index57, align 4
  %84 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %udev, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 8
  %shl.i = shl i32 %87, 8
  %or = or i32 %shl.i, -1073676288
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 8
  %88 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 10
  %89 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 14
  %90 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call6, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 19
  %91 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 31, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 28
  %92 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @ems_usb_write_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 27
  %93 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %arrayidx41, ptr %context4.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 13
  %94 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %transfer_flags, align 4
  %or61 = or i32 %95, 4
  store i32 %or61, ptr %transfer_flags, align 4
  %tx_submitted = getelementptr i8, ptr %netdev, i32 2668
  tail call void @usb_anchor_urb(ptr noundef nonnull %call3, ptr noundef %tx_submitted) #8
  %96 = ptrtoint ptr %echo_index57 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %echo_index57, align 4
  %call63 = tail call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %netdev, i32 noundef %97, i32 noundef 0) #8
  %active_tx_urbs = getelementptr i8, ptr %netdev, i32 2664
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_urbs, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %active_tx_urbs, i32 1, i32 3, i32 1) #8
  %98 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_tx_urbs, ptr %active_tx_urbs, i32 1, ptr elementtype(i32) %active_tx_urbs) #8, !srcloc !86
  %call64 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call3, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.else79, label %if.then68, !prof !84

if.then68:                                        ; preds = %if.end55
  %99 = ptrtoint ptr %echo_index57 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %echo_index57, align 4
  tail call void @can_free_echo_skb(ptr noundef %netdev, i32 noundef %100, ptr noundef null) #8
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call3) #8
  %101 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %udev, align 4
  %103 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %102, i32 noundef 31, ptr noundef nonnull %call6, i32 noundef %104) #8
  tail call void @consume_skb(ptr noundef %skb) #8
  %call.i.i173 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_urbs, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %active_tx_urbs, i32 1, i32 3, i32 1) #8
  %105 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_tx_urbs, ptr %active_tx_urbs, i32 1, ptr elementtype(i32) %active_tx_urbs) #8, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call64)
  %cmp73 = icmp eq i32 %call64, -19
  br i1 %cmp73, label %if.then75, label %if.else76

if.then75:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_device_detach(ptr noundef %netdev) #8
  br label %if.end88

if.else76:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.23, i32 noundef %call64) #11
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %106 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tx_dropped, align 4
  %inc77 = add i32 %107, 1
  store i32 %inc77, ptr %tx_dropped, align 4
  br label %if.end88

if.else79:                                        ; preds = %if.end55
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %108 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %110 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %109, i32 0, i32 12
  %111 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %110)
  %cmp.not.i.i = icmp eq i32 %112, %110
  br i1 %cmp.not.i.i, label %if.else79.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.else79.netif_trans_update.exit_crit_edge:      ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #10
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile i32 %110, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.else79.netif_trans_update.exit_crit_edge
  %call.i.i174 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_tx_urbs, i32 noundef 4) #8
  %114 = ptrtoint ptr %active_tx_urbs to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %active_tx_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %115)
  %cmp82 = icmp sgt i32 %115, 9
  br i1 %cmp82, label %netif_trans_update.exit.if.then86_crit_edge, label %lor.lhs.false

netif_trans_update.exit.if.then86_crit_edge:      ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then86

lor.lhs.false:                                    ; preds = %netif_trans_update.exit
  %free_slots = getelementptr i8, ptr %netdev, i32 2984
  %116 = ptrtoint ptr %free_slots to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %free_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %117)
  %cmp84 = icmp ult i32 %117, 25
  br i1 %cmp84, label %lor.lhs.false.if.then86_crit_edge, label %lor.lhs.false.if.end88_crit_edge

lor.lhs.false.if.end88_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

lor.lhs.false.if.then86_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then86

if.then86:                                        ; preds = %lor.lhs.false.if.then86_crit_edge, %netif_trans_update.exit.if.then86_crit_edge
  %118 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %119, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %lor.lhs.false.if.end88_crit_edge, %if.else76, %if.then75
  tail call void @usb_free_urb(ptr noundef nonnull %call3) #8
  br label %cleanup

nomem:                                            ; preds = %if.then8, %if.end.nomem_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #8
  %tx_dropped89 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %120 = ptrtoint ptr %tx_dropped89 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %tx_dropped89, align 4
  %inc90 = add i32 %121, 1
  store i32 %inc90, ptr %tx_dropped89, align 4
  br label %cleanup

cleanup:                                          ; preds = %nomem, %if.end88, %if.then52, %can_dropped_invalid_skb.exit
  %retval.0 = phi i32 [ 0, %if.end88 ], [ 16, %if.then52 ], [ 0, %nomem ], [ 0, %can_dropped_invalid_skb.exit ]
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
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ems_usb_read_bulk_callback(ptr noundef %urb) #2 align 64 {
entry:
  %cf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %netdev1 = getelementptr inbounds %struct.ems_usb, ptr %1, i32 0, i32 3
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %8, label %sw.default [
    i32 0, label %sw.epilog
    i32 -2, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %8) #11
  br label %resubmit_urb

sw.epilog:                                        ; preds = %if.end
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %10 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp = icmp ugt i32 %11, 4
  br i1 %cmp, label %if.then3, label %sw.epilog.resubmit_urb_crit_edge

sw.epilog.resubmit_urb_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %resubmit_urb

if.then3:                                         ; preds = %sw.epilog
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %12 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transfer_buffer, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %16 = and i8 %15, 127
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog11.while.cond_crit_edge, %if.then3
  %msg_count.0 = phi i8 [ %16, %if.then3 ], [ %dec, %sw.epilog11.while.cond_crit_edge ]
  %start.0 = phi i32 [ 4, %if.then3 ], [ %add14, %sw.epilog11.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %msg_count.0)
  %tobool.not = icmp eq i8 %msg_count.0, 0
  br i1 %tobool.not, label %while.cond.resubmit_urb_crit_edge, label %while.body

while.cond.resubmit_urb_crit_edge:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %resubmit_urb

while.body:                                       ; preds = %while.cond
  %idxprom = and i32 %start.0, 255
  %arrayidx5 = getelementptr i8, ptr %13, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx5, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %18, label %while.body.sw.epilog11_crit_edge [
    i8 14, label %sw.bb7
    i8 1, label %while.body.sw.bb8_crit_edge
    i8 16, label %while.body.sw.bb8_crit_edge67
    i8 8, label %while.body.sw.bb8_crit_edge68
    i8 17, label %while.body.sw.bb8_crit_edge69
    i8 23, label %sw.bb9
    i8 21, label %sw.bb10
  ]

while.body.sw.bb8_crit_edge69:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

while.body.sw.bb8_crit_edge68:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

while.body.sw.bb8_crit_edge67:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

while.body.sw.bb8_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

while.body.sw.epilog11_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog11

sw.bb7:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ems_usb_rx_err(ptr noundef %1, ptr noundef %arrayidx5)
  br label %sw.epilog11

sw.bb8:                                           ; preds = %while.body.sw.bb8_crit_edge, %while.body.sw.bb8_crit_edge67, %while.body.sw.bb8_crit_edge68, %while.body.sw.bb8_crit_edge69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #8
  %20 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !83
  %21 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev1, align 4
  %stats1.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 36
  %call.i = call ptr @alloc_can_skb(ptr noundef %22, ptr noundef nonnull %cf.i) #8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %sw.bb8.ems_usb_rx_can_msg.exit_crit_edge, label %if.end.i

sw.bb8.ems_usb_rx_can_msg.exit_crit_edge:         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %ems_usb_rx_can_msg.exit

if.end.i:                                         ; preds = %sw.bb8
  %msg3.i = getelementptr inbounds %struct.ems_cpc_msg, ptr %arrayidx5, i32 0, i32 5
  %23 = ptrtoint ptr %msg3.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %msg3.i, align 1
  %25 = call i32 @llvm.bswap.i32(i32 %24) #8
  %26 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cf.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %27, align 8
  %length.i = getelementptr inbounds %struct.ems_cpc_msg, ptr %arrayidx5, i32 0, i32 5, i32 0, i32 1
  %29 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %length.i, align 1
  %31 = and i8 %30, 15
  %32 = call i8 @llvm.umin.i8(i8 %31, i8 8) #8
  %33 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cf.i, align 4
  %35 = getelementptr inbounds %struct.can_frame, ptr %34, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %32, ptr %35, align 4
  %37 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx5, align 1
  %39 = and i8 %38, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %39)
  %switch.i = icmp eq i8 %39, 16
  br i1 %switch.i, label %if.then20.i, label %if.end.i.if.end22.i_crit_edge

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %34, align 8
  %or.i = or i32 %41, -2147483648
  store i32 %or.i, ptr %34, align 8
  %42 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %42)
  %.pr.i = load i8, ptr %arrayidx5, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.end.i.if.end22.i_crit_edge
  %43 = phi i8 [ %38, %if.end.i.if.end22.i_crit_edge ], [ %.pr.i, %if.then20.i ]
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %43, label %for.cond.preheader.i [
    i8 8, label %if.end22.i.if.then32.i_crit_edge
    i8 17, label %if.end22.i.if.then32.i_crit_edge70
  ]

if.end22.i.if.then32.i_crit_edge70:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

if.end22.i.if.then32.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

for.cond.preheader.i:                             ; preds = %if.end22.i
  %45 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cf.i, align 4
  %47 = getelementptr inbounds %struct.can_frame, ptr %46, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp3663.not.i = icmp eq i8 %49, 0
  br i1 %cmp3663.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.then32.i:                                      ; preds = %if.end22.i.if.then32.i_crit_edge, %if.end22.i.if.then32.i_crit_edge70
  %50 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cf.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %or34.i = or i32 %53, 1073741824
  store i32 %or34.i, ptr %51, align 8
  br label %if.end42.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %54 = phi ptr [ %59, %for.body.i.for.body.i_crit_edge ], [ %46, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.064.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ems_cpc_msg, ptr %arrayidx5, i32 0, i32 5, i32 0, i32 2, i32 %i.064.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i, align 1
  %arrayidx40.i = getelementptr %struct.can_frame, ptr %54, i32 0, i32 5, i32 %i.064.i
  %57 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx40.i, align 1
  %inc.i = add nuw nsw i32 %i.064.i, 1
  %58 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cf.i, align 4
  %60 = getelementptr inbounds %struct.can_frame, ptr %59, i32 0, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 4
  %conv35.i = zext i8 %62 to i32
  %cmp36.i = icmp ult i32 %inc.i, %conv35.i
  br i1 %cmp36.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i.loopexit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i.loopexit:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv35.i.le = zext i8 %62 to i32
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %conv35.i.le, %for.end.i.loopexit ]
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 36, i32 2
  %63 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_bytes.i, align 4
  %add.i = add i32 %64, %.lcssa.i
  store i32 %add.i, ptr %rx_bytes.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %for.end.i, %if.then32.i
  %65 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %stats1.i, align 4
  %inc43.i = add i32 %66, 1
  store i32 %inc43.i, ptr %stats1.i, align 4
  %call44.i = call i32 @netif_rx(ptr noundef nonnull %call.i) #8
  br label %ems_usb_rx_can_msg.exit

ems_usb_rx_can_msg.exit:                          ; preds = %if.end42.i, %sw.bb8.ems_usb_rx_can_msg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #8
  br label %sw.epilog11

sw.bb9:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ems_usb_rx_err(ptr noundef %1, ptr noundef %arrayidx5)
  br label %sw.epilog11

sw.bb10:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ems_usb_rx_err(ptr noundef %1, ptr noundef %arrayidx5)
  br label %sw.epilog11

sw.epilog11:                                      ; preds = %sw.bb10, %sw.bb9, %ems_usb_rx_can_msg.exit, %sw.bb7, %while.body.sw.epilog11_crit_edge
  %length = getelementptr inbounds %struct.ems_cpc_msg, ptr %arrayidx5, i32 0, i32 1
  %67 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %length, align 1
  %conv12 = zext i8 %68 to i32
  %add = add nuw nsw i32 %idxprom, 11
  %add14 = add nuw nsw i32 %add, %conv12
  %dec = add nsw i8 %msg_count.0, -1
  %conv16 = and i32 %add14, 255
  %69 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %transfer_buffer_length, align 4
  %cmp17 = icmp ugt i32 %conv16, %70
  br i1 %cmp17, label %if.then19, label %sw.epilog11.while.cond_crit_edge

sw.epilog11.while.cond_crit_edge:                 ; preds = %sw.epilog11
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.then19:                                        ; preds = %sw.epilog11
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.17) #11
  br label %resubmit_urb

resubmit_urb:                                     ; preds = %if.then19, %while.cond.resubmit_urb_crit_edge, %sw.epilog.resubmit_urb_crit_edge, %sw.default
  %udev = getelementptr inbounds %struct.ems_usb, ptr %1, i32 0, i32 2
  %71 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %udev, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  %shl.i = shl i32 %74, 8
  %or24 = or i32 %shl.i, -1073676160
  %dev1.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %75 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %76 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or24, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %77 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 64, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %78 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @ems_usb_read_bulk_callback, ptr %complete.i, align 4
  %79 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %1, ptr %context, align 4
  %call26 = call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  %80 = zext i32 %call26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call26, label %if.then31 [
    i32 -19, label %if.then29
    i32 0, label %resubmit_urb.cleanup_crit_edge
  ]

resubmit_urb.cleanup_crit_edge:                   ; preds = %resubmit_urb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then29:                                        ; preds = %resubmit_urb
  call void @__sanitizer_cov_trace_pc() #10
  call void @netif_device_detach(ptr noundef %3) #8
  br label %cleanup

if.then31:                                        ; preds = %resubmit_urb
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef %call26) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.then29, %resubmit_urb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ems_usb_read_interrupt_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %netdev1 = getelementptr inbounds %struct.ems_usb, ptr %1, i32 0, i32 3
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 -104, label %if.end.cleanup_crit_edge
    i32 -2, label %if.end.cleanup_crit_edge33
    i32 -32, label %if.end.cleanup_crit_edge34
    i32 -71, label %if.end.cleanup_crit_edge35
    i32 -108, label %if.end.cleanup_crit_edge36
  ]

if.end.cleanup_crit_edge36:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge35:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge34:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge33:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %intr_in_buffer = getelementptr inbounds %struct.ems_usb, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %intr_in_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intr_in_buffer, align 4
  %arrayidx = getelementptr i8, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %13 to i32
  %free_slots = getelementptr inbounds %struct.ems_usb, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %free_slots to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %free_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %13)
  %cmp = icmp ugt i8 %13, 35
  br i1 %cmp, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %15 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then6

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_tx_wake_queue(ptr noundef %16) #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef %8) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then6, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %call10 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  %19 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call10, label %if.then14 [
    i32 -19, label %if.then13
    i32 0, label %sw.epilog.cleanup_crit_edge
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_device_detach(ptr noundef %3) #8
  br label %cleanup

if.then14:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.20, i32 noundef %call10) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.then13, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge33, %if.end.cleanup_crit_edge34, %if.end.cleanup_crit_edge35, %if.end.cleanup_crit_edge36, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ems_usb_rx_err(ptr nocapture noundef %dev, ptr nocapture noundef readonly %msg) unnamed_addr #2 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #8
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !83
  %netdev = getelementptr inbounds %struct.ems_usb, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev, align 4
  %call = call ptr @alloc_can_err_skb(ptr noundef %2, ptr noundef nonnull %cf) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %msg, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %4, label %if.end.if.end118_crit_edge [
    i8 14, label %if.then5
    i8 23, label %if.then34
    i8 21, label %if.then108
  ]

if.end.if.end118_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then5:                                         ; preds = %if.end
  %msg6 = getelementptr inbounds %struct.ems_cpc_msg, ptr %msg, i32 0, i32 5
  %6 = ptrtoint ptr %msg6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %msg6, align 1
  %conv7 = zext i8 %7 to i32
  %and = and i32 %conv7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %state9 = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 21
  %8 = ptrtoint ptr %state9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %state9, align 4
  %9 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cf, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %or = or i32 %12, 64
  store i32 %or, ptr %10, align 8
  %bus_off = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %bus_off to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bus_off, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %bus_off, align 4
  %15 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev, align 4
  call void @can_bus_off(ptr noundef %16) #8
  br label %if.end118

if.else:                                          ; preds = %if.then5
  %and13 = and i32 %conv7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %state23 = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 21
  br i1 %tobool14.not, label %if.else21, label %if.then15

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %state23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %state23, align 4
  %error_warning = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %error_warning to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error_warning, align 4
  %inc20 = add i32 %19, 1
  store i32 %inc20, ptr %error_warning, align 4
  br label %if.end118

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %state23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %state23, align 4
  %error_passive = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %error_passive to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %error_passive, align 4
  %inc26 = add i32 %22, 1
  store i32 %inc26, ptr %error_passive, align 4
  br label %if.end118

if.then34:                                        ; preds = %if.end
  %msg35 = getelementptr inbounds %struct.ems_cpc_msg, ptr %msg, i32 0, i32 5
  %regs = getelementptr inbounds %struct.cpc_can_error, ptr %msg35, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %regs, align 1
  %txerr40 = getelementptr inbounds %struct.ems_cpc_msg, ptr %msg, i32 0, i32 5, i32 0, i32 1
  %25 = ptrtoint ptr %txerr40 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %txerr40, align 1
  %rxerr44 = getelementptr inbounds %struct.cpc_can_error, ptr %msg35, i32 0, i32 1, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %rxerr44 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rxerr44, align 1
  %can_stats46 = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 1
  %29 = ptrtoint ptr %can_stats46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %can_stats46, align 4
  %inc47 = add i32 %30, 1
  store i32 %inc47, ptr %can_stats46, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 4
  %31 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_errors, align 4
  %inc48 = add i32 %32, 1
  store i32 %inc48, ptr %rx_errors, align 4
  %33 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cf, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %or50 = or i32 %36, 136
  store i32 %or50, ptr %34, align 8
  %and52 = and i8 %24, -64
  %37 = zext i8 %and52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %and52, label %sw.default [
    i8 0, label %sw.bb
    i8 64, label %sw.bb56
    i8 -128, label %sw.bb62
  ]

sw.bb:                                            ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cf, align 4
  %arrayidx = getelementptr %struct.can_frame, ptr %39, i32 0, i32 5, i32 2
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx, align 2
  %42 = or i8 %41, 1
  store i8 %42, ptr %arrayidx, align 2
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cf, align 4
  %arrayidx58 = getelementptr %struct.can_frame, ptr %44, i32 0, i32 5, i32 2
  %45 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx58, align 2
  %47 = or i8 %46, 2
  store i8 %47, ptr %arrayidx58, align 2
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cf, align 4
  %arrayidx64 = getelementptr %struct.can_frame, ptr %49, i32 0, i32 5, i32 2
  %50 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx64, align 2
  %52 = or i8 %51, 4
  store i8 %52, ptr %arrayidx64, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %and69 = and i8 %24, 31
  %53 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cf, align 4
  %arrayidx72 = getelementptr %struct.can_frame, ptr %54, i32 0, i32 5, i32 3
  %55 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %and69, ptr %arrayidx72, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb62, %sw.bb56, %sw.bb
  %56 = and i8 %24, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp75 = icmp eq i8 %56, 0
  br i1 %cmp75, label %if.then77, label %sw.epilog.if.end83_crit_edge

sw.epilog.if.end83_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then77:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cf, align 4
  %arrayidx79 = getelementptr %struct.can_frame, ptr %58, i32 0, i32 5, i32 2
  %59 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx79, align 2
  %61 = or i8 %60, -128
  store i8 %61, ptr %arrayidx79, align 2
  br label %if.end83

if.end83:                                         ; preds = %if.then77, %sw.epilog.if.end83_crit_edge
  %state85 = getelementptr inbounds %struct.can_priv, ptr %dev, i32 0, i32 21
  %62 = ptrtoint ptr %state85 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %state85, align 4
  %.off = add i32 %63, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then92, label %if.end83.if.end118_crit_edge

if.end83.if.end118_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then92:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cf, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 8
  %or94 = or i32 %67, 4
  store i32 %or94, ptr %65, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp97 = icmp ugt i8 %26, %28
  %conv99 = select i1 %cmp97, i8 32, i8 16
  %68 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cf, align 4
  %arrayidx101 = getelementptr %struct.can_frame, ptr %69, i32 0, i32 5, i32 1
  %70 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv99, ptr %arrayidx101, align 1
  br label %if.end118

if.then108:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cf, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  %or110 = or i32 %74, 4
  store i32 %or110, ptr %72, align 8
  %75 = load ptr, ptr %cf, align 4
  %arrayidx112 = getelementptr %struct.can_frame, ptr %75, i32 0, i32 5, i32 1
  %76 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %arrayidx112, align 1
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 11
  %77 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rx_over_errors, align 4
  %inc113 = add i32 %78, 1
  store i32 %inc113, ptr %rx_over_errors, align 4
  %rx_errors114 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 4
  %79 = ptrtoint ptr %rx_errors114 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rx_errors114, align 4
  %inc115 = add i32 %80, 1
  store i32 %inc115, ptr %rx_errors114, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then108, %if.then92, %if.end83.if.end118_crit_edge, %if.else21, %if.then15, %if.then8, %if.end.if.end118_crit_edge
  %call119 = call i32 @netif_rx(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end118, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unlink_all_urbs(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_urb = getelementptr inbounds %struct.ems_usb, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %intr_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intr_urb, align 4
  %call = tail call i32 @usb_unlink_urb(ptr noundef %1) #8
  %rx_submitted = getelementptr inbounds %struct.ems_usb, ptr %dev, i32 0, i32 7
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted) #8
  %udev = getelementptr inbounds %struct.ems_usb, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %arrayidx = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 13, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 14, i32 0
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  tail call void @usb_free_coherent(ptr noundef %3, i32 noundef 64, ptr noundef %5, i32 noundef %7) #8
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 4
  %arrayidx.1 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 13, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %arrayidx1.1 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 14, i32 1
  %12 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx1.1, align 4
  tail call void @usb_free_coherent(ptr noundef %9, i32 noundef 64, ptr noundef %11, i32 noundef %13) #8
  %14 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev, align 4
  %arrayidx.2 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 13, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2, align 4
  %arrayidx1.2 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 14, i32 2
  %18 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx1.2, align 4
  tail call void @usb_free_coherent(ptr noundef %15, i32 noundef 64, ptr noundef %17, i32 noundef %19) #8
  %20 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev, align 4
  %arrayidx.3 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 13, i32 3
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.3, align 4
  %arrayidx1.3 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 14, i32 3
  %24 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx1.3, align 4
  tail call void @usb_free_coherent(ptr noundef %21, i32 noundef 64, ptr noundef %23, i32 noundef %25) #8
  %26 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %udev, align 4
  %arrayidx.4 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 13, i32 4
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.4, align 4
  %arrayidx1.4 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 14, i32 4
  %30 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx1.4, align 4
  tail call void @usb_free_coherent(ptr noundef %27, i32 noundef 64, ptr noundef %29, i32 noundef %31) #8
  %32 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %udev, align 4
  %arrayidx.5 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 13, i32 5
  %34 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.5, align 4
  %arrayidx1.5 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 14, i32 5
  %36 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx1.5, align 4
  tail call void @usb_free_coherent(ptr noundef %33, i32 noundef 64, ptr noundef %35, i32 noundef %37) #8
  %38 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %udev, align 4
  %arrayidx.6 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 13, i32 6
  %40 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.6, align 4
  %arrayidx1.6 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 14, i32 6
  %42 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx1.6, align 4
  tail call void @usb_free_coherent(ptr noundef %39, i32 noundef 64, ptr noundef %41, i32 noundef %43) #8
  %44 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %udev, align 4
  %arrayidx.7 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 13, i32 7
  %46 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.7, align 4
  %arrayidx1.7 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 14, i32 7
  %48 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx1.7, align 4
  tail call void @usb_free_coherent(ptr noundef %45, i32 noundef 64, ptr noundef %47, i32 noundef %49) #8
  %50 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %udev, align 4
  %arrayidx.8 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 13, i32 8
  %52 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.8, align 4
  %arrayidx1.8 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 14, i32 8
  %54 = ptrtoint ptr %arrayidx1.8 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx1.8, align 4
  tail call void @usb_free_coherent(ptr noundef %51, i32 noundef 64, ptr noundef %53, i32 noundef %55) #8
  %56 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %udev, align 4
  %arrayidx.9 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 13, i32 9
  %58 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.9, align 4
  %arrayidx1.9 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 14, i32 9
  %60 = ptrtoint ptr %arrayidx1.9 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx1.9, align 4
  tail call void @usb_free_coherent(ptr noundef %57, i32 noundef 64, ptr noundef %59, i32 noundef %61) #8
  %tx_submitted = getelementptr inbounds %struct.ems_usb, ptr %dev, i32 0, i32 5
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_submitted) #8
  %active_tx_urbs = getelementptr inbounds %struct.ems_usb, ptr %dev, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_urbs, i32 noundef 4) #8
  %62 = ptrtoint ptr %active_tx_urbs to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 0, ptr %active_tx_urbs, align 4
  %echo_index = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 6, i32 0, i32 1
  %63 = ptrtoint ptr %echo_index to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 10, ptr %echo_index, align 4
  %echo_index.1 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 6, i32 1, i32 1
  %64 = ptrtoint ptr %echo_index.1 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 10, ptr %echo_index.1, align 4
  %echo_index.2 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 6, i32 2, i32 1
  %65 = ptrtoint ptr %echo_index.2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 10, ptr %echo_index.2, align 4
  %echo_index.3 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 6, i32 3, i32 1
  %66 = ptrtoint ptr %echo_index.3 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 10, ptr %echo_index.3, align 4
  %echo_index.4 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 6, i32 4, i32 1
  %67 = ptrtoint ptr %echo_index.4 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 10, ptr %echo_index.4, align 4
  %echo_index.5 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 6, i32 5, i32 1
  %68 = ptrtoint ptr %echo_index.5 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 10, ptr %echo_index.5, align 4
  %echo_index.6 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 6, i32 6, i32 1
  %69 = ptrtoint ptr %echo_index.6 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 10, ptr %echo_index.6, align 4
  %echo_index.7 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 6, i32 7, i32 1
  %70 = ptrtoint ptr %echo_index.7 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 10, ptr %echo_index.7, align 4
  %echo_index.8 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 6, i32 8, i32 1
  %71 = ptrtoint ptr %echo_index.8 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 10, ptr %echo_index.8, align 4
  %echo_index.9 = getelementptr %struct.ems_usb, ptr %dev, i32 0, i32 6, i32 9, i32 1
  %72 = ptrtoint ptr %echo_index.9 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 10, ptr %echo_index.9, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ems_usb_write_bulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !85

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/can/usb/ems_usb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 498, 0\0A.popsection", ""() #8, !srcloc !88
  unreachable

do.end10:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %netdev12 = getelementptr inbounds %struct.ems_usb, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %netdev12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev12, align 4
  %dev13 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %6 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev13, align 4
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
  tail call void @usb_free_coherent(ptr noundef %7, i32 noundef %9, ptr noundef %11, i32 noundef %13) #8
  %active_tx_urbs = getelementptr inbounds %struct.ems_usb, ptr %3, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_urbs, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %active_tx_urbs, i32 1, i32 3, i32 1) #8
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_tx_urbs, ptr %active_tx_urbs, i32 1, ptr elementtype(i32) %active_tx_urbs) #8, !srcloc !87
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not = icmp eq i32 %17, 0
  br i1 %tobool.i.not, label %do.end10.cleanup_crit_edge, label %if.end15

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %do.end10
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool16.not = icmp eq i32 %19, 0
  br i1 %tobool16.not, label %if.end15.if.end19_crit_edge, label %if.then17

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef %19) #11
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %20 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %21, i32 0, i32 12
  %23 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp.not.i.i = icmp eq i32 %24, %22
  br i1 %cmp.not.i.i, label %if.end19.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end19.netif_trans_update.exit_crit_edge:       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 %22, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end19.netif_trans_update.exit_crit_edge
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 1
  %26 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %tx_packets, align 4
  %echo_index = getelementptr inbounds %struct.ems_tx_urb_context, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %echo_index to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %echo_index, align 4
  %call20 = tail call i32 @can_get_echo_skb(ptr noundef %5, i32 noundef %29, ptr noundef null) #8
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 3
  %30 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %31, %call20
  store i32 %add, ptr %tx_bytes, align 4
  %32 = ptrtoint ptr %echo_index to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 10, ptr %echo_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %netif_trans_update.exit, %do.end10.cleanup_crit_edge
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
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !66, !68, !69, !71, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__UNIQUE_ID_author464, !1, !"__UNIQUE_ID_author464", i1 false, i1 false}
!1 = !{!"../drivers/net/can/usb/ems_usb.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_description465, !3, !"__UNIQUE_ID_description465", i1 false, i1 false}
!3 = !{!"../drivers/net/can/usb/ems_usb.c", i32 18, i32 1}
!4 = !{ptr @__UNIQUE_ID_file466, !5, !"__UNIQUE_ID_file466", i1 false, i1 false}
!5 = !{!"../drivers/net/can/usb/ems_usb.c", i32 19, i32 1}
!6 = !{ptr @__UNIQUE_ID_license467, !5, !"__UNIQUE_ID_license467", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_ems_usb__470_1084_ems_usb_driver_init6, !8, !"__initcall__kmod_ems_usb__470_1084_ems_usb_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/can/usb/ems_usb.c", i32 1084, i32 1}
!9 = !{ptr @__exitcall_ems_usb_driver_exit, !8, !"__exitcall_ems_usb_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ems_usb_driver, !12, !"ems_usb_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/can/usb/ems_usb.c", i32 1077, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/can/usb/ems_usb.c", i32 977, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ems_usb_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @ems_usb_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/can/usb/ems_usb.c", i32 1026, i32 22}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/can/usb/ems_usb.c", i32 1032, i32 22}
!25 = !{ptr @ems_usb_bittiming_const, !26, !"ems_usb_bittiming_const", i1 false, i1 false}
!26 = !{!"../drivers/net/can/usb/ems_usb.c", i32 883, i32 41}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/can/usb/ems_usb.c", i32 927, i32 22}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/can/usb/ems_usb.c", i32 902, i32 24}
!31 = !{ptr @ems_usb_netdev_ops, !32, !"ems_usb_netdev_ops", i1 false, i1 false}
!32 = !{!"../drivers/net/can/usb/ems_usb.c", i32 876, i32 36}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/can/usb/ems_usb.c", i32 723, i32 23}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/can/usb/ems_usb.c", i32 601, i32 23}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/can/usb/ems_usb.c", i32 633, i32 23}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/can/usb/ems_usb.c", i32 639, i32 23}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/can/usb/ems_usb.c", i32 650, i32 23}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/can/usb/ems_usb.c", i32 679, i32 22}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/can/usb/ems_usb.c", i32 425, i32 23}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/can/usb/ems_usb.c", i32 469, i32 24}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/can/usb/ems_usb.c", i32 486, i32 7}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/can/usb/ems_usb.c", i32 286, i32 23}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/can/usb/ems_usb.c", i32 295, i32 22}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/can/usb/ems_usb.c", i32 869, i32 23}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/can/usb/ems_usb.c", i32 799, i32 23}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/can/usb/ems_usb.c", i32 829, i32 24}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/can/usb/ems_usb.c", i32 513, i32 23}
!66 = !{ptr @init_usb_anchor.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @init_usb_anchor.__key.27, !70, !"__key", i1 false, i1 false}
!70 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ems_usb_table, !73, !"ems_usb_table", i1 false, i1 false}
!73 = !{!"../drivers/net/can/usb/ems_usb.c", i32 213, i32 29}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"auto-init"}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{i64 2148475569, i64 2148475595, i64 2148475624, i64 2148475658, i64 2148475689, i64 2148475712}
!87 = !{i64 2148478034, i64 2148478060, i64 2148478089, i64 2148478123, i64 2148478154, i64 2148478177}
!88 = !{i64 2157108419, i64 2157108913, i64 2157108456, i64 2157108512, i64 2157108546, i64 2157108570, i64 2157108611, i64 2157108632, i64 2157108660, i64 2157108694}
