; ModuleID = '/llk/IR_all_yes/drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c_pt.bc'
source_filename = "../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c"
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
%struct.kvaser_usb_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kvaser_usb = type { ptr, ptr, [5 x ptr], ptr, ptr, ptr, ptr, %struct.usb_anchor, i32, i32, i32, %struct.kvaser_usb_dev_card_data, i8, [4 x ptr], [4 x i32] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kvaser_usb_dev_card_data = type { i32, i32, %union.anon.141 }
%union.anon.141 = type { %struct.kvaser_usb_dev_card_data_hydra }
%struct.kvaser_usb_dev_card_data_hydra = type { [5 x i8], i8, %struct.spinlock, i16, %struct.spinlock, [128 x i8], i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.kvaser_usb_net_priv = type { %struct.can_priv, %struct.can_berr_counter, ptr, ptr, i32, %struct.completion, %struct.completion, %struct.completion, %struct.usb_anchor, %struct.spinlock, i32, [0 x %struct.kvaser_usb_tx_urb_context] }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.can_berr_counter = type { i16, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kvaser_usb_tx_urb_context = type { ptr, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.126, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.140, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.126 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.140 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.can_frame = type { i32, %union.anon.147, i8, i8, i8, [8 x i8] }
%union.anon.147 = type { i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.kvaser_usb_dev_cfg = type { %struct.can_clock, i32, ptr, ptr }
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

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error transmitting URB\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No memory left for err_skb\0A\00", [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_kvaser_usb__467_849_kvaser_usb_driver_init6 = internal global ptr @kvaser_usb_driver_init, section ".initcall6.init", align 4
@kvaser_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.3, ptr @kvaser_usb_probe, ptr @kvaser_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kvaser_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_kvaser_usb_driver_exit = internal global ptr @kvaser_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author468 = internal constant [53 x i8] c"kvaser_usb.author=Olivier Sobrie <olivier@sobrie.be>\00", section ".modinfo", align 1
@__UNIQUE_ID_author469 = internal constant [49 x i8] c"kvaser_usb.author=Kvaser AB <support@kvaser.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description470 = internal constant [61 x i8] c"kvaser_usb.description=CAN driver for Kvaser CAN/USB devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file471 = internal constant [58 x i8] c"kvaser_usb.file=drivers/net/can/usb/kvaser_usb/kvaser_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license472 = internal constant [26 x i8] c"kvaser_usb.license=GPL v2\00", section ".modinfo", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"urb status received: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kvaser_usb\00", [21 x i8] zeroinitializer }, align 32
@kvaser_usb_table = internal constant { [51 x %struct.usb_device_id], [312 x i8] } { [51 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3069, i16 10, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 11, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 3069, i16 14, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 3069, i16 15, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 3069, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 3069, i16 17, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 3069, i16 18, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 3069, i16 19, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 3069, i16 22, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 3069, i16 23, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 3069, i16 24, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 3069, i16 25, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 26, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 3069, i16 27, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 3069, i16 28, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 3069, i16 29, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 3069, i16 34, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 3069, i16 35, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 3069, i16 39, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 3069, i16 288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 289, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 290, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 291, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 292, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 294, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 295, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 296, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 3069, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 3069, i16 5, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 3069, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 3069, i16 258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 260, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 261, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 262, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 263, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 264, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 265, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 266, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 267, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 268, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 269, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 270, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 273, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 274, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 275, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 276, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 277, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3069, i16 278, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [312 x i8] zeroinitializer }, align 32
@kvaser_usb_leaf_dev_ops = external dso_local constant %struct.kvaser_usb_dev_ops, align 4
@kvaser_usb_hydra_dev_ops = external dso_local constant %struct.kvaser_usb_dev_ops, align 4
@kvaser_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 750, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Product ID (%d) is not a supported Kvaser USB device\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kvaser_usb_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kvaser_usb_probe._entry_ptr = internal global ptr @kvaser_usb_probe._entry, section ".printk_index", align 4
@kvaser_usb_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 758, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot get usb endpoint(s)\00", [37 x i8] zeroinitializer }, align 32
@kvaser_usb_probe._entry_ptr.11 = internal global ptr @kvaser_usb_probe._entry.9, section ".printk_index", align 4
@kvaser_usb_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 773, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to initialize card, error %d\0A\00", [59 x i8] zeroinitializer }, align 32
@kvaser_usb_probe._entry_ptr.14 = internal global ptr @kvaser_usb_probe._entry.12, section ".printk_index", align 4
@kvaser_usb_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 780, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot get software info, error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@kvaser_usb_probe._entry_ptr.17 = internal global ptr @kvaser_usb_probe._entry.15, section ".printk_index", align 4
@kvaser_usb_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 788, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot get software details, error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@kvaser_usb_probe._entry_ptr.20 = internal global ptr @kvaser_usb_probe._entry.18, section ".printk_index", align 4
@kvaser_usb_probe.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.21, i8 0, i8 -57, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Firmware version: %d.%d.%d\0A\00", [36 x i8] zeroinitializer }, align 32
@kvaser_usb_probe.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.22, i8 0, i8 -56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Max outstanding tx = %d URBs\0A\00", [34 x i8] zeroinitializer }, align 32
@kvaser_usb_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.5, ptr @.str.6, i32 805, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot get card info, error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@kvaser_usb_probe._entry_ptr.25 = internal global ptr @kvaser_usb_probe._entry.23, section ".printk_index", align 4
@kvaser_usb_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.5, ptr @.str.6, i32 813, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Cannot get capabilities, error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@kvaser_usb_probe._entry_ptr.28 = internal global ptr @kvaser_usb_probe._entry.26, section ".printk_index", align 4
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@kvaser_usb_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.6, i32 669, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cannot alloc candev\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kvaser_usb_init_one\00", [44 x i8] zeroinitializer }, align 32
@kvaser_usb_init_one._entry_ptr = internal global ptr @kvaser_usb_init_one._entry, section ".printk_index", align 4
@kvaser_usb_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&priv->tx_contexts_lock\00", [40 x i8] zeroinitializer }, align 32
@kvaser_usb_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @kvaser_usb_open, ptr @kvaser_usb_close, ptr @kvaser_usb_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@kvaser_usb_init_one._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.6, i32 717, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register CAN device\0A\00", [33 x i8] zeroinitializer }, align 32
@kvaser_usb_init_one._entry_ptr.37 = internal global ptr @kvaser_usb_init_one._entry.35, section ".printk_index", align 4
@kvaser_usb_init_one.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.33, ptr @.str.6, ptr @.str.38, i8 0, i8 -76, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"device registered\0A\00", [45 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot start device, error %d\0A\00", [33 x i8] zeroinitializer }, align 32
@kvaser_usb_setup_rx_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.6, i32 352, ptr @.str.43, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No memory left for USB buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kvaser_usb_setup_rx_urbs\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@kvaser_usb_setup_rx_urbs._entry_ptr = internal global ptr @kvaser_usb_setup_rx_urbs._entry, section ".printk_index", align 4
@kvaser_usb_setup_rx_urbs._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.6, i32 386, ptr @.str.43, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot setup read URBs, error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@kvaser_usb_setup_rx_urbs._entry_ptr.46 = internal global ptr @kvaser_usb_setup_rx_urbs._entry.44, section ".printk_index", align 4
@kvaser_usb_setup_rx_urbs._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.42, ptr @.str.6, i32 389, ptr @.str.43, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RX performances may be slow\0A\00", [35 x i8] zeroinitializer }, align 32
@kvaser_usb_setup_rx_urbs._entry_ptr.49 = internal global ptr @kvaser_usb_setup_rx_urbs._entry.47, section ".printk_index", align 4
@kvaser_usb_read_bulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.6, i32 302, ptr @.str.52, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Rx URB aborted (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kvaser_usb_read_bulk_callback\00", [34 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@kvaser_usb_read_bulk_callback._entry_ptr = internal global ptr @kvaser_usb_read_bulk_callback._entry, section ".printk_index", align 4
@kvaser_usb_read_bulk_callback._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.51, ptr @.str.6, i32 326, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed resubmitting read bulk urb: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@kvaser_usb_read_bulk_callback._entry_ptr.55 = internal global ptr @kvaser_usb_read_bulk_callback._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot flush queue, error %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot reset card, error %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot stop device, error %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot find free context\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Failed tx_urb %d\0A\00", [46 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Tx URB aborted (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@__sancov_gen_cov_switch_values.63 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967225, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 255, i32 22 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 275, i32 23 }
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"kvaser_usb_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 842, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 232, i32 23 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 849, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"kvaser_usb_table\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 115, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 748, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 758, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 772, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 779, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 787, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 796, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 801, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 805, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 812, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1367, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1368, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 669, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 684, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [22 x i8] c"kvaser_usb_netdev_ops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 625, i32 36 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 717, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 723, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 87, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 417, i32 23 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 351, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 385, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 389, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 302, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 325, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 478, i32 23 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 483, i32 24 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 489, i32 23 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 562, i32 23 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 613, i32 24 }
@___asan_gen_.249 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 104, i32 6 }
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private constant [52 x i8] c"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 518, i32 23 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author468, ptr @__UNIQUE_ID_author469, ptr @__UNIQUE_ID_description470, ptr @__UNIQUE_ID_file471, ptr @__UNIQUE_ID_license472, ptr @__exitcall_kvaser_usb_driver_exit, ptr @__initcall__kmod_kvaser_usb__467_849_kvaser_usb_driver_init6, ptr @kvaser_usb_driver_exit, ptr @kvaser_usb_init_one._entry, ptr @kvaser_usb_init_one._entry.35, ptr @kvaser_usb_init_one._entry_ptr, ptr @kvaser_usb_init_one._entry_ptr.37, ptr @kvaser_usb_probe._entry, ptr @kvaser_usb_probe._entry.12, ptr @kvaser_usb_probe._entry.15, ptr @kvaser_usb_probe._entry.18, ptr @kvaser_usb_probe._entry.23, ptr @kvaser_usb_probe._entry.26, ptr @kvaser_usb_probe._entry.9, ptr @kvaser_usb_probe._entry_ptr, ptr @kvaser_usb_probe._entry_ptr.11, ptr @kvaser_usb_probe._entry_ptr.14, ptr @kvaser_usb_probe._entry_ptr.17, ptr @kvaser_usb_probe._entry_ptr.20, ptr @kvaser_usb_probe._entry_ptr.25, ptr @kvaser_usb_probe._entry_ptr.28, ptr @kvaser_usb_read_bulk_callback._entry, ptr @kvaser_usb_read_bulk_callback._entry.53, ptr @kvaser_usb_read_bulk_callback._entry_ptr, ptr @kvaser_usb_read_bulk_callback._entry_ptr.55, ptr @kvaser_usb_setup_rx_urbs._entry, ptr @kvaser_usb_setup_rx_urbs._entry.44, ptr @kvaser_usb_setup_rx_urbs._entry.47, ptr @kvaser_usb_setup_rx_urbs._entry_ptr, ptr @kvaser_usb_setup_rx_urbs._entry_ptr.46, ptr @kvaser_usb_setup_rx_urbs._entry_ptr.49, ptr @.str, ptr @.str.1, ptr @kvaser_usb_driver, ptr @.str.2, ptr @.str.3, ptr @kvaser_usb_table, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @init_usb_anchor.__key, ptr @.str.29, ptr @init_usb_anchor.__key.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @kvaser_usb_init_one.__key, ptr @.str.34, ptr @kvaser_usb_netdev_ops, ptr @.str.36, ptr @.str.38, ptr @init_completion.__key, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_table to i32), i32 1224, i32 1536, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_init_one._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_setup_rx_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_setup_rx_urbs._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_setup_rx_urbs._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_read_bulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_usb_read_bulk_callback._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kvaser_usb_send_cmd(ptr nocapture noundef readonly %dev, ptr noundef %cmd, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %actual_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len) #6
  %0 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual_len, align 4, !annotation !137
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %bulk_out = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bulk_out, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 8
  %shl.i = shl i32 %8, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %call2 = call i32 @usb_bulk_msg(ptr noundef %2, i32 noundef %or, ptr noundef %cmd, i32 noundef %len, ptr noundef nonnull %actual_len, i32 noundef 1000) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len) #6
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kvaser_usb_recv_cmd(ptr nocapture noundef readonly %dev, ptr noundef %cmd, i32 noundef %len, ptr noundef %actual_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bulk_in = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %bulk_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bulk_in, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  %shl.i = shl i32 %7, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or2 = or i32 %or.i, -1073741696
  %call3 = tail call i32 @usb_bulk_msg(ptr noundef %1, i32 noundef %or2, ptr noundef %cmd, i32 noundef %len, ptr noundef %actual_len, i32 noundef 1000) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kvaser_usb_send_cmd_async(ptr noundef %priv, ptr noundef %cmd, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %netdev2 = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev2, align 4
  %call = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %bulk_out = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bulk_out, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %9 to i32
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 8
  %shl.i = shl i32 %11, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 8
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %5, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 10
  %13 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %14 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cmd, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 19
  %15 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %len, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 28
  %16 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @kvaser_usb_send_cmd_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 27
  %17 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %3, ptr %context4.i, align 4
  %tx_submitted = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %priv, i32 0, i32 8
  tail call void @usb_anchor_urb(ptr noundef nonnull %call, ptr noundef %tx_submitted) #6
  %call5 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str) #9
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kvaser_usb_send_cmd_callback(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %3) #6
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kvaser_usb_can_rx_over_error(ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #6
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !137
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 11
  %1 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rx_over_errors, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %rx_over_errors, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 4
  %3 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_errors, align 4
  %inc2 = add i32 %4, 1
  store i32 %inc2, ptr %rx_errors, align 4
  %call = call ptr @alloc_can_err_skb(ptr noundef %netdev, ptr noundef nonnull %cf) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 6
  %5 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_dropped, align 4
  %inc3 = add i32 %6, 1
  store i32 %inc3, ptr %rx_dropped, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cf, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %or = or i32 %10, 4
  store i32 %or, ptr %8, align 8
  %11 = load ptr, ptr %cf, align 4
  %arrayidx = getelementptr %struct.can_frame, ptr %11, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %arrayidx, align 1
  %call4 = call i32 @netif_rx(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @kvaser_usb_driver, ptr noundef null, ptr noundef nonnull @.str.3) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kvaser_usb_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @kvaser_usb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 444, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %idProduct.i = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %0 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idProduct.i, align 4
  %2 = add i16 %1, -10
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %2)
  %3 = icmp ult i16 %2, 30
  %4 = add i16 %1, -288
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %4)
  %5 = icmp ult i16 %4, 9
  %6 = or i1 %3, %5
  br i1 %6, label %if.end.if.end17.sink.split_crit_edge, label %if.else

if.end.if.end17.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.sink.split

if.else:                                          ; preds = %if.end
  %7 = add i16 %1, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %7)
  %8 = icmp ult i16 %7, 4
  br i1 %8, label %if.else.if.end17.sink.split_crit_edge, label %if.else9

if.else.if.end17.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.sink.split

if.else9:                                         ; preds = %if.else
  %9 = add i16 %1, -258
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %9)
  %10 = icmp ult i16 %9, 21
  br i1 %10, label %if.else9.if.end17_crit_edge, label %do.end

if.else9.if.end17_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.end:                                           ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %conv) #9
  br label %cleanup

if.end17.sink.split:                              ; preds = %if.else.if.end17.sink.split_crit_edge, %if.end.if.end17.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.end.if.end17.sink.split_crit_edge ], [ 1, %if.else.if.end17.sink.split_crit_edge ]
  %11 = getelementptr inbounds %struct.kvaser_usb, ptr %call.i, i32 0, i32 11, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %11, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.else9.if.end17_crit_edge
  %kvaser_usb_leaf_dev_ops.sink = phi ptr [ @kvaser_usb_hydra_dev_ops, %if.else9.if.end17_crit_edge ], [ @kvaser_usb_leaf_dev_ops, %if.end17.sink.split ]
  %ops8 = getelementptr inbounds %struct.kvaser_usb, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %ops8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %kvaser_usb_leaf_dev_ops.sink, ptr %ops8, align 4
  %intf18 = getelementptr inbounds %struct.kvaser_usb, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %intf18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %intf, ptr %intf18, align 4
  %ops19 = getelementptr inbounds %struct.kvaser_usb, ptr %call.i, i32 0, i32 3
  %dev_setup_endpoints = getelementptr inbounds %struct.kvaser_usb_dev_ops, ptr %kvaser_usb_leaf_dev_ops.sink, i32 0, i32 4
  %15 = ptrtoint ptr %dev_setup_endpoints to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_setup_endpoints, align 4
  %call20 = tail call i32 %16(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end27, label %do.end25

do.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %18, i32 -128
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %call.i, align 4
  %rx_submitted = getelementptr inbounds %struct.kvaser_usb, ptr %call.i, i32 0, i32 7
  %20 = getelementptr inbounds %struct.kvaser_usb, ptr %call.i, i32 0, i32 7, i32 1
  %21 = call ptr @memset(ptr %20, i32 0, i32 104)
  %22 = ptrtoint ptr %rx_submitted to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %rx_submitted, ptr %rx_submitted, align 4
  %prev.i.i = getelementptr inbounds %struct.kvaser_usb, ptr %call.i, i32 0, i32 7, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %rx_submitted, ptr %prev.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %20, ptr noundef nonnull @.str.29, ptr noundef nonnull @init_usb_anchor.__key) #6
  %lock.i = getelementptr inbounds %struct.kvaser_usb, ptr %call.i, i32 0, i32 7, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @init_usb_anchor.__key.30, i16 noundef signext 3) #6
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %card_data29 = getelementptr inbounds %struct.kvaser_usb, ptr %call.i, i32 0, i32 11
  %25 = ptrtoint ptr %card_data29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %card_data29, align 4
  %capabilities = getelementptr inbounds %struct.kvaser_usb, ptr %call.i, i32 0, i32 11, i32 1
  %26 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %capabilities, align 4
  %27 = ptrtoint ptr %ops19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops19, align 4
  %dev_init_card = getelementptr inbounds %struct.kvaser_usb_dev_ops, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %dev_init_card to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_init_card, align 4
  %call32 = tail call i32 %30(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end39, label %do.end37

do.end37:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call32) #9
  br label %cleanup

if.end39:                                         ; preds = %if.end27
  %31 = ptrtoint ptr %ops19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops19, align 4
  %dev_get_software_info = getelementptr inbounds %struct.kvaser_usb_dev_ops, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %dev_get_software_info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_get_software_info, align 4
  %call41 = tail call i32 %34(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %call41) #9
  br label %cleanup

if.end48:                                         ; preds = %if.end39
  %35 = ptrtoint ptr %ops19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops19, align 4
  %dev_get_software_details = getelementptr inbounds %struct.kvaser_usb_dev_ops, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %dev_get_software_details to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_get_software_details, align 4
  %tobool50.not = icmp eq ptr %38, null
  br i1 %tobool50.not, label %if.end48.if.end62_crit_edge, label %if.then51

if.end48.if.end62_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then51:                                        ; preds = %if.end48
  %call54 = tail call i32 %38(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then51.if.end62_crit_edge, label %do.end59

if.then51.if.end62_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

do.end59:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call54) #9
  br label %cleanup

if.end62:                                         ; preds = %if.then51.if.end62_crit_edge, %if.end48.if.end62_crit_edge
  %cfg = getelementptr inbounds %struct.kvaser_usb, ptr %call.i, i32 0, i32 4
  %39 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg, align 4
  %tobool63.not = icmp eq ptr %40, null
  br i1 %tobool63.not, label %do.end76, label %do.body92, !prof !138

do.end76:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 793, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

do.body92:                                        ; preds = %if.end62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kvaser_usb_probe.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kvaser_usb_probe, %do.body114)) #6
          to label %if.then104 [label %do.body114], !srcloc !139

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #8
  %fw_version = getelementptr inbounds %struct.kvaser_usb, ptr %call.i, i32 0, i32 8
  %41 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fw_version, align 4
  %shr = lshr i32 %42, 24
  %shr107 = lshr i32 %42, 16
  %and108 = and i32 %shr107, 255
  %and110 = and i32 %42, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kvaser_usb_probe.__UNIQUE_ID_ddebug465, ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %shr, i32 noundef %and108, i32 noundef %and110) #6
  br label %do.body114

