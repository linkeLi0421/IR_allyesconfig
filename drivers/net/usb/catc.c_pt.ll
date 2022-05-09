; ModuleID = '/llk/IR_all_yes/drivers/net/usb/catc.c_pt.bc'
source_filename = "../drivers/net/usb/catc.c"
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
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.catc = type { ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, [2 x [23070 x i8]], [23070 x i8], [2 x i8], [64 x i8], %struct.usb_ctrlrequest, %struct.timer_list, [8 x i8], [4 x i16], i32, [64 x i8], [16 x %struct.ctrl_queue], ptr, ptr, ptr, ptr, i8, [2 x i8], %struct.atomic_t }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.ctrl_queue = type { i8, i8, i16, i16, ptr, i32, ptr }
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
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }

@__UNIQUE_ID_author344 = internal constant [45 x i8] c"catc.author=Vojtech Pavlik <vojtech@suse.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description345 = internal constant [58 x i8] c"catc.description=CATC EL1210A NetMate USB Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file346 = internal constant [31 x i8] c"catc.file=drivers/net/usb/catc\00", section ".modinfo", align 1
@__UNIQUE_ID_license347 = internal constant [17 x i8] c"catc.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_catc__370_981_catc_driver_init6 = internal global ptr @catc_driver_init, section ".initcall6.init", align 4
@catc_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @driver_name, ptr @catc_probe, ptr @catc_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @catc_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_catc_driver_exit = internal global ptr @catc_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"catc\00", [27 x i8] zeroinitializer }, align 32
@driver_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"catc\00", [27 x i8] zeroinitializer }, align 32
@catc_id_table = internal constant { [4 x %struct.usb_device_id], [32 x i8] } { [4 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1059, i16 10, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1059, i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2257, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@catc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 782, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't set altsetting 1.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"catc_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/net/usb/catc.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@catc_probe._entry_ptr = internal global ptr @catc_probe._entry, section ".printk_index", align 4
@catc_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @catc_open, ptr @catc_stop, ptr @catc_start_xmit, ptr null, ptr null, ptr null, ptr @catc_set_multicast_list, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @catc_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @catc_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @catc_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@catc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&catc->tx_lock\00", [17 x i8] zeroinitializer }, align 32
@catc_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&catc->ctrl_lock\00", [47 x i8] zeroinitializer }, align 32
@catc_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&catc->timer)\00", [17 x i8] zeroinitializer }, align 32
@catc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 811, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No free urbs available.\0A\00", [39 x i8] zeroinitializer }, align 32
@catc_probe._entry_ptr.13 = internal global ptr @catc_probe._entry.11, section ".printk_index", align 4
@catc_probe.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 0, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Testing for f5u011\0A\00", [44 x i8] zeroinitializer }, align 32
@catc_probe.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 0, i8 -45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Checking memory size\0A\00", [42 x i8] zeroinitializer }, align 32
@catc_probe.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.16, i8 0, i8 -41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"64k Memory\0A\00", [20 x i8] zeroinitializer }, align 32
@catc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 866, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Couldn't detect memory size, assuming 32k\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@catc_probe._entry_ptr.20 = internal global ptr @catc_probe._entry.17, section ".printk_index", align 4
@catc_probe.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.21, i8 0, i8 -39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"32k Memory\0A\00", [20 x i8] zeroinitializer }, align 32
@catc_probe.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.22, i8 0, i8 -37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Getting MAC from SEEROM.\0A\00", [38 x i8] zeroinitializer }, align 32
@catc_probe.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.23, i8 0, i8 -36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Setting MAC into registers.\0A\00", [35 x i8] zeroinitializer }, align 32
@catc_probe.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.24, i8 0, i8 -35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Filling the multicast list.\0A\00", [35 x i8] zeroinitializer }, align 32
@catc_probe.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.25, i8 0, i8 -33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Clearing error counters.\0A\00", [38 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@catc_probe.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.26, i8 0, i8 -31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Enabling.\0A\00", [21 x i8] zeroinitializer }, align 32
@catc_probe.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.27, i8 0, i8 -30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Performing reset\0A\00", [46 x i8] zeroinitializer }, align 32
@catc_probe.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.28, i8 0, i8 -28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Setting RX Mode\0A\00", [47 x i8] zeroinitializer }, align 32
@catc_probe.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.29, i8 0, i8 -27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Init done.\0A\00", [20 x i8] zeroinitializer }, align 32
@catc_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: %s USB Ethernet at usb-%s-%s, %pM.\0A\00", [54 x i8] zeroinitializer }, align 32
@catc_probe._entry_ptr.32 = internal global ptr @catc_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Belkin F5U011\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CATC EL1210A NetMate\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@catc_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 722, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"submit(irq_urb) status %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"catc_open\00", [22 x i8] zeroinitializer }, align 32
@catc_open._entry_ptr = internal global ptr @catc_open._entry, section ".printk_index", align 4
@catc_tx_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 363, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"submit(tx_urb), status %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"catc_tx_run\00", [20 x i8] zeroinitializer }, align 32
@catc_tx_run._entry_ptr = internal global ptr @catc_tx_run._entry, section ".printk_index", align 4
@catc_set_multicast_list.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 -90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"catc_set_multicast_list\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Setting RX mode to %2.2X %2.2X\0A\00", [32 x i8] zeroinitializer }, align 32
@catc_ctrl_async._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 555, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ctrl queue full\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"catc_ctrl_async\00", [16 x i8] zeroinitializer }, align 32
@catc_ctrl_async._entry_ptr = internal global ptr @catc_ctrl_async._entry, section ".printk_index", align 4
@catc_ctrl_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 495, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"submit(ctrl_urb) status %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"catc_ctrl_run\00", [18 x i8] zeroinitializer }, align 32
@catc_ctrl_run._entry_ptr = internal global ptr @catc_ctrl_run._entry, section ".printk_index", align 4
@catc_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 454, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Transmit timed out.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"catc_tx_timeout\00", [16 x i8] zeroinitializer }, align 32
@catc_tx_timeout._entry_ptr = internal global ptr @catc_tx_timeout._entry, section ".printk_index", align 4
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v2.8\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@catc_ctrl_done.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"catc_ctrl_done\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ctrl_done, status %d, len %d.\0A\00", [33 x i8] zeroinitializer }, align 32
@catc_tx_done.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"catc_tx_done\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Tx Reset.\0A\00", [21 x i8] zeroinitializer }, align 32
@catc_tx_done.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.53, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tx_done, status %d, length %d\0A\00", [33 x i8] zeroinitializer }, align 32
@catc_rx_done.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.3, ptr @.str.55, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"catc_rx_done\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rx_done, status %d, length %d\0A\00", [33 x i8] zeroinitializer }, align 32
@catc_rx_done.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.3, ptr @.str.56, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"getting extra packet\0A\00", [42 x i8] zeroinitializer }, align 32
@catc_rx_done.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.3, ptr @.str.57, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"submit(rx_urb) status %d\0A\00", [38 x i8] zeroinitializer }, align 32
@catc_irq_done.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.3, ptr @.str.59, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"catc_irq_done\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"irq_done, status %d, data %02x %02x.\0A\00", [58 x i8] zeroinitializer }, align 32
@catc_irq_done.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.3, ptr @.str.60, i8 0, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"link ok\0A\00", [23 x i8] zeroinitializer }, align 32
@catc_irq_done.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.3, ptr @.str.61, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"link bad\0A\00", [22 x i8] zeroinitializer }, align 32
@catc_irq_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 333, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@catc_irq_done._entry_ptr = internal global ptr @catc_irq_done._entry, section ".printk_index", align 4
@catc_irq_done._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.3, i32 343, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"can't resubmit intr, %s-%s, status %d\0A\00", [57 x i8] zeroinitializer }, align 32
@catc_irq_done._entry_ptr.64 = internal global ptr @catc_irq_done._entry.62, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 305419896, i64 2271560481]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967192]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 8, i64 144, i64 160]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.68 = internal global [6 x i64] [i64 4, i64 16, i64 105, i64 107, i64 109, i64 111]
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"catc_driver\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 973, i32 26 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 981, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 53, i32 19 }
@___asan_gen_.78 = private unnamed_addr constant [14 x i8] c"catc_id_table\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 964, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 782, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [16 x i8] c"catc_netdev_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 751, i32 36 }
@___asan_gen_.102 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 704, i32 33 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 800, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 801, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 803, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 811, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 820, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 844, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 862, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 865, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 871, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 877, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 882, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 887, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 894, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 900, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 907, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 912, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 917, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 918, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 721, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 362, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 663, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 555, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 494, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 454, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 676, i32 25 }
@___asan_gen_.241 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 912, i32 31 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 506, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 379, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 389, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 226, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 266, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 269, i32 5 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 309, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 317, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 322, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 332, i32 5 }
@___asan_gen_.285 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.289 = private constant [26 x i8] c"../drivers/net/usb/catc.c\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 340, i32 3 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_author344, ptr @__UNIQUE_ID_description345, ptr @__UNIQUE_ID_file346, ptr @__UNIQUE_ID_license347, ptr @__exitcall_catc_driver_exit, ptr @__initcall__kmod_catc__370_981_catc_driver_init6, ptr @catc_ctrl_async._entry, ptr @catc_ctrl_async._entry_ptr, ptr @catc_ctrl_run._entry, ptr @catc_ctrl_run._entry_ptr, ptr @catc_driver_exit, ptr @catc_irq_done._entry, ptr @catc_irq_done._entry.62, ptr @catc_irq_done._entry_ptr, ptr @catc_irq_done._entry_ptr.64, ptr @catc_open._entry, ptr @catc_open._entry_ptr, ptr @catc_probe._entry, ptr @catc_probe._entry.11, ptr @catc_probe._entry.17, ptr @catc_probe._entry.30, ptr @catc_probe._entry_ptr, ptr @catc_probe._entry_ptr.13, ptr @catc_probe._entry_ptr.20, ptr @catc_probe._entry_ptr.32, ptr @catc_tx_run._entry, ptr @catc_tx_run._entry_ptr, ptr @catc_tx_timeout._entry, ptr @catc_tx_timeout._entry_ptr, ptr @catc_driver, ptr @.str, ptr @driver_name, ptr @catc_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @catc_netdev_ops, ptr @ops, ptr @catc_probe.__key, ptr @.str.6, ptr @catc_probe.__key.7, ptr @.str.8, ptr @catc_probe.__key.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catc_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catc_id_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catc_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catc_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catc_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catc_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catc_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catc_tx_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catc_ctrl_async._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catc_ctrl_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catc_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catc_irq_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @catc_irq_done._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @catc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @catc_driver, ptr noundef null, ptr noundef nonnull @.str) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @catc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @usb_deregister(ptr noundef nonnull @catc_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @catc_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %broadcast = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %broadcast) #14
  %2 = call ptr @memset(ptr %broadcast, i32 255, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 6) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup337_crit_edge, label %if.end

entry.cleanup337_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup337

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %7 to i32
  %call3 = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef %conv, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #18
  br label %cleanup337.sink.split

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @alloc_etherdev_mqs(i32 noundef 69876, i32 noundef 1, i32 noundef 1) #14
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup337.sink.split_crit_edge, label %if.end10

if.end6.cleanup337.sink.split_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup337.sink.split

if.end10:                                         ; preds = %if.end6
  %add.ptr.i502 = getelementptr i8, ptr %call7, i32 2304
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @catc_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 115
  %9 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 500, ptr %watchdog_timeo, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 44
  %10 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ops, ptr %ethtool_ops, align 16
  %usbdev12 = getelementptr i8, ptr %call7, i32 2308
  %11 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i, ptr %usbdev12, align 4
  %12 = ptrtoint ptr %add.ptr.i502 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7, ptr %add.ptr.i502, align 4
  %tx_lock = getelementptr i8, ptr %call7, i32 2332
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @catc_probe.__key, i16 noundef signext 3) #14
  %ctrl_lock = getelementptr i8, ptr %call7, i32 2376
  tail call void @__raw_spin_lock_init(ptr noundef %ctrl_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @catc_probe.__key.7, i16 noundef signext 3) #14
  %timer = getelementptr i8, ptr %call7, i32 71704
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @catc_stats_timer, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @catc_probe.__key.9) #14
  %call25 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %ctrl_urb = getelementptr i8, ptr %call7, i32 72168
  %13 = ptrtoint ptr %ctrl_urb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call25, ptr %ctrl_urb, align 4
  %call26 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %tx_urb = getelementptr i8, ptr %call7, i32 72156
  %14 = ptrtoint ptr %tx_urb to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call26, ptr %tx_urb, align 4
  %call27 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %rx_urb = getelementptr i8, ptr %call7, i32 72160
  %15 = ptrtoint ptr %rx_urb to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call27, ptr %rx_urb, align 4
  %call28 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %irq_urb = getelementptr i8, ptr %call7, i32 72164
  %16 = ptrtoint ptr %irq_urb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call28, ptr %irq_urb, align 4
  %17 = ptrtoint ptr %ctrl_urb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctrl_urb, align 4
  %tobool30.not = icmp eq ptr %18, null
  br i1 %tobool30.not, label %if.end10.do.end42_crit_edge, label %lor.lhs.false

