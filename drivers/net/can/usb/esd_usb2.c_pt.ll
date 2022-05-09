; ModuleID = '/llk/IR_all_yes/drivers/net/can/usb/esd_usb2.c_pt.bc'
source_filename = "../drivers/net/can/usb/esd_usb2.c"
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
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.esd_usb2 = type { ptr, [2 x ptr], %struct.usb_anchor, i32, i32, i32, [4 x ptr], [4 x i32] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.header_msg = type { i8, i8, [2 x i8] }
%struct.version_msg = type { i8, i8, i8, i8, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
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
%struct.esd_usb2_net_priv = type { %struct.can_priv, %struct.atomic_t, %struct.usb_anchor, [16 x %struct.esd_tx_urb_context], ptr, ptr, i32, i8, %struct.can_berr_counter }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.esd_tx_urb_context = type { ptr, i32 }
%struct.can_berr_counter = type { i16, i16 }
%struct.set_baudrate_msg = type { i8, i8, i8, i8, i32 }
%struct.id_filter_msg = type { i8, i8, i8, i8, [65 x i32] }
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
%struct.can_frame = type { i32, %union.anon.146, i8, i8, i8, [8 x i8] }
%union.anon.146 = type { i8 }
%struct.tx_msg = type { i8, i8, i8, i8, i32, i32, [8 x i8] }
%struct.rx_msg = type { i8, i8, i8, i8, i32, i32, [8 x i8] }
%struct.tx_done_msg = type { i8, i8, i8, i8, i32, i32 }

@__UNIQUE_ID_author464 = internal constant [55 x i8] c"esd_usb2.author=Matthias Fuchs <matthias.fuchs@esd.eu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description465 = internal constant [79 x i8] c"esd_usb2.description=CAN driver for esd CAN-USB/2 and CAN-USB/Micro interfaces\00", section ".modinfo", align 1
@__UNIQUE_ID_file466 = internal constant [43 x i8] c"esd_usb2.file=drivers/net/can/usb/esd_usb2\00", section ".modinfo", align 1
@__UNIQUE_ID_license467 = internal constant [24 x i8] c"esd_usb2.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_esd_usb2__468_1154_esd_usb2_driver_init6 = internal global ptr @esd_usb2_driver_init, section ".initcall6.init", align 4
@esd_usb2_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @esd_usb2_probe, ptr @esd_usb2_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @esd_usb2_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_esd_usb2_driver_exit = internal global ptr @esd_usb2_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"esd_usb2\00", [23 x i8] zeroinitializer }, align 32
@esd_usb2_table = internal global { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2740, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2740, i16 17, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@esd_usb2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1081, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sending version message failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"esd_usb2_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/can/usb/esd_usb2.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@esd_usb2_probe._entry_ptr = internal global ptr @esd_usb2_probe._entry, section ".printk_index", align 4
@esd_usb2_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1087, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no version message answer\0A\00", [37 x i8] zeroinitializer }, align 32
@esd_usb2_probe._entry_ptr.8 = internal global ptr @esd_usb2_probe._entry.6, section ".printk_index", align 4
@dev_attr_firmware = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @firmware_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@esd_usb2_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1096, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Couldn't create device file for firmware\0A\00", [54 x i8] zeroinitializer }, align 32
@esd_usb2_probe._entry_ptr.11 = internal global ptr @esd_usb2_probe._entry.9, section ".printk_index", align 4
@dev_attr_hardware = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hardware_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@esd_usb2_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1100, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Couldn't create device file for hardware\0A\00", [54 x i8] zeroinitializer }, align 32
@esd_usb2_probe._entry_ptr.14 = internal global ptr @esd_usb2_probe._entry.12, section ".printk_index", align 4
@dev_attr_nets = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nets_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@esd_usb2_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1104, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Couldn't create device file for nets\0A\00", [58 x i8] zeroinitializer }, align 32
@esd_usb2_probe._entry_ptr.17 = internal global ptr @esd_usb2_probe._entry.15, section ".printk_index", align 4
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firmware\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d.%d.%d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hardware\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nets\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@esd_usb2_probe_one_net._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 985, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"couldn't alloc candev\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"esd_usb2_probe_one_net\00", [41 x i8] zeroinitializer }, align 32
@esd_usb2_probe_one_net._entry_ptr = internal global ptr @esd_usb2_probe_one_net._entry, section ".printk_index", align 4
@esd_usb2_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"esd_usb2\00\00\00\00\00\00\00\00", i32 1, i32 16, i32 1, i32 8, i32 4, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@esd_usb2_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @esd_usb2_open, ptr @esd_usb2_close, ptr @esd_usb2_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@esd_usb2_probe_one_net._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 1028, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"couldn't register CAN device: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@esd_usb2_probe_one_net._entry_ptr.30 = internal global ptr @esd_usb2_probe_one_net._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"device %s registered\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"setting BTR=%#x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't start device: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@esd_usb2_setup_rx_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 561, ptr @.str.36, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No memory left for USB buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"esd_usb2_setup_rx_urbs\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@esd_usb2_setup_rx_urbs._entry_ptr = internal global ptr @esd_usb2_setup_rx_urbs._entry, section ".printk_index", align 4
@esd_usb2_setup_rx_urbs._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.35, ptr @.str.3, i32 595, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"couldn't setup read URBs\0A\00", [38 x i8] zeroinitializer }, align 32
@esd_usb2_setup_rx_urbs._entry_ptr.39 = internal global ptr @esd_usb2_setup_rx_urbs._entry.37, section ".printk_index", align 4
@esd_usb2_setup_rx_urbs._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.35, ptr @.str.3, i32 602, ptr @.str.36, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rx performance may be slow\0A\00", [36 x i8] zeroinitializer }, align 32
@esd_usb2_setup_rx_urbs._entry_ptr.42 = internal global ptr @esd_usb2_setup_rx_urbs._entry.40, section ".printk_index", align 4
@esd_usb2_read_bulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 392, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Rx URB aborted (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"esd_usb2_read_bulk_callback\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@esd_usb2_read_bulk_callback._entry_ptr = internal global ptr @esd_usb2_read_bulk_callback._entry, section ".printk_index", align 4
@esd_usb2_read_bulk_callback._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.3, i32 404, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"format error\0A\00", [18 x i8] zeroinitializer }, align 32
@esd_usb2_read_bulk_callback._entry_ptr.48 = internal global ptr @esd_usb2_read_bulk_callback._entry.46, section ".printk_index", align 4
@esd_usb2_read_bulk_callback._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.3, i32 413, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@esd_usb2_read_bulk_callback._entry_ptr.50 = internal global ptr @esd_usb2_read_bulk_callback._entry.49, section ".printk_index", align 4
@esd_usb2_read_bulk_callback._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.3, i32 425, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@esd_usb2_read_bulk_callback._entry_ptr.52 = internal global ptr @esd_usb2_read_bulk_callback._entry.51, section ".printk_index", align 4
@esd_usb2_read_bulk_callback._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.44, ptr @.str.3, i32 443, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed resubmitting read bulk urb: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@esd_usb2_read_bulk_callback._entry_ptr.55 = internal global ptr @esd_usb2_read_bulk_callback._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sending idadd message failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sending setbaud message failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"couldn't find free context\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"failed tx_urb %d\0A\00", [46 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Tx URB aborted (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@__sancov_gen_cov_switch_values.62 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967225, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 8, i64 64, i64 128, i64 192]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 64, i64 128]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"esd_usb2_driver\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1147, i32 26 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1154, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"esd_usb2_table\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 174, i32 29 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1081, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1087, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"dev_attr_firmware\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1095, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [18 x i8] c"dev_attr_hardware\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1099, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [14 x i8] c"dev_attr_nets\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1103, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1367, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1368, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 488, i32 8 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 483, i32 22 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 501, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 511, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 509, i32 22 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 985, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [25 x i8] c"esd_usb2_bittiming_const\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 889, i32 41 }
@___asan_gen_.166 = private unnamed_addr constant [20 x i8] c"esd_usb2_netdev_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 882, i32 36 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1028, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1035, i32 22 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 942, i32 22 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 703, i32 23 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 560, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 595, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 601, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 391, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 404, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 413, i32 5 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 425, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 442, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 860, i32 22 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 869, i32 22 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 778, i32 23 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 817, i32 24 }
@___asan_gen_.251 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 104, i32 6 }
@___asan_gen_.253 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.254 = private constant [34 x i8] c"../drivers/net/can/usb/esd_usb2.c\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 472, i32 23 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author464, ptr @__UNIQUE_ID_description465, ptr @__UNIQUE_ID_file466, ptr @__UNIQUE_ID_license467, ptr @__exitcall_esd_usb2_driver_exit, ptr @__initcall__kmod_esd_usb2__468_1154_esd_usb2_driver_init6, ptr @esd_usb2_driver_exit, ptr @esd_usb2_probe._entry, ptr @esd_usb2_probe._entry.12, ptr @esd_usb2_probe._entry.15, ptr @esd_usb2_probe._entry.6, ptr @esd_usb2_probe._entry.9, ptr @esd_usb2_probe._entry_ptr, ptr @esd_usb2_probe._entry_ptr.11, ptr @esd_usb2_probe._entry_ptr.14, ptr @esd_usb2_probe._entry_ptr.17, ptr @esd_usb2_probe._entry_ptr.8, ptr @esd_usb2_probe_one_net._entry, ptr @esd_usb2_probe_one_net._entry.28, ptr @esd_usb2_probe_one_net._entry_ptr, ptr @esd_usb2_probe_one_net._entry_ptr.30, ptr @esd_usb2_read_bulk_callback._entry, ptr @esd_usb2_read_bulk_callback._entry.46, ptr @esd_usb2_read_bulk_callback._entry.49, ptr @esd_usb2_read_bulk_callback._entry.51, ptr @esd_usb2_read_bulk_callback._entry.53, ptr @esd_usb2_read_bulk_callback._entry_ptr, ptr @esd_usb2_read_bulk_callback._entry_ptr.48, ptr @esd_usb2_read_bulk_callback._entry_ptr.50, ptr @esd_usb2_read_bulk_callback._entry_ptr.52, ptr @esd_usb2_read_bulk_callback._entry_ptr.55, ptr @esd_usb2_setup_rx_urbs._entry, ptr @esd_usb2_setup_rx_urbs._entry.37, ptr @esd_usb2_setup_rx_urbs._entry.40, ptr @esd_usb2_setup_rx_urbs._entry_ptr, ptr @esd_usb2_setup_rx_urbs._entry_ptr.39, ptr @esd_usb2_setup_rx_urbs._entry_ptr.42, ptr @esd_usb2_driver, ptr @.str, ptr @esd_usb2_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @dev_attr_firmware, ptr @.str.10, ptr @dev_attr_hardware, ptr @.str.13, ptr @dev_attr_nets, ptr @.str.16, ptr @init_usb_anchor.__key, ptr @.str.18, ptr @init_usb_anchor.__key.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @esd_usb2_bittiming_const, ptr @esd_usb2_netdev_ops, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esd_usb2_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esd_usb2_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esd_usb2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esd_usb2_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esd_usb2_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hardware to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esd_usb2_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_nets to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esd_usb2_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esd_usb2_probe_one_net._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esd_usb2_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esd_usb2_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esd_usb2_probe_one_net._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esd_usb2_setup_rx_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esd_usb2_setup_rx_urbs._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esd_usb2_setup_rx_urbs._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esd_usb2_read_bulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esd_usb2_read_bulk_callback._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esd_usb2_read_bulk_callback._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esd_usb2_read_bulk_callback._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esd_usb2_read_bulk_callback._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @esd_usb2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @esd_usb2_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @esd_usb2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_deregister(ptr noundef nonnull @esd_usb2_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esd_usb2_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %actual_length.i94 = alloca i32, align 4
  %actual_length.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 168) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end:                                           ; preds = %entry
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 -128
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %rx_submitted = getelementptr inbounds %struct.esd_usb2, ptr %call7.i.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.esd_usb2, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = call ptr @memset(ptr %4, i32 0, i32 104)
  %6 = ptrtoint ptr %rx_submitted to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %rx_submitted, ptr %rx_submitted, align 4
  %prev.i.i = getelementptr inbounds %struct.esd_usb2, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rx_submitted, ptr %prev.i.i, align 8
  tail call void @__init_waitqueue_head(ptr noundef %4, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_usb_anchor.__key) #11
  %lock.i = getelementptr inbounds %struct.esd_usb2, ptr %call7.i.i, i32 0, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_usb_anchor.__key.19, i16 noundef signext 3) #11
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 264) #14
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %if.end.free_msg.thread_crit_edge, label %if.end5

if.end.free_msg.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_msg.thread