do.body114:                                       ; preds = %if.then104, %do.body92
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kvaser_usb_probe.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kvaser_usb_probe, %do.end132)) #6
          to label %if.then128 [label %do.end132], !srcloc !139

if.then128:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #8
  %max_tx_urbs = getelementptr inbounds %struct.kvaser_usb, ptr %call.i, i32 0, i32 10
  %43 = ptrtoint ptr %max_tx_urbs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_tx_urbs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kvaser_usb_probe.__UNIQUE_ID_ddebug466, ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %44) #6
  br label %do.end132

do.end132:                                        ; preds = %if.then128, %do.body114
  %45 = ptrtoint ptr %ops19 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops19, align 4
  %dev_get_card_info = getelementptr inbounds %struct.kvaser_usb_dev_ops, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %dev_get_card_info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_get_card_info, align 4
  %call134 = tail call i32 %48(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end141, label %do.end139

do.end139:                                        ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %call134) #9
  br label %cleanup

if.end141:                                        ; preds = %do.end132
  %49 = ptrtoint ptr %ops19 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops19, align 4
  %dev_get_capabilities = getelementptr inbounds %struct.kvaser_usb_dev_ops, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %dev_get_capabilities to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_get_capabilities, align 4
  %tobool143.not = icmp eq ptr %52, null
  br i1 %tobool143.not, label %if.end141.if.end155_crit_edge, label %if.then144