if.end10.do.end42_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42

lor.lhs.false:                                    ; preds = %if.end10
  %19 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_urb, align 4
  %tobool32.not = icmp eq ptr %20, null
  br i1 %tobool32.not, label %lor.lhs.false.do.end42_crit_edge, label %lor.lhs.false33

lor.lhs.false.do.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42

lor.lhs.false33:                                  ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_urb, align 4
  %tobool35.not = icmp eq ptr %22, null
  %tobool38.not = icmp eq ptr %call28, null
  %or.cond = select i1 %tobool35.not, i1 true, i1 %tobool38.not
  br i1 %or.cond, label %lor.lhs.false33.do.end42_crit_edge, label %if.end44

lor.lhs.false33.do.end42_crit_edge:               ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42

do.end42:                                         ; preds = %lor.lhs.false33.do.end42_crit_edge, %lor.lhs.false.do.end42_crit_edge, %if.end10.do.end42_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #18
  br label %fail_free

if.end44:                                         ; preds = %lor.lhs.false33
  %idVendor = getelementptr i8, ptr %1, i32 936
  %23 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %idVendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8964, i16 %24)
  %cmp = icmp eq i16 %24, 8964
  br i1 %cmp, label %land.lhs.true, label %if.end44.if.end67_crit_edge

if.end44.if.end67_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

land.lhs.true:                                    ; preds = %if.end44
  %idProduct = getelementptr i8, ptr %1, i32 938
  %25 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2560, i16 %26)
  %cmp49 = icmp eq i16 %26, 2560
  br i1 %cmp49, label %land.lhs.true51, label %land.lhs.true.if.end67_crit_edge

land.lhs.true.if.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

land.lhs.true51:                                  ; preds = %land.lhs.true
  %27 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usbdev12, align 4
  %bcdDevice = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 16, i32 9
  %29 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %bcdDevice, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 12289, i16 %30)
  %cmp55 = icmp eq i16 %30, 12289
  br i1 %cmp55, label %do.body58, label %land.lhs.true51.if.end67_crit_edge

land.lhs.true51.if.end67_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

do.body58:                                        ; preds = %land.lhs.true51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_probe.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_probe, %if.then63)) #14
          to label %do.end66 [label %if.then63], !srcloc !169

if.then63:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @catc_probe.__UNIQUE_ID_ddebug358, ptr noundef %dev1, ptr noundef nonnull @.str.14) #14
  br label %do.end66

do.end66:                                         ; preds = %if.then63, %do.body58
  %is_f5u011 = getelementptr i8, ptr %call7, i32 72172
  %31 = ptrtoint ptr %is_f5u011 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %is_f5u011, align 4
  %recq_sz = getelementptr i8, ptr %call7, i32 72176
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %recq_sz, i32 noundef 4) #14
  %32 = ptrtoint ptr %recq_sz to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 0, ptr %recq_sz, align 4
  br label %if.end67

if.end67:                                         ; preds = %do.end66, %land.lhs.true51.if.end67_crit_edge, %land.lhs.true.if.end67_crit_edge, %if.end44.if.end67_crit_edge
  %pktsz.0 = phi i32 [ 1600, %do.end66 ], [ 23070, %land.lhs.true51.if.end67_crit_edge ], [ 23070, %land.lhs.true.if.end67_crit_edge ], [ 23070, %if.end44.if.end67_crit_edge ]
  %33 = ptrtoint ptr %ctrl_urb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctrl_urb, align 4
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %36, 8
  %or = or i32 %shl.i, -2147483648
  %dev1.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 8
  %37 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 10
  %38 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or, ptr %pipe2.i, align 4
  %setup_packet3.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 21
  %39 = ptrtoint ptr %setup_packet3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %setup_packet3.i, align 4
  %transfer_buffer4.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 14
  %40 = ptrtoint ptr %transfer_buffer4.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %transfer_buffer4.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 19
  %41 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 28
  %42 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @catc_ctrl_done, ptr %complete.i, align 4
  %context5.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 27
  %43 = ptrtoint ptr %context5.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr.i502, ptr %context5.i, align 4
  %44 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_urb, align 4
  %46 = load i32, ptr %add.ptr.i, align 8
  %shl.i503 = shl i32 %46, 8
  %or72 = or i32 %shl.i503, -1073709056
  %dev1.i504 = getelementptr inbounds %struct.urb, ptr %45, i32 0, i32 8
  %47 = ptrtoint ptr %dev1.i504 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr.i, ptr %dev1.i504, align 4
  %pipe2.i505 = getelementptr inbounds %struct.urb, ptr %45, i32 0, i32 10
  %48 = ptrtoint ptr %pipe2.i505 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or72, ptr %pipe2.i505, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %45, i32 0, i32 14
  %49 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i506 = getelementptr inbounds %struct.urb, ptr %45, i32 0, i32 19
  %50 = ptrtoint ptr %transfer_buffer_length.i506 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %transfer_buffer_length.i506, align 4
  %complete.i507 = getelementptr inbounds %struct.urb, ptr %45, i32 0, i32 28
  %51 = ptrtoint ptr %complete.i507 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @catc_tx_done, ptr %complete.i507, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %45, i32 0, i32 27
  %52 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr.i502, ptr %context4.i, align 4
  %53 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rx_urb, align 4
  %55 = load i32, ptr %add.ptr.i, align 8
  %shl.i508 = shl i32 %55, 8
  %or76 = or i32 %shl.i508, -1073708928
  %rx_buf = getelementptr i8, ptr %call7, i32 48560
  %dev1.i510 = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 8
  %56 = ptrtoint ptr %dev1.i510 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr.i, ptr %dev1.i510, align 4
  %pipe2.i511 = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 10
  %57 = ptrtoint ptr %pipe2.i511 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or76, ptr %pipe2.i511, align 4
  %transfer_buffer3.i512 = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 14
  %58 = ptrtoint ptr %transfer_buffer3.i512 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %rx_buf, ptr %transfer_buffer3.i512, align 4
  %transfer_buffer_length.i513 = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 19
  %59 = ptrtoint ptr %transfer_buffer_length.i513 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %pktsz.0, ptr %transfer_buffer_length.i513, align 4
  %complete.i514 = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 28
  %60 = ptrtoint ptr %complete.i514 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @catc_rx_done, ptr %complete.i514, align 4
  %context4.i515 = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 27
  %61 = ptrtoint ptr %context4.i515 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr.i502, ptr %context4.i515, align 4
  %62 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %irq_urb, align 4
  %64 = load i32, ptr %add.ptr.i, align 8
  %shl.i516 = shl i32 %64, 8
  %or80 = or i32 %shl.i516, 1073807488
  %irq_buf = getelementptr i8, ptr %call7, i32 71630
  %dev1.i518 = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 8
  %65 = ptrtoint ptr %dev1.i518 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr.i, ptr %dev1.i518, align 4
  %pipe2.i519 = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 10
  %66 = ptrtoint ptr %pipe2.i519 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or80, ptr %pipe2.i519, align 4
  %transfer_buffer3.i520 = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 14
  %67 = ptrtoint ptr %transfer_buffer3.i520 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %irq_buf, ptr %transfer_buffer3.i520, align 4
  %transfer_buffer_length.i521 = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 19
  %68 = ptrtoint ptr %transfer_buffer_length.i521 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %transfer_buffer_length.i521, align 4
  %complete.i522 = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 28
  %69 = ptrtoint ptr %complete.i522 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @catc_irq_done, ptr %complete.i522, align 4
  %context4.i523 = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 27
  %70 = ptrtoint ptr %context4.i523 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr.i502, ptr %context4.i523, align 4
  %71 = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 25
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %71, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 23
  %73 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %start_frame.i, align 4
  %is_f5u01182 = getelementptr i8, ptr %call7, i32 72172
  %74 = ptrtoint ptr %is_f5u01182 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %is_f5u01182, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool83.not = icmp eq i8 %75, 0
  br i1 %tobool83.not, label %if.then84, label %do.body259

if.then84:                                        ; preds = %if.end67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_probe.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_probe, %if.then97)) #14
          to label %do.end100 [label %if.then97], !srcloc !169

if.then97:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @catc_probe.__UNIQUE_ID_ddebug359, ptr noundef %dev1, ptr noundef nonnull @.str.15) #14
  br label %do.end100

do.end100:                                        ; preds = %if.then97, %if.then84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %76 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i471 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %76, i32 noundef 3264, i32 noundef 4) #17
  %tobool102.not = icmp eq ptr %call7.i471, null
  br i1 %tobool102.not, label %do.end100.fail_free_crit_edge, label %if.end104

do.end100.fail_free_crit_edge:                    ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_free

if.end104:                                        ; preds = %do.end100
  %77 = ptrtoint ptr %call7.i471 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 305419896, ptr %call7.i471, align 8
  %78 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %usbdev12, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 8
  %shl.i1.i = shl i32 %81, 8
  %or6.i = or i32 %shl.i1.i, -2147483648
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %79, i32 noundef %or6.i, i8 noundef zeroext -4, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 31360, ptr noundef nonnull %call7.i471, i16 noundef zeroext 4, i32 noundef 1000) #14
  %82 = ptrtoint ptr %call7.i471 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -2023406815, ptr %call7.i471, align 8
  %83 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %usbdev12, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 8
  %shl.i1.i525 = shl i32 %86, 8
  %or6.i526 = or i32 %shl.i1.i525, -2147483648
  %call11.i527 = tail call i32 @usb_control_msg(ptr noundef %84, i32 noundef %or6.i526, i8 noundef zeroext -4, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -1408, ptr noundef nonnull %call7.i471, i16 noundef zeroext 4, i32 noundef 1000) #14
  %87 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %usbdev12, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 8
  %shl.i1.i529 = shl i32 %90, 8
  %or6.i530 = or i32 %shl.i1.i529, -2147483520
  %call11.i531 = tail call i32 @usb_control_msg(ptr noundef %88, i32 noundef %or6.i530, i8 noundef zeroext -15, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 31360, ptr noundef nonnull %call7.i471, i16 noundef zeroext 4, i32 noundef 1000) #14
  %91 = ptrtoint ptr %call7.i471 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %call7.i471, align 8
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values)
  switch i32 %92, label %do.end128 [
    i32 305419896, label %sw.bb
    i32 -2023406815, label %if.end104.sw.bb130_crit_edge
  ]

if.end104.sw.bb130_crit_edge:                     ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb130

sw.bb:                                            ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  %94 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %usbdev12, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 8
  %shl.i1.i533 = shl i32 %97, 8
  %or6.i534 = or i32 %shl.i1.i533, -2147483648
  %call11.i535 = tail call i32 @usb_control_msg(ptr noundef %95, i32 noundef %or6.i534, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext 8, i16 noundef zeroext 32, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  %98 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %usbdev12, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 8
  %shl.i1.i537 = shl i32 %101, 8
  %or6.i538 = or i32 %shl.i1.i537, -2147483648
  %call11.i539 = tail call i32 @usb_control_msg(ptr noundef %99, i32 noundef %or6.i538, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext 32, i16 noundef zeroext 33, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_probe.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_probe, %if.then122)) #14
          to label %sw.epilog [label %if.then122], !srcloc !169

if.then122:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @catc_probe.__UNIQUE_ID_ddebug360, ptr noundef %dev1, ptr noundef nonnull @.str.16) #14
  br label %sw.epilog

