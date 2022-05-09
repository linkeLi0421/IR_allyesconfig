; ModuleID = '/llk/IR_all_yes/drivers/net/usb/rtl8150.c_pt.bc'
source_filename = "../drivers/net/usb/rtl8150.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.rtl8150 = type { i32, ptr, %struct.tasklet_struct, ptr, ptr, ptr, ptr, ptr, ptr, [4 x ptr], %struct.spinlock, %struct.usb_ctrlrequest, i32, ptr, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.121, i32 }
%union.anon.121 = type { ptr }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.async_req = type { %struct.usb_ctrlrequest, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }

@__initcall__kmod_rtl8150__349_953_rtl8150_driver_init6 = internal global ptr @rtl8150_driver_init, section ".initcall6.init", align 4
@rtl8150_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @driver_name, ptr @rtl8150_probe, ptr @rtl8150_disconnect, ptr null, ptr @rtl8150_suspend, ptr @rtl8150_resume, ptr null, ptr null, ptr null, ptr @rtl8150_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_rtl8150_driver_exit = internal global ptr @rtl8150_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author350 = internal constant [60 x i8] c"rtl8150.author=Petko Manolov <petkan@users.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description351 = internal constant [54 x i8] c"rtl8150.description=rtl8150 based usb-ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file352 = internal constant [37 x i8] c"rtl8150.file=drivers/net/usb/rtl8150\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [20 x i8] c"rtl8150.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtl8150\00", [24 x i8] zeroinitializer }, align 32
@driver_name = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtl8150\00", [24 x i8] zeroinitializer }, align 32
@rtl8150_table = internal constant { [7 x %struct.usb_device_id], [56 x i8] } { [7 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3034, i16 -32432, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 18, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 14720, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 16410, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5463, i16 -32432, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1414, i16 16410, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@rtl8150_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&dev->rx_pool_lock\00", [45 x i8] zeroinitializer }, align 32
@rtl8150_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @rtl8150_open, ptr @rtl8150_close, ptr @rtl8150_start_xmit, ptr null, ptr null, ptr null, ptr @rtl8150_set_multicast, ptr @rtl8150_set_mac_address, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr @rtl8150_siocdevprivate, ptr null, ptr null, ptr null, ptr @rtl8150_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @rtl8150_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8150_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@rtl8150_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 893, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"out of memory\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtl8150_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/net/usb/rtl8150.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtl8150_probe._entry_ptr = internal global ptr @rtl8150_probe._entry, section ".printk_index", align 4
@rtl8150_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 897, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't reset the device\0A\00", [37 x i8] zeroinitializer }, align 32
@rtl8150_probe._entry_ptr.9 = internal global ptr @rtl8150_probe._entry.7, section ".printk_index", align 4
@rtl8150_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 906, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"couldn't register the device\0A\00", [34 x i8] zeroinitializer }, align 32
@rtl8150_probe._entry_ptr.12 = internal global ptr @rtl8150_probe._entry.10, section ".printk_index", align 4
@rtl8150_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 910, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: rtl8150 is detected\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rtl8150_probe._entry_ptr.16 = internal global ptr @rtl8150_probe._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.read_bulk_callback = private unnamed_addr constant [19 x i8] c"read_bulk_callback\00", align 1
@read_bulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.read_bulk_callback, ptr @.str.4, i32 396, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"may be reset is needed?..\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@read_bulk_callback._entry_ptr = internal global ptr @read_bulk_callback._entry, section ".printk_index", align 4
@read_bulk_callback._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @__func__.read_bulk_callback, ptr @.str.4, i32 400, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Rx status %d\0A\00", [18 x i8] zeroinitializer }, align 32
@read_bulk_callback._entry_ptr.21 = internal global ptr @read_bulk_callback._entry.19, section ".printk_index", align 4
@rtl8150_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 736, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx_urb submit failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtl8150_open\00", [19 x i8] zeroinitializer }, align 32
@rtl8150_open._entry_ptr = internal global ptr @rtl8150_open._entry, section ".printk_index", align 4
@rtl8150_open._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.4, i32 745, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"intr_urb submit failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rtl8150_open._entry_ptr.26 = internal global ptr @rtl8150_open._entry.24, section ".printk_index", align 4
@intr_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 482, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: intr status %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"intr_callback\00", [18 x i8] zeroinitializer }, align 32
@intr_callback._entry_ptr = internal global ptr @intr_callback._entry, section ".printk_index", align 4
@intr_callback.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.4, ptr @.str.29, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: LINK LOST\0A\00", [17 x i8] zeroinitializer }, align 32
@intr_callback.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.4, ptr @.str.30, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: LINK CAME BACK\0A\00", [44 x i8] zeroinitializer }, align 32
@intr_callback._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.28, ptr @.str.4, i32 516, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"can't resubmit intr, %s-%s/input0, status %d\0A\00", [50 x i8] zeroinitializer }, align 32
@intr_callback._entry_ptr.33 = internal global ptr @intr_callback._entry.31, section ".printk_index", align 4
@enable_net_traffic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 621, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"device reset failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enable_net_traffic\00", [45 x i8] zeroinitializer }, align 32
@enable_net_traffic._entry_ptr = internal global ptr @enable_net_traffic._entry, section ".printk_index", align 4
@rtl8150_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 693, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"failed tx_urb %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl8150_start_xmit\00", [45 x i8] zeroinitializer }, align 32
@rtl8150_start_xmit._entry_ptr = internal global ptr @rtl8150_start_xmit._entry, section ".printk_index", align 4
@write_bulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 457, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: Tx status %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"write_bulk_callback\00", [44 x i8] zeroinitializer }, align 32
@write_bulk_callback._entry_ptr = internal global ptr @write_bulk_callback._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rtl8150_set_multicast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 662, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: promiscuous mode\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl8150_set_multicast\00", [42 x i8] zeroinitializer }, align 32
@rtl8150_set_multicast._entry_ptr = internal global ptr @rtl8150_set_multicast._entry, section ".printk_index", align 4
@rtl8150_set_multicast.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 0, i8 -90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: allmulti set\0A\00", [46 x i8] zeroinitializer }, align 32
@async_set_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 205, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s failed with %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"async_set_registers\00", [44 x i8] zeroinitializer }, align 32
@async_set_registers._entry_ptr = internal global ptr @async_set_registers._entry, section ".printk_index", align 4
@async_set_reg_cb.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.4, ptr @.str.46, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"async_set_reg_cb\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s failed with %d\00", [46 x i8] zeroinitializer }, align 32
@rtl8150_set_mac_address.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.4, ptr @.str.48, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl8150_set_mac_address\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Setting MAC address to %pM\0A\00", [36 x i8] zeroinitializer }, align 32
@rtl8150_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 649, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Tx timeout.\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl8150_tx_timeout\00", [45 x i8] zeroinitializer }, align 32
@rtl8150_tx_timeout._entry_ptr = internal global ptr @rtl8150_tx_timeout._entry, section ".printk_index", align 4
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"v0.6.2 (2004/08/27)\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Assigned a random MAC address: %pM\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967234, i64 4294967294]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 35312, i64 35313, i64 35314]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"rtl8150_driver\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 943, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 953, i32 1 }
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 146, i32 19 }
@___asan_gen_.72 = private unnamed_addr constant [14 x i8] c"rtl8150_table\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 112, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 883, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [19 x i8] c"rtl8150_netdev_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 851, i32 36 }
@___asan_gen_.84 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 819, i32 33 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 893, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 897, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 906, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 910, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 396, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 400, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 736, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 745, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 481, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 500, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 505, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 514, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 621, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 693, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 456, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 662, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 667, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 205, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 173, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 282, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 649, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 773, i32 25 }
@___asan_gen_.250 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 912, i32 31 }
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.253 = private constant [29 x i8] c"../drivers/net/usb/rtl8150.c\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 268, i32 30 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_author350, ptr @__UNIQUE_ID_description351, ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_license353, ptr @__exitcall_rtl8150_driver_exit, ptr @__initcall__kmod_rtl8150__349_953_rtl8150_driver_init6, ptr @async_set_registers._entry, ptr @async_set_registers._entry_ptr, ptr @enable_net_traffic._entry, ptr @enable_net_traffic._entry_ptr, ptr @intr_callback._entry, ptr @intr_callback._entry.31, ptr @intr_callback._entry_ptr, ptr @intr_callback._entry_ptr.33, ptr @read_bulk_callback._entry, ptr @read_bulk_callback._entry.19, ptr @read_bulk_callback._entry_ptr, ptr @read_bulk_callback._entry_ptr.21, ptr @rtl8150_driver_exit, ptr @rtl8150_open._entry, ptr @rtl8150_open._entry.24, ptr @rtl8150_open._entry_ptr, ptr @rtl8150_open._entry_ptr.26, ptr @rtl8150_probe._entry, ptr @rtl8150_probe._entry.10, ptr @rtl8150_probe._entry.13, ptr @rtl8150_probe._entry.7, ptr @rtl8150_probe._entry_ptr, ptr @rtl8150_probe._entry_ptr.12, ptr @rtl8150_probe._entry_ptr.16, ptr @rtl8150_probe._entry_ptr.9, ptr @rtl8150_set_multicast._entry, ptr @rtl8150_set_multicast._entry_ptr, ptr @rtl8150_start_xmit._entry, ptr @rtl8150_start_xmit._entry_ptr, ptr @rtl8150_tx_timeout._entry, ptr @rtl8150_tx_timeout._entry_ptr, ptr @write_bulk_callback._entry, ptr @write_bulk_callback._entry_ptr, ptr @rtl8150_driver, ptr @.str, ptr @driver_name, ptr @rtl8150_table, ptr @rtl8150_probe.__key, ptr @.str.1, ptr @rtl8150_netdev_ops, ptr @ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8150_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8150_table to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8150_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8150_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8150_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8150_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8150_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8150_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_bulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_bulk_callback._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8150_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8150_open._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_callback._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_net_traffic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8150_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_bulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8150_set_multicast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @async_set_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8150_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8150_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @rtl8150_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtl8150_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @rtl8150_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8150_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %call1 = tail call ptr @alloc_etherdev_mqs(i32 noundef 136, i32 noundef 1, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i74 = getelementptr i8, ptr %call1, i32 2304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 8) #13
  %intr_buff = getelementptr i8, ptr %call1, i32 2432
  %3 = ptrtoint ptr %intr_buff to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %intr_buff, align 4
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @free_netdev(ptr noundef nonnull %call1) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %tl = getelementptr i8, ptr %call1, i32 2312
  tail call void @tasklet_setup(ptr noundef %tl, ptr noundef nonnull @rx_fixup) #10
  %rx_pool_lock = getelementptr i8, ptr %call1, i32 2376
  tail call void @__raw_spin_lock_init(ptr noundef %rx_pool_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rtl8150_probe.__key, i16 noundef signext 3) #10
  %udev9 = getelementptr i8, ptr %call1, i32 2308
  %4 = ptrtoint ptr %udev9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i, ptr %udev9, align 4
  %netdev10 = getelementptr i8, ptr %call1, i32 2336
  %5 = ptrtoint ptr %netdev10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %netdev10, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 16
  %6 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rtl8150_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 115
  %7 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 100, ptr %watchdog_timeo, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 44
  %8 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ops, ptr %ethtool_ops, align 16
  %intr_interval = getelementptr i8, ptr %call1, i32 2428
  %9 = ptrtoint ptr %intr_interval to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100, ptr %intr_interval, align 4
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %rx_urb.i = getelementptr i8, ptr %call1, i32 2340
  %10 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %rx_urb.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end7.do.end16_crit_edge, label %if.end.i