if.end5:                                          ; preds = %if.end
  %cmd = getelementptr inbounds %struct.header_msg, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %cmd, align 1
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %call7.i, align 8
  %rsvd = getelementptr inbounds %struct.version_msg, ptr %call7.i, i32 0, i32 2
  %12 = ptrtoint ptr %rsvd to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %rsvd, align 2
  %flags = getelementptr inbounds %struct.version_msg, ptr %call7.i, i32 0, i32 3
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %flags, align 1
  %drv_version = getelementptr inbounds %struct.version_msg, ptr %call7.i, i32 0, i32 4
  %14 = ptrtoint ptr %drv_version to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %drv_version, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i) #11
  %15 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %actual_length.i, align 4, !annotation !133
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call7.i.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i = shl i32 %19, 8
  %or.i = or i32 %shl.i.i, -1073676288
  %call3.i = call i32 @usb_bulk_msg(ptr noundef %17, i32 noundef %or.i, ptr noundef nonnull %call7.i, i32 noundef 8, ptr noundef nonnull %actual_length.i, i32 noundef 1000) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %if.end5.free_msg.thread.sink.split_crit_edge, label %if.end14

if.end5.free_msg.thread.sink.split_crit_edge:     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_msg.thread.sink.split

if.end14:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i94) #11
  %20 = ptrtoint ptr %actual_length.i94 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %actual_length.i94, align 4, !annotation !133
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call7.i.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i95 = shl i32 %24, 8
  %or2.i = or i32 %shl.i.i95, -1073708928
  %call3.i96 = call i32 @usb_bulk_msg(ptr noundef %22, i32 noundef %or2.i, ptr noundef nonnull %call7.i, i32 noundef 264, ptr noundef nonnull %actual_length.i94, i32 noundef 1000) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i94) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i96)
  %cmp16 = icmp slt i32 %call3.i96, 0
  br i1 %cmp16, label %if.end14.free_msg.thread.sink.split_crit_edge, label %if.end22

if.end14.free_msg.thread.sink.split_crit_edge:    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_msg.thread.sink.split

if.end22:                                         ; preds = %if.end14
  %25 = ptrtoint ptr %rsvd to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rsvd, align 2
  %conv = zext i8 %26 to i32
  %net_count = getelementptr inbounds %struct.esd_usb2, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %net_count to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %net_count, align 4
  %28 = ptrtoint ptr %drv_version to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %drv_version, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %version25 = getelementptr inbounds %struct.esd_usb2, ptr %call7.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %version25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %version25, align 8
  %dev26 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call27 = call i32 @device_create_file(ptr noundef %dev26, ptr noundef nonnull @dev_attr_firmware) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end22.if.end34_crit_edge, label %do.end32

if.end22.if.end34_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

do.end32:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.10) #15
  br label %if.end34

if.end34:                                         ; preds = %do.end32, %if.end22.if.end34_crit_edge
  %call36 = call i32 @device_create_file(ptr noundef %dev26, ptr noundef nonnull @dev_attr_hardware) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end34.if.end43_crit_edge, label %do.end41

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.13) #15
  br label %if.end43

if.end43:                                         ; preds = %do.end41, %if.end34.if.end43_crit_edge
  %call45 = call i32 @device_create_file(ptr noundef %dev26, ptr noundef nonnull @dev_attr_nets) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end43.if.end52_crit_edge, label %do.end50

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.16) #15
  br label %if.end52

if.end52:                                         ; preds = %do.end50, %if.end43.if.end52_crit_edge
  %32 = ptrtoint ptr %net_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %net_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp54101 = icmp sgt i32 %33, 0
  br i1 %cmp54101, label %if.end52.for.body_crit_edge, label %if.end52.free_msg_crit_edge

if.end52.free_msg_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_msg

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  br label %for.body

for.body:                                         ; preds = %esd_usb2_probe_one_net.exit.for.body_crit_edge, %if.end52.for.body_crit_edge
  %i.0102 = phi i32 [ %inc, %esd_usb2_probe_one_net.exit.for.body_crit_edge ], [ 0, %if.end52.for.body_crit_edge ]
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = call ptr @alloc_candev_mqs(i32 noundef 576, i32 noundef 16, i32 noundef 1, i32 noundef 1) #11
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.26) #15
  br label %esd_usb2_probe_one_net.exit

if.end.i:                                         ; preds = %for.body
  %tx_submitted.i = getelementptr i8, ptr %call1.i, i32 2620
  %36 = getelementptr i8, ptr %call1.i, i32 2628
  %37 = call ptr @memset(ptr %36, i32 0, i32 104)
  %38 = ptrtoint ptr %tx_submitted.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %tx_submitted.i, ptr %tx_submitted.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %call1.i, i32 2624
  %39 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %tx_submitted.i, ptr %prev.i.i.i, align 4
  call void @__init_waitqueue_head(ptr noundef %36, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_usb_anchor.__key) #11
  %lock.i.i = getelementptr i8, ptr %call1.i, i32 2680
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_usb_anchor.__key.19, i16 noundef signext 3) #11
  %active_tx_jobs.i = getelementptr i8, ptr %call1.i, i32 2616
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_jobs.i, i32 noundef 4) #11
  %40 = ptrtoint ptr %active_tx_jobs.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 0, ptr %active_tx_jobs.i, align 4
  %echo_index.i = getelementptr i8, ptr %call1.i, i32 2736
  %41 = ptrtoint ptr %echo_index.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 16, ptr %echo_index.i, align 4
  %echo_index.1.i = getelementptr i8, ptr %call1.i, i32 2744
  %42 = ptrtoint ptr %echo_index.1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16, ptr %echo_index.1.i, align 4
  %echo_index.2.i = getelementptr i8, ptr %call1.i, i32 2752
  %43 = ptrtoint ptr %echo_index.2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 16, ptr %echo_index.2.i, align 4
  %echo_index.3.i = getelementptr i8, ptr %call1.i, i32 2760
  %44 = ptrtoint ptr %echo_index.3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16, ptr %echo_index.3.i, align 4
  %echo_index.4.i = getelementptr i8, ptr %call1.i, i32 2768
  %45 = ptrtoint ptr %echo_index.4.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 16, ptr %echo_index.4.i, align 4
  %echo_index.5.i = getelementptr i8, ptr %call1.i, i32 2776
  %46 = ptrtoint ptr %echo_index.5.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 16, ptr %echo_index.5.i, align 4
  %echo_index.6.i = getelementptr i8, ptr %call1.i, i32 2784
  %47 = ptrtoint ptr %echo_index.6.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 16, ptr %echo_index.6.i, align 4
  %echo_index.7.i = getelementptr i8, ptr %call1.i, i32 2792
  %48 = ptrtoint ptr %echo_index.7.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 16, ptr %echo_index.7.i, align 4
  %echo_index.8.i = getelementptr i8, ptr %call1.i, i32 2800
  %49 = ptrtoint ptr %echo_index.8.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 16, ptr %echo_index.8.i, align 4
  %echo_index.9.i = getelementptr i8, ptr %call1.i, i32 2808
  %50 = ptrtoint ptr %echo_index.9.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 16, ptr %echo_index.9.i, align 4
  %echo_index.10.i = getelementptr i8, ptr %call1.i, i32 2816
  %51 = ptrtoint ptr %echo_index.10.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 16, ptr %echo_index.10.i, align 4
  %echo_index.11.i = getelementptr i8, ptr %call1.i, i32 2824
  %52 = ptrtoint ptr %echo_index.11.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 16, ptr %echo_index.11.i, align 4
  %echo_index.12.i = getelementptr i8, ptr %call1.i, i32 2832
  %53 = ptrtoint ptr %echo_index.12.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 16, ptr %echo_index.12.i, align 4
  %echo_index.13.i = getelementptr i8, ptr %call1.i, i32 2840
  %54 = ptrtoint ptr %echo_index.13.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 16, ptr %echo_index.13.i, align 4
  %echo_index.14.i = getelementptr i8, ptr %call1.i, i32 2848
  %55 = ptrtoint ptr %echo_index.14.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 16, ptr %echo_index.14.i, align 4
  %echo_index.15.i = getelementptr i8, ptr %call1.i, i32 2856
  %56 = ptrtoint ptr %echo_index.15.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 16, ptr %echo_index.15.i, align 4
  %usb2.i = getelementptr i8, ptr %call1.i, i32 2860
  %57 = ptrtoint ptr %usb2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %35, ptr %usb2.i, align 4
  %netdev4.i = getelementptr i8, ptr %call1.i, i32 2864
  %58 = ptrtoint ptr %netdev4.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call1.i, ptr %netdev4.i, align 4
  %index5.i = getelementptr i8, ptr %call1.i, i32 2868
  %59 = ptrtoint ptr %index5.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %i.0102, ptr %index5.i, align 4
  %state.i = getelementptr i8, ptr %call1.i, i32 2472
  %60 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 4, ptr %state.i, align 4
  %ctrlmode_supported.i = getelementptr i8, ptr %call1.i, i32 2480
  %61 = ptrtoint ptr %ctrlmode_supported.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 258, ptr %ctrlmode_supported.i, align 4
  %62 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %35, align 4
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %63, i32 0, i32 16, i32 8
  %64 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %idProduct.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4352, i16 %65)
  %cmp7.i = icmp eq i16 %65, 4352
  %spec.store.select.i = select i1 %cmp7.i, i32 258, i32 262
  %66 = ptrtoint ptr %ctrlmode_supported.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %spec.store.select.i, ptr %ctrlmode_supported.i, align 4
  %spec.select.i = select i1 %cmp7.i, i32 36000000, i32 60000000
  %67 = getelementptr i8, ptr %call1.i, i32 2440
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %spec.select.i, ptr %67, align 4
  %bittiming_const.i = getelementptr i8, ptr %call1.i, i32 2332
  %69 = ptrtoint ptr %bittiming_const.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @esd_usb2_bittiming_const, ptr %bittiming_const.i, align 4
  %do_set_bittiming.i = getelementptr i8, ptr %call1.i, i32 2588
  %70 = ptrtoint ptr %do_set_bittiming.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @esd_usb2_set_bittiming, ptr %do_set_bittiming.i, align 4
  %do_set_mode.i = getelementptr i8, ptr %call1.i, i32 2596
  %71 = ptrtoint ptr %do_set_mode.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @esd_usb2_set_mode, ptr %do_set_mode.i, align 4
  %do_get_berr_counter.i = getelementptr i8, ptr %call1.i, i32 2608
  %72 = ptrtoint ptr %do_get_berr_counter.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @esd_usb2_get_berr_counter, ptr %do_get_berr_counter.i, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 14
  %73 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags.i, align 8
  %or21.i = or i32 %74, 262144
  store i32 %or21.i, ptr %flags.i, align 8
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 16
  %75 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @esd_usb2_netdev_ops, ptr %netdev_ops.i, align 8
  %parent.i97 = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 133, i32 1
  %76 = ptrtoint ptr %parent.i97 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %dev26, ptr %parent.i97, align 8
  %conv24.i = trunc i32 %i.0102 to i16
  %dev_id.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 60
  %77 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv24.i, ptr %dev_id.i, align 2
  %call25.i = call i32 @register_candev(ptr noundef nonnull %call1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end32.i, label %do.end30.i

do.end30.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.29, i32 noundef %call25.i) #15
  call void @free_candev(ptr noundef nonnull %call1.i) #11
  br label %esd_usb2_probe_one_net.exit

if.end32.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %call1.i, i32 2304
  %arrayidx33.i = getelementptr %struct.esd_usb2, ptr %35, i32 0, i32 1, i32 %i.0102
  %78 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr.i.i, ptr %arrayidx33.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.31, ptr noundef nonnull %call1.i) #15
  br label %esd_usb2_probe_one_net.exit

esd_usb2_probe_one_net.exit:                      ; preds = %if.end32.i, %do.end30.i, %do.end.i
  %inc = add nuw nsw i32 %i.0102, 1
  %79 = ptrtoint ptr %net_count to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %net_count, align 4
  %cmp54 = icmp slt i32 %inc, %80
  br i1 %cmp54, label %esd_usb2_probe_one_net.exit.for.body_crit_edge, label %esd_usb2_probe_one_net.exit.free_msg_crit_edge

esd_usb2_probe_one_net.exit.free_msg_crit_edge:   ; preds = %esd_usb2_probe_one_net.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_msg

esd_usb2_probe_one_net.exit.for.body_crit_edge:   ; preds = %esd_usb2_probe_one_net.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

free_msg.thread.sink.split:                       ; preds = %if.end14.free_msg.thread.sink.split_crit_edge, %if.end5.free_msg.thread.sink.split_crit_edge
  %.str.1.sink = phi ptr [ @.str.1, %if.end5.free_msg.thread.sink.split_crit_edge ], [ @.str.7, %if.end14.free_msg.thread.sink.split_crit_edge ]
  %err.0.ph.ph = phi i32 [ %call3.i, %if.end5.free_msg.thread.sink.split_crit_edge ], [ %call3.i96, %if.end14.free_msg.thread.sink.split_crit_edge ]
  %dev13 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull %.str.1.sink) #15
  br label %free_msg.thread

free_msg.thread:                                  ; preds = %free_msg.thread.sink.split, %if.end.free_msg.thread_crit_edge
  %err.0.ph = phi i32 [ -12, %if.end.free_msg.thread_crit_edge ], [ %err.0.ph.ph, %free_msg.thread.sink.split ]
  call void @kfree(ptr noundef %call7.i) #11
  br label %if.then58

free_msg:                                         ; preds = %esd_usb2_probe_one_net.exit.free_msg_crit_edge, %if.end52.free_msg_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i96)
  %tobool57.not = icmp eq i32 %call3.i96, 0
  br i1 %tobool57.not, label %free_msg.done_crit_edge, label %free_msg.if.then58_crit_edge