do.end128:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.18) #18
  br label %sw.bb130

sw.bb130:                                         ; preds = %do.end128, %if.end104.sw.bb130_crit_edge
  %102 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %usbdev12, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 8
  %shl.i1.i541 = shl i32 %105, 8
  %or6.i542 = or i32 %shl.i1.i541, -2147483648
  %call11.i543 = tail call i32 @usb_control_msg(ptr noundef %103, i32 noundef %or6.i542, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext 32, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  %106 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %usbdev12, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 8
  %shl.i1.i545 = shl i32 %109, 8
  %or6.i546 = or i32 %shl.i1.i545, -2147483648
  %call11.i547 = tail call i32 @usb_control_msg(ptr noundef %107, i32 noundef %or6.i546, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext 16, i16 noundef zeroext 33, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_probe.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_probe, %if.then145)) #14
          to label %sw.epilog [label %if.then145], !srcloc !169

if.then145:                                       ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @catc_probe.__UNIQUE_ID_ddebug361, ptr noundef %dev1, ptr noundef nonnull @.str.21) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then145, %sw.bb130, %if.then122, %sw.bb
  tail call void @kfree(ptr noundef nonnull %call7.i471) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_probe.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_probe, %if.then161)) #14
          to label %do.end164 [label %if.then161], !srcloc !169

if.then161:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @catc_probe.__UNIQUE_ID_ddebug362, ptr noundef %dev1, ptr noundef nonnull @.str.22) #14
  br label %do.end164

do.end164:                                        ; preds = %if.then161, %sw.epilog
  %110 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %usbdev12, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 8
  %shl.i1.i549 = shl i32 %113, 8
  %or6.i550 = or i32 %shl.i1.i549, -2147483520
  %call11.i551 = tail call i32 @usb_control_msg(ptr noundef %111, i32 noundef %or6.i550, i8 noundef zeroext -14, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 6, i32 noundef 1000) #14
  tail call void @dev_addr_mod(ptr noundef nonnull %call7, i32 noundef 0, ptr noundef nonnull %call7.i, i32 noundef 6) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_probe.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_probe, %if.then178)) #14
          to label %do.end181 [label %if.then178], !srcloc !169

if.then178:                                       ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @catc_probe.__UNIQUE_ID_ddebug363, ptr noundef %dev1, ptr noundef nonnull @.str.23) #14
  br label %do.end181

do.end181:                                        ; preds = %if.then178, %do.end164
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 86
  %114 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev_addr, align 64
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %115, align 1
  %conv184 = zext i8 %117 to i16
  %118 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %usbdev12, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 8
  %shl.i1.i553 = shl i32 %121, 8
  %or6.i554 = or i32 %shl.i1.i553, -2147483648
  %call11.i555 = tail call i32 @usb_control_msg(ptr noundef %119, i32 noundef %or6.i554, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext %conv184, i16 noundef zeroext 103, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  %122 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i8, ptr %123, i32 1
  %124 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx.1, align 1
  %conv184.1 = zext i8 %125 to i16
  %126 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %usbdev12, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 8
  %shl.i1.i553.1 = shl i32 %129, 8
  %or6.i554.1 = or i32 %shl.i1.i553.1, -2147483648
  %call11.i555.1 = tail call i32 @usb_control_msg(ptr noundef %127, i32 noundef %or6.i554.1, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext %conv184.1, i16 noundef zeroext 102, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  %130 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i8, ptr %131, i32 2
  %132 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx.2, align 1
  %conv184.2 = zext i8 %133 to i16
  %134 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %usbdev12, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %135, align 8
  %shl.i1.i553.2 = shl i32 %137, 8
  %or6.i554.2 = or i32 %shl.i1.i553.2, -2147483648
  %call11.i555.2 = tail call i32 @usb_control_msg(ptr noundef %135, i32 noundef %or6.i554.2, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext %conv184.2, i16 noundef zeroext 101, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  %138 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev_addr, align 64
  %arrayidx.3 = getelementptr i8, ptr %139, i32 3
  %140 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx.3, align 1
  %conv184.3 = zext i8 %141 to i16
  %142 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %usbdev12, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 8
  %shl.i1.i553.3 = shl i32 %145, 8
  %or6.i554.3 = or i32 %shl.i1.i553.3, -2147483648
  %call11.i555.3 = tail call i32 @usb_control_msg(ptr noundef %143, i32 noundef %or6.i554.3, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext %conv184.3, i16 noundef zeroext 100, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  %146 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev_addr, align 64
  %arrayidx.4 = getelementptr i8, ptr %147, i32 4
  %148 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx.4, align 1
  %conv184.4 = zext i8 %149 to i16
  %150 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %usbdev12, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %151, align 8
  %shl.i1.i553.4 = shl i32 %153, 8
  %or6.i554.4 = or i32 %shl.i1.i553.4, -2147483648
  %call11.i555.4 = tail call i32 @usb_control_msg(ptr noundef %151, i32 noundef %or6.i554.4, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext %conv184.4, i16 noundef zeroext 99, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  %154 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev_addr, align 64
  %arrayidx.5 = getelementptr i8, ptr %155, i32 5
  %156 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx.5, align 1
  %conv184.5 = zext i8 %157 to i16
  %158 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %usbdev12, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %159, align 8
  %shl.i1.i553.5 = shl i32 %161, 8
  %or6.i554.5 = or i32 %shl.i1.i553.5, -2147483648
  %call11.i555.5 = tail call i32 @usb_control_msg(ptr noundef %159, i32 noundef %or6.i554.5, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext %conv184.5, i16 noundef zeroext 98, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_probe.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_probe, %if.then199)) #14
          to label %do.end202 [label %if.then199], !srcloc !169

if.then199:                                       ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @catc_probe.__UNIQUE_ID_ddebug364, ptr noundef %dev1, ptr noundef nonnull @.str.24) #14
  br label %do.end202

do.end202:                                        ; preds = %if.then199, %do.end181
  %162 = call ptr @memset(ptr %broadcast, i32 255, i32 6)
  %multicast = getelementptr i8, ptr %call7, i32 71772
  %call.i = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %broadcast, i32 noundef 6) #19
  %and.i = and i32 %call.i, 7
  %shl.i556 = shl nuw nsw i32 1, %and.i
  %shr.i = lshr i32 %call.i, 3
  %and1.i = and i32 %shr.i, 63
  %arrayidx.i = getelementptr i8, ptr %multicast, i32 %and1.i
  %163 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx.i, align 1
  %165 = trunc i32 %shl.i556 to i8
  %conv2.i = or i8 %164, %165
  store i8 %conv2.i, ptr %arrayidx.i, align 1
  %166 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev_addr, align 64
  %call.i557 = call i32 @crc32_le(i32 noundef -1, ptr noundef %167, i32 noundef 6) #19
  %and.i558 = and i32 %call.i557, 7
  %shl.i559 = shl nuw nsw i32 1, %and.i558
  %shr.i560 = lshr i32 %call.i557, 3
  %and1.i561 = and i32 %shr.i560, 63
  %arrayidx.i562 = getelementptr i8, ptr %multicast, i32 %and1.i561
  %168 = ptrtoint ptr %arrayidx.i562 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx.i562, align 1
  %170 = trunc i32 %shl.i559 to i8
  %conv2.i563 = or i8 %169, %170
  store i8 %conv2.i563, ptr %arrayidx.i562, align 1
  %171 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %usbdev12, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %172, align 8
  %shl.i1.i565 = shl i32 %174, 8
  %or6.i566 = or i32 %shl.i1.i565, -2147483648
  %call11.i567 = call i32 @usb_control_msg(ptr noundef %172, i32 noundef %or6.i566, i8 noundef zeroext -4, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -1408, ptr noundef %multicast, i16 noundef zeroext 64, i32 noundef 1000) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_probe.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_probe, %if.then224)) #14
          to label %do.end227 [label %if.then224], !srcloc !169

if.then224:                                       ; preds = %do.end202
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @catc_probe.__UNIQUE_ID_ddebug365, ptr noundef %dev1, ptr noundef nonnull @.str.25) #14
  br label %do.end227