if.end7.do.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

if.end.i:                                         ; preds = %if.end7
  %call2.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %tx_urb.i = getelementptr i8, ptr %call1, i32 2344
  %11 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call2.i, ptr %tx_urb.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.end.i.return.sink.split.i_crit_edge, label %if.end7.i

if.end.i.return.sink.split.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %intr_urb.i = getelementptr i8, ptr %call1, i32 2348
  %12 = ptrtoint ptr %intr_urb.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i, ptr %intr_urb.i, align 4
  %tobool10.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end18

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %14) #10
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.then11.i, %if.end.i.return.sink.split.i_crit_edge
  %tx_urb.sink.i = phi ptr [ %tx_urb.i, %if.then11.i ], [ %rx_urb.i, %if.end.i.return.sink.split.i_crit_edge ]
  %15 = ptrtoint ptr %tx_urb.sink.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_urb.sink.i, align 4
  tail call void @usb_free_urb(ptr noundef %16) #10
  br label %do.end16

do.end16:                                         ; preds = %return.sink.split.i, %if.end7.do.end16_crit_edge
  %dev17 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.2) #14
  br label %out

if.end18:                                         ; preds = %if.end7.i
  %call19 = tail call fastcc i32 @rtl8150_reset(ptr noundef %add.ptr.i74)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.end24, label %if.end26

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %dev25 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.8) #14
  br label %out1

if.end26:                                         ; preds = %if.end18
  tail call fastcc void @fill_skb_pool(ptr noundef %add.ptr.i74)
  tail call fastcc void @set_ethernet_addr(ptr noundef %add.ptr.i74)
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i74, ptr %driver_data.i.i, align 4
  %dev27 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %parent = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 133, i32 1
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev27, ptr %parent, align 8
  %call29 = tail call i32 @register_netdev(ptr noundef nonnull %call1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp.not = icmp eq i32 %call29, 0
  br i1 %cmp.not, label %do.end38, label %do.end33

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.11) #14
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call fastcc void @free_skb_pool(ptr noundef %add.ptr.i74)
  br label %out1

do.end38:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev27, ptr noundef nonnull @.str.14, ptr noundef nonnull %call1) #14
  br label %cleanup

out1:                                             ; preds = %do.end33, %do.end24
  tail call fastcc void @free_all_urbs(ptr noundef %add.ptr.i74)
  br label %out

out:                                              ; preds = %out1, %do.end16
  %20 = ptrtoint ptr %intr_buff to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %intr_buff, align 4
  tail call void @kfree(ptr noundef %21) #10
  tail call void @free_netdev(ptr noundef nonnull %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end38, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %out ], [ 0, %do.end38 ], [ -12, %if.then6 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8150_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %1) #10
  %tl = getelementptr inbounds %struct.rtl8150, ptr %1, i32 0, i32 2
  tail call void @tasklet_kill(ptr noundef %tl) #10
  %netdev = getelementptr inbounds %struct.rtl8150, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void @unregister_netdev(ptr noundef %3) #10
  %rx_urb.i = getelementptr inbounds %struct.rtl8150, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #10
  %tx_urb.i = getelementptr inbounds %struct.rtl8150, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #10
  %intr_urb.i = getelementptr inbounds %struct.rtl8150, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %intr_urb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intr_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #10
  %10 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %11) #10
  %12 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %13) #10
  %14 = ptrtoint ptr %intr_urb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intr_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %15) #10
  %arrayidx.i = getelementptr %struct.rtl8150, ptr %1, i32 0, i32 9, i32 0
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  tail call void @consume_skb(ptr noundef %17) #10
  %arrayidx.1.i = getelementptr %struct.rtl8150, ptr %1, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @consume_skb(ptr noundef %19) #10
  %arrayidx.2.i = getelementptr %struct.rtl8150, ptr %1, i32 0, i32 9, i32 2
  %20 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.2.i, align 4
  tail call void @consume_skb(ptr noundef %21) #10
  %arrayidx.3.i = getelementptr %struct.rtl8150, ptr %1, i32 0, i32 9, i32 3
  %22 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.3.i, align 4
  tail call void @consume_skb(ptr noundef %23) #10
  %rx_skb = getelementptr inbounds %struct.rtl8150, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_skb, align 4
  tail call void @consume_skb(ptr noundef %25) #10
  %intr_buff = getelementptr inbounds %struct.rtl8150, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %intr_buff to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %intr_buff, align 4
  tail call void @kfree(ptr noundef %27) #10
  %28 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev, align 4
  tail call void @free_netdev(ptr noundef %29) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8150_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %netdev = getelementptr inbounds %struct.rtl8150, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void @netif_device_detach(ptr noundef %3) #10
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rx_urb = getelementptr inbounds %struct.rtl8150, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #10
  %intr_urb = getelementptr inbounds %struct.rtl8150, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %intr_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intr_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8150_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %netdev = getelementptr inbounds %struct.rtl8150, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void @netif_device_attach(ptr noundef %3) #10
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rx_urb = getelementptr inbounds %struct.rtl8150, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_urb, align 4
  %status = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %status, align 4
  %11 = load ptr, ptr %rx_urb, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %actual_length, align 4
  %13 = load ptr, ptr %rx_urb, align 4
  tail call void @read_bulk_callback(ptr noundef %13)
  %intr_urb = getelementptr inbounds %struct.rtl8150, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %intr_urb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intr_urb, align 4
  %status5 = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %status5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %status5, align 4
  %17 = load ptr, ptr %intr_urb, align 4
  %actual_length7 = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 20
  %18 = ptrtoint ptr %actual_length7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %actual_length7, align 4
  %19 = load ptr, ptr %intr_urb, align 4
  tail call void @intr_callback(ptr noundef %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rx_fixup(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -8
  %rx_pool_lock = getelementptr i8, ptr %t, i32 64
  tail call void @_raw_spin_lock_irq(ptr noundef %rx_pool_lock) #10
  tail call fastcc void @fill_skb_pool(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irq(ptr noundef %rx_pool_lock) #10
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %add.ptr, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %rx_skb = getelementptr i8, ptr %t, i32 44
  %3 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_skb, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.try_again_crit_edge

if.then.try_again_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %try_again

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %rx_pool_lock) #10
  %arrayidx.i = getelementptr i8, ptr %t, i32 48
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.cond.i, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

for.cond.i:                                       ; preds = %if.end4
  %arrayidx.1.i = getelementptr i8, ptr %t, i32 52
  %7 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %8, null
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.if.end9_crit_edge

for.cond.i.if.end9_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr i8, ptr %t, i32 56
  %9 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %10, null
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.if.end9_crit_edge

for.cond.1.i.if.end9_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr i8, ptr %t, i32 60
  %11 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %12, null
  br i1 %tobool.not.3.i, label %pull_skb.exit.thread, label %for.cond.2.i.if.end9_crit_edge

for.cond.2.i.if.end9_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

pull_skb.exit.thread:                             ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %rx_pool_lock) #10
  br label %tlsched

if.end9:                                          ; preds = %for.cond.2.i.if.end9_crit_edge, %for.cond.1.i.if.end9_crit_edge, %for.cond.i.if.end9_crit_edge, %if.end4.if.end9_crit_edge
  %arrayidx.lcssa.i = phi ptr [ %arrayidx.i, %if.end4.if.end9_crit_edge ], [ %arrayidx.1.i, %for.cond.i.if.end9_crit_edge ], [ %arrayidx.2.i, %for.cond.1.i.if.end9_crit_edge ], [ %arrayidx.3.i, %for.cond.2.i.if.end9_crit_edge ]
  %.lcssa.i = phi ptr [ %6, %if.end4.if.end9_crit_edge ], [ %8, %for.cond.i.if.end9_crit_edge ], [ %10, %for.cond.1.i.if.end9_crit_edge ], [ %12, %for.cond.2.i.if.end9_crit_edge ]
  %13 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx.lcssa.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %rx_pool_lock) #10
  %rx_skb10 = getelementptr i8, ptr %t, i32 44
  %14 = ptrtoint ptr %rx_skb10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %.lcssa.i, ptr %rx_skb10, align 4
  %rx_urb = getelementptr i8, ptr %t, i32 28
  %15 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_urb, align 4
  %udev = getelementptr i8, ptr %t, i32 -4
  %17 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i = shl i32 %20, 8
  %or13 = or i32 %shl.i, -1073708928
  %data = getelementptr inbounds %struct.sk_buff, ptr %.lcssa.i, i32 0, i32 19
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 8
  %23 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %18, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 10
  %24 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or13, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 14
  %25 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 19
  %26 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1540, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 28
  %27 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @read_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 27
  %28 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr, ptr %context4.i, align 4
  br label %try_again