if.end141.if.end155_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end155

if.then144:                                       ; preds = %if.end141
  %call147 = tail call i32 %52(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.then144.if.end155_crit_edge, label %do.end152

if.then144.if.end155_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end155

do.end152:                                        ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %call147) #9
  tail call fastcc void @kvaser_usb_remove_interfaces(ptr noundef nonnull %call.i)
  br label %cleanup

if.end155:                                        ; preds = %if.then144.if.end155_crit_edge, %if.end141.if.end155_crit_edge
  %nchannels = getelementptr inbounds %struct.kvaser_usb, ptr %call.i, i32 0, i32 9
  %53 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nchannels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp242.not = icmp eq i32 %54, 0
  br i1 %cmp242.not, label %if.end155.cleanup_crit_edge, label %if.end155.for.body_crit_edge

if.end155.for.body_crit_edge:                     ; preds = %if.end155
  br label %for.body

if.end155.cleanup_crit_edge:                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0243, 1
  %55 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nchannels, align 4
  %cmp = icmp ult i32 %inc, %56
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end155.for.body_crit_edge
  %i.0243 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end155.for.body_crit_edge ]
  %call157 = tail call fastcc i32 @kvaser_usb_init_one(ptr noundef nonnull %call.i, ptr noundef %id, i32 noundef %i.0243)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %for.cond, label %if.then159