do.end227:                                        ; preds = %if.then224, %do.end202
  %175 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %usbdev12, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %176, align 8
  %shl.i1.i569 = shl i32 %178, 8
  %or6.i570 = or i32 %shl.i1.i569, -2147483648
  %call11.i571 = call i32 @usb_control_msg(ptr noundef %176, i32 noundef %or6.i570, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 105, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  %179 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %usbdev12, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %180, align 8
  %shl.i1.i569.1 = shl i32 %182, 8
  %or6.i570.1 = or i32 %shl.i1.i569.1, -2147483648
  %call11.i571.1 = call i32 @usb_control_msg(ptr noundef %180, i32 noundef %or6.i570.1, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 106, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  %183 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %usbdev12, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %184, align 8
  %shl.i1.i569.2 = shl i32 %186, 8
  %or6.i570.2 = or i32 %shl.i1.i569.2, -2147483648
  %call11.i571.2 = call i32 @usb_control_msg(ptr noundef %184, i32 noundef %or6.i570.2, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 107, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  %187 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %usbdev12, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %188, align 8
  %shl.i1.i569.3 = shl i32 %190, 8
  %or6.i570.3 = or i32 %shl.i1.i569.3, -2147483648
  %call11.i571.3 = call i32 @usb_control_msg(ptr noundef %188, i32 noundef %or6.i570.3, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 108, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  %191 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %usbdev12, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %192, align 8
  %shl.i1.i569.4 = shl i32 %194, 8
  %or6.i570.4 = or i32 %shl.i1.i569.4, -2147483648
  %call11.i571.4 = call i32 @usb_control_msg(ptr noundef %192, i32 noundef %or6.i570.4, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 109, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  %195 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %usbdev12, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %196, align 8
  %shl.i1.i569.5 = shl i32 %198, 8
  %or6.i570.5 = or i32 %shl.i1.i569.5, -2147483648
  %call11.i571.5 = call i32 @usb_control_msg(ptr noundef %196, i32 noundef %or6.i570.5, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 110, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  %199 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %usbdev12, align 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %200, align 8
  %shl.i1.i569.6 = shl i32 %202, 8
  %or6.i570.6 = or i32 %shl.i1.i569.6, -2147483648
  %call11.i571.6 = call i32 @usb_control_msg(ptr noundef %200, i32 noundef %or6.i570.6, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 111, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  %203 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %usbdev12, align 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %204, align 8
  %shl.i1.i569.7 = shl i32 %206, 8
  %or6.i570.7 = or i32 %shl.i1.i569.7, -2147483648
  %call11.i571.7 = call i32 @usb_control_msg(ptr noundef %204, i32 noundef %or6.i570.7, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 112, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %207 = load volatile i32, ptr @jiffies, align 128
  %last_stats = getelementptr i8, ptr %call7, i32 71768
  %208 = ptrtoint ptr %last_stats to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %207, ptr %last_stats, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_probe.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_probe, %if.then249)) #14
          to label %cleanup.thread [label %if.then249], !srcloc !169

if.then249:                                       ; preds = %do.end227
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @catc_probe.__UNIQUE_ID_ddebug366, ptr noundef %dev1, ptr noundef nonnull @.str.26) #14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then249, %do.end227
  %209 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %usbdev12, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %210, align 8
  %shl.i1.i573 = shl i32 %212, 8
  %or6.i574 = or i32 %shl.i1.i573, -2147483648
  %call11.i575 = call i32 @usb_control_msg(ptr noundef %210, i32 noundef %or6.i574, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext 15, i16 noundef zeroext 37, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  %213 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %usbdev12, align 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %214, align 8
  %shl.i1.i577 = shl i32 %216, 8
  %or6.i578 = or i32 %shl.i1.i577, -2147483648
  %call11.i579 = call i32 @usb_control_msg(ptr noundef %214, i32 noundef %or6.i578, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext 59, i16 noundef zeroext 34, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  %217 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %usbdev12, align 4
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %218, align 8
  %shl.i1.i581 = shl i32 %220, 8
  %or6.i582 = or i32 %shl.i1.i581, -2147483648
  %call11.i583 = call i32 @usb_control_msg(ptr noundef %218, i32 noundef %or6.i582, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext 8, i16 noundef zeroext 129, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  %221 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %usbdev12, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %222, align 8
  %shl.i1.i585 = shl i32 %224, 8
  %or6.i586 = or i32 %shl.i1.i585, -2147483648
  %call11.i587 = call i32 @usb_control_msg(ptr noundef %222, i32 noundef %or6.i586, i8 noundef zeroext -6, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 96, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  br label %do.body300

do.body259:                                       ; preds = %if.end67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_probe.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_probe, %if.then271)) #14
          to label %do.end274 [label %if.then271], !srcloc !169

if.then271:                                       ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @catc_probe.__UNIQUE_ID_ddebug367, ptr noundef %dev1, ptr noundef nonnull @.str.27) #14
  br label %do.end274

do.end274:                                        ; preds = %if.then271, %do.body259
  %225 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %usbdev12, align 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %226, align 8
  %shl.i1.i589 = shl i32 %228, 8
  %or6.i590 = or i32 %shl.i1.i589, -2147483648
  %call11.i591 = tail call i32 @usb_control_msg(ptr noundef %226, i32 noundef %or6.i590, i8 noundef zeroext -12, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #14
  %229 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %usbdev12, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %230, align 8
  %shl.i1.i593 = shl i32 %232, 8
  %or6.i594 = or i32 %shl.i1.i593, -2147483520
  %call11.i595 = tail call i32 @usb_control_msg(ptr noundef %230, i32 noundef %or6.i594, i8 noundef zeroext -14, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 6, i32 noundef 1000) #14
  tail call void @dev_addr_mod(ptr noundef nonnull %call7, i32 noundef 0, ptr noundef nonnull %call7.i, i32 noundef 6) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_probe.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_probe, %if.then289)) #14
          to label %do.end292 [label %if.then289], !srcloc !169

if.then289:                                       ; preds = %do.end274
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @catc_probe.__UNIQUE_ID_ddebug368, ptr noundef %dev1, ptr noundef nonnull @.str.28) #14
  br label %do.end292

do.end292:                                        ; preds = %if.then289, %do.end274
  %rxmode = getelementptr i8, ptr %call7, i32 72173
  %233 = ptrtoint ptr %rxmode to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 11, ptr %rxmode, align 1
  %arrayidx295 = getelementptr i8, ptr %call7, i32 72174
  %234 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 0, ptr %arrayidx295, align 1
  %235 = ptrtoint ptr %usbdev12 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %usbdev12, align 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %236, align 8
  %shl.i1.i597 = shl i32 %238, 8
  %or6.i598 = or i32 %shl.i1.i597, -2147483648
  %call11.i599 = tail call i32 @usb_control_msg(ptr noundef %236, i32 noundef %or6.i598, i8 noundef zeroext -11, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %rxmode, i16 noundef zeroext 2, i32 noundef 1000) #14
  br label %do.body300

do.body300:                                       ; preds = %do.end292, %cleanup.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_probe.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_probe, %if.then312)) #14
          to label %do.end318 [label %if.then312], !srcloc !169

if.then312:                                       ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @catc_probe.__UNIQUE_ID_ddebug369, ptr noundef %dev1, ptr noundef nonnull @.str.29) #14
  br label %do.end318

do.end318:                                        ; preds = %if.then312, %do.body300
  %239 = ptrtoint ptr %is_f5u01182 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %is_f5u01182, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool323.not = icmp eq i8 %240, 0
  %cond = select i1 %tobool323.not, ptr @.str.34, ptr @.str.33
  %bus = getelementptr i8, ptr %1, i32 -64
  %241 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %bus, align 8
  %bus_name = getelementptr inbounds %struct.usb_bus, ptr %242, i32 0, i32 3
  %243 = ptrtoint ptr %bus_name to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %bus_name, align 4
  %devpath = getelementptr i8, ptr %1, i32 -124
  %dev_addr325 = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 86
  %245 = ptrtoint ptr %dev_addr325 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dev_addr325, align 64
  %call326 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull %call7, ptr noundef nonnull %cond, ptr noundef %244, ptr noundef %devpath, ptr noundef %246) #18
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %247 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %add.ptr.i502, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 133, i32 1
  %248 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %dev1, ptr %parent, align 8
  %call329 = call i32 @register_netdev(ptr noundef nonnull %call7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call329)
  %tobool330.not = icmp eq i32 %call329, 0
  br i1 %tobool330.not, label %do.end318.cleanup337.sink.split_crit_edge, label %fail_clear_intfdata

do.end318.cleanup337.sink.split_crit_edge:        ; preds = %do.end318
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup337.sink.split

fail_clear_intfdata:                              ; preds = %do.end318
  call void @__sanitizer_cov_trace_pc() #16
  %249 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %fail_free

fail_free:                                        ; preds = %fail_clear_intfdata, %do.end100.fail_free_crit_edge, %do.end42
  %ret.1 = phi i32 [ %call329, %fail_clear_intfdata ], [ -12, %do.end42 ], [ -12, %do.end100.fail_free_crit_edge ]
  %250 = ptrtoint ptr %ctrl_urb to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %ctrl_urb, align 4
  call void @usb_free_urb(ptr noundef %251) #14
  %252 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %tx_urb, align 4
  call void @usb_free_urb(ptr noundef %253) #14
  %254 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %rx_urb, align 4
  call void @usb_free_urb(ptr noundef %255) #14
  %256 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %irq_urb, align 4
  call void @usb_free_urb(ptr noundef %257) #14
  call void @free_netdev(ptr noundef nonnull %call7) #14
  br label %cleanup337.sink.split

cleanup337.sink.split:                            ; preds = %fail_free, %do.end318.cleanup337.sink.split_crit_edge, %if.end6.cleanup337.sink.split_crit_edge, %do.end
  %retval.0.ph = phi i32 [ 0, %do.end318.cleanup337.sink.split_crit_edge ], [ -5, %do.end ], [ %ret.1, %fail_free ], [ -12, %if.end6.cleanup337.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup337

cleanup337:                                       ; preds = %cleanup337.sink.split, %entry.cleanup337_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup337_crit_edge ], [ %retval.0.ph, %cleanup337.sink.split ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %broadcast) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @catc_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @unregister_netdev(ptr noundef %3) #14
  %ctrl_urb = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %ctrl_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_urb, align 4
  tail call void @usb_free_urb(ptr noundef %5) #14
  %tx_urb = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_urb, align 4
  tail call void @usb_free_urb(ptr noundef %7) #14
  %rx_urb = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_urb, align 4
  tail call void @usb_free_urb(ptr noundef %9) #14
  %irq_urb = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 22
  %10 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_urb, align 4
  tail call void @usb_free_urb(ptr noundef %11) #14
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void @free_netdev(ptr noundef %13) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @catc_stats_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -69400
  tail call fastcc void @catc_ctrl_async(ptr noundef %add.ptr, i8 noundef zeroext -128, i8 noundef zeroext -5, i16 noundef zeroext 0, i16 noundef zeroext 112, ptr noundef null, i32 noundef 1, ptr noundef nonnull @catc_stats_done)
  tail call fastcc void @catc_ctrl_async(ptr noundef %add.ptr, i8 noundef zeroext -128, i8 noundef zeroext -5, i16 noundef zeroext 0, i16 noundef zeroext 111, ptr noundef null, i32 noundef 1, ptr noundef nonnull @catc_stats_done)
  tail call fastcc void @catc_ctrl_async(ptr noundef %add.ptr, i8 noundef zeroext -128, i8 noundef zeroext -5, i16 noundef zeroext 0, i16 noundef zeroext 110, ptr noundef null, i32 noundef 1, ptr noundef nonnull @catc_stats_done)
  tail call fastcc void @catc_ctrl_async(ptr noundef %add.ptr, i8 noundef zeroext -128, i8 noundef zeroext -5, i16 noundef zeroext 0, i16 noundef zeroext 109, ptr noundef null, i32 noundef 1, ptr noundef nonnull @catc_stats_done)
  tail call fastcc void @catc_ctrl_async(ptr noundef %add.ptr, i8 noundef zeroext -128, i8 noundef zeroext -5, i16 noundef zeroext 0, i16 noundef zeroext 108, ptr noundef null, i32 noundef 1, ptr noundef nonnull @catc_stats_done)
  tail call fastcc void @catc_ctrl_async(ptr noundef %add.ptr, i8 noundef zeroext -128, i8 noundef zeroext -5, i16 noundef zeroext 0, i16 noundef zeroext 107, ptr noundef null, i32 noundef 1, ptr noundef nonnull @catc_stats_done)
  tail call fastcc void @catc_ctrl_async(ptr noundef %add.ptr, i8 noundef zeroext -128, i8 noundef zeroext -5, i16 noundef zeroext 0, i16 noundef zeroext 106, ptr noundef null, i32 noundef 1, ptr noundef nonnull @catc_stats_done)
  tail call fastcc void @catc_ctrl_async(ptr noundef %add.ptr, i8 noundef zeroext -128, i8 noundef zeroext -5, i16 noundef zeroext 0, i16 noundef zeroext 105, ptr noundef null, i32 noundef 1, ptr noundef nonnull @catc_stats_done)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 100
  %call1 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @catc_ctrl_done(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.body9_crit_edge, label %do.body

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_ctrl_done.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_ctrl_done, %if.then5)) #14
          to label %do.body9 [label %if.then5], !srcloc !169

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @catc_ctrl_done.__UNIQUE_ID_ddebug356, ptr noundef %dev6, ptr noundef nonnull @.str.50, i32 noundef %3, i32 noundef %7) #14
  br label %do.body9

do.body9:                                         ; preds = %if.then5, %do.body, %entry.do.body9_crit_edge
  %ctrl_lock = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 8
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl_lock) #14
  %ctrl_queue = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 19
  %ctrl_tail = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %ctrl_tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrl_tail, align 4
  %add.ptr = getelementptr %struct.ctrl_queue, ptr %ctrl_queue, i32 %9
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool17.not = icmp eq i8 %11, 0
  br i1 %tobool17.not, label %do.body9.if.end29_crit_edge, label %if.then18

do.body9.if.end29_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then18:                                        ; preds = %do.body9
  %buf = getelementptr %struct.ctrl_queue, ptr %ctrl_queue, i32 %9, i32 4
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf, align 4
  %tobool19.not = icmp eq ptr %13, null
  br i1 %tobool19.not, label %if.then18.if.else_crit_edge, label %land.lhs.true

if.then18.if.else_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.then18
  %len = getelementptr %struct.ctrl_queue, ptr %ctrl_queue, i32 %9, i32 5
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool20.not = icmp eq i32 %15, 0
  br i1 %tobool20.not, label %land.lhs.true.if.else_crit_edge, label %if.then21

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %ctrl_buf = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 12
  %16 = call ptr @memcpy(ptr %13, ptr %ctrl_buf, i32 %15)
  br label %if.end29

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then18.if.else_crit_edge
  %ctrl_buf25 = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ctrl_buf25, ptr %buf, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then21, %do.body9.if.end29_crit_edge
  %callback = getelementptr %struct.ctrl_queue, ptr %ctrl_queue, i32 %9, i32 6
  %18 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %callback, align 4
  %tobool30.not = icmp eq ptr %19, null
  br i1 %tobool30.not, label %if.end29.if.end33_crit_edge, label %if.then31

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %19(ptr noundef %1, ptr noundef %add.ptr) #14
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end29.if.end33_crit_edge
  %20 = ptrtoint ptr %ctrl_tail to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ctrl_tail, align 4
  %add = add i32 %21, 1
  %and = and i32 %add, 15
  store i32 %and, ptr %ctrl_tail, align 4
  %ctrl_head = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %ctrl_head to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ctrl_head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %and)
  %cmp37.not = icmp eq i32 %23, %and
  br i1 %cmp37.not, label %if.else40, label %if.then39

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @catc_ctrl_run(ptr noundef %1)
  br label %if.end42

if.else40:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %flags41 = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags41) #14
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.then39
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl_lock, i32 noundef %call12) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @catc_tx_done(ptr nocapture noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %3, label %do.body13 [
    i32 -104, label %do.body
    i32 0, label %do.body33
  ]

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_tx_done.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_tx_done, %if.then4)) #14
          to label %do.end [label %if.then4], !srcloc !169

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @catc_tx_done.__UNIQUE_ID_ddebug354, ptr noundef %dev5, ptr noundef nonnull @.str.52) #14
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %7 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %status1, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 12
  %13 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp.not.i.i = icmp eq i32 %14, %12
  br i1 %cmp.not.i.i, label %do.end.netif_trans_update.exit_crit_edge, label %do.body5.i.i