try_again:                                        ; preds = %if.end9, %if.then.try_again_crit_edge
  %rx_urb15 = getelementptr i8, ptr %t, i32 28
  %29 = ptrtoint ptr %rx_urb15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_urb15, align 4
  %call16 = tail call i32 @usb_submit_urb(ptr noundef %30, i32 noundef 2592) #10
  %31 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call16, label %if.then20 [
    i32 -19, label %if.then18
    i32 0, label %if.else22
  ]

if.then18:                                        ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #12
  %netdev = getelementptr i8, ptr %t, i32 24
  %32 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %netdev, align 4
  tail call void @netif_device_detach(ptr noundef %33) #10
  br label %cleanup

if.then20:                                        ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 3, ptr noundef %add.ptr) #10
  br label %tlsched

if.else22:                                        ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %add.ptr) #10
  br label %cleanup

tlsched:                                          ; preds = %if.then20, %pull_skb.exit.thread
  %state.i = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i48 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i48, label %if.then.i49, label %tlsched.cleanup_crit_edge

tlsched.cleanup_crit_edge:                        ; preds = %tlsched
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i49:                                      ; preds = %tlsched
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__tasklet_schedule(ptr noundef %t) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i49, %tlsched.cleanup_crit_edge, %if.else22, %if.then18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl8150_reset(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #10
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 16, ptr %data, align 1
  %udev.i = getelementptr inbounds %struct.rtl8150, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev.i, align 4
  %call.i = call i32 @usb_control_msg_send(ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 302, i16 noundef zeroext 0, ptr noundef nonnull %data, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #10
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 100, %entry ], [ %dec, %land.rhs.do.body_crit_edge ]
  %3 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev.i, align 4
  %call.i7 = call i32 @usb_control_msg_recv(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext 302, i16 noundef zeroext 0, ptr noundef nonnull %data, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #10
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data, align 1
  %7 = and i8 %6, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %land.rhs

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.rhs:                                         ; preds = %do.body
  %dec = add nsw i32 %i.0, -1
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %land.rhs.do.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %do.body.do.end_crit_edge
  %i.1 = phi i32 [ 0, %land.rhs.do.end_crit_edge ], [ %i.0, %do.body.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %cmp = icmp sgt i32 %i.1, 0
  %cond = zext i1 %cmp to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #10
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fill_skb_pool(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rtl8150, ptr %dev, i32 0, i32 9, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %entry
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 1542, i32 noundef 2592) #10
  %tobool1.not = icmp eq ptr %call.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %5, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.rtl8150, ptr %dev, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %8, null
  br i1 %tobool.not.1, label %if.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %call.i.i.1 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 1542, i32 noundef 2592) #10
  %tobool1.not.1 = icmp eq ptr %call.i.i.1, null
  br i1 %tobool1.not.1, label %if.end.1.cleanup_crit_edge, label %if.end3.1

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.1:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.1 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.1, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.1, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %10, i32 2
  store ptr %add.ptr.i.1, ptr %data.i.1, align 4
  %tail.i.1 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.1, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.1, align 8
  %add.ptr1.i.1 = getelementptr i8, ptr %12, i32 2
  store ptr %add.ptr1.i.1, ptr %tail.i.1, align 8
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i.1, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end3.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.rtl8150, ptr %dev, i32 0, i32 9, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %15, null
  br i1 %tobool.not.2, label %if.end.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %call.i.i.2 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 1542, i32 noundef 2592) #10
  %tobool1.not.2 = icmp eq ptr %call.i.i.2, null
  br i1 %tobool1.not.2, label %if.end.2.cleanup_crit_edge, label %if.end3.2

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.2:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.2 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.2, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.2, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %17, i32 2
  store ptr %add.ptr.i.2, ptr %data.i.2, align 4
  %tail.i.2 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.2, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.2, align 8
  %add.ptr1.i.2 = getelementptr i8, ptr %19, i32 2
  store ptr %add.ptr1.i.2, ptr %tail.i.2, align 8
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i.2, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end3.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.rtl8150, ptr %dev, i32 0, i32 9, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %22, null
  br i1 %tobool.not.3, label %if.end.3, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.3:                                         ; preds = %for.inc.2
  %call.i.i.3 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 1542, i32 noundef 2592) #10
  %tobool1.not.3 = icmp eq ptr %call.i.i.3, null
  br i1 %tobool1.not.3, label %if.end.3.cleanup_crit_edge, label %if.end3.3

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.3:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.3 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.3, i32 0, i32 19
  %23 = ptrtoint ptr %data.i.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.3, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %24, i32 2
  store ptr %add.ptr.i.3, ptr %data.i.3, align 4
  %tail.i.3 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.3, i32 0, i32 16
  %25 = ptrtoint ptr %tail.i.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.3, align 8
  %add.ptr1.i.3 = getelementptr i8, ptr %26, i32 2
  store ptr %add.ptr1.i.3, ptr %tail.i.3, align 8
  %27 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i.3, ptr %arrayidx.3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3.3, %if.end.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_ethernet_addr(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %node_id = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %node_id) #10
  %udev.i = getelementptr inbounds %struct.rtl8150, ptr %dev, i32 0, i32 1
  %0 = call ptr @memset(ptr %node_id, i32 255, i32 6)
  %1 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev.i, align 4
  %call.i = call i32 @usb_control_msg_recv(ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext 288, i16 noundef zeroext 0, ptr noundef nonnull %node_id, i16 noundef zeroext 6, i32 noundef 1000, i32 noundef 3072) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %netdev = getelementptr inbounds %struct.rtl8150, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @dev_addr_mod(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %node_id, i32 noundef 6) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #10
  %5 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #10
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %addr.i, align 1
  %8 = and i8 %7, -4
  %9 = or i8 %8, 2
  store i8 %9, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #10
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 55
  %10 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #10
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 86
  %13 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @netdev_notice(ptr noundef %12, ptr noundef nonnull @.str.53, ptr noundef %14) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %node_id) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_skb_pool(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rtl8150, ptr %dev, i32 0, i32 9, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @consume_skb(ptr noundef %1) #10
  %arrayidx.1 = getelementptr %struct.rtl8150, ptr %dev, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  tail call void @consume_skb(ptr noundef %3) #10
  %arrayidx.2 = getelementptr %struct.rtl8150, ptr %dev, i32 0, i32 9, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  tail call void @consume_skb(ptr noundef %5) #10
  %arrayidx.3 = getelementptr %struct.rtl8150, ptr %dev, i32 0, i32 9, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  tail call void @consume_skb(ptr noundef %7) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_all_urbs(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_urb = getelementptr inbounds %struct.rtl8150, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_urb, align 4
  tail call void @usb_free_urb(ptr noundef %1) #10
  %tx_urb = getelementptr inbounds %struct.rtl8150, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_urb, align 4
  tail call void @usb_free_urb(ptr noundef %3) #10
  %intr_urb = getelementptr inbounds %struct.rtl8150, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %intr_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intr_urb, align 4
  tail call void @usb_free_urb(ptr noundef %5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_bulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %netdev6 = getelementptr inbounds %struct.rtl8150, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %netdev6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev6, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %12 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %1, label %sw.default [
    i32 0, label %sw.epilog
    i32 -2, label %if.end9.cleanup_crit_edge
    i32 -62, label %sw.bb10
  ]

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb10:                                          ; preds = %if.end9
  %call11 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.read_bulk_callback) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %sw.bb10.goon_crit_edge, label %do.end

sw.bb10.goon_crit_edge:                           ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %goon

do.end:                                           ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  %dev14 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %13 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev14, align 4
  %dev15 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev15, ptr noundef nonnull @.str.17) #14
  br label %goon

sw.default:                                       ; preds = %if.end9
  %call17 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.read_bulk_callback) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %sw.default.goon_crit_edge, label %do.end22

sw.default.goon_crit_edge:                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %goon