free_msg.if.then58_crit_edge:                     ; preds = %free_msg
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58

free_msg.done_crit_edge:                          ; preds = %free_msg
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.then58:                                        ; preds = %free_msg.if.then58_crit_edge, %free_msg.thread
  %err.0100 = phi i32 [ %err.0.ph, %free_msg.thread ], [ %call3.i96, %free_msg.if.then58_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %done

done:                                             ; preds = %if.then58, %free_msg.done_crit_edge, %entry.done_crit_edge
  %err.1 = phi i32 [ %err.0100, %if.then58 ], [ 0, %free_msg.done_crit_edge ], [ -12, %entry.done_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esd_usb2_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_firmware) #11
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_hardware) #11
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_nets) #11
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %for.cond.preheader

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

for.cond.preheader:                               ; preds = %entry
  %net_count = getelementptr inbounds %struct.esd_usb2, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %net_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %net_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp24 = icmp sgt i32 %4, 0
  br i1 %cmp24, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.esd_usb2, ptr %1, i32 0, i32 1, i32 %i.025
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.then5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %netdev8 = getelementptr inbounds %struct.esd_usb2_net_priv, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %netdev8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev8, align 4
  tail call void @unregister_netdev(ptr noundef %8) #11
  tail call void @free_candev(ptr noundef %8) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.025, 1
  %9 = ptrtoint ptr %net_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %net_count, align 4
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %rx_submitted.i = getelementptr inbounds %struct.esd_usb2, ptr %1, i32 0, i32 2
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted.i) #11
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %arrayidx.i = getelementptr %struct.esd_usb2, ptr %1, i32 0, i32 6, i32 0
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.esd_usb2, ptr %1, i32 0, i32 7, i32 0
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx1.i, align 4
  tail call void @usb_free_coherent(ptr noundef %12, i32 noundef 1024, ptr noundef %14, i32 noundef %16) #11
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %arrayidx.1.i = getelementptr %struct.esd_usb2, ptr %1, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.esd_usb2, ptr %1, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx1.1.i, align 4
  tail call void @usb_free_coherent(ptr noundef %18, i32 noundef 1024, ptr noundef %20, i32 noundef %22) #11
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %arrayidx.2.i = getelementptr %struct.esd_usb2, ptr %1, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.2.i, align 4
  %arrayidx1.2.i = getelementptr %struct.esd_usb2, ptr %1, i32 0, i32 7, i32 2
  %27 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx1.2.i, align 4
  tail call void @usb_free_coherent(ptr noundef %24, i32 noundef 1024, ptr noundef %26, i32 noundef %28) #11
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %arrayidx.3.i = getelementptr %struct.esd_usb2, ptr %1, i32 0, i32 6, i32 3
  %31 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.3.i, align 4
  %arrayidx1.3.i = getelementptr %struct.esd_usb2, ptr %1, i32 0, i32 7, i32 3
  %33 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx1.3.i, align 4
  tail call void @usb_free_coherent(ptr noundef %30, i32 noundef 1024, ptr noundef %32, i32 noundef %34) #11
  %35 = ptrtoint ptr %net_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %net_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp334.i = icmp sgt i32 %36, 0
  br i1 %cmp334.i, label %for.end.for.body4.i_crit_edge, label %for.end.unlink_all_urbs.exit_crit_edge

for.end.unlink_all_urbs.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlink_all_urbs.exit

for.end.for.body4.i_crit_edge:                    ; preds = %for.end
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.inc13.i.for.body4.i_crit_edge, %for.end.for.body4.i_crit_edge
  %i.135.i = phi i32 [ %inc14.i, %for.inc13.i.for.body4.i_crit_edge ], [ 0, %for.end.for.body4.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.esd_usb2, ptr %1, i32 0, i32 1, i32 %i.135.i
  %37 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx5.i, align 4
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %for.body4.i.for.inc13.i_crit_edge, label %if.then.i

for.body4.i.for.inc13.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc13.i

if.then.i:                                        ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  %tx_submitted.i = getelementptr inbounds %struct.esd_usb2_net_priv, ptr %38, i32 0, i32 2
  tail call void @usb_kill_anchored_urbs(ptr noundef %tx_submitted.i) #11
  %active_tx_jobs.i = getelementptr inbounds %struct.esd_usb2_net_priv, ptr %38, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_jobs.i, i32 noundef 4) #11
  %39 = ptrtoint ptr %active_tx_jobs.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 0, ptr %active_tx_jobs.i, align 4
  %echo_index.i = getelementptr %struct.esd_usb2_net_priv, ptr %38, i32 0, i32 3, i32 0, i32 1
  %40 = ptrtoint ptr %echo_index.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 16, ptr %echo_index.i, align 4
  %echo_index.1.i = getelementptr %struct.esd_usb2_net_priv, ptr %38, i32 0, i32 3, i32 1, i32 1
  %41 = ptrtoint ptr %echo_index.1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 16, ptr %echo_index.1.i, align 4
  %echo_index.2.i = getelementptr %struct.esd_usb2_net_priv, ptr %38, i32 0, i32 3, i32 2, i32 1
  %42 = ptrtoint ptr %echo_index.2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16, ptr %echo_index.2.i, align 4
  %echo_index.3.i = getelementptr %struct.esd_usb2_net_priv, ptr %38, i32 0, i32 3, i32 3, i32 1
  %43 = ptrtoint ptr %echo_index.3.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 16, ptr %echo_index.3.i, align 4
  %echo_index.4.i = getelementptr %struct.esd_usb2_net_priv, ptr %38, i32 0, i32 3, i32 4, i32 1
  %44 = ptrtoint ptr %echo_index.4.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16, ptr %echo_index.4.i, align 4
  %echo_index.5.i = getelementptr %struct.esd_usb2_net_priv, ptr %38, i32 0, i32 3, i32 5, i32 1
  %45 = ptrtoint ptr %echo_index.5.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 16, ptr %echo_index.5.i, align 4
  %echo_index.6.i = getelementptr %struct.esd_usb2_net_priv, ptr %38, i32 0, i32 3, i32 6, i32 1
  %46 = ptrtoint ptr %echo_index.6.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 16, ptr %echo_index.6.i, align 4
  %echo_index.7.i = getelementptr %struct.esd_usb2_net_priv, ptr %38, i32 0, i32 3, i32 7, i32 1
  %47 = ptrtoint ptr %echo_index.7.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 16, ptr %echo_index.7.i, align 4
  %echo_index.8.i = getelementptr %struct.esd_usb2_net_priv, ptr %38, i32 0, i32 3, i32 8, i32 1
  %48 = ptrtoint ptr %echo_index.8.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 16, ptr %echo_index.8.i, align 4
  %echo_index.9.i = getelementptr %struct.esd_usb2_net_priv, ptr %38, i32 0, i32 3, i32 9, i32 1
  %49 = ptrtoint ptr %echo_index.9.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 16, ptr %echo_index.9.i, align 4
  %echo_index.10.i = getelementptr %struct.esd_usb2_net_priv, ptr %38, i32 0, i32 3, i32 10, i32 1
  %50 = ptrtoint ptr %echo_index.10.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 16, ptr %echo_index.10.i, align 4
  %echo_index.11.i = getelementptr %struct.esd_usb2_net_priv, ptr %38, i32 0, i32 3, i32 11, i32 1
  %51 = ptrtoint ptr %echo_index.11.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 16, ptr %echo_index.11.i, align 4
  %echo_index.12.i = getelementptr %struct.esd_usb2_net_priv, ptr %38, i32 0, i32 3, i32 12, i32 1
  %52 = ptrtoint ptr %echo_index.12.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 16, ptr %echo_index.12.i, align 4
  %echo_index.13.i = getelementptr %struct.esd_usb2_net_priv, ptr %38, i32 0, i32 3, i32 13, i32 1
  %53 = ptrtoint ptr %echo_index.13.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 16, ptr %echo_index.13.i, align 4
  %echo_index.14.i = getelementptr %struct.esd_usb2_net_priv, ptr %38, i32 0, i32 3, i32 14, i32 1
  %54 = ptrtoint ptr %echo_index.14.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 16, ptr %echo_index.14.i, align 4
  %echo_index.15.i = getelementptr %struct.esd_usb2_net_priv, ptr %38, i32 0, i32 3, i32 15, i32 1
  %55 = ptrtoint ptr %echo_index.15.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 16, ptr %echo_index.15.i, align 4
  br label %for.inc13.i

for.inc13.i:                                      ; preds = %if.then.i, %for.body4.i.for.inc13.i_crit_edge
  %inc14.i = add nuw nsw i32 %i.135.i, 1
  %56 = ptrtoint ptr %net_count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %net_count, align 4
  %cmp3.i = icmp slt i32 %inc14.i, %57
  br i1 %cmp3.i, label %for.inc13.i.for.body4.i_crit_edge, label %for.inc13.i.unlink_all_urbs.exit_crit_edge

for.inc13.i.unlink_all_urbs.exit_crit_edge:       ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlink_all_urbs.exit

for.inc13.i.for.body4.i_crit_edge:                ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.i

unlink_all_urbs.exit:                             ; preds = %for.inc13.i.unlink_all_urbs.exit_crit_edge, %for.end.unlink_all_urbs.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %if.end9

if.end9:                                          ; preds = %unlink_all_urbs.exit, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %version = getelementptr inbounds %struct.esd_usb2, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 4
  %shr = lshr i32 %3, 12
  %and = and i32 %shr, 15
  %shr2 = lshr i32 %3, 8
  %and3 = and i32 %shr2, 15
  %and5 = and i32 %3, 255
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %and, i32 noundef %and3, i32 noundef %and5)
  ret i32 %call6
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hardware_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %version = getelementptr inbounds %struct.esd_usb2, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 4
  %shr = lshr i32 %3, 28
  %shr2 = lshr i32 %3, 24
  %and3 = and i32 %shr2, 15
  %shr5 = lshr i32 %3, 16
  %and6 = and i32 %shr5, 255
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %shr, i32 noundef %and3, i32 noundef %and6)
  ret i32 %call7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nets_show(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %net_count = getelementptr inbounds %struct.esd_usb2, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %net_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %net_count, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esd_usb2_set_bittiming(ptr noundef %netdev) #2 align 64 {
entry:
  %actual_length.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrlmode = getelementptr i8, ptr %netdev, i32 2476
  %0 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrlmode, align 4
  %brp = getelementptr i8, ptr %netdev, i32 2368
  %2 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brp, align 4
  %usb2 = getelementptr i8, ptr %netdev, i32 2860
  %4 = ptrtoint ptr %usb2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb2, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 16, i32 8
  %8 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %idProduct, align 2
  %sjw = getelementptr i8, ptr %netdev, i32 2364
  %10 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sjw, align 4
  %prop_seg = getelementptr i8, ptr %netdev, i32 2352
  %12 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prop_seg, align 4
  %phase_seg1 = getelementptr i8, ptr %netdev, i32 2356
  %14 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phase_seg1, align 4
  %phase_seg2 = getelementptr i8, ptr %netdev, i32 2360
  %16 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phase_seg2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 264) #14
  %tobool26.not = icmp eq ptr %call7.i, null
  br i1 %tobool26.not, label %entry.cleanup_crit_edge, label %if.end28

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 -2147483648, i32 -1073741824
  %sub = add i32 %3, 1023
  %and2 = and i32 %sub, 1023
  %sub7 = add i32 %11, 3
  %and8 = and i32 %sub7, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 4352, i16 %9)
  %cmp = icmp eq i16 %9, 4352
  %sjw_shift.0 = select i1 %cmp, i32 24, i32 14
  %shl = shl nuw nsw i32 %and8, %sjw_shift.0
  %add = add i32 %15, %13
  %sub10 = shl i32 %add, 16
  %and11 = add i32 %sub10, 983040
  %shl12 = and i32 %and11, 983040
  %sub14 = shl i32 %17, 20
  %and15 = add i32 %sub14, 7340032
  %shl16 = and i32 %and15, 7340032
  %and20 = shl i32 %1, 21
  %19 = and i32 %and20, 8388608
  %or3 = or i32 %and2, %19
  %or9 = or i32 %or3, %spec.select
  %or13 = or i32 %or9, %shl
  %or17 = or i32 %or13, %shl12
  %20 = or i32 %or17, %shl16
  %21 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %call7.i, align 8
  %cmd = getelementptr inbounds %struct.header_msg, ptr %call7.i, i32 0, i32 1
  %22 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %cmd, align 1
  %index = getelementptr i8, ptr %netdev, i32 2868
  %23 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index, align 4
  %conv31 = trunc i32 %24 to i8
  %net = getelementptr inbounds %struct.set_baudrate_msg, ptr %call7.i, i32 0, i32 2
  %25 = ptrtoint ptr %net to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv31, ptr %net, align 2
  %rsvd = getelementptr inbounds %struct.set_baudrate_msg, ptr %call7.i, i32 0, i32 3
  %26 = ptrtoint ptr %rsvd to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %rsvd, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %20)
  %baud = getelementptr inbounds %struct.set_baudrate_msg, ptr %call7.i, i32 0, i32 4
  %28 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %baud, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.32, i32 noundef %20) #15
  %29 = ptrtoint ptr %usb2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i) #11
  %31 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %actual_length.i, align 4, !annotation !133
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %30, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i = shl i32 %35, 8
  %or.i = or i32 %shl.i.i, -1073676288
  %call3.i = call i32 @usb_bulk_msg(ptr noundef %33, i32 noundef %or.i, ptr noundef nonnull %call7.i, i32 noundef 8, ptr noundef nonnull %actual_length.i, i32 noundef 1000) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i) #11
  call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3.i, %if.end28 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esd_usb2_set_mode(ptr nocapture noundef readonly %netdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp eq i32 %mode, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %1) #11
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @esd_usb2_get_berr_counter(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %bec) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bec1 = getelementptr i8, ptr %netdev, i32 2874
  %0 = ptrtoint ptr %bec1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bec1, align 2
  %2 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %bec, align 2
  %rxerr = getelementptr i8, ptr %netdev, i32 2876
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
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esd_usb2_open(ptr noundef %netdev) #2 align 64 {
entry:
  %buf_dma.i.i = alloca i32, align 4
  %actual_length.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @open_candev(ptr noundef %netdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb2.i = getelementptr i8, ptr %netdev, i32 2860
  %0 = ptrtoint ptr %usb2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb2.i, align 4
  %netdev1.i = getelementptr i8, ptr %netdev, i32 2864
  %2 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 264) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %if.end.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.end.i:                                         ; preds = %if.end
  %cmd.i = getelementptr inbounds %struct.header_msg, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 6, ptr %cmd.i, align 1
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 66, ptr %call7.i.i, align 8
  %index.i = getelementptr i8, ptr %netdev, i32 2868
  %7 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i, align 4
  %conv.i = trunc i32 %8 to i8
  %net.i = getelementptr inbounds %struct.id_filter_msg, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %net.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %net.i, align 2
  %option.i = getelementptr inbounds %struct.id_filter_msg, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %option.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %option.i, align 1
  %uglygep.i = getelementptr i8, ptr %call7.i.i, i32 4
  %11 = call ptr @memset(ptr %uglygep.i, i32 255, i32 256)
  %arrayidx10.i = getelementptr %struct.id_filter_msg, ptr %call7.i.i, i32 0, i32 4, i32 64
  %12 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16777216, ptr %arrayidx10.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i.i) #11
  %13 = ptrtoint ptr %actual_length.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %actual_length.i.i, align 4, !annotation !133
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i.i = shl i32 %17, 8
  %or.i.i = or i32 %shl.i.i.i, -1073676288
  %call3.i.i = call i32 @usb_bulk_msg(ptr noundef %15, i32 noundef %or.i.i, ptr noundef nonnull %call7.i.i, i32 noundef 264, ptr noundef nonnull %actual_length.i.i, i32 noundef 1000) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool12.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end14.i:                                       ; preds = %if.end.i
  %rxinitdone.i.i = getelementptr inbounds %struct.esd_usb2, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %rxinitdone.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rxinitdone.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %for.cond.preheader.i.i, label %if.end14.i.if.end5_crit_edge