do.end.netif_trans_update.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %12, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %do.end.netif_trans_update.exit_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 36, i32 5
  %18 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %tx_errors, align 4
  %flags8 = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags8) #14
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %_tx.i.i83 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 103
  %22 = ptrtoint ptr %_tx.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_tx.i.i83, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %23) #14
  br label %cleanup

do.body13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_tx_done.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_tx_done, %if.then25)) #14
          to label %cleanup [label %if.then25], !srcloc !169

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #16
  %dev26 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %24 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev26, align 4
  %dev27 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %26 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @catc_tx_done.__UNIQUE_ID_ddebug355, ptr noundef %dev27, ptr noundef nonnull @.str.53, i32 noundef %3, i32 noundef %27) #14
  br label %cleanup

do.body33:                                        ; preds = %entry
  %tx_lock = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 7
  %call37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #14
  %tx_ptr = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool42.not = icmp eq i32 %29, 0
  br i1 %tobool42.not, label %do.body33.if.end57.sink.split_crit_edge, label %if.then43

do.body33.if.end57.sink.split_crit_edge:          ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57.sink.split

if.then43:                                        ; preds = %do.body33
  %is_f5u011.i = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 24
  %30 = ptrtoint ptr %is_f5u011.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_f5u011.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %if.then43.if.end.i_crit_edge, label %if.then.i

if.then43.if.end.i_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  %add.i = add i32 %29, 63
  %and.i = and i32 %add.i, -64
  %32 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and.i, ptr %tx_ptr, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then43.if.end.i_crit_edge
  %33 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_ptr, align 4
  %tx_urb.i = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 20
  %35 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tx_urb.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %36, i32 0, i32 19
  %37 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %transfer_buffer_length.i, align 4
  %tx_idx.i = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %tx_idx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_idx.i, align 4
  %arrayidx.i = getelementptr %struct.catc, ptr %1, i32 0, i32 9, i32 %39
  %40 = load ptr, ptr %tx_urb.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 14
  %41 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx.i, ptr %transfer_buffer.i, align 4
  %usbdev.i = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %usbdev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usbdev.i, align 4
  %44 = load ptr, ptr %tx_urb.i, align 4
  %dev.i = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %dev.i, align 4
  %46 = load ptr, ptr %tx_urb.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %46, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %usbdev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %usbdev.i, align 4
  %dev8.i = getelementptr inbounds %struct.usb_device, ptr %48, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.37, i32 noundef %call.i) #18
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end.i, %if.end.i.if.end9.i_crit_edge
  %49 = ptrtoint ptr %tx_idx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool11.not.i = icmp eq i32 %50, 0
  %lnot.ext.i = zext i1 %tobool11.not.i to i32
  %51 = ptrtoint ptr %tx_idx.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %lnot.ext.i, ptr %tx_idx.i, align 4
  %52 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %tx_ptr, align 4
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 103
  %55 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %_tx.i.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %56, i32 0, i32 12
  %58 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %trans_start.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %57)
  %cmp.not.i.i.i = icmp eq i32 %59, %57
  br i1 %cmp.not.i.i.i, label %if.end9.i.catc_tx_run.exit_crit_edge, label %do.body5.i.i.i

if.end9.i.catc_tx_run.exit_crit_edge:             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %catc_tx_run.exit

do.body5.i.i.i:                                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 %57, ptr %trans_start.i.i.i, align 16
  br label %catc_tx_run.exit

catc_tx_run.exit:                                 ; preds = %do.body5.i.i.i, %if.end9.i.catc_tx_run.exit_crit_edge
  br i1 %cmp.i, label %catc_tx_run.exit.if.end57.sink.split_crit_edge, label %catc_tx_run.exit.if.end57_crit_edge, !prof !170

catc_tx_run.exit.if.end57_crit_edge:              ; preds = %catc_tx_run.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

catc_tx_run.exit.if.end57.sink.split_crit_edge:   ; preds = %catc_tx_run.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57.sink.split

if.end57.sink.split:                              ; preds = %catc_tx_run.exit.if.end57.sink.split_crit_edge, %do.body33.if.end57.sink.split_crit_edge
  %flags54 = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags54) #14
  br label %if.end57

if.end57:                                         ; preds = %if.end57.sink.split, %catc_tx_run.exit.if.end57_crit_edge
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %_tx.i.i84 = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 103
  %63 = ptrtoint ptr %_tx.i.i84 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %_tx.i.i84, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %64) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call37) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then25, %do.body13, %netif_trans_update.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @catc_rx_done(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  %is_f5u011 = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %is_f5u011 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_f5u011, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pkt_offset.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 2, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %do.body11.preheader, label %do.body

do.body11.preheader:                              ; preds = %if.end
  %actual_length23 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  br label %do.body11

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_rx_done.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_rx_done, %if.then7)) #14
          to label %cleanup [label %if.then7], !srcloc !169

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev8 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %10 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @catc_rx_done.__UNIQUE_ID_ddebug348, ptr noundef %dev8, ptr noundef nonnull @.str.55, i32 noundef %5, i32 noundef %11) #14
  br label %cleanup

do.body11:                                        ; preds = %if.end41.do.body11_crit_edge, %do.body11.preheader
  %pkt_start.0 = phi ptr [ %add.ptr44, %if.end41.do.body11_crit_edge ], [ %3, %do.body11.preheader ]
  %12 = ptrtoint ptr %is_f5u011 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_f5u011, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not = icmp eq i8 %13, 0
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %do.body11
  %14 = ptrtoint ptr %pkt_start.0 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %pkt_start.0, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #14
  %conv = zext i16 %16 to i32
  %17 = ptrtoint ptr %actual_length23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actual_length23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv)
  %cmp = icmp ult i32 %18, %conv
  br i1 %cmp, label %if.then18, label %if.then14.if.end24_crit_edge

if.then14.if.end24_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 36, i32 10
  %21 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_length_errors, align 8
  %inc = add i32 %22, 1
  store i32 %inc, ptr %rx_length_errors, align 8
  %23 = load ptr, ptr %1, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 36, i32 4
  %24 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_errors, align 8
  %inc21 = add i32 %25, 1
  store i32 %inc21, ptr %rx_errors, align 8
  br label %do.end50

if.else:                                          ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %actual_length23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %actual_length23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then14.if.end24_crit_edge
  %pkt_len.0 = phi i32 [ %27, %if.else ], [ %conv, %if.then14.if.end24_crit_edge ]
  %call.i.i158 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %pkt_len.0, i32 noundef 2592) #14
  %tobool26.not = icmp eq ptr %call.i.i158, null
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %add.ptr = getelementptr i8, ptr %pkt_start.0, i32 %pkt_offset.0
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i158, i32 0, i32 19
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %30 = call ptr @memcpy(ptr %29, ptr %add.ptr, i32 %pkt_len.0)
  %call29 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i158, i32 noundef %pkt_len.0) #14
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call31 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i158, ptr noundef %32) #14
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i158, i32 0, i32 15, i32 0, i32 18
  %33 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %call31, ptr %protocol, align 8
  %call32 = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i158) #14
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %stats34 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 36
  %36 = ptrtoint ptr %stats34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stats34, align 8
  %inc35 = add i32 %37, 1
  store i32 %inc35, ptr %stats34, align 8
  %38 = load ptr, ptr %1, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 36, i32 2
  %39 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %40, %pkt_len.0
  store i32 %add, ptr %rx_bytes, align 8
  %41 = ptrtoint ptr %is_f5u011 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_f5u011, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool39.not = icmp eq i8 %42, 0
  br i1 %tobool39.not, label %if.end41, label %if.end28.if.then53_crit_edge

if.end28.if.then53_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then53

if.end41:                                         ; preds = %if.end28
  %43 = add i32 %pkt_len.0, 65
  %shl = and i32 %43, -64
  %add.ptr44 = getelementptr i8, ptr %pkt_start.0, i32 %shl
  %44 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %transfer_buffer, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr44 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %45 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %46 = ptrtoint ptr %actual_length23 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %actual_length23, align 4
  %cmp48 = icmp ult i32 %sub.ptr.sub, %47
  br i1 %cmp48, label %if.end41.do.body11_crit_edge, label %if.end41.do.end50_crit_edge

if.end41.do.end50_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end50

if.end41.do.body11_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11

do.end50:                                         ; preds = %if.end41.do.end50_crit_edge, %if.then18
  %48 = ptrtoint ptr %is_f5u011 to i32
  call void @__asan_load1_noabort(i32 %48)
  %.pr = load i8, ptr %is_f5u011, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool52.not = icmp eq i8 %.pr, 0
  br i1 %tobool52.not, label %do.end50.cleanup_crit_edge, label %do.end50.if.then53_crit_edge

do.end50.if.then53_crit_edge:                     ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then53

do.end50.cleanup_crit_edge:                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then53:                                        ; preds = %do.end50.if.then53_crit_edge, %if.end28.if.then53_crit_edge
  %recq_sz = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 26
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %recq_sz, i32 noundef 4) #14
  %49 = ptrtoint ptr %recq_sz to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %recq_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool55.not = icmp eq i32 %50, 0
  br i1 %tobool55.not, label %if.else104, label %if.then56

if.then56:                                        ; preds = %if.then53
  %call.i.i151 = tail call zeroext i1 @__kasan_check_write(ptr noundef %recq_sz, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %recq_sz, i32 1, i32 3, i32 1) #14
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %recq_sz, ptr %recq_sz, i32 1, ptr elementtype(i32) %recq_sz) #14, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_rx_done.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_rx_done, %if.then71)) #14
          to label %do.end77 [label %if.then71], !srcloc !169

if.then71:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @catc_rx_done.__UNIQUE_ID_ddebug349, ptr noundef %53, ptr noundef nonnull @.str.56) #14
  br label %do.end77

do.end77:                                         ; preds = %if.then71, %if.then56
  %usbdev = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %usbdev, align 4
  %dev78 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %56 = ptrtoint ptr %dev78 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %dev78, align 4
  %call79 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %do.body84, label %do.end77.cleanup_crit_edge

do.end77.cleanup_crit_edge:                       ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body84:                                        ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_rx_done.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_rx_done, %if.then96)) #14
          to label %cleanup [label %if.then96], !srcloc !169

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @catc_rx_done.__UNIQUE_ID_ddebug350, ptr noundef %58, ptr noundef nonnull @.str.57, i32 noundef %call79) #14
  br label %cleanup

if.else104:                                       ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  %flags105 = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags105) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else104, %if.then96, %do.body84, %do.end77.cleanup_crit_edge, %do.end50.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then7, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @catc_irq_done(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  %is_f5u011 = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %is_f5u011 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_f5u011, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %if.else13

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr i8, ptr %3, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %and = and i32 %conv, 128
  %and4 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %if.then.if.end28_crit_edge

if.then.if.end28_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %and9 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp ne i32 %and9, 0
  br label %if.end28

if.else13:                                        ; preds = %entry
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %3, align 2
  %12 = and i16 %11, 4095
  %and15 = zext i16 %12 to i32
  %13 = lshr i16 %11, 8
  %14 = trunc i16 %13 to i8
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %14, label %if.end28.fold.split [
    i8 -112, label %if.else13.if.end28_crit_edge
    i8 -96, label %if.then25
  ]

if.else13.if.end28_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then25:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.end28.fold.split:                              ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.end28:                                         ; preds = %if.end28.fold.split, %if.then25, %if.else13.if.end28_crit_edge, %if.else, %if.then.if.end28_crit_edge
  %cmp40 = phi i1 [ false, %if.then25 ], [ true, %if.then.if.end28_crit_edge ], [ false, %if.else ], [ true, %if.else13.if.end28_crit_edge ], [ false, %if.end28.fold.split ]
  %cmp64 = phi i1 [ true, %if.then25 ], [ false, %if.then.if.end28_crit_edge ], [ %tobool10.not, %if.else ], [ false, %if.else13.if.end28_crit_edge ], [ false, %if.end28.fold.split ]
  %hasdata.0 = phi i32 [ %and15, %if.then25 ], [ %and, %if.then.if.end28_crit_edge ], [ %and, %if.else ], [ %and15, %if.else13.if.end28_crit_edge ], [ %and15, %if.end28.fold.split ]
  %16 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %5, label %do.body [
    i32 0, label %sw.epilog
    i32 -104, label %if.end28.cleanup_crit_edge
    i32 -2, label %if.end28.cleanup_crit_edge167
    i32 -108, label %if.end28.cleanup_crit_edge168
  ]

if.end28.cleanup_crit_edge168:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end28.cleanup_crit_edge167:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_irq_done.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_irq_done, %if.then33)) #14
          to label %resubmit [label %if.then33], !srcloc !169

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %dev34 = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %3, align 1
  %conv36 = zext i8 %20 to i32
  %arrayidx37 = getelementptr i8, ptr %3, i32 1
  %21 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @catc_irq_done.__UNIQUE_ID_ddebug351, ptr noundef %dev34, ptr noundef nonnull @.str.59, i32 noundef %5, i32 noundef %conv36, i32 noundef %conv38) #14
  br label %resubmit