if.then159:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @kvaser_usb_remove_interfaces(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then159, %for.cond.cleanup_crit_edge, %if.end155.cleanup_crit_edge, %do.end152, %do.end139, %do.end76, %do.end59, %do.end46, %do.end37, %do.end25, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %do.end25 ], [ %call32, %do.end37 ], [ %call41, %do.end46 ], [ %call54, %do.end59 ], [ -19, %do.end76 ], [ %call134, %do.end139 ], [ %call147, %do.end152 ], [ %call157, %if.then159 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end155.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kvaser_usb_disconnect(ptr nocapture noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @kvaser_usb_remove_interfaces(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kvaser_usb_remove_interfaces(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nchannels = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nchannels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp32.not = icmp eq i32 %1, 0
  br i1 %cmp32.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.033 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 2, i32 %i.033
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %netdev = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  tail call void @unregister_candev(ptr noundef %5) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.033, 1
  %6 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nchannels, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %rx_submitted.i = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 7
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted.i) #6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %arrayidx.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 13, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 14, i32 0
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx1.i, align 4
  tail call void @usb_free_coherent(ptr noundef %9, i32 noundef 3072, ptr noundef %11, i32 noundef %13) #6
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %arrayidx.1.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 13, i32 1
  %16 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 14, i32 1
  %18 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx1.1.i, align 4
  tail call void @usb_free_coherent(ptr noundef %15, i32 noundef 3072, ptr noundef %17, i32 noundef %19) #6
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %arrayidx.2.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 13, i32 2
  %22 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.2.i, align 4
  %arrayidx1.2.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 14, i32 2
  %24 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx1.2.i, align 4
  tail call void @usb_free_coherent(ptr noundef %21, i32 noundef 3072, ptr noundef %23, i32 noundef %25) #6
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %arrayidx.3.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 13, i32 3
  %28 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.3.i, align 4
  %arrayidx1.3.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 14, i32 3
  %30 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx1.3.i, align 4
  tail call void @usb_free_coherent(ptr noundef %27, i32 noundef 3072, ptr noundef %29, i32 noundef %31) #6
  %32 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nchannels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp322.not.i = icmp eq i32 %33, 0
  br i1 %cmp322.not.i, label %for.end.for.end17_crit_edge, label %for.end.for.body4.i_crit_edge

for.end.for.body4.i_crit_edge:                    ; preds = %for.end
  br label %for.body4.i

for.end.for.end17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end17

for.body4.i:                                      ; preds = %if.end.i.for.body4.i_crit_edge, %for.end.for.body4.i_crit_edge
  %i.123.i = phi i32 [ %inc7.i, %if.end.i.for.body4.i_crit_edge ], [ 0, %for.end.for.body4.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 2, i32 %i.123.i
  %34 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx5.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %for.body4.i.if.end.i_crit_edge, label %if.then.i

for.body4.i.if.end.i_crit_edge:                   ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %tx_submitted.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %35, i32 0, i32 8
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_submitted.i.i) #6
  %dev.i.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i.i.i, align 4
  %max_tx_urbs1.i.i.i = getelementptr inbounds %struct.kvaser_usb, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %max_tx_urbs1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_tx_urbs1.i.i.i, align 4
  %active_tx_contexts.i.i.i = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %35, i32 0, i32 10
  %40 = ptrtoint ptr %active_tx_contexts.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %active_tx_contexts.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp7.i.i.i = icmp sgt i32 %39, 0
  br i1 %cmp7.i.i.i, label %if.then.i.for.body.i.i.i_crit_edge, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i.for.body.i.i.i_crit_edge:               ; preds = %if.then.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.for.body.i.i.i_crit_edge
  %i.08.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.i.i_crit_edge ]
  %echo_index.i.i.i = getelementptr %struct.kvaser_usb_net_priv, ptr %35, i32 0, i32 11, i32 %i.08.i.i.i, i32 1
  %41 = ptrtoint ptr %echo_index.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %echo_index.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %i.08.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %39
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.if.end.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.body.i.i.i.if.end.i_crit_edge:                ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.i.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge, %for.body4.i.if.end.i_crit_edge
  %inc7.i = add nuw i32 %i.123.i, 1
  %42 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nchannels, align 4
  %cmp3.i = icmp ult i32 %inc7.i, %43
  br i1 %cmp3.i, label %if.end.i.for.body4.i_crit_edge, label %kvaser_usb_unlink_all_urbs.exit

if.end.i.for.body4.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4.i

kvaser_usb_unlink_all_urbs.exit:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp534.not = icmp eq i32 %43, 0
  br i1 %cmp534.not, label %kvaser_usb_unlink_all_urbs.exit.for.end17_crit_edge, label %kvaser_usb_unlink_all_urbs.exit.for.body6_crit_edge

kvaser_usb_unlink_all_urbs.exit.for.body6_crit_edge: ; preds = %kvaser_usb_unlink_all_urbs.exit
  br label %for.body6

kvaser_usb_unlink_all_urbs.exit.for.end17_crit_edge: ; preds = %kvaser_usb_unlink_all_urbs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end17

for.body6:                                        ; preds = %for.inc15.for.body6_crit_edge, %kvaser_usb_unlink_all_urbs.exit.for.body6_crit_edge
  %i.135 = phi i32 [ %inc16, %for.inc15.for.body6_crit_edge ], [ 0, %kvaser_usb_unlink_all_urbs.exit.for.body6_crit_edge ]
  %arrayidx8 = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 2, i32 %i.135
  %44 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %45, null
  br i1 %tobool9.not, label %for.body6.for.inc15_crit_edge, label %if.end11

for.body6.for.inc15_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc15

if.end11:                                         ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  %netdev14 = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %netdev14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %netdev14, align 4
  tail call void @free_candev(ptr noundef %47) #6
  br label %for.inc15

for.inc15:                                        ; preds = %if.end11, %for.body6.for.inc15_crit_edge
  %inc16 = add nuw i32 %i.135, 1
  %48 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nchannels, align 4
  %cmp5 = icmp ult i32 %inc16, %49
  br i1 %cmp5, label %for.inc15.for.body6_crit_edge, label %for.inc15.for.end17_crit_edge

for.inc15.for.end17_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end17

for.inc15.for.body6_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6

for.end17:                                        ; preds = %for.inc15.for.end17_crit_edge, %kvaser_usb_unlink_all_urbs.exit.for.end17_crit_edge, %for.end.for.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kvaser_usb_init_one(ptr noundef %dev, ptr nocapture noundef readonly %id, i32 noundef %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %dev_reset_chip = getelementptr inbounds %struct.kvaser_usb_dev_ops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %dev_reset_chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_reset_chip, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef %channel) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %max_tx_urbs = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %max_tx_urbs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_tx_urbs, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 8) #6
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %8, i32 656) #6
  %retval.0.i149 = select i1 %7, i32 -1, i32 %spec.select.i
  %call8 = tail call ptr @alloc_candev_mqs(i32 noundef %retval.0.i149, i32 noundef %5, i32 noundef 1, i32 noundef 1) #6
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %9 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf, align 4
  %dev11 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.32) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %add.ptr.i = getelementptr i8, ptr %call8, i32 2304
  %tx_submitted = getelementptr i8, ptr %call8, i32 2800
  %11 = getelementptr i8, ptr %call8, i32 2808
  %12 = call ptr @memset(ptr %11, i32 0, i32 104)
  %13 = ptrtoint ptr %tx_submitted to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %tx_submitted, ptr %tx_submitted, align 4
  %prev.i.i = getelementptr i8, ptr %call8, i32 2804
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %tx_submitted, ptr %prev.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %11, ptr noundef nonnull @.str.29, ptr noundef nonnull @init_usb_anchor.__key) #6
  %lock.i = getelementptr i8, ptr %call8, i32 2860
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @init_usb_anchor.__key.30, i16 noundef signext 3) #6
  %start_comp = getelementptr i8, ptr %call8, i32 2632
  %15 = ptrtoint ptr %start_comp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %start_comp, align 4
  %wait.i150 = getelementptr i8, ptr %call8, i32 2636
  tail call void @__init_swait_queue_head(ptr noundef %wait.i150, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #6
  %stop_comp = getelementptr i8, ptr %call8, i32 2688
  %16 = ptrtoint ptr %stop_comp to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %stop_comp, align 4
  %wait.i151 = getelementptr i8, ptr %call8, i32 2692
  tail call void @__init_swait_queue_head(ptr noundef %wait.i151, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #6
  %ctrlmode_supported = getelementptr i8, ptr %call8, i32 2480
  %17 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %ctrlmode_supported, align 4
  %dev14 = getelementptr i8, ptr %call8, i32 2620
  %18 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %dev14, align 4
  %netdev15 = getelementptr i8, ptr %call8, i32 2624
  %19 = ptrtoint ptr %netdev15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8, ptr %netdev15, align 4
  %channel16 = getelementptr i8, ptr %call8, i32 2628
  %20 = ptrtoint ptr %channel16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %channel, ptr %channel16, align 4
  %tx_contexts_lock = getelementptr i8, ptr %call8, i32 2912
  tail call void @__raw_spin_lock_init(ptr noundef %tx_contexts_lock, ptr noundef nonnull @.str.34, ptr noundef nonnull @kvaser_usb_init_one.__key, i16 noundef signext 3) #6
  %21 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev14, align 4
  %max_tx_urbs1.i = getelementptr inbounds %struct.kvaser_usb, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %max_tx_urbs1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_tx_urbs1.i, align 4
  %active_tx_contexts.i = getelementptr i8, ptr %call8, i32 2956
  %25 = ptrtoint ptr %active_tx_contexts.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %active_tx_contexts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp7.i = icmp sgt i32 %24, 0
  br i1 %cmp7.i, label %if.end12.for.body.i_crit_edge, label %if.end12.kvaser_usb_reset_tx_urb_contexts.exit_crit_edge

if.end12.kvaser_usb_reset_tx_urb_contexts.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %kvaser_usb_reset_tx_urb_contexts.exit

if.end12.for.body.i_crit_edge:                    ; preds = %if.end12
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end12.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end12.for.body.i_crit_edge ]
  %echo_index.i = getelementptr %struct.kvaser_usb_net_priv, ptr %add.ptr.i, i32 0, i32 11, i32 %i.08.i, i32 1
  %26 = ptrtoint ptr %echo_index.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %echo_index.i, align 4
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %24
  br i1 %exitcond.not.i, label %for.body.i.kvaser_usb_reset_tx_urb_contexts.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.kvaser_usb_reset_tx_urb_contexts.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kvaser_usb_reset_tx_urb_contexts.exit

kvaser_usb_reset_tx_urb_contexts.exit:            ; preds = %for.body.i.kvaser_usb_reset_tx_urb_contexts.exit_crit_edge, %if.end12.kvaser_usb_reset_tx_urb_contexts.exit_crit_edge
  %state = getelementptr i8, ptr %call8, i32 2472
  %27 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %state, align 4
  %cfg = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 4
  %28 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %clock23 = getelementptr i8, ptr %call8, i32 2440
  %32 = ptrtoint ptr %clock23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %clock23, align 4
  %33 = load ptr, ptr %cfg, align 4
  %bittiming_const = getelementptr inbounds %struct.kvaser_usb_dev_cfg, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bittiming_const, align 4
  %bittiming_const27 = getelementptr i8, ptr %call8, i32 2332
  %36 = ptrtoint ptr %bittiming_const27 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %bittiming_const27, align 4
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops, align 4
  %dev_set_bittiming = getelementptr inbounds %struct.kvaser_usb_dev_ops, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %dev_set_bittiming to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_set_bittiming, align 4
  %do_set_bittiming = getelementptr i8, ptr %call8, i32 2588
  %41 = ptrtoint ptr %do_set_bittiming to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %do_set_bittiming, align 4
  %42 = load ptr, ptr %ops, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %do_set_mode = getelementptr i8, ptr %call8, i32 2596
  %45 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %do_set_mode, align 4
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %46 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %driver_info, align 4
  %and = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %lor.lhs.false, label %kvaser_usb_reset_tx_urb_contexts.exit.if.then36_crit_edge

kvaser_usb_reset_tx_urb_contexts.exit.if.then36_crit_edge: ; preds = %kvaser_usb_reset_tx_urb_contexts.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36

lor.lhs.false:                                    ; preds = %kvaser_usb_reset_tx_urb_contexts.exit
  %48 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev14, align 4
  %capabilities = getelementptr inbounds %struct.kvaser_usb, ptr %49, i32 0, i32 11, i32 1
  %50 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %capabilities, align 4
  %and34 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %lor.lhs.false.if.end39_crit_edge, label %lor.lhs.false.if.then36_crit_edge

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then36:                                        ; preds = %lor.lhs.false.if.then36_crit_edge, %kvaser_usb_reset_tx_urb_contexts.exit.if.then36_crit_edge
  %52 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops, align 4
  %dev_get_berr_counter = getelementptr inbounds %struct.kvaser_usb_dev_ops, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %dev_get_berr_counter to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_get_berr_counter, align 4
  %do_get_berr_counter = getelementptr i8, ptr %call8, i32 2608
  %56 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %do_get_berr_counter, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %lor.lhs.false.if.end39_crit_edge
  %57 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %driver_info, align 4
  %and41 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end46_crit_edge, label %if.then43

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ctrlmode_supported, align 4
  %or = or i32 %60, 2
  store i32 %or, ptr %ctrlmode_supported, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end39.if.end46_crit_edge
  %card_data47 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 11
  %61 = ptrtoint ptr %card_data47 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %card_data47, align 4
  %63 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ctrlmode_supported, align 4
  %or51 = or i32 %64, %62
  store i32 %or51, ptr %ctrlmode_supported, align 4
  %and54 = and i32 %or51, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end46.if.end62_crit_edge, label %if.then56

if.end46.if.end62_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then56:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg, align 4
  %data_bittiming_const = getelementptr inbounds %struct.kvaser_usb_dev_cfg, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %data_bittiming_const to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data_bittiming_const, align 4
  %data_bittiming_const59 = getelementptr i8, ptr %call8, i32 2336
  %69 = ptrtoint ptr %data_bittiming_const59 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %data_bittiming_const59, align 4
  %70 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops, align 4
  %dev_set_data_bittiming = getelementptr inbounds %struct.kvaser_usb_dev_ops, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %dev_set_data_bittiming to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_set_data_bittiming, align 4
  %do_set_data_bittiming = getelementptr i8, ptr %call8, i32 2592
  %74 = ptrtoint ptr %do_set_data_bittiming to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %do_set_data_bittiming, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then56, %if.end46.if.end62_crit_edge
  %flags = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 14
  %75 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags, align 8
  %or63 = or i32 %76, 262144
  store i32 %or63, ptr %flags, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 16
  %77 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @kvaser_usb_netdev_ops, ptr %netdev_ops, align 8
  %intf64 = getelementptr inbounds %struct.kvaser_usb, ptr %dev, i32 0, i32 1
  %78 = ptrtoint ptr %intf64 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %intf64, align 4
  %dev65 = getelementptr inbounds %struct.usb_interface, ptr %79, i32 0, i32 7
  %parent = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 133, i32 1
  %80 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %dev65, ptr %parent, align 8
  %conv = trunc i32 %channel to i16
  %dev_id = getelementptr inbounds %struct.net_device, ptr %call8, i32 0, i32 60
  %81 = ptrtoint ptr %dev_id to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv, ptr %dev_id, align 2
  %arrayidx = getelementptr %struct.kvaser_usb, ptr %dev, i32 0, i32 2, i32 %channel
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %add.ptr.i, ptr %arrayidx, align 4
  %call67 = tail call i32 @register_candev(ptr noundef nonnull %call8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %do.body79, label %do.end72

do.end72:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %intf64 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %intf64, align 4
  %dev74 = getelementptr inbounds %struct.usb_interface, ptr %84, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev74, ptr noundef nonnull @.str.36) #9
  tail call void @free_candev(ptr noundef nonnull %call8) #6
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

do.body79:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kvaser_usb_init_one.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kvaser_usb_init_one, %cleanup)) #6
          to label %if.then85 [label %cleanup], !srcloc !139