if.end14.i.if.end5_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

for.cond.preheader.i.i:                           ; preds = %if.end14.i
  %rx_submitted.i.i = getelementptr inbounds %struct.esd_usb2, ptr %1, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %i.095.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_dma.i.i) #11
  %20 = ptrtoint ptr %buf_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %buf_dma.i.i, align 4, !annotation !133
  %call.i.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %tobool1.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool1.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %if.end3.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

if.end3.i.i:                                      ; preds = %for.body.i.i
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call4.i.i = call ptr @usb_alloc_coherent(ptr noundef %22, i32 noundef 1024, i32 noundef 3264, ptr noundef nonnull %buf_dma.i.i) #11
  %tobool5.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool5.not.i.i, label %do.end.i.i, label %if.end9.i.i

do.end.i.i:                                       ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15, i32 1
  %25 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.34) #15
  br label %freeurb.thread.i.i

if.end9.i.i:                                      ; preds = %if.end3.i.i
  %27 = ptrtoint ptr %buf_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buf_dma.i.i, align 4
  %transfer_dma.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 15
  %29 = ptrtoint ptr %transfer_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %transfer_dma.i.i, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i.i46.i = shl i32 %33, 8
  %or13.i.i = or i32 %shl.i.i46.i, -1073708928
  %dev1.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 8
  %34 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %dev1.i.i.i, align 4
  %pipe2.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 10
  %35 = ptrtoint ptr %pipe2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or13.i.i, ptr %pipe2.i.i.i, align 4
  %transfer_buffer3.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 14
  %36 = ptrtoint ptr %transfer_buffer3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call4.i.i, ptr %transfer_buffer3.i.i.i, align 4
  %transfer_buffer_length.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 19
  %37 = ptrtoint ptr %transfer_buffer_length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1024, ptr %transfer_buffer_length.i.i.i, align 4
  %complete.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 28
  %38 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @esd_usb2_read_bulk_callback, ptr %complete.i.i.i, align 4
  %context4.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 27
  %39 = ptrtoint ptr %context4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %1, ptr %context4.i.i.i, align 4
  %transfer_flags.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 13
  %40 = ptrtoint ptr %transfer_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %transfer_flags.i.i, align 4
  %or14.i.i = or i32 %41, 4
  store i32 %or14.i.i, ptr %transfer_flags.i.i, align 4
  call void @usb_anchor_urb(ptr noundef nonnull %call.i.i, ptr noundef %rx_submitted.i.i) #11
  %call15.i.i = call i32 @usb_submit_urb(ptr noundef nonnull %call.i.i, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %for.inc.i.i, label %if.then17.i.i

if.then17.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %transfer_dma.i.i.le = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 15
  call void @usb_unanchor_urb(ptr noundef nonnull %call.i.i) #11
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %44 = ptrtoint ptr %transfer_dma.i.i.le to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %transfer_dma.i.i.le, align 4
  call void @usb_free_coherent(ptr noundef %43, i32 noundef 1024, ptr noundef nonnull %call4.i.i, i32 noundef %45) #11
  br label %freeurb.thread.i.i

freeurb.thread.i.i:                               ; preds = %if.then17.i.i, %do.end.i.i
  %err.1.ph.i.i = phi i32 [ -12, %do.end.i.i ], [ %call15.i.i, %if.then17.i.i ]
  call void @usb_free_urb(ptr noundef nonnull %call.i.i) #11
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %if.end9.i.i
  %arrayidx.i.i = getelementptr %struct.esd_usb2, ptr %1, i32 0, i32 6, i32 %i.095.i.i
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call4.i.i, ptr %arrayidx.i.i, align 4
  %47 = ptrtoint ptr %buf_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buf_dma.i.i, align 4
  %arrayidx21.i.i = getelementptr %struct.esd_usb2, ptr %1, i32 0, i32 7, i32 %i.095.i.i
  %49 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx21.i.i, align 4
  call void @usb_free_urb(ptr noundef nonnull %call.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_dma.i.i) #11
  %inc.i.i = add nuw nsw i32 %i.095.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 4
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end44.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.end44.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i.i

for.end.i.i:                                      ; preds = %freeurb.thread.i.i, %for.body.i.i.for.end.i.i_crit_edge
  %err.2.ph.i.i = phi i32 [ %err.1.ph.i.i, %freeurb.thread.i.i ], [ -12, %for.body.i.i.for.end.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_dma.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.095.i.i)
  %cmp27.i.i = icmp eq i32 %i.095.i.i, 0
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %parent34.i.i = getelementptr inbounds %struct.usb_device, ptr %51, i32 0, i32 15, i32 1
  %52 = ptrtoint ptr %parent34.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %parent34.i.i, align 8
  br i1 %cmp27.i.i, label %esd_usb2_setup_rx_urbs.exit.i, label %do.end40.i.i

do.end40.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.41) #15
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %do.end40.i.i, %for.inc.i.i.if.end44.i.i_crit_edge
  %54 = ptrtoint ptr %rxinitdone.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %rxinitdone.i.i, align 4
  br label %if.end5

esd_usb2_setup_rx_urbs.exit.i:                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.38) #15
  br label %out.i

out.i:                                            ; preds = %esd_usb2_setup_rx_urbs.exit.i, %if.end.i.out.i_crit_edge
  %err.0.i = phi i32 [ %call3.i.i, %if.end.i.out.i_crit_edge ], [ %err.2.ph.i.i, %esd_usb2_setup_rx_urbs.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %err.0.i)
  %cond.i = icmp eq i32 %err.0.i, -19
  br i1 %cond.i, label %if.then21.i, label %out.i.if.then4_crit_edge

out.i.if.then4_crit_edge:                         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.then21.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @netif_device_detach(ptr noundef %3) #11
  br label %if.then4

if.then4:                                         ; preds = %if.then21.i, %out.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %err.051.i = phi i32 [ -19, %if.then21.i ], [ %err.0.i, %out.i.if.then4_crit_edge ], [ -12, %if.end.if.then4_crit_edge ]
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.33, i32 noundef %err.051.i) #15
  call void @kfree(ptr noundef %call7.i.i) #11
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.33, i32 noundef %err.051.i) #15
  call void @close_candev(ptr noundef %netdev) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end44.i.i, %if.end14.i.if.end5_crit_edge
  %state.i = getelementptr i8, ptr %netdev, i32 2472
  %55 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %state.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %56 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %57, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.051.i, %if.then4 ], [ 0, %if.end5 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esd_usb2_close(ptr noundef %netdev) #2 align 64 {
entry:
  %actual_length.i54 = alloca i32, align 4
  %actual_length.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 264) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd = getelementptr inbounds %struct.header_msg, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 6, ptr %cmd, align 1
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 66, ptr %call7.i, align 8
  %index = getelementptr i8, ptr %netdev, i32 2868
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %conv = trunc i32 %4 to i8
  %net = getelementptr inbounds %struct.id_filter_msg, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %net to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %net, align 2
  %option = getelementptr inbounds %struct.id_filter_msg, ptr %call7.i, i32 0, i32 3
  %6 = ptrtoint ptr %option to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -128, ptr %option, align 1
  %uglygep = getelementptr i8, ptr %call7.i, i32 4
  %7 = call ptr @memset(ptr %uglygep, i32 0, i32 260)
  %usb2 = getelementptr i8, ptr %netdev, i32 2860
  %8 = ptrtoint ptr %usb2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i) #11
  %10 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %actual_length.i, align 4, !annotation !133
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %9, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i = shl i32 %14, 8
  %or.i = or i32 %shl.i.i, -1073676288
  %call3.i = call i32 @usb_bulk_msg(ptr noundef %12, i32 noundef %or.i, ptr noundef nonnull %call7.i, i32 noundef 264, ptr noundef nonnull %actual_length.i, i32 noundef 1000) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp9 = icmp slt i32 %call3.i, 0
  br i1 %cmp9, label %if.then11, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.56) #15
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %call7.i, align 8
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %cmd, align 1
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index, align 4
  %conv18 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %net to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv18, ptr %net, align 2
  %20 = ptrtoint ptr %option to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %option, align 1
  %21 = ptrtoint ptr %uglygep to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -129, ptr %uglygep, align 4
  %22 = ptrtoint ptr %usb2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i54) #11
  %24 = ptrtoint ptr %actual_length.i54 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %actual_length.i54, align 4, !annotation !133
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %23, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i.i55 = shl i32 %28, 8
  %or.i56 = or i32 %shl.i.i55, -1073676288
  %call3.i59 = call i32 @usb_bulk_msg(ptr noundef %26, i32 noundef %or.i56, ptr noundef nonnull %call7.i, i32 noundef 8, ptr noundef nonnull %actual_length.i54, i32 noundef 1000) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i54) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i59)
  %cmp25 = icmp slt i32 %call3.i59, 0
  br i1 %cmp25, label %if.then27, label %if.end12.if.end28_crit_edge

if.end12.if.end28_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then27:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.57) #15
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end12.if.end28_crit_edge
  %state = getelementptr i8, ptr %netdev, i32 2472
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %state, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %30 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %31, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  call void @close_candev(ptr noundef %netdev) #11
  call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esd_usb2_start_xmit(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %usb2 = getelementptr i8, ptr %netdev, i32 2860
  %0 = ptrtoint ptr %usb2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb2, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %4 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol.i, align 8
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %entry.can_dropped_invalid_skb.exit_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

entry.can_dropped_invalid_skb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp2.not.i = icmp eq i32 %8, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !134

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %10)
  %cmp6.i = icmp ugt i8 %10, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !135

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %12)
  %cmp16.not.i = icmp eq i32 %12, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !134

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %14)
  %cmp21.i = icmp ugt i8 %14, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !135

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #13
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
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !134

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 104, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #13
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
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
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
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %36 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %37, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then40.i.i, %if.end37.i.i.if.end_crit_edge
  %call3 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %38 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %tx_dropped, align 4
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 15
  %call6 = tail call ptr @usb_alloc_coherent(ptr noundef %41, i32 noundef 264, i32 noundef 2592, ptr noundef %transfer_dma) #11
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.34) #15
  %tx_dropped9 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %42 = ptrtoint ptr %tx_dropped9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_dropped9, align 4
  %inc10 = add i32 %43, 1
  store i32 %inc10, ptr %tx_dropped9, align 4
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %nobufmem