do.end22:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %dev23 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %15 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev23, align 4
  %dev24 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev24, ptr noundef nonnull @.str.20, i32 noundef %1) #14
  br label %goon

sw.epilog:                                        ; preds = %if.end9
  %rx_skb = getelementptr inbounds %struct.rtl8150, ptr %3, i32 0, i32 8
  %17 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_skb, align 4
  %tobool26.not = icmp eq ptr %18, null
  br i1 %tobool26.not, label %sw.epilog.resched_crit_edge, label %if.end28

sw.epilog.resched_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %resched

if.end28:                                         ; preds = %sw.epilog
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %19 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp = icmp ult i32 %20, 4
  br i1 %cmp, label %if.end28.goon_crit_edge, label %if.end30

if.end28.goon_crit_edge:                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %goon

if.end30:                                         ; preds = %if.end28
  %sub = add i32 %20, -4
  %call33 = tail call ptr @skb_put(ptr noundef nonnull %18, i32 noundef %sub) #10
  %21 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_skb, align 4
  %call35 = tail call zeroext i16 @eth_type_trans(ptr noundef %22, ptr noundef %8) #10
  %23 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_skb, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 15, i32 0, i32 18
  %25 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %call35, ptr %protocol, align 8
  %26 = load ptr, ptr %rx_skb, align 4
  %call38 = tail call i32 @netif_rx(ptr noundef %26) #10
  %stats = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36
  %27 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stats, align 8
  %inc = add i32 %28, 1
  store i32 %inc, ptr %stats, align 8
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 2
  %29 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %30, %sub
  store i32 %add, ptr %rx_bytes, align 8
  %rx_pool_lock = getelementptr inbounds %struct.rtl8150, ptr %3, i32 0, i32 10
  %call44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_pool_lock) #10
  %arrayidx.i = getelementptr %struct.rtl8150, ptr %3, i32 0, i32 9, i32 0
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %for.cond.i, label %if.end30.if.end53_crit_edge

if.end30.if.end53_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

for.cond.i:                                       ; preds = %if.end30
  %arrayidx.1.i = getelementptr %struct.rtl8150, ptr %3, i32 0, i32 9, i32 1
  %33 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %34, null
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.if.end53_crit_edge

for.cond.i.if.end53_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.rtl8150, ptr %3, i32 0, i32 9, i32 2
  %35 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %36, null
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.if.end53_crit_edge

for.cond.1.i.if.end53_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.rtl8150, ptr %3, i32 0, i32 9, i32 3
  %37 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %38, null
  br i1 %tobool.not.3.i, label %pull_skb.exit.thread, label %for.cond.2.i.if.end53_crit_edge

for.cond.2.i.if.end53_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

pull_skb.exit.thread:                             ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_pool_lock, i32 noundef %call44) #10
  br label %resched

if.end53:                                         ; preds = %for.cond.2.i.if.end53_crit_edge, %for.cond.1.i.if.end53_crit_edge, %for.cond.i.if.end53_crit_edge, %if.end30.if.end53_crit_edge
  %arrayidx.lcssa.i = phi ptr [ %arrayidx.i, %if.end30.if.end53_crit_edge ], [ %arrayidx.1.i, %for.cond.i.if.end53_crit_edge ], [ %arrayidx.2.i, %for.cond.1.i.if.end53_crit_edge ], [ %arrayidx.3.i, %for.cond.2.i.if.end53_crit_edge ]
  %.lcssa.i = phi ptr [ %32, %if.end30.if.end53_crit_edge ], [ %34, %for.cond.i.if.end53_crit_edge ], [ %36, %for.cond.1.i.if.end53_crit_edge ], [ %38, %for.cond.2.i.if.end53_crit_edge ]
  %39 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx.lcssa.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_pool_lock, i32 noundef %call44) #10
  %40 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %.lcssa.i, ptr %rx_skb, align 4
  br label %goon

goon:                                             ; preds = %if.end53, %if.end28.goon_crit_edge, %do.end22, %sw.default.goon_crit_edge, %do.end, %sw.bb10.goon_crit_edge
  %rx_urb = getelementptr inbounds %struct.rtl8150, ptr %3, i32 0, i32 4
  %41 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rx_urb, align 4
  %udev = getelementptr inbounds %struct.rtl8150, ptr %3, i32 0, i32 1
  %43 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %udev, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %shl.i = shl i32 %46, 8
  %or57 = or i32 %shl.i, -1073708928
  %rx_skb58 = getelementptr inbounds %struct.rtl8150, ptr %3, i32 0, i32 8
  %47 = ptrtoint ptr %rx_skb58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_skb58, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 19
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 8
  %51 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %44, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 10
  %52 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or57, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 14
  %53 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 19
  %54 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1540, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 28
  %55 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @read_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 27
  %56 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %3, ptr %context4.i, align 4
  %57 = load ptr, ptr %rx_urb, align 4
  %call60 = tail call i32 @usb_submit_urb(ptr noundef %57, i32 noundef 2592) #10
  %58 = zext i32 %call60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %call60, label %if.then66 [
    i32 -19, label %if.then63
    i32 0, label %if.else68
  ]

if.then63:                                        ; preds = %goon
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %netdev6 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %netdev6, align 4
  tail call void @netif_device_detach(ptr noundef %60) #10
  br label %cleanup

if.then66:                                        ; preds = %goon
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 3, ptr noundef nonnull %3) #10
  br label %resched

if.else68:                                        ; preds = %goon
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 3, ptr noundef nonnull %3) #10
  br label %cleanup

resched:                                          ; preds = %if.then66, %pull_skb.exit.thread, %sw.epilog.resched_crit_edge
  %state.i114 = getelementptr inbounds %struct.rtl8150, ptr %3, i32 0, i32 2, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i114) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i115 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i115, label %if.then.i116, label %resched.cleanup_crit_edge

resched.cleanup_crit_edge:                        ; preds = %resched
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i116:                                     ; preds = %resched
  call void @__sanitizer_cov_trace_pc() #12
  %tl = getelementptr inbounds %struct.rtl8150, ptr %3, i32 0, i32 2
  tail call void @__tasklet_schedule(ptr noundef %tl) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i116, %resched.cleanup_crit_edge, %if.else68, %if.then63, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8150_open(ptr noundef %netdev) #2 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  %data.i.i = alloca i8, align 1
  %cr.i = alloca i8, align 1
  %tcr.i = alloca i8, align 1
  %rcr.i = alloca i8, align 1
  %msr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %rx_skb = getelementptr i8, ptr %netdev, i32 2356
  %0 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_skb, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr i8, ptr %netdev, i32 2360
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.cond.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.i:                                       ; preds = %if.then
  %arrayidx.1.i = getelementptr i8, ptr %netdev, i32 2364
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %5, null
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.if.end_crit_edge

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr i8, ptr %netdev, i32 2368
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %7, null
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.if.end_crit_edge

for.cond.1.i.if.end_crit_edge:                    ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr i8, ptr %netdev, i32 2372
  %8 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %9, null
  br i1 %tobool.not.3.i, label %if.end.thread89, label %for.cond.2.i.if.end_crit_edge

for.cond.2.i.if.end_crit_edge:                    ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.thread89:                                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rx_skb, align 4
  br label %cleanup

if.end:                                           ; preds = %for.cond.2.i.if.end_crit_edge, %for.cond.1.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %arrayidx.lcssa.i = phi ptr [ %arrayidx.i, %if.then.if.end_crit_edge ], [ %arrayidx.1.i, %for.cond.i.if.end_crit_edge ], [ %arrayidx.2.i, %for.cond.1.i.if.end_crit_edge ], [ %arrayidx.3.i, %for.cond.2.i.if.end_crit_edge ]
  %.lcssa.i = phi ptr [ %3, %if.then.if.end_crit_edge ], [ %5, %for.cond.i.if.end_crit_edge ], [ %7, %for.cond.1.i.if.end_crit_edge ], [ %9, %for.cond.2.i.if.end_crit_edge ]
  %11 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.lcssa.i, align 4
  %12 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %.lcssa.i, ptr %rx_skb, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %13 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr, align 64
  %udev.i = getelementptr i8, ptr %netdev, i32 2308
  %15 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udev.i, align 4
  %call.i = tail call i32 @usb_control_msg_send(ptr noundef %16, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 288, i16 noundef zeroext 0, ptr noundef %14, i16 noundef zeroext 6, i32 noundef 1000, i32 noundef 3072) #10
  %rx_urb = getelementptr i8, ptr %netdev, i32 2340
  %17 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_urb, align 4
  %19 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udev.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i = shl i32 %22, 8
  %or9 = or i32 %shl.i, -1073708928
  %23 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 8
  %27 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %20, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 10
  %28 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or9, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 14
  %29 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 19
  %30 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1540, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 28
  %31 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @read_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 27
  %32 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i, ptr %context4.i, align 4
  %33 = load ptr, ptr %rx_urb, align 4
  %call12 = tail call i32 @usb_submit_urb(ptr noundef %33, i32 noundef 3264) #10
  %34 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %call12, label %if.end5.do.end_crit_edge [
    i32 0, label %if.end20
    i32 -19, label %if.then16
  ]

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then16:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %netdev17 = getelementptr i8, ptr %netdev, i32 2336
  %35 = ptrtoint ptr %netdev17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %netdev17, align 4
  tail call void @netif_device_detach(ptr noundef %36) #10
  br label %do.end