if.then85:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @kvaser_usb_init_one.__UNIQUE_ID_ddebug464, ptr noundef nonnull %call8, ptr noundef nonnull @.str.38) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %do.body79, %do.end72, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call67, %do.end72 ], [ -12, %do.end ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.then85 ], [ 0, %do.body79 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_open(ptr noundef %netdev) #0 align 64 {
entry:
  %buf_dma.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %dev1 = getelementptr i8, ptr %netdev, i32 2620
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call2 = tail call i32 @open_candev(ptr noundef %netdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rxinitdone.i = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %rxinitdone.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rxinitdone.i, align 4, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

for.cond.preheader.i:                             ; preds = %if.end
  %bulk_in.i = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 5
  %rx_submitted.i = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.087.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_dma.i) #6
  %4 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %buf_dma.i, align 4, !annotation !137
  %call.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #6
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %for.body.i.for.end.i_crit_edge, label %if.end3.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end3.i:                                        ; preds = %for.body.i
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call4.i = call ptr @usb_alloc_coherent(ptr noundef %6, i32 noundef 3072, i32 noundef 3264, ptr noundef nonnull %buf_dma.i) #6
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %do.end.i, label %if.end8.i

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %intf.i = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf.i, align 4
  %dev7.i = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7.i, ptr noundef nonnull @.str.41) #9
  br label %for.end.sink.split.i