if.end11:                                         ; preds = %if.end5
  %44 = ptrtoint ptr %call6 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 3, ptr %call6, align 1
  %cmd = getelementptr inbounds %struct.header_msg, ptr %call6, i32 0, i32 1
  %45 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 3, ptr %cmd, align 1
  %index = getelementptr i8, ptr %netdev, i32 2868
  %46 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index, align 4
  %conv = trunc i32 %47 to i8
  %net = getelementptr inbounds %struct.tx_msg, ptr %call6, i32 0, i32 2
  %48 = ptrtoint ptr %net to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv, ptr %net, align 1
  %ctrlmode = getelementptr i8, ptr %netdev, i32 2476
  %49 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ctrlmode, align 4
  %and.i = and i32 %50, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end11.if.end.i_crit_edge, label %land.lhs.true.i

if.end11.if.end.i_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end11
  %51 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %53)
  %cmp.i = icmp eq i8 %53, 8
  br i1 %cmp.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %len8_dlc.i = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 4
  %54 = ptrtoint ptr %len8_dlc.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %len8_dlc.i, align 1
  %56 = add i8 %55, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %56)
  %57 = icmp ult i8 %56, 7
  br i1 %57, label %land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge, label %land.lhs.true2.i.if.end.i_crit_edge

land.lhs.true2.i.if.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %can_get_cc_dlc.exit

if.end.i:                                         ; preds = %land.lhs.true2.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.end11.if.end.i_crit_edge
  %58 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 4
  br label %can_get_cc_dlc.exit

can_get_cc_dlc.exit:                              ; preds = %if.end.i, %land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge
  %retval.0.i185 = phi i8 [ %60, %if.end.i ], [ %55, %land.lhs.true2.i.can_get_cc_dlc.exit_crit_edge ]
  %dlc = getelementptr inbounds %struct.tx_msg, ptr %call6, i32 0, i32 3
  %61 = ptrtoint ptr %dlc to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %retval.0.i185, ptr %dlc, align 1
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %3, align 8
  %and = and i32 %63, 536870911
  %64 = tail call i32 @llvm.bswap.i32(i32 %and)
  %id = getelementptr inbounds %struct.tx_msg, ptr %call6, i32 0, i32 5
  %65 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %64, ptr %id, align 1
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %3, align 8
  %and19 = and i32 %67, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %can_get_cc_dlc.exit.if.end26_crit_edge, label %if.then21

can_get_cc_dlc.exit.if.end26_crit_edge:           ; preds = %can_get_cc_dlc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then21:                                        ; preds = %can_get_cc_dlc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %68 = or i8 %retval.0.i185, 16
  %69 = ptrtoint ptr %dlc to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %dlc, align 1
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr = load i32, ptr %3, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %can_get_cc_dlc.exit.if.end26_crit_edge
  %71 = phi i32 [ %.pr, %if.then21 ], [ %67, %can_get_cc_dlc.exit.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %tobool29.not = icmp sgt i32 %71, -1
  br i1 %tobool29.not, label %if.end26.if.end34_crit_edge, label %if.then30

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %id, align 1
  %or33 = or i32 %73, 32
  store i32 %or33, ptr %id, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end26.if.end34_crit_edge
  %74 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %74, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp192.not = icmp eq i8 %76, 0
  br i1 %cmp192.not, label %if.end34.for.end_crit_edge, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  br label %for.body

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end34.for.body_crit_edge
  %i.0193 = phi i32 [ %inc41, %for.body.for.body_crit_edge ], [ 0, %if.end34.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.can_frame, ptr %3, i32 0, i32 5, i32 %i.0193
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx, align 1
  %arrayidx40 = getelementptr %struct.tx_msg, ptr %call6, i32 0, i32 6, i32 %i.0193
  %79 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %arrayidx40, align 1
  %inc41 = add nuw nsw i32 %i.0193, 1
  %80 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %74, align 4
  %conv35 = zext i8 %81 to i32
  %cmp = icmp ult i32 %inc41, %conv35
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end34.for.end_crit_edge
  %.lcssa = phi i8 [ 0, %if.end34.for.end_crit_edge ], [ %81, %for.body.for.end_crit_edge ]
  %conv35.le = zext i8 %.lcssa to i16
  %add = add nuw nsw i16 %conv35.le, 3
  %82 = lshr i16 %add, 2
  %83 = ptrtoint ptr %call6 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %call6, align 1
  %85 = trunc i16 %82 to i8
  %conv47 = add i8 %84, %85
  store i8 %conv47, ptr %call6, align 1
  %echo_index = getelementptr i8, ptr %netdev, i32 2736
  %86 = ptrtoint ptr %echo_index to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %echo_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %87)
  %cmp53 = icmp eq i32 %87, 16
  br i1 %cmp53, label %for.end.for.end61_crit_edge, label %for.inc59

for.end.for.end61_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end61

for.inc59:                                        ; preds = %for.end
  %echo_index.1 = getelementptr i8, ptr %netdev, i32 2744
  %88 = ptrtoint ptr %echo_index.1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %echo_index.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %89)
  %cmp53.1 = icmp eq i32 %89, 16
  br i1 %cmp53.1, label %for.inc59.for.end61_crit_edge, label %for.inc59.1

for.inc59.for.end61_crit_edge:                    ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end61

for.inc59.1:                                      ; preds = %for.inc59
  %echo_index.2 = getelementptr i8, ptr %netdev, i32 2752
  %90 = ptrtoint ptr %echo_index.2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %echo_index.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %91)
  %cmp53.2 = icmp eq i32 %91, 16
  br i1 %cmp53.2, label %for.inc59.1.for.end61_crit_edge, label %for.inc59.2

for.inc59.1.for.end61_crit_edge:                  ; preds = %for.inc59.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end61

for.inc59.2:                                      ; preds = %for.inc59.1
  %echo_index.3 = getelementptr i8, ptr %netdev, i32 2760
  %92 = ptrtoint ptr %echo_index.3 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %echo_index.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %93)
  %cmp53.3 = icmp eq i32 %93, 16
  br i1 %cmp53.3, label %for.inc59.2.for.end61_crit_edge, label %for.inc59.3

for.inc59.2.for.end61_crit_edge:                  ; preds = %for.inc59.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end61

for.inc59.3:                                      ; preds = %for.inc59.2
  %echo_index.4 = getelementptr i8, ptr %netdev, i32 2768
  %94 = ptrtoint ptr %echo_index.4 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %echo_index.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %95)
  %cmp53.4 = icmp eq i32 %95, 16
  br i1 %cmp53.4, label %for.inc59.3.for.end61_crit_edge, label %for.inc59.4

for.inc59.3.for.end61_crit_edge:                  ; preds = %for.inc59.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end61

for.inc59.4:                                      ; preds = %for.inc59.3
  %echo_index.5 = getelementptr i8, ptr %netdev, i32 2776
  %96 = ptrtoint ptr %echo_index.5 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %echo_index.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %97)
  %cmp53.5 = icmp eq i32 %97, 16
  br i1 %cmp53.5, label %for.inc59.4.for.end61_crit_edge, label %for.inc59.5

for.inc59.4.for.end61_crit_edge:                  ; preds = %for.inc59.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end61

for.inc59.5:                                      ; preds = %for.inc59.4
  %echo_index.6 = getelementptr i8, ptr %netdev, i32 2784
  %98 = ptrtoint ptr %echo_index.6 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %echo_index.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %99)
  %cmp53.6 = icmp eq i32 %99, 16
  br i1 %cmp53.6, label %for.inc59.5.for.end61_crit_edge, label %for.inc59.6

for.inc59.5.for.end61_crit_edge:                  ; preds = %for.inc59.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end61

for.inc59.6:                                      ; preds = %for.inc59.5
  %echo_index.7 = getelementptr i8, ptr %netdev, i32 2792
  %100 = ptrtoint ptr %echo_index.7 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %echo_index.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %101)
  %cmp53.7 = icmp eq i32 %101, 16
  br i1 %cmp53.7, label %for.inc59.6.for.end61_crit_edge, label %for.inc59.7

for.inc59.6.for.end61_crit_edge:                  ; preds = %for.inc59.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end61

for.inc59.7:                                      ; preds = %for.inc59.6
  %echo_index.8 = getelementptr i8, ptr %netdev, i32 2800
  %102 = ptrtoint ptr %echo_index.8 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %echo_index.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %103)
  %cmp53.8 = icmp eq i32 %103, 16
  br i1 %cmp53.8, label %for.inc59.7.for.end61_crit_edge, label %for.inc59.8

for.inc59.7.for.end61_crit_edge:                  ; preds = %for.inc59.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end61

for.inc59.8:                                      ; preds = %for.inc59.7
  %echo_index.9 = getelementptr i8, ptr %netdev, i32 2808
  %104 = ptrtoint ptr %echo_index.9 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %echo_index.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %105)
  %cmp53.9 = icmp eq i32 %105, 16
  br i1 %cmp53.9, label %for.inc59.8.for.end61_crit_edge, label %for.inc59.9

for.inc59.8.for.end61_crit_edge:                  ; preds = %for.inc59.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end61

for.inc59.9:                                      ; preds = %for.inc59.8
  %echo_index.10 = getelementptr i8, ptr %netdev, i32 2816
  %106 = ptrtoint ptr %echo_index.10 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %echo_index.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %107)
  %cmp53.10 = icmp eq i32 %107, 16
  br i1 %cmp53.10, label %for.inc59.9.for.end61_crit_edge, label %for.inc59.10

for.inc59.9.for.end61_crit_edge:                  ; preds = %for.inc59.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end61

for.inc59.10:                                     ; preds = %for.inc59.9
  %echo_index.11 = getelementptr i8, ptr %netdev, i32 2824
  %108 = ptrtoint ptr %echo_index.11 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %echo_index.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %109)
  %cmp53.11 = icmp eq i32 %109, 16
  br i1 %cmp53.11, label %for.inc59.10.for.end61_crit_edge, label %for.inc59.11

for.inc59.10.for.end61_crit_edge:                 ; preds = %for.inc59.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end61

for.inc59.11:                                     ; preds = %for.inc59.10
  %echo_index.12 = getelementptr i8, ptr %netdev, i32 2832
  %110 = ptrtoint ptr %echo_index.12 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %echo_index.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %111)
  %cmp53.12 = icmp eq i32 %111, 16
  br i1 %cmp53.12, label %for.inc59.11.for.end61_crit_edge, label %for.inc59.12

for.inc59.11.for.end61_crit_edge:                 ; preds = %for.inc59.11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end61

for.inc59.12:                                     ; preds = %for.inc59.11
  %echo_index.13 = getelementptr i8, ptr %netdev, i32 2840
  %112 = ptrtoint ptr %echo_index.13 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %echo_index.13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %113)
  %cmp53.13 = icmp eq i32 %113, 16
  br i1 %cmp53.13, label %for.inc59.12.for.end61_crit_edge, label %for.inc59.13

for.inc59.12.for.end61_crit_edge:                 ; preds = %for.inc59.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end61

for.inc59.13:                                     ; preds = %for.inc59.12
  %echo_index.14 = getelementptr i8, ptr %netdev, i32 2848
  %114 = ptrtoint ptr %echo_index.14 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %echo_index.14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %115)
  %cmp53.14 = icmp eq i32 %115, 16
  br i1 %cmp53.14, label %for.inc59.13.for.end61_crit_edge, label %for.inc59.14

for.inc59.13.for.end61_crit_edge:                 ; preds = %for.inc59.13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end61

for.inc59.14:                                     ; preds = %for.inc59.13
  %echo_index.15 = getelementptr i8, ptr %netdev, i32 2856
  %116 = ptrtoint ptr %echo_index.15 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %echo_index.15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %117)
  %cmp53.15 = icmp eq i32 %117, 16
  br i1 %cmp53.15, label %for.inc59.14.for.end61_crit_edge, label %for.inc59.14.if.then63_crit_edge

for.inc59.14.if.then63_crit_edge:                 ; preds = %for.inc59.14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then63

for.inc59.14.for.end61_crit_edge:                 ; preds = %for.inc59.14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end61