do.end:                                           ; preds = %if.then16, %if.end5.do.end_crit_edge
  %dev19 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev19, ptr noundef nonnull @.str.22, i32 noundef %call12) #14
  br label %cleanup

if.end20:                                         ; preds = %if.end5
  %intr_urb = getelementptr i8, ptr %netdev, i32 2348
  %37 = ptrtoint ptr %intr_urb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %intr_urb, align 4
  %39 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %udev.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i74 = shl i32 %42, 8
  %or25 = or i32 %shl.i74, 1073840256
  %intr_buff = getelementptr i8, ptr %netdev, i32 2432
  %43 = ptrtoint ptr %intr_buff to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %intr_buff, align 4
  %intr_interval = getelementptr i8, ptr %netdev, i32 2428
  %45 = ptrtoint ptr %intr_interval to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %intr_interval, align 4
  %dev1.i76 = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 8
  %47 = ptrtoint ptr %dev1.i76 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %40, ptr %dev1.i76, align 4
  %pipe2.i77 = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 10
  %48 = ptrtoint ptr %pipe2.i77 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or25, ptr %pipe2.i77, align 4
  %transfer_buffer3.i78 = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 14
  %49 = ptrtoint ptr %transfer_buffer3.i78 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %44, ptr %transfer_buffer3.i78, align 4
  %transfer_buffer_length.i79 = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 19
  %50 = ptrtoint ptr %transfer_buffer_length.i79 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 8, ptr %transfer_buffer_length.i79, align 4
  %complete.i80 = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 28
  %51 = ptrtoint ptr %complete.i80 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @intr_callback, ptr %complete.i80, align 4
  %context4.i81 = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 27
  %52 = ptrtoint ptr %context4.i81 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr.i, ptr %context4.i81, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 4
  %53 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %54)
  %cmp.i = icmp eq i32 %54, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %cmp6.i = icmp ugt i32 %54, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i83, label %if.end20.usb_fill_int_urb.exit_crit_edge

if.end20.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_fill_int_urb.exit

if.then.i83:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %55 = tail call i32 @llvm.smax.i32(i32 %46, i32 1) #10
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 16) #10
  %sub.i = add nsw i32 %56, -1
  %shl.i82 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i83, %if.end20.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i82, %if.then.i83 ], [ %46, %if.end20.usb_fill_int_urb.exit_crit_edge ]
  %57 = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 25
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %interval.sink.i, ptr %57, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 23
  %59 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %start_frame.i, align 4
  %60 = ptrtoint ptr %intr_urb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %intr_urb, align 4
  %call27 = tail call i32 @usb_submit_urb(ptr noundef %61, i32 noundef 3264) #10
  %62 = zext i32 %call27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %call27, label %usb_fill_int_urb.exit.do.end36_crit_edge [
    i32 0, label %if.end39
    i32 -19, label %if.then31
  ]

usb_fill_int_urb.exit.do.end36_crit_edge:         ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

if.then31:                                        ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %netdev32 = getelementptr i8, ptr %netdev, i32 2336
  %63 = ptrtoint ptr %netdev32 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %netdev32, align 4
  tail call void @netif_device_detach(ptr noundef %64) #10
  br label %do.end36

do.end36:                                         ; preds = %if.then31, %usb_fill_int_urb.exit.do.end36_crit_edge
  %dev37 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev37, ptr noundef nonnull @.str.25, i32 noundef %call27) #14
  %65 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rx_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %66) #10
  br label %cleanup

if.end39:                                         ; preds = %usb_fill_int_urb.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cr.i) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tcr.i) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rcr.i) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msr.i) #10
  %67 = ptrtoint ptr %msr.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -1, ptr %msr.i, align 1, !annotation !136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #10
  %68 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 16, ptr %data.i.i, align 1
  %69 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %udev.i, align 4
  %call.i.i.i = call i32 @usb_control_msg_send(ptr noundef %70, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 302, i16 noundef zeroext 0, ptr noundef nonnull %data.i.i, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %land.rhs.i.i.do.body.i.i_crit_edge, %if.end39
  %i.0.i.i = phi i32 [ 100, %if.end39 ], [ %dec.i.i, %land.rhs.i.i.do.body.i.i_crit_edge ]
  %71 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %udev.i, align 4
  %call.i7.i.i = call i32 @usb_control_msg_recv(ptr noundef %72, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext 302, i16 noundef zeroext 0, ptr noundef nonnull %data.i.i, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #10
  %73 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %data.i.i, align 1
  %75 = and i8 %74, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i.i = icmp eq i8 %75, 0
  br i1 %tobool.not.i.i, label %rtl8150_reset.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %do.body.i.i
  %dec.i.i = add nsw i32 %i.0.i.i, -1
  %tobool2.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool2.not.i.i, label %rtl8150_reset.exit.thread.i, label %land.rhs.i.i.do.body.i.i_crit_edge

land.rhs.i.i.do.body.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

rtl8150_reset.exit.thread.i:                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #10
  br label %do.end.i

rtl8150_reset.exit.i:                             ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0.i.i)
  %cmp.i.i = icmp slt i32 %i.0.i.i, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #10
  br i1 %cmp.i.i, label %rtl8150_reset.exit.i.do.end.i_crit_edge, label %rtl8150_reset.exit.i.enable_net_traffic.exit_crit_edge

rtl8150_reset.exit.i.enable_net_traffic.exit_crit_edge: ; preds = %rtl8150_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %enable_net_traffic.exit

rtl8150_reset.exit.i.do.end.i_crit_edge:          ; preds = %rtl8150_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %rtl8150_reset.exit.i.do.end.i_crit_edge, %rtl8150_reset.exit.thread.i
  %76 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %udev.i, align 4
  %dev1.i84 = getelementptr inbounds %struct.usb_device, ptr %77, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i84, ptr noundef nonnull @.str.34) #14
  br label %enable_net_traffic.exit