sw.epilog:                                        ; preds = %if.end28
  br i1 %cmp40, label %if.then42, label %sw.epilog.if.end63_crit_edge

sw.epilog.if.end63_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then42:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  tail call void @netif_carrier_on(ptr noundef %24) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_irq_done.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_irq_done, %if.then56)) #14
          to label %if.end63 [label %if.then56], !srcloc !169

if.then56:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @catc_irq_done.__UNIQUE_ID_ddebug352, ptr noundef %26, ptr noundef nonnull @.str.60) #14
  br label %if.end63

if.end63:                                         ; preds = %if.then56, %if.then42, %sw.epilog.if.end63_crit_edge
  br i1 %cmp64, label %if.then66, label %if.end63.if.end88_crit_edge

if.end63.if.end88_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  tail call void @netif_carrier_off(ptr noundef %28) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_irq_done.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_irq_done, %if.then81)) #14
          to label %if.end88 [label %if.then81], !srcloc !169

if.then81:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @catc_irq_done.__UNIQUE_ID_ddebug353, ptr noundef %30, ptr noundef nonnull @.str.61) #14
  br label %if.end88

if.end88:                                         ; preds = %if.then81, %if.then66, %if.end63.if.end88_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hasdata.0)
  %tobool89.not = icmp eq i32 %hasdata.0, 0
  br i1 %tobool89.not, label %if.end88.resubmit_crit_edge, label %if.then90

if.end88.resubmit_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  br label %resubmit

if.then90:                                        ; preds = %if.end88
  %flags = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 2
  %call91 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.else98, label %if.then93

if.then93:                                        ; preds = %if.then90
  %31 = ptrtoint ptr %is_f5u011 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %is_f5u011, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool95.not = icmp eq i8 %32, 0
  br i1 %tobool95.not, label %if.then93.resubmit_crit_edge, label %if.then96

if.then93.resubmit_crit_edge:                     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #16
  br label %resubmit

if.then96:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #16
  %recq_sz = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 26
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %recq_sz, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %recq_sz, i32 1, i32 3, i32 1) #14
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %recq_sz, ptr %recq_sz, i32 1, ptr elementtype(i32) %recq_sz) #14, !srcloc !172
  br label %resubmit

if.else98:                                        ; preds = %if.then90
  %usbdev = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %usbdev, align 4
  %rx_urb = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 21
  %36 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_urb, align 4
  %dev99 = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %dev99 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %dev99, align 4
  %39 = load ptr, ptr %rx_urb, align 4
  %call101 = tail call i32 @usb_submit_urb(ptr noundef %39, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %do.end107, label %if.else98.resubmit_crit_edge

if.else98.resubmit_crit_edge:                     ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #16
  br label %resubmit

do.end107:                                        ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %usbdev, align 4
  %dev109 = getelementptr inbounds %struct.usb_device, ptr %41, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev109, ptr noundef nonnull @.str.57, i32 noundef %call101) #18
  br label %resubmit

resubmit:                                         ; preds = %do.end107, %if.else98.resubmit_crit_edge, %if.then96, %if.then93.resubmit_crit_edge, %if.end88.resubmit_crit_edge, %if.then33, %do.body
  %call113 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %resubmit.cleanup_crit_edge, label %do.end118

resubmit.cleanup_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end118:                                        ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #16
  %usbdev119 = getelementptr inbounds %struct.catc, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %usbdev119 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usbdev119, align 4
  %dev120 = getelementptr inbounds %struct.usb_device, ptr %43, i32 0, i32 15
  %bus = getelementptr inbounds %struct.usb_device, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus, align 8
  %bus_name = getelementptr inbounds %struct.usb_bus, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %bus_name to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus_name, align 4
  %devpath = getelementptr inbounds %struct.usb_device, ptr %43, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev120, ptr noundef nonnull @.str.63, ptr noundef %47, ptr noundef %devpath, i32 noundef %call113) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end118, %resubmit.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end28.cleanup_crit_edge167, %if.end28.cleanup_crit_edge168
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @catc_open(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %usbdev = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usbdev, align 4
  %irq_urb = getelementptr i8, ptr %netdev, i32 72164
  %2 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_urb, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %dev, align 4
  %5 = load ptr, ptr %irq_urb, align 4
  %call2 = tail call i32 @usb_submit_urb(ptr noundef %5, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usbdev, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.35, i32 noundef %call2) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %is_f5u011 = getelementptr i8, ptr %netdev, i32 72172
  %10 = ptrtoint ptr %is_f5u011 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_f5u011, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %timer = getelementptr i8, ptr %netdev, i32 71704
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %12, 100
  %call6 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.then5 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @catc_stop(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %is_f5u011 = getelementptr i8, ptr %netdev, i32 72172
  %2 = ptrtoint ptr %is_f5u011 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_f5u011, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %timer = getelementptr i8, ptr %netdev, i32 71704
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_urb = getelementptr i8, ptr %netdev, i32 72160
  %4 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #14
  %tx_urb = getelementptr i8, ptr %netdev, i32 72156
  %6 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #14
  %irq_urb = getelementptr i8, ptr %netdev, i32 72164
  %8 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #14
  %ctrl_urb = getelementptr i8, ptr %netdev, i32 72168
  %10 = ptrtoint ptr %ctrl_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @catc_start_xmit(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tx_lock = getelementptr i8, ptr %netdev, i32 2332
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #14
  %tx_ptr = getelementptr i8, ptr %netdev, i32 2316
  %0 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_ptr, align 4
  %2 = add i32 %1, 63
  %shl = and i32 %2, -64
  store i32 %shl, ptr %tx_ptr, align 4
  %tx_idx = getelementptr i8, ptr %netdev, i32 2320
  %3 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_idx, align 4
  %arrayidx = getelementptr %struct.catc, ptr %add.ptr.i, i32 0, i32 9, i32 %4
  %add.ptr = getelementptr i8, ptr %arrayidx, i32 %shl
  %is_f5u011 = getelementptr i8, ptr %netdev, i32 72172
  %5 = ptrtoint ptr %is_f5u011 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_f5u011, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %len10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len10, align 4
  %conv11 = trunc i32 %8 to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv11)
  %storemerge = select i1 %tobool.not, i16 %9, i16 %conv11
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %storemerge, ptr %add.ptr, align 2
  %add.ptr12 = getelementptr i8, ptr %add.ptr, i32 2
  %len13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len13, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %15 = call ptr @memcpy(ptr %add.ptr12, ptr %14, i32 %12)
  %16 = load i32, ptr %len13, align 4
  %add15 = add i32 %16, 2
  %17 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_ptr, align 4
  %add17 = add i32 %add15, %18
  store i32 %add17, ptr %tx_ptr, align 4
  %flags18 = getelementptr i8, ptr %netdev, i32 2312
  %call19 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags18) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then21:                                        ; preds = %entry
  %19 = ptrtoint ptr %is_f5u011 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_f5u011, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.then21.if.end.i_crit_edge, label %if.then.i

if.then21.if.end.i_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_ptr, align 4
  %add.i = add i32 %22, 63
  %and.i = and i32 %add.i, -64
  store i32 %and.i, ptr %tx_ptr, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then21.if.end.i_crit_edge
  %23 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_ptr, align 4
  %tx_urb.i = getelementptr i8, ptr %netdev, i32 72156
  %25 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_urb.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %transfer_buffer_length.i, align 4
  %28 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_idx, align 4
  %arrayidx.i = getelementptr %struct.catc, ptr %add.ptr.i, i32 0, i32 9, i32 %29
  %30 = load ptr, ptr %tx_urb.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx.i, ptr %transfer_buffer.i, align 4
  %usbdev.i = getelementptr i8, ptr %netdev, i32 2308
  %32 = ptrtoint ptr %usbdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usbdev.i, align 4
  %34 = load ptr, ptr %tx_urb.i, align 4
  %dev.i = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %dev.i, align 4
  %36 = load ptr, ptr %tx_urb.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %36, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %usbdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %usbdev.i, align 4
  %dev8.i = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.37, i32 noundef %call.i) #18
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end.i, %if.end.i.if.end9.i_crit_edge
  %39 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool11.not.i = icmp eq i32 %40, 0
  %lnot.ext.i = zext i1 %tobool11.not.i to i32
  %41 = ptrtoint ptr %tx_idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %lnot.ext.i, ptr %tx_idx, align 4
  %42 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %tx_ptr, align 4
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 103
  %45 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %_tx.i.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %46, i32 0, i32 12
  %48 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %trans_start.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %47)
  %cmp.not.i.i.i = icmp eq i32 %49, %47
  br i1 %cmp.not.i.i.i, label %if.end9.i.catc_tx_run.exit_crit_edge, label %do.body5.i.i.i

if.end9.i.catc_tx_run.exit_crit_edge:             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %catc_tx_run.exit

do.body5.i.i.i:                                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 %47, ptr %trans_start.i.i.i, align 16
  br label %catc_tx_run.exit

catc_tx_run.exit:                                 ; preds = %do.body5.i.i.i, %if.end9.i.catc_tx_run.exit_crit_edge
  br i1 %cmp.i, label %if.then25, label %catc_tx_run.exit.if.end28_crit_edge

catc_tx_run.exit.if.end28_crit_edge:              ; preds = %catc_tx_run.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then25:                                        ; preds = %catc_tx_run.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags18) #14
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %catc_tx_run.exit.if.end28_crit_edge, %entry.if.end28_crit_edge
  %r.0 = phi i32 [ 0, %entry.if.end28_crit_edge ], [ %call.i, %if.then25 ], [ %call.i, %catc_tx_run.exit.if.end28_crit_edge ]
  %51 = ptrtoint ptr %is_f5u011 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %is_f5u011, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool31.not = icmp eq i8 %52, 0
  %53 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr = load i32, ptr %tx_ptr, align 4
  br i1 %tobool31.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool33.not = icmp eq i32 %.pr, 0
  br i1 %tobool33.not, label %land.lhs.true.if.end38_crit_edge, label %land.lhs.true.if.then37_crit_edge

land.lhs.true.if.then37_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then37

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

lor.lhs.false:                                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 21531, i32 %.pr)
  %cmp35 = icmp ugt i32 %.pr, 21531
  br i1 %cmp35, label %lor.lhs.false.if.then37_crit_edge, label %lor.lhs.false.if.end38_crit_edge

lor.lhs.false.if.end38_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then37

if.then37:                                        ; preds = %lor.lhs.false.if.then37_crit_edge, %land.lhs.true.if.then37_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %54 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %55, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %lor.lhs.false.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %r.0)
  %cmp40 = icmp sgt i32 %r.0, -1
  br i1 %cmp40, label %if.then42, label %if.end38.if.end48_crit_edge

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len13, align 4
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr.i, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 36, i32 3
  %60 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_bytes, align 4
  %add45 = add i32 %61, %57
  store i32 %add45, ptr %tx_bytes, align 4
  %62 = load ptr, ptr %add.ptr.i, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 36, i32 1
  %63 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %64, 1
  store i32 %inc, ptr %tx_packets, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %if.end38.if.end48_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @catc_set_multicast_list(ptr noundef %netdev) #2 align 64 {