for.end61:                                        ; preds = %for.inc59.14.for.end61_crit_edge, %for.inc59.13.for.end61_crit_edge, %for.inc59.12.for.end61_crit_edge, %for.inc59.11.for.end61_crit_edge, %for.inc59.10.for.end61_crit_edge, %for.inc59.9.for.end61_crit_edge, %for.inc59.8.for.end61_crit_edge, %for.inc59.7.for.end61_crit_edge, %for.inc59.6.for.end61_crit_edge, %for.inc59.5.for.end61_crit_edge, %for.inc59.4.for.end61_crit_edge, %for.inc59.3.for.end61_crit_edge, %for.inc59.2.for.end61_crit_edge, %for.inc59.1.for.end61_crit_edge, %for.inc59.for.end61_crit_edge, %for.end.for.end61_crit_edge
  %i.1194.lcssa = phi i32 [ 0, %for.end.for.end61_crit_edge ], [ 1, %for.inc59.for.end61_crit_edge ], [ 2, %for.inc59.1.for.end61_crit_edge ], [ 3, %for.inc59.2.for.end61_crit_edge ], [ 4, %for.inc59.3.for.end61_crit_edge ], [ 5, %for.inc59.4.for.end61_crit_edge ], [ 6, %for.inc59.5.for.end61_crit_edge ], [ 7, %for.inc59.6.for.end61_crit_edge ], [ 8, %for.inc59.7.for.end61_crit_edge ], [ 9, %for.inc59.8.for.end61_crit_edge ], [ 10, %for.inc59.9.for.end61_crit_edge ], [ 11, %for.inc59.10.for.end61_crit_edge ], [ 12, %for.inc59.11.for.end61_crit_edge ], [ 13, %for.inc59.12.for.end61_crit_edge ], [ 14, %for.inc59.13.for.end61_crit_edge ], [ 15, %for.inc59.14.for.end61_crit_edge ]
  %arrayidx52 = getelementptr %struct.esd_usb2_net_priv, ptr %add.ptr.i, i32 0, i32 3, i32 %i.1194.lcssa
  %tobool62.not = icmp eq ptr %arrayidx52, null
  br i1 %tobool62.not, label %for.end61.if.then63_crit_edge, label %if.end64

for.end61.if.then63_crit_edge:                    ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then63

if.then63:                                        ; preds = %for.end61.if.then63_crit_edge, %for.inc59.14.if.then63_crit_edge
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.58) #15
  br label %releasebuf

if.end64:                                         ; preds = %for.end61
  %118 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %add.ptr.i, ptr %arrayidx52, align 4
  %echo_index66 = getelementptr inbounds %struct.esd_tx_urb_context, ptr %arrayidx52, i32 0, i32 1
  %119 = ptrtoint ptr %echo_index66 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %i.1194.lcssa, ptr %echo_index66, align 4
  %or67 = or i32 %i.1194.lcssa, -2147483648
  %hnd = getelementptr inbounds %struct.tx_msg, ptr %call6, i32 0, i32 4
  %120 = ptrtoint ptr %hnd to i32
  call void @__asan_storeN_noabort(i32 %120, i32 4)
  store i32 %or67, ptr %hnd, align 1
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %122, align 8
  %shl.i = shl i32 %124, 8
  %or72 = or i32 %shl.i, -1073676288
  %125 = ptrtoint ptr %call6 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %call6, align 1
  %conv75 = zext i8 %126 to i32
  %shl = shl nuw nsw i32 %conv75, 2
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 8
  %127 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %122, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 10
  %128 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %or72, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 14
  %129 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call6, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 19
  %130 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %shl, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 28
  %131 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @esd_usb2_write_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 27
  %132 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %arrayidx52, ptr %context4.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call3, i32 0, i32 13
  %133 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %transfer_flags, align 4
  %or76 = or i32 %134, 4
  store i32 %or76, ptr %transfer_flags, align 4
  %tx_submitted = getelementptr i8, ptr %netdev, i32 2620
  tail call void @usb_anchor_urb(ptr noundef nonnull %call3, ptr noundef %tx_submitted) #11
  %135 = ptrtoint ptr %echo_index66 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %echo_index66, align 4
  %call78 = tail call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %netdev, i32 noundef %136, i32 noundef 0) #11
  %active_tx_jobs = getelementptr i8, ptr %netdev, i32 2616
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_jobs, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %active_tx_jobs, i32 1, i32 3, i32 1) #11
  %137 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_tx_jobs, ptr %active_tx_jobs, i32 1, ptr elementtype(i32) %active_tx_jobs) #11, !srcloc !136
  %call.i.i183 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_tx_jobs, i32 noundef 4) #11
  %138 = ptrtoint ptr %active_tx_jobs to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %active_tx_jobs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %139)
  %cmp81 = icmp sgt i32 %139, 15
  br i1 %cmp81, label %if.then83, label %if.end64.if.end84_crit_edge

if.end64.if.end84_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.then83:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %140 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %141, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end64.if.end84_crit_edge
  %call85 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call3, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end96, label %if.then87

if.then87:                                        ; preds = %if.end84
  %142 = ptrtoint ptr %echo_index66 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %echo_index66, align 4
  tail call void @can_free_echo_skb(ptr noundef %netdev, i32 noundef %143, ptr noundef null) #11
  %call.i.i184 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_jobs, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %active_tx_jobs, i32 1, i32 3, i32 1) #11
  %144 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_tx_jobs, ptr %active_tx_jobs, i32 1, ptr elementtype(i32) %active_tx_jobs) #11, !srcloc !137
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call3) #11
  %tx_dropped90 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %145 = ptrtoint ptr %tx_dropped90 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %tx_dropped90, align 4
  %inc91 = add i32 %146, 1
  store i32 %inc91, ptr %tx_dropped90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call85)
  %cmp92 = icmp eq i32 %call85, -19
  br i1 %cmp92, label %if.then94, label %if.else

if.then94:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_device_detach(ptr noundef %netdev) #11
  br label %releasebuf

if.else:                                          ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.59, i32 noundef %call85) #15
  br label %releasebuf

if.end96:                                         ; preds = %if.end84
  %_tx.i.i186 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %147 = ptrtoint ptr %_tx.i.i186 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %_tx.i.i186, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %149 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %148, i32 0, i32 12
  %150 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %149)
  %cmp.not.i.i = icmp eq i32 %151, %149
  br i1 %cmp.not.i.i, label %if.end96.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end96.netif_trans_update.exit_crit_edge:       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  %152 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile i32 %149, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end96.netif_trans_update.exit_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %call3) #11
  br label %cleanup

releasebuf:                                       ; preds = %if.else, %if.then94, %if.then63
  %ret.0 = phi i32 [ 0, %if.then94 ], [ 0, %if.else ], [ 16, %if.then63 ]
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %1, align 4
  %155 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %154, i32 noundef 264, ptr noundef nonnull %call6, i32 noundef %156) #11
  br label %nobufmem

nobufmem:                                         ; preds = %releasebuf, %if.then8
  %ret.1 = phi i32 [ %ret.0, %releasebuf ], [ 0, %if.then8 ]
  tail call void @usb_free_urb(ptr noundef nonnull %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %nobufmem, %netif_trans_update.exit, %if.then4, %can_dropped_invalid_skb.exit
  %retval.0 = phi i32 [ 0, %netif_trans_update.exit ], [ 0, %can_dropped_invalid_skb.exit ], [ %ret.1, %nobufmem ], [ 0, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esd_usb2_read_bulk_callback(ptr noundef %urb) #2 align 64 {
entry:
  %cf.i.i = alloca ptr, align 4
  %cf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %3, label %do.end [
    i32 0, label %while.cond.preheader
    i32 -2, label %entry.cleanup78_crit_edge
    i32 -32, label %entry.cleanup78_crit_edge134
    i32 -71, label %entry.cleanup78_crit_edge135
    i32 -108, label %entry.cleanup78_crit_edge136
  ]

entry.cleanup78_crit_edge136:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup78

entry.cleanup78_crit_edge135:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup78

entry.cleanup78_crit_edge134:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup78

entry.cleanup78_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup78

while.cond.preheader:                             ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %net_count21 = getelementptr inbounds %struct.esd_usb2, ptr %1, i32 0, i32 3
  br label %while.cond

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %parent = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.43, i32 noundef %3) #15
  br label %resubmit_urb

while.cond:                                       ; preds = %sw.epilog37.while.cond_crit_edge, %while.cond.preheader
  %pos.0 = phi i32 [ %add, %sw.epilog37.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %9 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0, i32 %10)
  %cmp = icmp ult i32 %pos.0, %10
  br i1 %cmp, label %while.body, label %while.cond.resubmit_urb_crit_edge

while.cond.resubmit_urb_crit_edge:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %resubmit_urb

while.body:                                       ; preds = %while.cond
  %11 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transfer_buffer, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %pos.0
  %cmd = getelementptr inbounds %struct.header_msg, ptr %add.ptr, i32 0, i32 1
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cmd, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %14, label %while.body.sw.epilog37_crit_edge [
    i8 2, label %sw.bb4
    i8 3, label %sw.bb17
  ]

while.body.sw.epilog37_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog37

sw.bb4:                                           ; preds = %while.body
  %net = getelementptr inbounds %struct.rx_msg, ptr %add.ptr, i32 0, i32 2
  %16 = ptrtoint ptr %net to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %net, align 1
  %conv6 = zext i8 %17 to i32
  %18 = ptrtoint ptr %net_count21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %net_count21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv6)
  %cmp7.not = icmp sgt i32 %19, %conv6
  br i1 %cmp7.not, label %if.end, label %do.end11

do.end11:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %parent14 = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15, i32 1
  %22 = ptrtoint ptr %parent14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent14, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.47) #15
  br label %sw.epilog37

if.end:                                           ; preds = %sw.bb4
  %arrayidx = getelementptr %struct.esd_usb2, ptr %1, i32 0, i32 1, i32 %conv6
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %netdev.i = getelementptr inbounds %struct.esd_usb2_net_priv, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev.i, align 4
  %stats1.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #11
  %28 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !133
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 6
  %29 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i.i, align 4
  %31 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not.i = icmp eq i32 %31, 0
  br i1 %tobool.i.not.i, label %if.end.esd_usb2_rx_can_msg.exit_crit_edge, label %if.end.i

if.end.esd_usb2_rx_can_msg.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %esd_usb2_rx_can_msg.exit

if.end.i:                                         ; preds = %if.end
  %id4.i = getelementptr inbounds %struct.rx_msg, ptr %add.ptr, i32 0, i32 5
  %32 = ptrtoint ptr %id4.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %id4.i, align 1
  %34 = call i32 @llvm.bswap.i32(i32 %33) #11
  %and.i = and i32 %34, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i.i) #11
  %35 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i.i, align 4, !annotation !133
  %36 = and i32 %33, -225
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %36)
  %cmp.i.i = icmp eq i32 %36, 33554432
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then5.i.esd_usb2_rx_event.exit.i_crit_edge

if.then5.i.esd_usb2_rx_event.exit.i_crit_edge:    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %esd_usb2_rx_event.exit.i

if.then.i.i:                                      ; preds = %if.then5.i
  %data.i.i = getelementptr inbounds %struct.rx_msg, ptr %add.ptr, i32 0, i32 6
  %37 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %data.i.i, align 1
  %arrayidx7.i.i = getelementptr %struct.rx_msg, ptr %add.ptr, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx7.i.i, align 1
  %arrayidx10.i.i = getelementptr %struct.rx_msg, ptr %add.ptr, i32 0, i32 6, i32 2
  %41 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx10.i.i, align 1
  %arrayidx13.i.i = getelementptr %struct.rx_msg, ptr %add.ptr, i32 0, i32 6, i32 3
  %43 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx13.i.i, align 1
  %call.i.i = call ptr @alloc_can_err_skb(ptr noundef %27, ptr noundef nonnull %cf.i.i) #11
  %cmp15.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end.i.i

if.then16.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 36, i32 6
  %45 = ptrtoint ptr %rx_dropped.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_dropped.i.i, align 4
  %inc.i.i = add i32 %46, 1
  store i32 %inc.i.i, ptr %rx_dropped.i.i, align 4
  br label %esd_usb2_rx_event.exit.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %old_state.i.i = getelementptr inbounds %struct.esd_usb2_net_priv, ptr %25, i32 0, i32 7
  %47 = ptrtoint ptr %old_state.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %old_state.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %48)
  %cmp18.not.i.i = icmp eq i8 %38, %48
  br i1 %cmp18.not.i.i, label %if.else.i.i, label %if.then20.i.i