enable_net_traffic.exit:                          ; preds = %do.end.i, %rtl8150_reset.exit.i.enable_net_traffic.exit_crit_edge
  %78 = ptrtoint ptr %rcr.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -98, ptr %rcr.i, align 1
  %79 = ptrtoint ptr %tcr.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -40, ptr %tcr.i, align 1
  %80 = ptrtoint ptr %cr.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 12, ptr %cr.i, align 1
  %81 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %udev.i, align 4
  %call.i.i = call i32 @usb_control_msg_send(ptr noundef %82, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 304, i16 noundef zeroext 0, ptr noundef nonnull %rcr.i, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #10
  %83 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %udev.i, align 4
  %call.i2.i = call i32 @usb_control_msg_send(ptr noundef %84, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 303, i16 noundef zeroext 0, ptr noundef nonnull %tcr.i, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #10
  %85 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %udev.i, align 4
  %call.i4.i = call i32 @usb_control_msg_send(ptr noundef %86, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 302, i16 noundef zeroext 0, ptr noundef nonnull %cr.i, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #10
  %87 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %udev.i, align 4
  %call.i6.i = call i32 @usb_control_msg_recv(ptr noundef %88, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext 311, i16 noundef zeroext 0, ptr noundef nonnull %msr.i, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msr.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rcr.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tcr.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cr.i) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #10
  %89 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 -1, ptr %tmp.i, align 2, !annotation !136
  %90 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %udev.i, align 4
  %call.i.i85 = call i32 @usb_control_msg_recv(ptr noundef %91, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext 332, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i, i16 noundef zeroext 2, i32 noundef 1000, i32 noundef 3072) #10
  %92 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %tmp.i, align 2
  %94 = and i16 %93, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool.not.i86 = icmp eq i16 %94, 0
  br i1 %tobool.not.i86, label %if.else.i, label %if.then.i87

if.then.i87:                                      ; preds = %enable_net_traffic.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @netif_carrier_on(ptr noundef %netdev) #10
  br label %set_carrier.exit

if.else.i:                                        ; preds = %enable_net_traffic.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @netif_carrier_off(ptr noundef %netdev) #10
  br label %set_carrier.exit

set_carrier.exit:                                 ; preds = %if.else.i, %if.then.i87
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %95 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %96, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %set_carrier.exit, %do.end36, %do.end, %if.end.thread89
  %retval.0 = phi i32 [ %call12, %do.end ], [ %call27, %do.end36 ], [ 0, %set_carrier.exit ], [ -12, %if.end.thread89 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8150_close(ptr noundef %netdev) #2 align 64 {
entry:
  %cr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %add.ptr.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cr.i) #10
  %5 = ptrtoint ptr %cr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %cr.i, align 1, !annotation !136
  %udev.i.i = getelementptr i8, ptr %netdev, i32 2308
  %6 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev.i.i, align 4
  %call.i.i = call i32 @usb_control_msg_recv(ptr noundef %7, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext 302, i16 noundef zeroext 0, ptr noundef nonnull %cr.i, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #10
  %8 = ptrtoint ptr %cr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cr.i, align 1
  %10 = and i8 %9, -13
  store i8 %10, ptr %cr.i, align 1
  %11 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev.i.i, align 4
  %call.i5.i = call i32 @usb_control_msg_send(ptr noundef %12, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 302, i16 noundef zeroext 0, ptr noundef nonnull %cr.i, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cr.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_urb.i = getelementptr i8, ptr %netdev, i32 2340
  %13 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_urb.i, align 4
  call void @usb_kill_urb(ptr noundef %14) #10
  %tx_urb.i = getelementptr i8, ptr %netdev, i32 2344
  %15 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_urb.i, align 4
  call void @usb_kill_urb(ptr noundef %16) #10
  %intr_urb.i = getelementptr i8, ptr %netdev, i32 2348
  %17 = ptrtoint ptr %intr_urb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %intr_urb.i, align 4
  call void @usb_kill_urb(ptr noundef %18) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8150_start_xmit(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 60)
  %and = and i32 %4, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add = zext i1 %tobool.not to i32
  %cond5 = add i32 %4, %add
  %tx_skb = getelementptr i8, ptr %netdev, i32 2352
  %5 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %skb, ptr %tx_skb, align 4
  %tx_urb = getelementptr i8, ptr %netdev, i32 2344
  %6 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_urb, align 4
  %udev = getelementptr i8, ptr %netdev, i32 2308
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i = shl i32 %11, 8
  %or = or i32 %shl.i, -1073676288
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 8
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %9, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 10
  %15 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 14
  %16 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 19
  %17 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond5, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 28
  %18 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @write_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 27
  %19 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %context4.i, align 4
  %20 = load ptr, ptr %tx_urb, align 4
  %call9 = tail call i32 @usb_submit_urb(ptr noundef %20, i32 noundef 2592) #10
  %21 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %call9, label %do.end [
    i32 0, label %if.else15
    i32 -19, label %if.then12
  ]

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %netdev13 = getelementptr i8, ptr %netdev, i32 2336
  %22 = ptrtoint ptr %netdev13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev13, align 4
  tail call void @netif_device_detach(ptr noundef %23) #10
  br label %if.end21

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev14 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev14, ptr noundef nonnull @.str.36, i32 noundef %call9) #14
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 5
  %24 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %tx_errors, align 4
  %26 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i44 = getelementptr inbounds %struct.netdev_queue, ptr %27, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i44) #10
  br label %if.end21

if.else15:                                        ; preds = %entry
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 1
  %28 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_packets, align 4
  %inc17 = add i32 %29, 1
  store i32 %inc17, ptr %tx_packets, align 4
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 3
  %32 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_bytes, align 4
  %add20 = add i32 %33, %31
  store i32 %add20, ptr %tx_bytes, align 4
  %34 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %35, i32 0, i32 12
  %37 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %cmp.not.i.i = icmp eq i32 %38, %36
  br i1 %cmp.not.i.i, label %if.else15.if.end21_crit_edge, label %do.body5.i.i

if.else15.if.end21_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.body5.i.i:                                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %36, ptr %trans_start.i.i, align 16
  br label %if.end21

if.end21:                                         ; preds = %do.body5.i.i, %if.else15.if.end21_crit_edge, %do.end, %if.then12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8150_set_multicast(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev2 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.40, ptr noundef %netdev) #14
  br label %if.end30

if.else:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %and5 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = select i1 %cmp, i1 %tobool6.not, i1 false
  br i1 %or.cond, label %if.else.if.end30_crit_edge, label %if.then7

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8150_set_multicast.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8150_set_multicast, %if.then19)) #10
          to label %if.end30 [label %if.then19], !srcloc !137

if.then19:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %dev20 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8150_set_multicast.__UNIQUE_ID_ddebug348, ptr noundef %dev20, ptr noundef nonnull @.str.42, ptr noundef %netdev) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then19, %if.then7, %if.else.if.end30_crit_edge, %if.then
  %rx_creg.0 = phi i16 [ -24832, %if.then ], [ -25088, %if.then19 ], [ -25600, %if.else.if.end30_crit_edge ], [ -25088, %if.then7 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2592, i32 noundef 10) #13
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %if.end30.async_set_registers.exit_crit_edge, label %if.end.i

if.end30.async_set_registers.exit_crit_edge:      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %async_set_registers.exit

if.end.i:                                         ; preds = %if.end30
  %call1.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #10
  %cmp2.i = icmp eq ptr %call1.i, null
  br i1 %cmp2.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %async_set_registers.exit

if.end4.i:                                        ; preds = %if.end.i
  %rx_creg.i = getelementptr inbounds %struct.async_req, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %rx_creg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %rx_creg.0, ptr %rx_creg.i, align 8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 64, ptr %call7.i.i, align 8
  %bRequest.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 5, ptr %bRequest.i, align 1
  %wIndex.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %wIndex.i, align 4
  %wValue.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %wValue.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 12289, ptr %wValue.i, align 2
  %wLength.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %wLength.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 512, ptr %wLength.i, align 2
  %udev.i = getelementptr i8, ptr %netdev, i32 2308
  %13 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udev.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i = shl i32 %16, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 8
  %17 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 10
  %18 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i, ptr %pipe2.i.i, align 4
  %setup_packet3.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 21
  %19 = ptrtoint ptr %setup_packet3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %setup_packet3.i.i, align 4
  %transfer_buffer4.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 14
  %20 = ptrtoint ptr %transfer_buffer4.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %rx_creg.i, ptr %transfer_buffer4.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 19
  %21 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 28
  %22 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @async_set_reg_cb, ptr %complete.i.i, align 4
  %context5.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 27
  %23 = ptrtoint ptr %context5.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %context5.i.i, align 4
  %call13.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call1.i, i32 noundef 2592) #10
  %24 = zext i32 %call13.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %call13.i, label %if.end4.i.do.end.i_crit_edge [
    i32 0, label %if.end4.i.async_set_registers.exit_crit_edge
    i32 -19, label %if.then17.i
  ]

if.end4.i.async_set_registers.exit_crit_edge:     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %async_set_registers.exit

if.end4.i.do.end.i_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then17.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %netdev.i = getelementptr i8, ptr %netdev, i32 2336
  %25 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev.i, align 4
  tail call void @netif_device_detach(ptr noundef %26) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then17.i, %if.end4.i.do.end.i_crit_edge
  %27 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %udev.i, align 4
  %dev20.i = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call13.i) #14
  br label %async_set_registers.exit

async_set_registers.exit:                         ; preds = %do.end.i, %if.end4.i.async_set_registers.exit_crit_edge, %if.then3.i, %if.end30.async_set_registers.exit_crit_edge
  %29 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %30) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8150_set_mac_address(ptr noundef %netdev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8150_set_mac_address.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8150_set_mac_address, %if.then6)) #10
          to label %do.end9 [label %if.then6], !srcloc !137

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8150_set_mac_address.__UNIQUE_ID_ddebug345, ptr noundef %netdev, ptr noundef nonnull @.str.48, ptr noundef %3) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %if.end
  %addr_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 56
  %4 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %5 to i16
  %dev_addr10 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr10, align 64
  %udev.i = getelementptr i8, ptr %netdev, i32 2308
  %8 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev.i, align 4
  %call.i = tail call i32 @usb_control_msg_send(ptr noundef %9, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 288, i16 noundef zeroext 0, ptr noundef %7, i16 noundef zeroext %conv, i32 noundef 1000, i32 noundef 3072) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end9 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8150_siocdevprivate(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %rq, ptr nocapture noundef readnone %udata, i32 noundef %cmd) #2 align 64 {