entry:
  %broadcast = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %broadcast) #14
  %multicast = getelementptr i8, ptr %netdev, i32 71772
  %0 = call ptr @memset(ptr %broadcast, i32 255, i32 6)
  %1 = call ptr @memset(ptr %multicast, i32 0, i32 64)
  %call.i = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %broadcast, i32 noundef 6) #19
  %and.i = and i32 %call.i, 7
  %shl.i = shl nuw nsw i32 1, %and.i
  %shr.i = lshr i32 %call.i, 3
  %and1.i = and i32 %shr.i, 63
  %arrayidx.i = getelementptr i8, ptr %multicast, i32 %and1.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = trunc i32 %shl.i to i8
  %conv2.i = or i8 %3, %4
  store i8 %conv2.i, ptr %arrayidx.i, align 1
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %5 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_addr, align 64
  %call.i125 = call i32 @crc32_le(i32 noundef -1, ptr noundef %6, i32 noundef 6) #19
  %and.i126 = and i32 %call.i125, 7
  %shl.i127 = shl nuw nsw i32 1, %and.i126
  %shr.i128 = lshr i32 %call.i125, 3
  %and1.i129 = and i32 %shr.i128, 63
  %arrayidx.i130 = getelementptr i8, ptr %multicast, i32 %and1.i129
  %7 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i130, align 1
  %9 = trunc i32 %shl.i127 to i8
  %conv2.i131 = or i8 %8, %9
  store i8 %conv2.i131, ptr %arrayidx.i130, align 1
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %12 = call ptr @memset(ptr %multicast, i32 255, i32 64)
  %is_f5u011 = getelementptr i8, ptr %netdev, i32 72172
  %13 = ptrtoint ptr %is_f5u011 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_f5u011, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool9.not = icmp eq i8 %14, 0
  %conv10 = select i1 %tobool9.not, i8 27, i8 43
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx.0 = phi i8 [ %conv10, %if.then ], [ 11, %entry.if.end_crit_edge ]
  %and12 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %15 = call ptr @memset(ptr %multicast, i32 255, i32 64)
  br label %if.end49

if.else:                                          ; preds = %if.end
  %mc = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %16 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %16)
  %ha.0133 = load ptr, ptr %mc, align 4
  %cmp.not134 = icmp eq ptr %ha.0133, %mc
  br i1 %cmp.not134, label %if.else.if.end49_crit_edge, label %for.body.lr.ph

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

for.body.lr.ph:                                   ; preds = %if.else
  %is_f5u01124 = getelementptr i8, ptr %netdev, i32 72172
  %17 = ptrtoint ptr %is_f5u01124 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_f5u01124, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool25.not = icmp eq i8 %18, 0
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ha.0135 = phi ptr [ %ha.0133, %for.body.lr.ph ], [ %ha.0, %for.body.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0135, i32 0, i32 2
  %call23 = call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #19
  %shr34 = lshr i32 %call23, 26
  %19 = xor i32 %call23, -1
  %sub = lshr i32 %19, 29
  %shr = lshr i32 %call23, 3
  %and29 = and i32 %shr, 63
  %sub.sink = select i1 %tobool25.not, i32 %and29, i32 %sub
  %and35.pn.in = select i1 %tobool25.not, i32 %call23, i32 %shr34
  %and35.pn = and i32 %and35.pn.in, 7
  %shl36.sink = shl nuw nsw i32 1, %and35.pn
  %arrayidx39 = getelementptr %struct.catc, ptr %add.ptr.i, i32 0, i32 18, i32 %sub.sink
  %20 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx39, align 1
  %22 = trunc i32 %shl36.sink to i8
  %conv42 = or i8 %21, %22
  store i8 %conv42, ptr %arrayidx39, align 1
  %23 = ptrtoint ptr %ha.0135 to i32
  call void @__asan_load4_noabort(i32 %23)
  %ha.0 = load ptr, ptr %ha.0135, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %for.body.if.end49_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.if.end49_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.end49:                                         ; preds = %for.body.if.end49_crit_edge, %if.else.if.end49_crit_edge, %if.then14
  %is_f5u01150 = getelementptr i8, ptr %netdev, i32 72172
  %24 = ptrtoint ptr %is_f5u01150 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_f5u01150, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool51.not = icmp eq i8 %25, 0
  br i1 %tobool51.not, label %if.then52, label %if.else58

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %conv53 = zext i8 %rx.0 to i16
  call fastcc void @catc_ctrl_async(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext -6, i16 noundef zeroext %conv53, i16 noundef zeroext 96, ptr noundef null, i32 noundef 0, ptr noundef null)
  call fastcc void @catc_ctrl_async(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext -4, i16 noundef zeroext 0, i16 noundef zeroext -1408, ptr noundef %multicast, i32 noundef 64, ptr noundef null)
  br label %if.end90

if.else58:                                        ; preds = %if.end49
  call fastcc void @catc_ctrl_async(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext -11, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %multicast, i32 noundef 8, ptr noundef null)
  %rxmode = getelementptr i8, ptr %netdev, i32 72173
  %26 = ptrtoint ptr %rxmode to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rxmode, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %rx.0)
  %cmp64.not = icmp eq i8 %27, %rx.0
  br i1 %cmp64.not, label %if.else58.if.end90_crit_edge, label %if.then66

if.else58.if.end90_crit_edge:                     ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90

if.then66:                                        ; preds = %if.else58
  %28 = ptrtoint ptr %rxmode to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %rx.0, ptr %rxmode, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @catc_set_multicast_list.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@catc_set_multicast_list, %if.then76)) #14
          to label %do.end86 [label %if.then76], !srcloc !169

if.then76:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 4
  %31 = ptrtoint ptr %rxmode to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rxmode, align 1
  %conv80 = zext i8 %32 to i32
  %arrayidx82 = getelementptr i8, ptr %netdev, i32 72174
  %33 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %34 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @catc_set_multicast_list.__UNIQUE_ID_ddebug357, ptr noundef %30, ptr noundef nonnull @.str.40, i32 noundef %conv80, i32 noundef %conv83) #14
  br label %do.end86

do.end86:                                         ; preds = %if.then76, %if.then66
  call fastcc void @catc_ctrl_async(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext -11, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %rxmode, i32 noundef 2, ptr noundef null)
  br label %if.end90

if.end90:                                         ; preds = %do.end86, %if.else58.if.end90_crit_edge, %if.then52
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %broadcast) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @catc_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.45) #18
  %tx_urb = getelementptr i8, ptr %netdev, i32 72156
  %0 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_urb, align 4
  %call1 = tail call i32 @usb_unlink_urb(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @catc_ctrl_async(ptr noundef %catc, i8 noundef zeroext %dir, i8 noundef zeroext %request, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %buf, i32 noundef %len, ptr noundef %callback) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_lock = getelementptr inbounds %struct.catc, ptr %catc, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl_lock) #14
  %ctrl_queue = getelementptr inbounds %struct.catc, ptr %catc, i32 0, i32 19
  %ctrl_head = getelementptr inbounds %struct.catc, ptr %catc, i32 0, i32 5
  %0 = ptrtoint ptr %ctrl_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrl_head, align 4
  %add.ptr = getelementptr %struct.ctrl_queue, ptr %ctrl_queue, i32 %1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %dir, ptr %add.ptr, align 4
  %request7 = getelementptr %struct.ctrl_queue, ptr %ctrl_queue, i32 %1, i32 1
  %3 = ptrtoint ptr %request7 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %request, ptr %request7, align 1
  %value8 = getelementptr %struct.ctrl_queue, ptr %ctrl_queue, i32 %1, i32 2
  %4 = ptrtoint ptr %value8 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %value, ptr %value8, align 2
  %index9 = getelementptr %struct.ctrl_queue, ptr %ctrl_queue, i32 %1, i32 3
  %5 = ptrtoint ptr %index9 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %index, ptr %index9, align 4
  %buf10 = getelementptr %struct.ctrl_queue, ptr %ctrl_queue, i32 %1, i32 4
  %6 = ptrtoint ptr %buf10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buf, ptr %buf10, align 4
  %len11 = getelementptr %struct.ctrl_queue, ptr %ctrl_queue, i32 %1, i32 5
  %7 = ptrtoint ptr %len11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %len, ptr %len11, align 4
  %callback12 = getelementptr %struct.ctrl_queue, ptr %ctrl_queue, i32 %1, i32 6
  %8 = ptrtoint ptr %callback12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %callback, ptr %callback12, align 4
  %9 = load i32, ptr %ctrl_head, align 4
  %add = add i32 %9, 1
  %and = and i32 %add, 15
  store i32 %and, ptr %ctrl_head, align 4
  %ctrl_tail = getelementptr inbounds %struct.catc, ptr %catc, i32 0, i32 6
  %10 = ptrtoint ptr %ctrl_tail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrl_tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %11)
  %cmp16 = icmp eq i32 %and, %11
  br i1 %cmp16, label %do.end20, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %usbdev = getelementptr inbounds %struct.catc, ptr %catc, i32 0, i32 1
  %12 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usbdev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #18
  %14 = ptrtoint ptr %ctrl_tail to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctrl_tail, align 4
  %add22 = add i32 %15, 1
  %and23 = and i32 %add22, 15
  store i32 %and23, ptr %ctrl_tail, align 4
  br label %if.end

if.end:                                           ; preds = %do.end20, %entry.if.end_crit_edge
  %flags25 = getelementptr inbounds %struct.catc, ptr %catc, i32 0, i32 2
  %call26 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags25) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %if.then27, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @catc_ctrl_run(ptr noundef %catc)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end.if.end28_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl_lock, i32 noundef %call3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @catc_ctrl_run(ptr noundef %catc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_queue = getelementptr inbounds %struct.catc, ptr %catc, i32 0, i32 19
  %ctrl_tail = getelementptr inbounds %struct.catc, ptr %catc, i32 0, i32 6
  %0 = ptrtoint ptr %ctrl_tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrl_tail, align 4
  %add.ptr = getelementptr %struct.ctrl_queue, ptr %ctrl_queue, i32 %1
  %usbdev1 = getelementptr inbounds %struct.catc, ptr %catc, i32 0, i32 1
  %2 = ptrtoint ptr %usbdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usbdev1, align 4
  %ctrl_urb = getelementptr inbounds %struct.catc, ptr %catc, i32 0, i32 23
  %4 = ptrtoint ptr %ctrl_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_urb, align 4
  %ctrl_dr = getelementptr inbounds %struct.catc, ptr %catc, i32 0, i32 13
  %request = getelementptr %struct.ctrl_queue, ptr %ctrl_queue, i32 %1, i32 1
  %6 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %request, align 1
  %bRequest = getelementptr inbounds %struct.catc, ptr %catc, i32 0, i32 13, i32 1
  %8 = ptrtoint ptr %bRequest to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %bRequest, align 1
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr, align 4
  %11 = or i8 %10, 64
  %12 = ptrtoint ptr %ctrl_dr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %ctrl_dr, align 1
  %value = getelementptr %struct.ctrl_queue, ptr %ctrl_queue, i32 %1, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %value, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %wValue = getelementptr inbounds %struct.catc, ptr %catc, i32 0, i32 13, i32 2
  %16 = ptrtoint ptr %wValue to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %wValue, align 1
  %index = getelementptr %struct.ctrl_queue, ptr %ctrl_queue, i32 %1, i32 3
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %index, align 4
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %wIndex = getelementptr inbounds %struct.catc, ptr %catc, i32 0, i32 13, i32 3
  %20 = ptrtoint ptr %wIndex to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %19, ptr %wIndex, align 1
  %len = getelementptr %struct.ctrl_queue, ptr %ctrl_queue, i32 %1, i32 5
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %conv3 = trunc i32 %22 to i16
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv3)
  %wLength = getelementptr inbounds %struct.catc, ptr %catc, i32 0, i32 13, i32 4
  %24 = ptrtoint ptr %wLength to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %wLength, align 1
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %3, align 8
  %shl.i60 = shl i32 %28, 8
  %. = select i1 %tobool.not, i32 -2147483648, i32 -2147483520
  %or9 = or i32 %shl.i60, %.
  %pipe = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 10
  %29 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or9, ptr %pipe, align 4
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 19
  %32 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %transfer_buffer_length, align 4
  %ctrl_buf = getelementptr inbounds %struct.catc, ptr %catc, i32 0, i32 12
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 14
  %33 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ctrl_buf, ptr %transfer_buffer, align 4
  %setup_packet = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 21
  %34 = ptrtoint ptr %setup_packet to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ctrl_dr, ptr %setup_packet, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 8
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %3, ptr %dev, align 4
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool13.not = icmp eq i8 %37, 0
  br i1 %tobool13.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %buf = getelementptr %struct.ctrl_queue, ptr %ctrl_queue, i32 %1, i32 4
  %38 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buf, align 4
  %tobool14.not = icmp eq ptr %39, null
  br i1 %tobool14.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true15

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true15:                                  ; preds = %land.lhs.true
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool17.not = icmp eq i32 %41, 0
  br i1 %tobool17.not, label %land.lhs.true15.if.end_crit_edge, label %if.then