if.end8.i:                                        ; preds = %if.end3.i
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %bulk_in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bulk_in.i, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bEndpointAddress.i, align 1
  %conv.i = zext i8 %14 to i32
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %10, align 8
  %shl.i.i = shl i32 %16, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or12.i = or i32 %or.i.i, -1073741696
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 8
  %17 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %10, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 10
  %18 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or12.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 14
  %19 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call4.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 19
  %20 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3072, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 28
  %21 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @kvaser_usb_read_bulk_callback, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 27
  %22 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %1, ptr %context4.i.i, align 4
  %23 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf_dma.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 15
  %25 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %transfer_dma.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 13
  %26 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %transfer_flags.i, align 4
  %or13.i = or i32 %27, 4
  store i32 %or13.i, ptr %transfer_flags.i, align 4
  call void @usb_anchor_urb(ptr noundef nonnull %call.i, ptr noundef %rx_submitted.i) #6
  %call14.i = call i32 @usb_submit_urb(ptr noundef nonnull %call.i, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %for.inc.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @usb_unanchor_urb(ptr noundef nonnull %call.i) #6
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %30 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buf_dma.i, align 4
  call void @usb_free_coherent(ptr noundef %29, i32 noundef 3072, ptr noundef nonnull %call4.i, i32 noundef %31) #6
  br label %for.end.sink.split.i

for.inc.i:                                        ; preds = %if.end8.i
  %arrayidx.i = getelementptr %struct.kvaser_usb, ptr %1, i32 0, i32 13, i32 %i.087.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call4.i, ptr %arrayidx.i, align 4
  %33 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf_dma.i, align 4
  %arrayidx19.i = getelementptr %struct.kvaser_usb, ptr %1, i32 0, i32 14, i32 %i.087.i
  %35 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx19.i, align 4
  call void @usb_free_urb(ptr noundef nonnull %call.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_dma.i) #6
  %inc.i = add nuw nsw i32 %i.087.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.inc.i.if.end39.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end39.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

for.end.sink.split.i:                             ; preds = %if.then16.i, %do.end.i
  %err.1.ph.ph.i = phi i32 [ %call14.i, %if.then16.i ], [ -12, %do.end.i ]
  call void @usb_free_urb(ptr noundef nonnull %call.i) #6
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.sink.split.i, %for.body.i.for.end.i_crit_edge
  %err.1.ph.i = phi i32 [ %err.1.ph.ph.i, %for.end.sink.split.i ], [ -12, %for.body.i.for.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_dma.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.087.i)
  %cmp22.i = icmp eq i32 %i.087.i, 0
  %intf28.i = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %intf28.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %intf28.i, align 4
  %dev29.i = getelementptr inbounds %struct.usb_interface, ptr %37, i32 0, i32 7
  br i1 %cmp22.i, label %kvaser_usb_setup_rx_urbs.exit, label %do.end35.i

do.end35.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev29.i, ptr noundef nonnull @.str.48) #9
  br label %if.end39.i

if.end39.i:                                       ; preds = %do.end35.i, %for.inc.i.if.end39.i_crit_edge
  %38 = ptrtoint ptr %rxinitdone.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %rxinitdone.i, align 4
  br label %if.end6

kvaser_usb_setup_rx_urbs.exit:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev29.i, ptr noundef nonnull @.str.45, i32 noundef %err.1.ph.i) #9
  br label %error

if.end6:                                          ; preds = %if.end39.i, %if.end.if.end6_crit_edge
  %ops = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops, align 4
  %dev_set_opt_mode = getelementptr inbounds %struct.kvaser_usb_dev_ops, ptr %40, i32 0, i32 10
  %41 = ptrtoint ptr %dev_set_opt_mode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_set_opt_mode, align 4
  %call7 = call i32 %42(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.error_crit_edge

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end10:                                         ; preds = %if.end6
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops, align 4
  %dev_start_chip = getelementptr inbounds %struct.kvaser_usb_dev_ops, ptr %44, i32 0, i32 11
  %45 = ptrtoint ptr %dev_start_chip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_start_chip, align 4
  %call12 = call i32 %46(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.40, i32 noundef %call12) #9
  br label %error

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr i8, ptr %netdev, i32 2472
  %47 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %state, align 4
  br label %cleanup

error:                                            ; preds = %if.then14, %if.end6.error_crit_edge, %kvaser_usb_setup_rx_urbs.exit
  %err.0 = phi i32 [ %err.1.ph.i, %kvaser_usb_setup_rx_urbs.exit ], [ %call7, %if.end6.error_crit_edge ], [ %call12, %if.then14 ]
  call void @close_candev(ptr noundef %netdev) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end15 ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_close(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %dev1 = getelementptr i8, ptr %netdev, i32 2620
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %ops = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %dev_flush_queue = getelementptr inbounds %struct.kvaser_usb_dev_ops, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %dev_flush_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_flush_queue, align 4
  %call2 = tail call i32 %7(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.56, i32 noundef %call2) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %dev_reset_chip = getelementptr inbounds %struct.kvaser_usb_dev_ops, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %dev_reset_chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_reset_chip, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.end.if.end12_crit_edge, label %if.then5

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then5:                                         ; preds = %if.end
  %channel = getelementptr i8, ptr %netdev, i32 2628
  %12 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel, align 4
  %call8 = tail call i32 %11(ptr noundef %1, i32 noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then5.if.end12_crit_edge, label %if.then10

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.57, i32 noundef %call8) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then5.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %dev_stop_chip = getelementptr inbounds %struct.kvaser_usb_dev_ops, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %dev_stop_chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_stop_chip, align 4
  %call14 = tail call i32 %17(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end12.if.end17_crit_edge, label %if.then16

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.58, i32 noundef %call14) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end12.if.end17_crit_edge
  %tx_submitted.i = getelementptr i8, ptr %netdev, i32 2800
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_submitted.i) #6
  %18 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1, align 4
  %max_tx_urbs1.i.i = getelementptr inbounds %struct.kvaser_usb, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %max_tx_urbs1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_tx_urbs1.i.i, align 4
  %active_tx_contexts.i.i = getelementptr i8, ptr %netdev, i32 2956
  %22 = ptrtoint ptr %active_tx_contexts.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %active_tx_contexts.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp7.i.i = icmp sgt i32 %21, 0
  br i1 %cmp7.i.i, label %if.end17.for.body.i.i_crit_edge, label %if.end17.kvaser_usb_unlink_tx_urbs.exit_crit_edge

if.end17.kvaser_usb_unlink_tx_urbs.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %kvaser_usb_unlink_tx_urbs.exit

if.end17.for.body.i.i_crit_edge:                  ; preds = %if.end17
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end17.for.body.i.i_crit_edge
  %i.08.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end17.for.body.i.i_crit_edge ]
  %echo_index.i.i = getelementptr %struct.kvaser_usb_net_priv, ptr %add.ptr.i, i32 0, i32 11, i32 %i.08.i.i, i32 1
  %23 = ptrtoint ptr %echo_index.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %echo_index.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %21
  br i1 %exitcond.not.i.i, label %for.body.i.i.kvaser_usb_unlink_tx_urbs.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.kvaser_usb_unlink_tx_urbs.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kvaser_usb_unlink_tx_urbs.exit

kvaser_usb_unlink_tx_urbs.exit:                   ; preds = %for.body.i.i.kvaser_usb_unlink_tx_urbs.exit_crit_edge, %if.end17.kvaser_usb_unlink_tx_urbs.exit_crit_edge
  %state = getelementptr i8, ptr %netdev, i32 2472
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %state, align 4
  %netdev18 = getelementptr i8, ptr %netdev, i32 2624
  %25 = ptrtoint ptr %netdev18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev18, align 4
  tail call void @close_candev(ptr noundef %26) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_usb_start_xmit(ptr noundef %skb, ptr noundef %netdev) #0 align 64 {
entry:
  %cmd_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %dev1 = getelementptr i8, ptr %netdev, i32 2620
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_len) #6
  %2 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cmd_len, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %5 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %protocol.i, align 8
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i16 %6, label %entry.can_dropped_invalid_skb.exit_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