if.then20.i.i:                                    ; preds = %if.end.i.i
  %49 = ptrtoint ptr %old_state.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %38, ptr %old_state.i.i, align 4
  %50 = and i8 %38, -64
  %51 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %50, label %sw.default.i.i [
    i8 -64, label %sw.bb.i.i
    i8 64, label %sw.bb28.i.i
    i8 -128, label %sw.bb34.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %state24.i.i = getelementptr inbounds %struct.can_priv, ptr %25, i32 0, i32 21
  %52 = ptrtoint ptr %state24.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %state24.i.i, align 4
  %53 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cf.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 8
  %or.i.i = or i32 %56, 64
  store i32 %or.i.i, ptr %54, align 8
  %bus_off.i.i = getelementptr inbounds %struct.can_priv, ptr %25, i32 0, i32 1, i32 3
  %57 = ptrtoint ptr %bus_off.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bus_off.i.i, align 4
  %inc26.i.i = add i32 %58, 1
  store i32 %inc26.i.i, ptr %bus_off.i.i, align 4
  %59 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %netdev.i, align 4
  call void @can_bus_off(ptr noundef %60) #11
  br label %if.end105.i.i

sw.bb28.i.i:                                      ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %state30.i.i = getelementptr inbounds %struct.can_priv, ptr %25, i32 0, i32 21
  %61 = ptrtoint ptr %state30.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %state30.i.i, align 4
  %error_warning.i.i = getelementptr inbounds %struct.can_priv, ptr %25, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %error_warning.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %error_warning.i.i, align 4
  %inc33.i.i = add i32 %63, 1
  store i32 %inc33.i.i, ptr %error_warning.i.i, align 4
  br label %if.end105.i.i

sw.bb34.i.i:                                      ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %state36.i.i = getelementptr inbounds %struct.can_priv, ptr %25, i32 0, i32 21
  %64 = ptrtoint ptr %state36.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %state36.i.i, align 4
  %error_passive.i.i = getelementptr inbounds %struct.can_priv, ptr %25, i32 0, i32 1, i32 2
  %65 = ptrtoint ptr %error_passive.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %error_passive.i.i, align 4
  %inc39.i.i = add i32 %66, 1
  store i32 %inc39.i.i, ptr %error_passive.i.i, align 4
  br label %if.end105.i.i

sw.default.i.i:                                   ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %state41.i.i = getelementptr inbounds %struct.can_priv, ptr %25, i32 0, i32 21
  %67 = ptrtoint ptr %state41.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %state41.i.i, align 4
  br label %if.end105.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %can_stats43.i.i = getelementptr inbounds %struct.can_priv, ptr %25, i32 0, i32 1
  %68 = ptrtoint ptr %can_stats43.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %can_stats43.i.i, align 4
  %inc44.i.i = add i32 %69, 1
  store i32 %inc44.i.i, ptr %can_stats43.i.i, align 4
  %rx_errors.i.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 36, i32 4
  %70 = ptrtoint ptr %rx_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_errors.i.i, align 4
  %inc45.i.i = add i32 %71, 1
  store i32 %inc45.i.i, ptr %rx_errors.i.i, align 4
  %72 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cf.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 8
  %or47.i.i = or i32 %75, 136
  store i32 %or47.i.i, ptr %73, align 8
  %and49.i.i = and i8 %40, -64
  %76 = zext i8 %and49.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %and49.i.i, label %sw.default68.i.i [
    i8 0, label %sw.bb50.i.i
    i8 64, label %sw.bb56.i.i
    i8 -128, label %sw.bb62.i.i
  ]

sw.bb50.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cf.i.i, align 4
  %arrayidx52.i.i = getelementptr %struct.can_frame, ptr %78, i32 0, i32 5, i32 2
  %79 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx52.i.i, align 2
  %81 = or i8 %80, 1
  store i8 %81, ptr %arrayidx52.i.i, align 2
  br label %sw.epilog74.i.i

sw.bb56.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cf.i.i, align 4
  %arrayidx58.i.i = getelementptr %struct.can_frame, ptr %83, i32 0, i32 5, i32 2
  %84 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx58.i.i, align 2
  %86 = or i8 %85, 2
  store i8 %86, ptr %arrayidx58.i.i, align 2
  br label %sw.epilog74.i.i

sw.bb62.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cf.i.i, align 4
  %arrayidx64.i.i = getelementptr %struct.can_frame, ptr %88, i32 0, i32 5, i32 2
  %89 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx64.i.i, align 2
  %91 = or i8 %90, 4
  store i8 %91, ptr %arrayidx64.i.i, align 2
  br label %sw.epilog74.i.i

sw.default68.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and70.i.i = and i8 %40, 31
  %92 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cf.i.i, align 4
  %arrayidx73.i.i = getelementptr %struct.can_frame, ptr %93, i32 0, i32 5, i32 3
  %94 = ptrtoint ptr %arrayidx73.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %and70.i.i, ptr %arrayidx73.i.i, align 1
  br label %sw.epilog74.i.i

sw.epilog74.i.i:                                  ; preds = %sw.default68.i.i, %sw.bb62.i.i, %sw.bb56.i.i, %sw.bb50.i.i
  %95 = and i8 %40, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i.i = icmp eq i8 %95, 0
  br i1 %tobool.not.i.i, label %if.then77.i.i, label %sw.epilog74.i.i.if.end83.i.i_crit_edge

sw.epilog74.i.i.if.end83.i.i_crit_edge:           ; preds = %sw.epilog74.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83.i.i

if.then77.i.i:                                    ; preds = %sw.epilog74.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cf.i.i, align 4
  %arrayidx79.i.i = getelementptr %struct.can_frame, ptr %97, i32 0, i32 5, i32 2
  %98 = ptrtoint ptr %arrayidx79.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx79.i.i, align 2
  %100 = or i8 %99, -128
  store i8 %100, ptr %arrayidx79.i.i, align 2
  br label %if.end83.i.i

if.end83.i.i:                                     ; preds = %if.then77.i.i, %sw.epilog74.i.i.if.end83.i.i_crit_edge
  %state85.i.i = getelementptr inbounds %struct.can_priv, ptr %25, i32 0, i32 21
  %101 = ptrtoint ptr %state85.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %state85.i.i, align 4
  %.off.i.i = add i32 %102, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %if.then92.i.i, label %if.end83.i.i.if.end100.i.i_crit_edge

if.end83.i.i.if.end100.i.i_crit_edge:             ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100.i.i

if.then92.i.i:                                    ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %42)
  %cmp95.i.i = icmp ugt i8 %44, %42
  %conv97.i.i = select i1 %cmp95.i.i, i8 32, i8 16
  %103 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cf.i.i, align 4
  %arrayidx99.i.i = getelementptr %struct.can_frame, ptr %104, i32 0, i32 5, i32 1
  %105 = ptrtoint ptr %arrayidx99.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv97.i.i, ptr %arrayidx99.i.i, align 1
  br label %if.end100.i.i

if.end100.i.i:                                    ; preds = %if.then92.i.i, %if.end83.i.i.if.end100.i.i_crit_edge
  %106 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cf.i.i, align 4
  %arrayidx102.i.i = getelementptr %struct.can_frame, ptr %107, i32 0, i32 5, i32 6
  %108 = ptrtoint ptr %arrayidx102.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %44, ptr %arrayidx102.i.i, align 2
  %109 = load ptr, ptr %cf.i.i, align 4
  %arrayidx104.i.i = getelementptr %struct.can_frame, ptr %109, i32 0, i32 5, i32 7
  %110 = ptrtoint ptr %arrayidx104.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %42, ptr %arrayidx104.i.i, align 1
  br label %if.end105.i.i

if.end105.i.i:                                    ; preds = %if.end100.i.i, %sw.default.i.i, %sw.bb34.i.i, %sw.bb28.i.i, %sw.bb.i.i
  %conv106.i.i = zext i8 %44 to i16
  %bec.i.i = getelementptr inbounds %struct.esd_usb2_net_priv, ptr %25, i32 0, i32 8
  %111 = ptrtoint ptr %bec.i.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %conv106.i.i, ptr %bec.i.i, align 2
  %conv108.i.i = zext i8 %42 to i16
  %rxerr110.i.i = getelementptr inbounds %struct.esd_usb2_net_priv, ptr %25, i32 0, i32 8, i32 1
  %112 = ptrtoint ptr %rxerr110.i.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv108.i.i, ptr %rxerr110.i.i, align 2
  %call111.i.i = call i32 @netif_rx(ptr noundef nonnull %call.i.i) #11
  br label %esd_usb2_rx_event.exit.i

esd_usb2_rx_event.exit.i:                         ; preds = %if.end105.i.i, %if.then16.i.i, %if.then5.i.esd_usb2_rx_event.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i.i) #11
  br label %esd_usb2_rx_can_msg.exit

if.else.i:                                        ; preds = %if.end.i
  %call7.i = call ptr @alloc_can_skb(ptr noundef %27, ptr noundef nonnull %cf.i) #11
  %cmp.i = icmp eq ptr %call7.i, null
  br i1 %cmp.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 36, i32 6
  %113 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rx_dropped.i, align 4
  %inc.i = add i32 %114, 1
  store i32 %inc.i, ptr %rx_dropped.i, align 4
  br label %esd_usb2_rx_can_msg.exit

if.end9.i:                                        ; preds = %if.else.i
  %and10.i = and i32 %34, 536870911
  %115 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cf.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %and10.i, ptr %116, align 8
  %118 = load ptr, ptr %cf.i, align 4
  %dlc.i = getelementptr inbounds %struct.rx_msg, ptr %add.ptr, i32 0, i32 3
  %119 = ptrtoint ptr %dlc.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %dlc.i, align 1
  %121 = and i8 %120, -17
  %ctrlmode.i = getelementptr inbounds %struct.can_priv, ptr %25, i32 0, i32 22
  %122 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ctrlmode.i, align 4
  %and.i.i = and i32 %123, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i60.i = icmp ne i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %121)
  %cmp.i61.i = icmp ugt i8 %121, 8
  %or.cond.i.i = and i1 %cmp.i61.i, %tobool.not.i60.i
  br i1 %or.cond.i.i, label %if.then.i62.i, label %if.end9.i.can_frame_set_cc_len.exit.i_crit_edge

if.end9.i.can_frame_set_cc_len.exit.i_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %can_frame_set_cc_len.exit.i

if.then.i62.i:                                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %len8_dlc.i.i = getelementptr inbounds %struct.can_frame, ptr %118, i32 0, i32 4
  %124 = ptrtoint ptr %len8_dlc.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %121, ptr %len8_dlc.i.i, align 1
  br label %can_frame_set_cc_len.exit.i

can_frame_set_cc_len.exit.i:                      ; preds = %if.then.i62.i, %if.end9.i.can_frame_set_cc_len.exit.i_crit_edge
  %125 = call i8 @llvm.umin.i8(i8 %121, i8 8) #11
  %126 = getelementptr inbounds %struct.can_frame, ptr %118, i32 0, i32 1
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %125, ptr %126, align 4
  %and14.i = and i32 %34, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %can_frame_set_cc_len.exit.i.if.end18.i_crit_edge, label %if.then16.i

can_frame_set_cc_len.exit.i.if.end18.i_crit_edge: ; preds = %can_frame_set_cc_len.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

if.then16.i:                                      ; preds = %can_frame_set_cc_len.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %118, align 8
  %or.i = or i32 %129, -2147483648
  store i32 %or.i, ptr %118, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %can_frame_set_cc_len.exit.i.if.end18.i_crit_edge
  %130 = ptrtoint ptr %dlc.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %dlc.i, align 1
  %132 = and i8 %131, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool23.not.i = icmp eq i8 %132, 0
  %133 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cf.i, align 4
  br i1 %tobool23.not.i, label %for.cond.preheader.i, label %if.then24.i

for.cond.preheader.i:                             ; preds = %if.end18.i
  %135 = getelementptr inbounds %struct.can_frame, ptr %134, i32 0, i32 1
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %135, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %cmp2965.not.i = icmp eq i8 %137, 0
  br i1 %cmp2965.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.then24.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %138 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %134, align 8
  %or26.i = or i32 %139, 1073741824
  store i32 %or26.i, ptr %134, align 8
  br label %if.end36.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %140 = phi ptr [ %145, %for.body.i.for.body.i_crit_edge ], [ %134, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.066.i = phi i32 [ %inc34.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rx_msg, ptr %add.ptr, i32 0, i32 6, i32 %i.066.i
  %141 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx.i, align 1
  %arrayidx33.i = getelementptr %struct.can_frame, ptr %140, i32 0, i32 5, i32 %i.066.i
  %143 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %arrayidx33.i, align 1
  %inc34.i = add nuw nsw i32 %i.066.i, 1
  %144 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cf.i, align 4
  %146 = getelementptr inbounds %struct.can_frame, ptr %145, i32 0, i32 1
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %146, align 4
  %conv28.i = zext i8 %148 to i32
  %cmp29.i = icmp ult i32 %inc34.i, %conv28.i
  br i1 %cmp29.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i.loopexit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i.loopexit:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv28.i.le = zext i8 %148 to i32
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %conv28.i.le, %for.end.i.loopexit ]
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 36, i32 2
  %149 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %rx_bytes.i, align 4
  %add.i = add i32 %150, %.lcssa.i
  store i32 %add.i, ptr %rx_bytes.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %for.end.i, %if.then24.i
  %151 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %stats1.i, align 4
  %inc37.i = add i32 %152, 1
  store i32 %inc37.i, ptr %stats1.i, align 4
  %call38.i = call i32 @netif_rx(ptr noundef nonnull %call7.i) #11
  br label %esd_usb2_rx_can_msg.exit

esd_usb2_rx_can_msg.exit:                         ; preds = %if.end36.i, %if.then8.i, %esd_usb2_rx_event.exit.i, %if.end.esd_usb2_rx_can_msg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #11
  br label %sw.epilog37

sw.bb17:                                          ; preds = %while.body
  %net19 = getelementptr inbounds %struct.tx_done_msg, ptr %add.ptr, i32 0, i32 2
  %153 = ptrtoint ptr %net19 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %net19, align 1
  %conv20 = zext i8 %154 to i32
  %155 = ptrtoint ptr %net_count21 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %net_count21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %156, i32 %conv20)
  %cmp22.not = icmp sgt i32 %156, %conv20
  br i1 %cmp22.not, label %if.end31, label %do.end27

do.end27:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #13
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %1, align 4
  %parent30 = getelementptr inbounds %struct.usb_device, ptr %158, i32 0, i32 15, i32 1
  %159 = ptrtoint ptr %parent30 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %parent30, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.47) #15
  br label %sw.epilog37