entry:
  %data.i27 = alloca [3 x i8], align 1
  %tmp.i28 = alloca i8, align 1
  %data.i = alloca [3 x i8], align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 35312, label %sw.bb
    i32 35313, label %entry.sw.bb1_crit_edge
    i32 35314, label %sw.bb8
  ]

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %phy = getelementptr i8, ptr %netdev, i32 2436
  %1 = ptrtoint ptr %phy to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %phy, align 4
  %conv = zext i8 %2 to i16
  %3 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %ifr_ifru, align 2
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb, %entry.sw.bb1_crit_edge
  %phy2 = getelementptr i8, ptr %netdev, i32 2436
  %4 = ptrtoint ptr %phy2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %phy2, align 4
  %arrayidx3 = getelementptr i16, ptr %ifr_ifru, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx3, align 2
  %8 = trunc i16 %7 to i8
  %conv5 = and i8 %8, 31
  %arrayidx6 = getelementptr i16, ptr %ifr_ifru, i32 3
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #10
  %9 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %10 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #10
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %5, ptr %data.i, align 1
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %10, align 1
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %9, align 1
  %14 = or i8 %conv5, 64
  %15 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %tmp.i, align 1
  %udev.i.i = getelementptr i8, ptr %netdev, i32 2308
  %16 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev.i.i, align 4
  %call.i.i = call i32 @usb_control_msg_send(ptr noundef %17, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 312, i16 noundef zeroext 0, ptr noundef nonnull %data.i, i16 noundef zeroext 3, i32 noundef 1000, i32 noundef 3072) #10
  %18 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udev.i.i, align 4
  %call.i2.i = call i32 @usb_control_msg_send(ptr noundef %19, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 315, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #10
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %sw.bb1
  %i.0.i = phi i32 [ 0, %sw.bb1 ], [ %inc.i, %land.rhs.i.do.body.i_crit_edge ]
  %20 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev.i.i, align 4
  %call.i4.i = call i32 @usb_control_msg_recv(ptr noundef %21, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext 315, i16 noundef zeroext 0, ptr noundef nonnull %data.i, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #10
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data.i, align 1
  %24 = and i8 %23, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %do.body.i
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 11
  br i1 %exitcond.not.i, label %land.rhs.i.read_mii_word.exit_crit_edge, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

land.rhs.i.read_mii_word.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_mii_word.exit

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %udev.i.i, align 4
  %call.i6.i = call i32 @usb_control_msg_recv(ptr noundef %26, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext 313, i16 noundef zeroext 0, ptr noundef nonnull %data.i, i16 noundef zeroext 2, i32 noundef 1000, i32 noundef 3072) #10
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %data.i, align 1
  %conv16.i = zext i8 %28 to i16
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %9, align 1
  %conv18.i = zext i8 %30 to i16
  %shl.i = shl nuw i16 %conv18.i, 8
  %or19.i = or i16 %shl.i, %conv16.i
  %31 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %or19.i, ptr %arrayidx6, align 2
  br label %read_mii_word.exit

read_mii_word.exit:                               ; preds = %if.then.i, %land.rhs.i.read_mii_word.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #10
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %call9 = tail call zeroext i1 @capable(i32 noundef 12) #10
  br i1 %call9, label %if.end, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb8
  %phy10 = getelementptr i8, ptr %netdev, i32 2436
  %32 = ptrtoint ptr %phy10 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %phy10, align 4
  %arrayidx11 = getelementptr i16, ptr %ifr_ifru, i32 1
  %34 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx11, align 2
  %36 = trunc i16 %35 to i8
  %conv14 = and i8 %36, 31
  %arrayidx15 = getelementptr %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx15, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i27) #10
  %39 = getelementptr inbounds [3 x i8], ptr %data.i27, i32 0, i32 1
  %40 = getelementptr inbounds [3 x i8], ptr %data.i27, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i28) #10
  %41 = ptrtoint ptr %data.i27 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %33, ptr %data.i27, align 1
  %conv1.i = trunc i16 %38 to i8
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv1.i, ptr %39, align 1
  %43 = lshr i16 %38, 8
  %conv5.i = trunc i16 %43 to i8
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv5.i, ptr %40, align 1
  %45 = or i8 %conv14, 96
  %46 = ptrtoint ptr %tmp.i28 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %tmp.i28, align 1
  %udev.i.i29 = getelementptr i8, ptr %netdev, i32 2308
  %47 = ptrtoint ptr %udev.i.i29 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %udev.i.i29, align 4
  %call.i.i30 = call i32 @usb_control_msg_send(ptr noundef %48, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 312, i16 noundef zeroext 0, ptr noundef nonnull %data.i27, i16 noundef zeroext 3, i32 noundef 1000, i32 noundef 3072) #10
  %49 = ptrtoint ptr %udev.i.i29 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %udev.i.i29, align 4
  %call.i2.i31 = call i32 @usb_control_msg_send(ptr noundef %50, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 315, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i28, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #10
  br label %do.body.i36

do.body.i36:                                      ; preds = %do.body.i36.do.body.i36_crit_edge, %if.end
  %i.0.i32 = phi i32 [ 0, %if.end ], [ %inc.i35, %do.body.i36.do.body.i36_crit_edge ]
  %51 = ptrtoint ptr %udev.i.i29 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %udev.i.i29, align 4
  %call.i4.i33 = call i32 @usb_control_msg_recv(ptr noundef %52, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext 315, i16 noundef zeroext 0, ptr noundef nonnull %data.i27, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #10
  %53 = ptrtoint ptr %data.i27 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %data.i27, align 1
  %55 = and i8 %54, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i34 = icmp ne i8 %55, 0
  %inc.i35 = add nuw nsw i32 %i.0.i32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.0.i32)
  %cmp.i = icmp ult i32 %i.0.i32, 10
  %or.cond.i = select i1 %tobool.not.i34, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %do.body.i36.do.body.i36_crit_edge, label %write_mii_word.exit

do.body.i36.do.body.i36_crit_edge:                ; preds = %do.body.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i36

write_mii_word.exit:                              ; preds = %do.body.i36
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i28) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i27) #10
  br label %cleanup

cleanup:                                          ; preds = %write_mii_word.exit, %sw.bb8.cleanup_crit_edge, %read_mii_word.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %sw.bb8.cleanup_crit_edge ], [ 0, %write_mii_word.exit ], [ 0, %read_mii_word.exit ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8150_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.49) #14
  %tx_urb = getelementptr i8, ptr %netdev, i32 2344
  %0 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_urb, align 4
  %call2 = tail call i32 @usb_unlink_urb(ptr noundef %1) #10
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 5
  %2 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %tx_errors, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intr_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %1, label %do.end [
    i32 0, label %sw.epilog
    i32 -104, label %if.end.cleanup_crit_edge
    i32 -2, label %if.end.cleanup_crit_edge136
    i32 -108, label %if.end.cleanup_crit_edge137
  ]

if.end.cleanup_crit_edge137:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.cleanup_crit_edge136:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  %netdev = getelementptr inbounds %struct.rtl8150, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.27, ptr noundef %8, i32 noundef %1) #14
  br label %resubmit

sw.epilog:                                        ; preds = %if.end
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %9 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %transfer_buffer, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %13 = and i8 %12, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not = icmp eq i8 %13, 0
  br i1 %tobool4.not, label %sw.epilog.if.end34_crit_edge, label %if.then5

sw.epilog.if.end34_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then5:                                         ; preds = %sw.epilog
  %netdev6 = getelementptr inbounds %struct.rtl8150, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %netdev6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev6, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 36, i32 5
  %16 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %tx_errors, align 4
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %10, align 1
  %20 = and i8 %19, 36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool10.not = icmp eq i8 %20, 0
  br i1 %tobool10.not, label %if.then5.if.end15_crit_edge, label %if.then11

if.then5.if.end15_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then11:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %netdev6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev6, align 4
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 36, i32 16
  %23 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_aborted_errors, align 8
  %inc14 = add i32 %24, 1
  store i32 %inc14, ptr %tx_aborted_errors, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then5.if.end15_crit_edge
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %10, align 1
  %27 = and i8 %26, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool19.not = icmp eq i8 %27, 0
  br i1 %tobool19.not, label %if.end15.if.end24_crit_edge, label %if.then20

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %netdev6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev6, align 4
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 36, i32 20
  %30 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_window_errors, align 8
  %inc23 = add i32 %31, 1
  store i32 %inc23, ptr %tx_window_errors, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end15.if.end24_crit_edge
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %10, align 1
  %34 = and i8 %33, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool28.not = icmp eq i8 %34, 0
  br i1 %tobool28.not, label %if.end24.if.end34_crit_edge, label %if.then29

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %netdev6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %netdev6, align 4
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 36, i32 17
  %37 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_carrier_errors, align 4
  %inc32 = add i32 %38, 1
  store i32 %inc32, ptr %tx_carrier_errors, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end24.if.end34_crit_edge, %sw.epilog.if.end34_crit_edge
  %arrayidx35 = getelementptr i8, ptr %10, i32 2
  %39 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx35, align 1
  %41 = and i8 %40, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp = icmp eq i8 %41, 0
  %netdev40 = getelementptr inbounds %struct.rtl8150, ptr %3, i32 0, i32 3
  %42 = ptrtoint ptr %netdev40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %netdev40, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %state.i, align 4
  %46 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i = icmp eq i32 %46, 0
  br i1 %cmp, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end34
  br i1 %tobool.not.i, label %if.then41, label %if.then39.resubmit_crit_edge

if.then39.resubmit_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %resubmit

if.then41:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_carrier_off(ptr noundef %43) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intr_callback.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intr_callback, %if.then49)) #10
          to label %resubmit [label %if.then49], !srcloc !137

if.then49:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %netdev40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %netdev40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @intr_callback.__UNIQUE_ID_ddebug346, ptr noundef %48, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28) #10
  br label %resubmit

if.else:                                          ; preds = %if.end34
  br i1 %tobool.not.i, label %if.else.resubmit_crit_edge, label %if.then59

if.else.resubmit_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %resubmit

if.then59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_carrier_on(ptr noundef %43) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intr_callback.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intr_callback, %if.then74)) #10
          to label %resubmit [label %if.then74], !srcloc !137

if.then74:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %netdev40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %netdev40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @intr_callback.__UNIQUE_ID_ddebug347, ptr noundef %50, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28) #10
  br label %resubmit

resubmit:                                         ; preds = %if.then74, %if.then59, %if.else.resubmit_crit_edge, %if.then49, %if.then41, %if.then39.resubmit_crit_edge, %do.end
  %call83 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  %51 = zext i32 %call83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %call83, label %do.end93 [
    i32 -19, label %if.then86
    i32 0, label %resubmit.cleanup_crit_edge
  ]

resubmit.cleanup_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then86:                                        ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #12
  %netdev87 = getelementptr inbounds %struct.rtl8150, ptr %3, i32 0, i32 3
  %52 = ptrtoint ptr %netdev87 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %netdev87, align 4
  tail call void @netif_device_detach(ptr noundef %53) #10
  br label %cleanup