entry.can_dropped_invalid_skb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp2.not.i = icmp eq i32 %9, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !141

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %11)
  %cmp6.i = icmp ugt i8 %11, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !138

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %13)
  %cmp16.not.i = icmp eq i32 %13, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !141

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %4, i32 0, i32 1
  %14 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %15)
  %cmp21.i = icmp ugt i8 %15, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !138

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.end34.i:                                       ; preds = %lor.rhs18.i.if.end34.i_crit_edge, %lor.rhs.i.if.end34.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.end34.i
  %.b70.i.i = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !141

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 104, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
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
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
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
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %37 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %38, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then40.i.i, %if.end37.i.i.if.end_crit_edge
  %call4 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #6
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.then5, label %do.body7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %39 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %tx_dropped, align 4
  tail call void @consume_skb(ptr noundef %skb) #6
  br label %cleanup

do.body7:                                         ; preds = %if.end
  %tx_contexts_lock = getelementptr i8, ptr %netdev, i32 2912
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_contexts_lock) #6
  %max_tx_urbs = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 10
  %41 = ptrtoint ptr %max_tx_urbs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_tx_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp12177.not = icmp eq i32 %42, 0
  br i1 %cmp12177.not, label %do.body7.for.end.thread_crit_edge, label %do.body7.for.body_crit_edge

do.body7.for.body_crit_edge:                      ; preds = %do.body7
  br label %for.body

do.body7.for.end.thread_crit_edge:                ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %do.body7.for.end.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_contexts_lock, i32 noundef %call9) #6
  br label %if.then32

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body7.for.body_crit_edge
  %i.0178 = phi i32 [ %inc29, %for.inc.for.body_crit_edge ], [ 0, %do.body7.for.body_crit_edge ]
  %echo_index = getelementptr %struct.kvaser_usb_net_priv, ptr %add.ptr.i, i32 0, i32 11, i32 %i.0178, i32 1
  %43 = ptrtoint ptr %echo_index to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %echo_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %42)
  %cmp15 = icmp eq i32 %44, %42
  br i1 %cmp15, label %if.then17, label %for.inc

if.then17:                                        ; preds = %for.body
  %arrayidx.le = getelementptr %struct.kvaser_usb_net_priv, ptr %add.ptr.i, i32 0, i32 11, i32 %i.0178
  %45 = ptrtoint ptr %echo_index to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %i.0178, ptr %echo_index, align 4
  %active_tx_contexts = getelementptr i8, ptr %netdev, i32 2956
  %46 = ptrtoint ptr %active_tx_contexts to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %active_tx_contexts, align 4
  %inc21 = add i32 %47, 1
  store i32 %inc21, ptr %active_tx_contexts, align 4
  %48 = ptrtoint ptr %max_tx_urbs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_tx_urbs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21, i32 %49)
  %cmp24.not = icmp slt i32 %inc21, %49
  br i1 %cmp24.not, label %if.then17.for.end_crit_edge, label %if.then26

if.then17.for.end_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then26:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %50 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %51, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc29 = add nuw i32 %i.0178, 1
  %exitcond.not = icmp eq i32 %inc29, %42
  br i1 %exitcond.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end:                                          ; preds = %if.then26, %if.then17.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_contexts_lock, i32 noundef %call9) #6
  %tobool31.not = icmp eq ptr %arrayidx.le, null
  br i1 %tobool31.not, label %for.end.if.then32_crit_edge, label %if.end33

for.end.if.then32_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

if.then32:                                        ; preds = %for.end.if.then32_crit_edge, %for.end.thread
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.59) #9
  br label %freeurb

if.end33:                                         ; preds = %for.end
  %ops = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops, align 4
  %dev_frame_to_cmd = getelementptr inbounds %struct.kvaser_usb_dev_ops, ptr %53, i32 0, i32 16
  %54 = ptrtoint ptr %dev_frame_to_cmd to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_frame_to_cmd, align 4
  %echo_index34 = getelementptr inbounds %struct.kvaser_usb_tx_urb_context, ptr %arrayidx.le, i32 0, i32 1
  %56 = ptrtoint ptr %echo_index34 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %echo_index34, align 4
  %conv35 = trunc i32 %57 to i16
  %call36 = call ptr %55(ptr noundef %add.ptr.i, ptr noundef %skb, ptr noundef nonnull %cmd_len, i16 noundef zeroext %conv35) #6
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.then38, label %if.end59

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %tx_dropped39 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %58 = ptrtoint ptr %tx_dropped39 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_dropped39, align 4
  %inc40 = add i32 %59, 1
  store i32 %inc40, ptr %tx_dropped39, align 4
  call void @consume_skb(ptr noundef %skb) #6
  %call50 = call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_contexts_lock) #6
  %60 = ptrtoint ptr %max_tx_urbs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_tx_urbs, align 4
  %62 = ptrtoint ptr %echo_index34 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %echo_index34, align 4
  %63 = ptrtoint ptr %active_tx_contexts to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %active_tx_contexts, align 4
  %dec = add i32 %64, -1
  store i32 %dec, ptr %active_tx_contexts, align 4
  %_tx.i.i170 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %65 = ptrtoint ptr %_tx.i.i170 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %_tx.i.i170, align 128
  call void @netif_tx_wake_queue(ptr noundef %66) #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_contexts_lock, i32 noundef %call50) #6
  br label %freeurb

if.end59:                                         ; preds = %if.end33
  %67 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr.i, ptr %arrayidx.le, align 4
  %68 = ptrtoint ptr %echo_index34 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %echo_index34, align 4
  %call62 = call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %netdev, i32 noundef %69, i32 noundef 0) #6
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %bulk_out = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 6
  %72 = ptrtoint ptr %bulk_out to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bulk_out, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bEndpointAddress, align 1
  %conv64 = zext i8 %75 to i32
  %76 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %71, align 8
  %shl.i = shl i32 %77, 8
  %shl1.i = shl nuw nsw i32 %conv64, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %78 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cmd_len, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 8
  %80 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %71, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 10
  %81 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 14
  %82 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call36, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 19
  %83 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %79, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 28
  %84 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @kvaser_usb_write_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 27
  %85 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %arrayidx.le, ptr %context4.i, align 4
  %tx_submitted = getelementptr i8, ptr %netdev, i32 2800
  call void @usb_anchor_urb(ptr noundef nonnull %call4, ptr noundef %tx_submitted) #6
  %call66 = call i32 @usb_submit_urb(ptr noundef nonnull %call4, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end59.freeurb_crit_edge, label %do.body72, !prof !141

if.end59.freeurb_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %freeurb

do.body72:                                        ; preds = %if.end59
  %call80 = call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_contexts_lock) #6
  %86 = ptrtoint ptr %echo_index34 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %echo_index34, align 4
  call void @can_free_echo_skb(ptr noundef %netdev, i32 noundef %87, ptr noundef null) #6
  %88 = ptrtoint ptr %max_tx_urbs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %max_tx_urbs, align 4
  %90 = ptrtoint ptr %echo_index34 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %echo_index34, align 4
  %91 = ptrtoint ptr %active_tx_contexts to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %active_tx_contexts, align 4
  %dec89 = add i32 %92, -1
  store i32 %dec89, ptr %active_tx_contexts, align 4
  %_tx.i.i171 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %93 = ptrtoint ptr %_tx.i.i171 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %_tx.i.i171, align 128
  call void @netif_tx_wake_queue(ptr noundef %94) #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_contexts_lock, i32 noundef %call80) #6
  call void @usb_unanchor_urb(ptr noundef nonnull %call4) #6
  call void @kfree(ptr noundef nonnull %call36) #6
  %tx_dropped91 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %95 = ptrtoint ptr %tx_dropped91 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tx_dropped91, align 4
  %inc92 = add i32 %96, 1
  store i32 %inc92, ptr %tx_dropped91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call66)
  %cmp93 = icmp eq i32 %call66, -19
  br i1 %cmp93, label %if.then95, label %if.else

if.then95:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #8
  call void @netif_device_detach(ptr noundef %netdev) #6
  br label %freeurb

if.else:                                          ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.60, i32 noundef %call66) #9
  br label %freeurb