if.end31:                                         ; preds = %sw.bb17
  %arrayidx36 = getelementptr %struct.esd_usb2, ptr %1, i32 0, i32 1, i32 %conv20
  %161 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx36, align 4
  %netdev.i119 = getelementptr inbounds %struct.esd_usb2_net_priv, ptr %162, i32 0, i32 5
  %163 = ptrtoint ptr %netdev.i119 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %netdev.i119, align 4
  %state.i.i120 = getelementptr inbounds %struct.net_device, ptr %164, i32 0, i32 6
  %165 = ptrtoint ptr %state.i.i120 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile i32, ptr %state.i.i120, align 4
  %167 = and i32 %166, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool.i.not.i121 = icmp eq i32 %167, 0
  br i1 %tobool.i.not.i121, label %if.end31.sw.epilog37_crit_edge, label %if.end.i124

if.end31.sw.epilog37_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog37

if.end.i124:                                      ; preds = %if.end31
  %hnd.i = getelementptr inbounds %struct.tx_done_msg, ptr %add.ptr, i32 0, i32 4
  %168 = ptrtoint ptr %hnd.i to i32
  call void @__asan_loadN_noabort(i32 %168, i32 4)
  %169 = load i32, ptr %hnd.i, align 1
  %and.i122 = and i32 %169, 15
  %status.i = getelementptr inbounds %struct.tx_done_msg, ptr %add.ptr, i32 0, i32 3
  %170 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool.not.i123 = icmp eq i8 %171, 0
  br i1 %tobool.not.i123, label %if.then6.i, label %if.else.i128

if.then6.i:                                       ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #13
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %164, i32 0, i32 36, i32 1
  %172 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %tx_packets.i, align 4
  %inc.i125 = add i32 %173, 1
  store i32 %inc.i125, ptr %tx_packets.i, align 4
  %echo_index.i = getelementptr %struct.esd_usb2_net_priv, ptr %162, i32 0, i32 3, i32 %and.i122, i32 1
  %174 = ptrtoint ptr %echo_index.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %echo_index.i, align 4
  %call7.i126 = call i32 @can_get_echo_skb(ptr noundef %164, i32 noundef %175, ptr noundef null) #11
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %164, i32 0, i32 36, i32 3
  %176 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %tx_bytes.i, align 4
  %add.i127 = add i32 %177, %call7.i126
  store i32 %add.i127, ptr %tx_bytes.i, align 4
  br label %if.end10.i

if.else.i128:                                     ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #13
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %164, i32 0, i32 36, i32 5
  %178 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %tx_errors.i, align 4
  %inc8.i = add i32 %179, 1
  store i32 %inc8.i, ptr %tx_errors.i, align 4
  %echo_index9.i = getelementptr %struct.esd_usb2_net_priv, ptr %162, i32 0, i32 3, i32 %and.i122, i32 1
  %180 = ptrtoint ptr %echo_index9.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %echo_index9.i, align 4
  call void @can_free_echo_skb(ptr noundef %164, i32 noundef %181, ptr noundef null) #11
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i128, %if.then6.i
  %echo_index11.i = getelementptr %struct.esd_usb2_net_priv, ptr %162, i32 0, i32 3, i32 %and.i122, i32 1
  %182 = ptrtoint ptr %echo_index11.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 16, ptr %echo_index11.i, align 4
  %active_tx_jobs.i = getelementptr inbounds %struct.esd_usb2_net_priv, ptr %162, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %active_tx_jobs.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %active_tx_jobs.i, i32 1, i32 3, i32 1) #11
  %183 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_tx_jobs.i, ptr %active_tx_jobs.i, i32 1, ptr elementtype(i32) %active_tx_jobs.i) #11, !srcloc !137
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %164, i32 0, i32 103
  %184 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %_tx.i.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %185) #11
  br label %sw.epilog37

sw.epilog37:                                      ; preds = %if.end10.i, %if.end31.sw.epilog37_crit_edge, %do.end27, %esd_usb2_rx_can_msg.exit, %do.end11, %while.body.sw.epilog37_crit_edge
  %186 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %add.ptr, align 1
  %conv39 = zext i8 %187 to i32
  %shl = shl nuw nsw i32 %conv39, 2
  %add = add i32 %shl, %pos.0
  %188 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %actual_length, align 4
  %cmp41 = icmp ugt i32 %add, %189
  br i1 %cmp41, label %cleanup.thread, label %sw.epilog37.while.cond_crit_edge

sw.epilog37.while.cond_crit_edge:                 ; preds = %sw.epilog37
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

cleanup.thread:                                   ; preds = %sw.epilog37
  call void @__sanitizer_cov_trace_pc() #13
  %190 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %1, align 4
  %parent49 = getelementptr inbounds %struct.usb_device, ptr %191, i32 0, i32 15, i32 1
  %192 = ptrtoint ptr %parent49 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %parent49, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %193, ptr noundef nonnull @.str.47) #15
  br label %resubmit_urb

resubmit_urb:                                     ; preds = %cleanup.thread, %while.cond.resubmit_urb_crit_edge, %do.end
  %194 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %1, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %195, align 8
  %shl.i = shl i32 %197, 8
  %or53 = or i32 %shl.i, -1073708928
  %dev1.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %198 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %195, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %199 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %or53, ptr %pipe2.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %200 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 1024, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %201 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr @esd_usb2_read_bulk_callback, ptr %complete.i, align 4
  %202 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %1, ptr %context, align 4
  %call55 = call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #11
  %203 = zext i32 %call55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %203, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call55, label %do.end72 [
    i32 -19, label %for.cond.preheader
    i32 0, label %resubmit_urb.cleanup78_crit_edge
  ]

resubmit_urb.cleanup78_crit_edge:                 ; preds = %resubmit_urb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup78

for.cond.preheader:                               ; preds = %resubmit_urb
  %net_count59 = getelementptr inbounds %struct.esd_usb2, ptr %1, i32 0, i32 3
  %204 = ptrtoint ptr %net_count59 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %net_count59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %cmp60132 = icmp sgt i32 %205, 0
  br i1 %cmp60132, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup78_crit_edge

for.cond.preheader.cleanup78_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup78

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0133 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx63 = getelementptr %struct.esd_usb2, ptr %1, i32 0, i32 1, i32 %i.0133
  %206 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %arrayidx63, align 4
  %tobool.not = icmp eq ptr %207, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then64

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then64:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %netdev = getelementptr inbounds %struct.esd_usb2_net_priv, ptr %207, i32 0, i32 5
  %208 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %netdev, align 4
  call void @netif_device_detach(ptr noundef %209) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then64, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0133, 1
  %210 = ptrtoint ptr %net_count59 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %net_count59, align 4
  %cmp60 = icmp slt i32 %inc, %211
  br i1 %cmp60, label %for.inc.for.body_crit_edge, label %for.inc.cleanup78_crit_edge

for.inc.cleanup78_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup78

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.end72:                                         ; preds = %resubmit_urb
  call void @__sanitizer_cov_trace_pc() #13
  %212 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %1, align 4
  %parent75 = getelementptr inbounds %struct.usb_device, ptr %213, i32 0, i32 15, i32 1
  %214 = ptrtoint ptr %parent75 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %parent75, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %215, ptr noundef nonnull @.str.54, i32 noundef %call55) #15
  br label %cleanup78

cleanup78:                                        ; preds = %do.end72, %for.inc.cleanup78_crit_edge, %for.cond.preheader.cleanup78_crit_edge, %resubmit_urb.cleanup78_crit_edge, %entry.cleanup78_crit_edge, %entry.cleanup78_crit_edge134, %entry.cleanup78_crit_edge135, %entry.cleanup78_crit_edge136
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
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_free_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esd_usb2_write_bulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !135

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 459, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %netdev23 = getelementptr inbounds %struct.esd_usb2_net_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %netdev23 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev23, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 15
  %10 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %7, i32 noundef 264, ptr noundef %9, i32 noundef %11) #11
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not = icmp eq i32 %14, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end25

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool26.not = icmp eq i32 %16, 0
  br i1 %tobool26.not, label %if.end25.if.end29_crit_edge, label %if.then27

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.61, i32 noundef %16) #15
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end25.if.end29_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %17 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 12
  %20 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %19)
  %cmp.not.i.i = icmp eq i32 %21, %19
  br i1 %cmp.not.i.i, label %if.end29.cleanup_crit_edge, label %do.body5.i.i

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body5.i.i:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %19, ptr %trans_start.i.i, align 16
  br label %cleanup

cleanup:                                          ; preds = %do.body5.i.i, %if.end29.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !45, !46, !48, !50, !51, !53, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !95, !97, !98, !99, !101, !102, !104, !105, !107, !108, !109, !111, !113, !115, !117, !119, !120, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__UNIQUE_ID_author464, !1, !"__UNIQUE_ID_author464", i1 false, i1 false}
!1 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_description465, !3, !"__UNIQUE_ID_description465", i1 false, i1 false}
!3 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 18, i32 1}
!4 = !{ptr @__UNIQUE_ID_file466, !5, !"__UNIQUE_ID_file466", i1 false, i1 false}
!5 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 19, i32 1}
!6 = !{ptr @__UNIQUE_ID_license467, !5, !"__UNIQUE_ID_license467", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_esd_usb2__468_1154_esd_usb2_driver_init6, !8, !"__initcall__kmod_esd_usb2__468_1154_esd_usb2_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 1154, i32 1}
!9 = !{ptr @__exitcall_esd_usb2_driver_exit, !8, !"__exitcall_esd_usb2_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @esd_usb2_driver, !12, !"esd_usb2_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 1147, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 1081, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @esd_usb2_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @esd_usb2_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 1087, i32 3}
!23 = !{ptr @esd_usb2_probe._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @esd_usb2_probe._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 1095, i32 3}
!27 = !{ptr @esd_usb2_probe._entry.9, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @esd_usb2_probe._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 1099, i32 3}
!31 = !{ptr @esd_usb2_probe._entry.12, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @esd_usb2_probe._entry_ptr.14, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 1103, i32 3}
!35 = !{ptr @esd_usb2_probe._entry.15, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @esd_usb2_probe._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @init_usb_anchor.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @init_usb_anchor.__key.19, !41, !"__key", i1 false, i1 false}
!41 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 488, i32 8}
!45 = !{ptr @dev_attr_firmware, !44, !"dev_attr_firmware", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 483, i32 22}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 501, i32 8}
!50 = !{ptr @dev_attr_hardware, !49, !"dev_attr_hardware", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 511, i32 8}
!53 = !{ptr @dev_attr_nets, !52, !"dev_attr_nets", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 509, i32 22}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 985, i32 3}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @esd_usb2_probe_one_net._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @esd_usb2_probe_one_net._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 1028, i32 3}
!63 = !{ptr @esd_usb2_probe_one_net._entry.28, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @esd_usb2_probe_one_net._entry_ptr.30, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 1035, i32 22}
!67 = !{ptr @esd_usb2_bittiming_const, !68, !"esd_usb2_bittiming_const", i1 false, i1 false}
!68 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 889, i32 41}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 942, i32 22}
!71 = !{ptr @esd_usb2_netdev_ops, !72, !"esd_usb2_netdev_ops", i1 false, i1 false}
!72 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 882, i32 36}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 703, i32 23}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 560, i32 4}
!77 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @esd_usb2_setup_rx_urbs._entry, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @esd_usb2_setup_rx_urbs._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 595, i32 3}
!83 = !{ptr @esd_usb2_setup_rx_urbs._entry.37, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @esd_usb2_setup_rx_urbs._entry_ptr.39, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 601, i32 3}
!87 = !{ptr @esd_usb2_setup_rx_urbs._entry.40, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @esd_usb2_setup_rx_urbs._entry_ptr.42, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 391, i32 3}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @esd_usb2_read_bulk_callback._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @esd_usb2_read_bulk_callback._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 404, i32 5}
!97 = !{ptr @esd_usb2_read_bulk_callback._entry.46, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @esd_usb2_read_bulk_callback._entry_ptr.48, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @esd_usb2_read_bulk_callback._entry.49, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 413, i32 5}
!101 = !{ptr @esd_usb2_read_bulk_callback._entry_ptr.50, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @esd_usb2_read_bulk_callback._entry.51, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 425, i32 4}
!104 = !{ptr @esd_usb2_read_bulk_callback._entry_ptr.52, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 442, i32 3}
!107 = !{ptr @esd_usb2_read_bulk_callback._entry.53, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @esd_usb2_read_bulk_callback._entry_ptr.55, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 860, i32 22}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 869, i32 22}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 778, i32 23}
!115 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 817, i32 24}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!119 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 472, i32 23}
!122 = !{ptr @esd_usb2_table, !123, !"esd_usb2_table", i1 false, i1 false}
!123 = !{!"../drivers/net/can/usb/esd_usb2.c", i32 174, i32 29}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{!"auto-init"}
!134 = !{!"branch_weights", i32 2000, i32 1}
!135 = !{!"branch_weights", i32 1, i32 2000}
!136 = !{i64 2148476500, i64 2148476526, i64 2148476555, i64 2148476589, i64 2148476620, i64 2148476643}
!137 = !{i64 2148478965, i64 2148478991, i64 2148479020, i64 2148479054, i64 2148479085, i64 2148479108}