do.end93:                                         ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #12
  %udev = getelementptr inbounds %struct.rtl8150, ptr %3, i32 0, i32 1
  %54 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %udev, align 4
  %dev94 = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 15
  %bus = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 12
  %56 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus, align 8
  %bus_name = getelementptr inbounds %struct.usb_bus, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %bus_name to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus_name, align 4
  %devpath = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94, ptr noundef nonnull @.str.32, ptr noundef %59, ptr noundef %devpath, i32 noundef %call83) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end93, %if.then86, %resubmit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge136, %if.end.cleanup_crit_edge137, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_recv(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_bulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_skb = getelementptr inbounds %struct.rtl8150, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_skb, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %5, i32 noundef 1) #10
  %netdev = getelementptr inbounds %struct.rtl8150, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not = icmp eq i32 %1, 0
  br i1 %tobool4.not, label %if.end3.if.end9_crit_edge, label %do.end

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %dev6 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %11 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev6, align 4
  %dev7 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.38, ptr noundef %7, i32 noundef %1) #14
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end3.if.end9_crit_edge
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 103
  %15 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %16, i32 0, i32 12
  %18 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp.not.i.i = icmp eq i32 %19, %17
  br i1 %cmp.not.i.i, label %if.end9.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end9.netif_trans_update.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 %17, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end9.netif_trans_update.exit_crit_edge
  %21 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev, align 4
  %_tx.i.i22 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 103
  %23 = ptrtoint ptr %_tx.i.i22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_tx.i.i22, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %24) #10
  br label %cleanup

cleanup:                                          ; preds = %netif_trans_update.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @async_set_reg_cb(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %do.body, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @async_set_reg_cb.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@async_set_reg_cb, %if.then4)) #10
          to label %if.end6 [label %if.then4], !srcloc !137

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @async_set_reg_cb.__UNIQUE_ID_ddebug344, ptr noundef %dev5, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i32 noundef %3) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.body, %entry.if.end6_crit_edge
  tail call void @kfree(ptr noundef %1) #10
  tail call void @usb_free_urb(ptr noundef %urb) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8150_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @driver_name, i32 noundef 32) #10
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.51, i32 noundef 32) #10
  %udev = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
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
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.52, ptr noundef %5, ptr noundef %devpath.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8150_get_link_ksettings(ptr nocapture noundef readonly %netdev, ptr noundef %ecmd) #2 align 64 {
entry:
  %lpa = alloca i16, align 2
  %bmcr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lpa) #10
  %0 = ptrtoint ptr %lpa to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %lpa, align 2, !annotation !136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bmcr) #10
  %1 = ptrtoint ptr %bmcr to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %bmcr, align 2, !annotation !136
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 3
  %2 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %port, align 1
  %phy = getelementptr i8, ptr %netdev, i32 2436
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %phy, align 4
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 4
  %5 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %phy_address, align 2
  %udev.i = getelementptr i8, ptr %netdev, i32 2308
  %6 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev.i, align 4
  %call.i = call i32 @usb_control_msg_recv(ptr noundef %7, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext 320, i16 noundef zeroext 0, ptr noundef nonnull %bmcr, i16 noundef zeroext 2, i32 noundef 1000, i32 noundef 3072) #10
  %8 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev.i, align 4
  %call.i62 = call i32 @usb_control_msg_recv(ptr noundef %9, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext 326, i16 noundef zeroext 0, ptr noundef nonnull %lpa, i16 noundef zeroext 2, i32 noundef 1000, i32 noundef 3072) #10
  %10 = ptrtoint ptr %bmcr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bmcr, align 2
  %12 = and i16 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %if.else25, label %if.then

if.then:                                          ; preds = %entry
  %13 = ptrtoint ptr %lpa to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %lpa, align 2
  %15 = and i16 %14, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool6.not = icmp eq i16 %15, 0
  %cond = select i1 %tobool6.not, i32 10, i32 100
  %speed8 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %16 = ptrtoint ptr %speed8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond, ptr %speed8, align 4
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 5
  %17 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %autoneg, align 1
  br i1 %tobool6.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %18 = lshr i16 %14, 8
  %19 = trunc i16 %18 to i8
  br label %if.end41

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %20 = trunc i16 %14 to i8
  %21 = lshr i8 %20, 6
  br label %if.end41

if.else25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %autoneg27 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 5
  %22 = ptrtoint ptr %autoneg27 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %autoneg27, align 1
  %23 = and i16 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool30.not = icmp eq i16 %23, 0
  %cond31 = select i1 %tobool30.not, i32 10, i32 100
  %speed33 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %24 = ptrtoint ptr %speed33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond31, ptr %speed33, align 4
  %25 = lshr i16 %11, 8
  %26 = trunc i16 %25 to i8
  br label %if.end41

if.end41:                                         ; preds = %if.else25, %if.else, %if.then11
  %.sink63 = phi i8 [ %19, %if.then11 ], [ %21, %if.else ], [ %26, %if.else25 ]
  %27 = and i8 %.sink63, 1
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 2
  %28 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %duplex, align 4
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1
  call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef 719) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bmcr) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lpa) #10
  ret i32 0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !121, !123, !125}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @__initcall__kmod_rtl8150__349_953_rtl8150_driver_init6, !1, !"__initcall__kmod_rtl8150__349_953_rtl8150_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/rtl8150.c", i32 953, i32 1}
!2 = !{ptr @__exitcall_rtl8150_driver_exit, !1, !"__exitcall_rtl8150_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author350, !4, !"__UNIQUE_ID_author350", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/rtl8150.c", i32 955, i32 1}
!5 = !{ptr @__UNIQUE_ID_description351, !6, !"__UNIQUE_ID_description351", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/rtl8150.c", i32 956, i32 1}
!7 = !{ptr @__UNIQUE_ID_file352, !8, !"__UNIQUE_ID_file352", i1 false, i1 false}
!8 = !{!"../drivers/net/usb/rtl8150.c", i32 957, i32 1}
!9 = !{ptr @__UNIQUE_ID_license353, !8, !"__UNIQUE_ID_license353", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rtl8150_driver, !12, !"rtl8150_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/rtl8150.c", i32 943, i32 26}
!13 = !{ptr @driver_name, !14, !"driver_name", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/rtl8150.c", i32 146, i32 19}
!15 = !{ptr @rtl8150_probe.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/net/usb/rtl8150.c", i32 883, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/usb/rtl8150.c", i32 893, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rtl8150_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @rtl8150_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/usb/rtl8150.c", i32 897, i32 3}
!28 = !{ptr @rtl8150_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rtl8150_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/usb/rtl8150.c", i32 906, i32 3}
!32 = !{ptr @rtl8150_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rtl8150_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/usb/rtl8150.c", i32 910, i32 2}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rtl8150_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @rtl8150_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @__func__.read_bulk_callback, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/usb/rtl8150.c", i32 395, i32 7}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/usb/rtl8150.c", i32 396, i32 4}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @read_bulk_callback._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @read_bulk_callback._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/usb/rtl8150.c", i32 400, i32 4}
!48 = !{ptr @read_bulk_callback._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @read_bulk_callback._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @rtl8150_netdev_ops, !51, !"rtl8150_netdev_ops", i1 false, i1 false}
!51 = !{!"../drivers/net/usb/rtl8150.c", i32 851, i32 36}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/usb/rtl8150.c", i32 736, i32 3}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rtl8150_open._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @rtl8150_open._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/usb/rtl8150.c", i32 745, i32 3}
!59 = !{ptr @rtl8150_open._entry.24, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @rtl8150_open._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/usb/rtl8150.c", i32 481, i32 3}
!63 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @intr_callback._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @intr_callback._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/usb/rtl8150.c", i32 500, i32 4}
!68 = !{ptr @intr_callback.__UNIQUE_ID_ddebug346, !67, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/usb/rtl8150.c", i32 505, i32 4}
!71 = !{ptr @intr_callback.__UNIQUE_ID_ddebug347, !70, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/usb/rtl8150.c", i32 514, i32 3}
!74 = !{ptr @intr_callback._entry.31, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @intr_callback._entry_ptr.33, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/usb/rtl8150.c", i32 621, i32 3}
!78 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @enable_net_traffic._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @enable_net_traffic._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/usb/rtl8150.c", i32 693, i32 4}
!83 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @rtl8150_start_xmit._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @rtl8150_start_xmit._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/usb/rtl8150.c", i32 456, i32 3}
!88 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @write_bulk_callback._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @write_bulk_callback._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/usb/rtl8150.c", i32 662, i32 3}
!93 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @rtl8150_set_multicast._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @rtl8150_set_multicast._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/usb/rtl8150.c", i32 667, i32 3}
!98 = !{ptr @rtl8150_set_multicast.__UNIQUE_ID_ddebug348, !97, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/usb/rtl8150.c", i32 205, i32 3}
!101 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @async_set_registers._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @async_set_registers._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/usb/rtl8150.c", i32 173, i32 3}
!106 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @async_set_reg_cb.__UNIQUE_ID_ddebug344, !105, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/usb/rtl8150.c", i32 282, i32 2}
!110 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @rtl8150_set_mac_address.__UNIQUE_ID_ddebug345, !109, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/usb/rtl8150.c", i32 649, i32 2}
!114 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @rtl8150_tx_timeout._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @rtl8150_tx_timeout._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @ops, !118, !"ops", i1 false, i1 false}
!118 = !{!"../drivers/net/usb/rtl8150.c", i32 819, i32 33}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/usb/rtl8150.c", i32 773, i32 25}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../include/linux/usb.h", i32 912, i32 31}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/usb/rtl8150.c", i32 268, i32 30}
!125 = !{ptr @rtl8150_table, !126, !"rtl8150_table", i1 false, i1 false}
!126 = !{!"../drivers/net/usb/rtl8150.c", i32 112, i32 35}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{!"auto-init"}
!137 = !{i64 2148181760, i64 2148181765, i64 2148181778, i64 2148181822, i64 2148181856, i64 2148181877}