freeurb:                                          ; preds = %if.else, %if.then95, %if.end59.freeurb_crit_edge, %if.then38, %if.then32
  %ret.0 = phi i32 [ 0, %if.then95 ], [ 0, %if.else ], [ 0, %if.then38 ], [ 16, %if.then32 ], [ 0, %if.end59.freeurb_crit_edge ]
  call void @usb_free_urb(ptr noundef nonnull %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %freeurb, %if.then5, %can_dropped_invalid_skb.exit
  %retval.0 = phi i32 [ %ret.0, %freeurb ], [ 0, %if.then5 ], [ 0, %can_dropped_invalid_skb.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_len) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kvaser_usb_read_bulk_callback(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %3, label %do.end [
    i32 0, label %sw.epilog
    i32 -2, label %entry.cleanup_crit_edge
    i32 -32, label %entry.cleanup_crit_edge48
    i32 -71, label %entry.cleanup_crit_edge49
    i32 -108, label %entry.cleanup_crit_edge50
  ]

entry.cleanup_crit_edge50:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge49:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %intf = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.50, i32 noundef %3) #9
  br label %resubmit_urb

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %dev_read_bulk_callback = getelementptr inbounds %struct.kvaser_usb_dev_ops, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %dev_read_bulk_callback to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_read_bulk_callback, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %11 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %13 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_length, align 4
  tail call void %10(ptr noundef %1, ptr noundef %12, i32 noundef %14) #6
  br label %resubmit_urb

resubmit_urb:                                     ; preds = %sw.epilog, %do.end
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %bulk_in = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %bulk_in to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bulk_in, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %20 to i32
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %16, align 8
  %shl.i = shl i32 %22, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or4 = or i32 %or.i, -1073741696
  %dev1.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %23 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %16, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %24 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or4, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %25 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3072, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %26 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @kvaser_usb_read_bulk_callback, ptr %complete.i, align 4
  %27 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %1, ptr %context, align 4
  %call6 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #6
  %28 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %call6, label %do.end17 [
    i32 -19, label %for.cond.preheader
    i32 0, label %resubmit_urb.cleanup_crit_edge
  ]

resubmit_urb.cleanup_crit_edge:                   ; preds = %resubmit_urb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %resubmit_urb
  %nchannels = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nchannels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp846.not = icmp eq i32 %30, 0
  br i1 %cmp846.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.047 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.kvaser_usb, ptr %1, i32 0, i32 2, i32 %i.047
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %32, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %netdev = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev, align 4
  tail call void @netif_device_detach(ptr noundef %34) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.047, 1
  %35 = ptrtoint ptr %nchannels to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nchannels, align 4
  %cmp8 = icmp ult i32 %inc, %36
  br i1 %cmp8, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end17:                                         ; preds = %resubmit_urb
  call void @__sanitizer_cov_trace_pc() #8
  %intf18 = getelementptr inbounds %struct.kvaser_usb, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %intf18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %intf18, align 4
  %dev19 = getelementptr inbounds %struct.usb_interface, ptr %38, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.54, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %resubmit_urb.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge48, %entry.cleanup_crit_edge49, %entry.cleanup_crit_edge50
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kvaser_usb_write_bulk_callback(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !138

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 506, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %netdev26 = getelementptr inbounds %struct.kvaser_usb_net_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %netdev26 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev26, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %6 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %7) #6
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool29.not = icmp eq i32 %12, 0
  br i1 %tobool29.not, label %if.end28.cleanup_crit_edge, label %if.then30

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.62, i32 noundef %12) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_free_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !67, !68, !69, !70, !72, !73, !75, !76, !77, !79, !80, !82, !83, !85, !87, !89, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !107, !109, !110, !111, !113, !115, !117, !119, !121, !123, !124, !126}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 255, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 275, i32 23}
!4 = !{ptr @__initcall__kmod_kvaser_usb__467_849_kvaser_usb_driver_init6, !5, !"__initcall__kmod_kvaser_usb__467_849_kvaser_usb_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 849, i32 1}
!6 = !{ptr @__exitcall_kvaser_usb_driver_exit, !5, !"__exitcall_kvaser_usb_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author468, !8, !"__UNIQUE_ID_author468", i1 false, i1 false}
!8 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 851, i32 1}
!9 = !{ptr @__UNIQUE_ID_author469, !10, !"__UNIQUE_ID_author469", i1 false, i1 false}
!10 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 852, i32 1}
!11 = !{ptr @__UNIQUE_ID_description470, !12, !"__UNIQUE_ID_description470", i1 false, i1 false}
!12 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 853, i32 1}
!13 = !{ptr @__UNIQUE_ID_file471, !14, !"__UNIQUE_ID_file471", i1 false, i1 false}
!14 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 854, i32 1}
!15 = !{ptr @__UNIQUE_ID_license472, !14, !"__UNIQUE_ID_license472", i1 false, i1 false}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 232, i32 23}
!18 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @kvaser_usb_driver, !20, !"kvaser_usb_driver", i1 false, i1 false}
!20 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 842, i32 26}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 748, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @kvaser_usb_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @kvaser_usb_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 758, i32 3}
!31 = !{ptr @kvaser_usb_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @kvaser_usb_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 772, i32 3}
!35 = !{ptr @kvaser_usb_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @kvaser_usb_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 779, i32 3}
!39 = !{ptr @kvaser_usb_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @kvaser_usb_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 787, i32 4}
!43 = !{ptr @kvaser_usb_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @kvaser_usb_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 796, i32 2}
!47 = !{ptr @kvaser_usb_probe.__UNIQUE_ID_ddebug465, !46, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 801, i32 2}
!50 = !{ptr @kvaser_usb_probe.__UNIQUE_ID_ddebug466, !49, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 805, i32 3}
!53 = !{ptr @kvaser_usb_probe._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @kvaser_usb_probe._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 812, i32 4}
!57 = !{ptr @kvaser_usb_probe._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @kvaser_usb_probe._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @init_usb_anchor.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @init_usb_anchor.__key.30, !63, !"__key", i1 false, i1 false}
!63 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 669, i32 3}
!67 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @kvaser_usb_init_one._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @kvaser_usb_init_one._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @kvaser_usb_init_one.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 684, i32 2}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 717, i32 3}
!75 = !{ptr @kvaser_usb_init_one._entry.35, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @kvaser_usb_init_one._entry_ptr.37, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 723, i32 2}
!79 = !{ptr @kvaser_usb_init_one.__UNIQUE_ID_ddebug464, !78, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!80 = !{ptr @init_completion.__key, !81, !"__key", i1 false, i1 false}
!81 = !{!"../include/linux/completion.h", i32 87, i32 2}
!82 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @kvaser_usb_netdev_ops, !84, !"kvaser_usb_netdev_ops", i1 false, i1 false}
!84 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 625, i32 36}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 417, i32 23}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 351, i32 4}
!89 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @kvaser_usb_setup_rx_urbs._entry, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @kvaser_usb_setup_rx_urbs._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 385, i32 3}
!95 = !{ptr @kvaser_usb_setup_rx_urbs._entry.44, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @kvaser_usb_setup_rx_urbs._entry_ptr.46, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 389, i32 3}
!99 = !{ptr @kvaser_usb_setup_rx_urbs._entry.47, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @kvaser_usb_setup_rx_urbs._entry_ptr.49, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 302, i32 3}
!103 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @kvaser_usb_read_bulk_callback._entry, !102, !"_entry", i1 false, i1 false}
!106 = !{ptr @kvaser_usb_read_bulk_callback._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 325, i32 3}
!109 = !{ptr @kvaser_usb_read_bulk_callback._entry.53, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @kvaser_usb_read_bulk_callback._entry_ptr.55, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 478, i32 23}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 483, i32 24}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 489, i32 23}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 562, i32 23}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 613, i32 24}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!123 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 518, i32 23}
!126 = !{ptr @kvaser_usb_table, !127, !"kvaser_usb_table", i1 false, i1 false}
!127 = !{!"../drivers/net/can/usb/kvaser_usb/kvaser_usb_core.c", i32 115, i32 35}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{!"auto-init"}
!138 = !{!"branch_weights", i32 1, i32 2000}
!139 = !{i64 2148337300, i64 2148337305, i64 2148337318, i64 2148337362, i64 2148337396, i64 2148337417}
!140 = !{i8 0, i8 2}
!141 = !{!"branch_weights", i32 2000, i32 1}