land.lhs.true15.if.end_crit_edge:                 ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16
  %42 = call ptr @memcpy(ptr %ctrl_buf, ptr %39, i32 %41)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true15.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %43 = ptrtoint ptr %ctrl_urb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctrl_urb, align 4
  %call23 = tail call i32 @usb_submit_urb(ptr noundef %44, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end.if.end28_crit_edge, label %do.end

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %usbdev1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %usbdev1, align 4
  %dev27 = getelementptr inbounds %struct.usb_device, ptr %46, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.43, i32 noundef %call23) #18
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.end.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @catc_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @driver_name, i32 noundef 32) #14
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.47, i32 noundef 32) #14
  %usbdev = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usbdev, align 4
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 1
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.48, ptr noundef %5, ptr noundef %devpath.i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @catc_get_link_ksettings(ptr nocapture noundef readonly %dev, ptr nocapture noundef %cmd) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %is_f5u011 = getelementptr i8, ptr %dev, i32 72172
  %0 = ptrtoint ptr %is_f5u011 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_f5u011, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %2 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %2, align 4
  %4 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 129, ptr %link_modes, align 4
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %5 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %5, align 4
  %7 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 129, ptr %advertising, align 4
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10, ptr %speed, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %9 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %duplex, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @catc_stats_done(ptr nocapture noundef %catc, ptr nocapture noundef readonly %q) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.ctrl_queue, ptr %q, i32 0, i32 3
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index1, align 4
  %conv = zext i16 %1 to i32
  %sub = add nsw i32 %conv, -105
  %buf = getelementptr inbounds %struct.ctrl_queue, ptr %q, i32 0, i32 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %arrayidx = getelementptr %struct.catc, ptr %catc, i32 0, i32 15, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx, align 1
  %and = and i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv5 = zext i8 %5 to i16
  %shl = shl nuw i16 %conv5, 8
  %add = add nsw i32 %conv, -104
  %arrayidx7 = getelementptr %struct.catc, ptr %catc, i32 0, i32 15, i32 %add
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %8 to i16
  %or = or i16 %shl, %conv8
  %shr = ashr i32 %sub, 1
  %arrayidx10 = getelementptr %struct.catc, ptr %catc, i32 0, i32 16, i32 %shr
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx10, align 2
  %11 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %1, label %if.end.sw.epilog_crit_edge [
    i16 105, label %if.end.sw.bb_crit_edge
    i16 107, label %if.end.sw.bb_crit_edge71
    i16 109, label %sw.bb15
    i16 111, label %sw.bb28
  ]

if.end.sw.bb_crit_edge71:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge71
  %conv11 = zext i16 %or to i32
  %conv12 = zext i16 %10 to i32
  %sub13 = sub nsw i32 %conv11, %conv12
  %12 = ptrtoint ptr %catc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %catc, align 4
  %collisions = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 36, i32 9
  %14 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %collisions, align 4
  %add14 = add i32 %sub13, %15
  store i32 %add14, ptr %collisions, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv16 = zext i16 %or to i32
  %conv17 = zext i16 %10 to i32
  %sub18 = sub nsw i32 %conv16, %conv17
  %16 = ptrtoint ptr %catc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %catc, align 4
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 36, i32 16
  %18 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_aborted_errors, align 8
  %add21 = add i32 %19, %sub18
  store i32 %add21, ptr %tx_aborted_errors, align 8
  %20 = load ptr, ptr %catc, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 36, i32 5
  %21 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_errors, align 4
  %add27 = add i32 %22, %sub18
  store i32 %add27, ptr %tx_errors, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv29 = zext i16 %or to i32
  %conv30 = zext i16 %10 to i32
  %sub31 = sub nsw i32 %conv29, %conv30
  %23 = ptrtoint ptr %catc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %catc, align 4
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 36, i32 13
  %25 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_frame_errors, align 4
  %add34 = add i32 %26, %sub31
  store i32 %add34, ptr %rx_frame_errors, align 4
  %27 = load ptr, ptr %catc, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 36, i32 4
  %28 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_errors, align 8
  %add40 = add i32 %29, %sub31
  store i32 %add40, ptr %rx_errors, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb28, %sw.bb15, %sw.bb, %if.end.sw.epilog_crit_edge
  %30 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %or, ptr %arrayidx10, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !81, !82, !83, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !118, !120, !122, !123, !124, !126, !127, !128, !130, !131, !133, !134, !135, !137, !138, !140, !141, !143, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !158}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !{ptr @__UNIQUE_ID_author344, !1, !"__UNIQUE_ID_author344", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/catc.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_description345, !3, !"__UNIQUE_ID_description345", i1 false, i1 false}
!3 = !{!"../drivers/net/usb/catc.c", i32 50, i32 1}
!4 = !{ptr @__UNIQUE_ID_file346, !5, !"__UNIQUE_ID_file346", i1 false, i1 false}
!5 = !{!"../drivers/net/usb/catc.c", i32 51, i32 1}
!6 = !{ptr @__UNIQUE_ID_license347, !5, !"__UNIQUE_ID_license347", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_catc__370_981_catc_driver_init6, !8, !"__initcall__kmod_catc__370_981_catc_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/usb/catc.c", i32 981, i32 1}
!9 = !{ptr @__exitcall_catc_driver_exit, !8, !"__exitcall_catc_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @catc_driver, !12, !"catc_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/catc.c", i32 973, i32 26}
!13 = !{ptr @driver_name, !14, !"driver_name", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/catc.c", i32 53, i32 19}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/usb/catc.c", i32 782, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @catc_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @catc_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @catc_probe.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/net/usb/catc.c", i32 800, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @catc_probe.__key.7, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/usb/catc.c", i32 801, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @catc_probe.__key.9, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/net/usb/catc.c", i32 803, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/usb/catc.c", i32 811, i32 3}
!34 = !{ptr @catc_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @catc_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/usb/catc.c", i32 820, i32 3}
!38 = !{ptr @catc_probe.__UNIQUE_ID_ddebug358, !37, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/usb/catc.c", i32 844, i32 3}
!41 = !{ptr @catc_probe.__UNIQUE_ID_ddebug359, !40, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/usb/catc.c", i32 862, i32 4}
!44 = !{ptr @catc_probe.__UNIQUE_ID_ddebug360, !43, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/usb/catc.c", i32 865, i32 4}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @catc_probe._entry.17, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @catc_probe._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/usb/catc.c", i32 871, i32 4}
!52 = !{ptr @catc_probe.__UNIQUE_ID_ddebug361, !51, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/usb/catc.c", i32 877, i32 3}
!55 = !{ptr @catc_probe.__UNIQUE_ID_ddebug362, !54, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/usb/catc.c", i32 882, i32 3}
!58 = !{ptr @catc_probe.__UNIQUE_ID_ddebug363, !57, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/usb/catc.c", i32 887, i32 3}
!61 = !{ptr @catc_probe.__UNIQUE_ID_ddebug364, !60, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/usb/catc.c", i32 894, i32 3}
!64 = !{ptr @catc_probe.__UNIQUE_ID_ddebug365, !63, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/usb/catc.c", i32 900, i32 3}
!67 = !{ptr @catc_probe.__UNIQUE_ID_ddebug366, !66, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/usb/catc.c", i32 907, i32 3}
!70 = !{ptr @catc_probe.__UNIQUE_ID_ddebug367, !69, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/usb/catc.c", i32 912, i32 3}
!73 = !{ptr @catc_probe.__UNIQUE_ID_ddebug368, !72, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/usb/catc.c", i32 917, i32 2}
!76 = !{ptr @catc_probe.__UNIQUE_ID_ddebug369, !75, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/usb/catc.c", i32 918, i32 2}
!79 = !{ptr @catc_probe._entry.30, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @catc_probe._entry_ptr.32, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @catc_netdev_ops, !84, !"catc_netdev_ops", i1 false, i1 false}
!84 = !{!"../drivers/net/usb/catc.c", i32 751, i32 36}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/usb/catc.c", i32 721, i32 3}
!87 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @catc_open._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @catc_open._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/usb/catc.c", i32 362, i32 3}
!92 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @catc_tx_run._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @catc_tx_run._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/usb/catc.c", i32 663, i32 4}
!97 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @catc_set_multicast_list.__UNIQUE_ID_ddebug357, !96, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/usb/catc.c", i32 555, i32 3}
!101 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @catc_ctrl_async._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @catc_ctrl_async._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/usb/catc.c", i32 494, i32 3}
!106 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @catc_ctrl_run._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @catc_ctrl_run._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/usb/catc.c", i32 454, i32 2}
!111 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @catc_tx_timeout._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @catc_tx_timeout._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @ops, !115, !"ops", i1 false, i1 false}
!115 = !{!"../drivers/net/usb/catc.c", i32 704, i32 33}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/usb/catc.c", i32 676, i32 25}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../include/linux/usb.h", i32 912, i32 31}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/usb/catc.c", i32 506, i32 3}
!122 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @catc_ctrl_done.__UNIQUE_ID_ddebug356, !121, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/usb/catc.c", i32 379, i32 3}
!126 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @catc_tx_done.__UNIQUE_ID_ddebug354, !125, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/usb/catc.c", i32 389, i32 3}
!130 = !{ptr @catc_tx_done.__UNIQUE_ID_ddebug355, !129, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!131 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/usb/catc.c", i32 226, i32 3}
!133 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @catc_rx_done.__UNIQUE_ID_ddebug348, !132, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!135 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/usb/catc.c", i32 266, i32 4}
!137 = !{ptr @catc_rx_done.__UNIQUE_ID_ddebug349, !136, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/usb/catc.c", i32 269, i32 5}
!140 = !{ptr @catc_rx_done.__UNIQUE_ID_ddebug350, !139, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/usb/catc.c", i32 309, i32 3}
!143 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @catc_irq_done.__UNIQUE_ID_ddebug351, !142, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!145 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/usb/catc.c", i32 317, i32 3}
!147 = !{ptr @catc_irq_done.__UNIQUE_ID_ddebug352, !146, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!148 = !{ptr @.str.61, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/usb/catc.c", i32 322, i32 3}
!150 = !{ptr @catc_irq_done.__UNIQUE_ID_ddebug353, !149, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!151 = !{ptr @catc_irq_done._entry, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../drivers/net/usb/catc.c", i32 332, i32 5}
!153 = !{ptr @catc_irq_done._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.63, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/usb/catc.c", i32 340, i32 3}
!156 = !{ptr @catc_irq_done._entry.62, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @catc_irq_done._entry_ptr.64, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @catc_id_table, !159, !"catc_id_table", i1 false, i1 false}
!159 = !{!"../drivers/net/usb/catc.c", i32 964, i32 35}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"min_enum_size", i32 4}
!162 = !{i32 8, !"branch-target-enforcement", i32 0}
!163 = !{i32 8, !"sign-return-address", i32 0}
!164 = !{i32 8, !"sign-return-address-all", i32 0}
!165 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!166 = !{i32 7, !"uwtable", i32 1}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!169 = !{i64 2148975584, i64 2148975589, i64 2148975602, i64 2148975646, i64 2148975680, i64 2148975701}
!170 = !{!"branch_weights", i32 1, i32 2000}
!171 = !{i64 2148364672, i64 2148364698, i64 2148364727, i64 2148364761, i64 2148364792, i64 2148364815}
!172 = !{i64 2148362207, i64 2148362233, i64 2148362262, i64 2148362296, i64 2148362327, i64 2148362350}
