; ModuleID = '/llk/IR_all_yes/drivers/net/usb/kaweth.c_pt.bc'
source_filename = "../drivers/net/usb/kaweth.c"
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
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.kaweth_device = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, %struct.wait_queue_head, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, [32 x i8], i16, %struct.kaweth_ethernet_configuration }
%struct.kaweth_ethernet_configuration = type <{ i8, i8, i8, [6 x i8], i32, i16, i16, i8 }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.firmware = type { i32, ptr, ptr }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__UNIQUE_ID_author344 = internal constant [165 x i8] c"kaweth.author=Michael Zappe <zapman@interlan.net>, Stephane Alnet <stephane@u-picardie.fr>, Brad Hards <bhards@bigpond.net.au> and Oliver Neukum <oliver@neukum.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description345 = internal constant [49 x i8] c"kaweth.description=KL5USB101 USB Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file346 = internal constant [35 x i8] c"kaweth.file=drivers/net/usb/kaweth\00", section ".modinfo", align 1
@__UNIQUE_ID_license347 = internal constant [19 x i8] c"kaweth.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware348 = internal constant [36 x i8] c"kaweth.firmware=kaweth/new_code.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware349 = internal constant [40 x i8] c"kaweth.firmware=kaweth/new_code_fix.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware350 = internal constant [40 x i8] c"kaweth.firmware=kaweth/trigger_code.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware351 = internal constant [44 x i8] c"kaweth.firmware=kaweth/trigger_code_fix.bin\00", section ".modinfo", align 1
@__initcall__kmod_kaweth__373_1115_kaweth_driver_init6 = internal global ptr @kaweth_driver_init, section ".initcall6.init", align 4
@kaweth_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @driver_name, ptr @kaweth_probe, ptr @kaweth_disconnect, ptr null, ptr @kaweth_suspend, ptr @kaweth_resume, ptr null, ptr null, ptr null, ptr @usb_klsi_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 96 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_kaweth_driver_exit = internal global ptr @kaweth_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kaweth\00", [25 x i8] zeroinitializer }, align 32
@driver_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kaweth\00", [25 x i8] zeroinitializer }, align 32
@usb_klsi_table = internal constant { [36 x %struct.usb_device_id], [192 x i8] } { [36 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1000, i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1211, i16 2305, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1286, i16 1000, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1286, i16 4600, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1367, i16 8194, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1367, i16 16384, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1381, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1381, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1381, i16 5, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1513, i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1513, i16 9, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1643, i16 8706, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1761, i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1761, i16 9, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1799, i16 256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1962, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 16384, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1993, i16 -20464, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2118, i16 4097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2118, i16 4098, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2138, i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2138, i16 9, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2173, i16 22276, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2385, i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2394, i16 12291, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4285, i16 5159, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4930, i16 516, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5074, i16 1024, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5253, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5253, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5701, i16 5, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5701, i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5701, i16 -32763, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5736, i16 803, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 16384, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [192 x i8] zeroinitializer }, align 32
@__const.kaweth_probe.bcast_addr = private unnamed_addr constant [6 x i8] c"\FF\FF\FF\FF\FF\FF", align 1
@kaweth_probe.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kaweth_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/net/usb/kaweth.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Kawasaki Device Probe (Device number:%d): 0x%4.4x:0x%4.4x:0x%4.4x\0A\00", [61 x i8] zeroinitializer }, align 32
@kaweth_probe.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Device at %p\0A\00", [18 x i8] zeroinitializer }, align 32
@kaweth_probe.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 -32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Descriptor length: %x type: %x\0A\00", [32 x i8] zeroinitializer }, align 32
@kaweth_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&kaweth->device_lock\00", [43 x i8] zeroinitializer }, align 32
@kaweth_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&kaweth->term_wait\00", [45 x i8] zeroinitializer }, align 32
@kaweth_probe.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 -28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Resetting.\0A\00", [20 x i8] zeroinitializer }, align 32
@kaweth_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 923, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Firmware present in device.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kaweth_probe._entry_ptr = internal global ptr @kaweth_probe._entry, section ".printk_index", align 4
@kaweth_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 926, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Downloading firmware...\0A\00", [39 x i8] zeroinitializer }, align 32
@kaweth_probe._entry_ptr.15 = internal global ptr @kaweth_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kaweth/new_code.bin\00", [44 x i8] zeroinitializer }, align 32
@kaweth_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 937, ptr @.str.19, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error downloading firmware (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@kaweth_probe._entry_ptr.20 = internal global ptr @kaweth_probe._entry.17, section ".printk_index", align 4
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kaweth/new_code_fix.bin\00", [40 x i8] zeroinitializer }, align 32
@kaweth_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 946, ptr @.str.19, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error downloading firmware fix (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@kaweth_probe._entry_ptr.24 = internal global ptr @kaweth_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kaweth/trigger_code.bin\00", [40 x i8] zeroinitializer }, align 32
@kaweth_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 955, ptr @.str.19, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error downloading trigger code (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@kaweth_probe._entry_ptr.28 = internal global ptr @kaweth_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"kaweth/trigger_code_fix.bin\00", [36 x i8] zeroinitializer }, align 32
@kaweth_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 964, ptr @.str.19, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error downloading trigger code fix (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@kaweth_probe._entry_ptr.32 = internal global ptr @kaweth_probe._entry.30, section ".printk_index", align 4
@kaweth_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 970, ptr @.str.19, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error triggering firmware (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@kaweth_probe._entry_ptr.35 = internal global ptr @kaweth_probe._entry.33, section ".printk_index", align 4
@kaweth_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 975, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Firmware loaded.  I'll be back...\0A\00", [61 x i8] zeroinitializer }, align 32
@kaweth_probe._entry_ptr.38 = internal global ptr @kaweth_probe._entry.36, section ".printk_index", align 4
@kaweth_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.1, ptr @.str.2, i32 985, ptr @.str.19, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Error reading configuration (%d), no net device created\0A\00", [39 x i8] zeroinitializer }, align 32
@kaweth_probe._entry_ptr.41 = internal global ptr @kaweth_probe._entry.39, section ".printk_index", align 4
@kaweth_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.1, ptr @.str.2, i32 989, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Statistics collection: %x\0A\00", [37 x i8] zeroinitializer }, align 32
@kaweth_probe._entry_ptr.44 = internal global ptr @kaweth_probe._entry.42, section ".printk_index", align 4
@kaweth_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.1, ptr @.str.2, i32 990, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Multicast filter limit: %x\0A\00", [36 x i8] zeroinitializer }, align 32
@kaweth_probe._entry_ptr.47 = internal global ptr @kaweth_probe._entry.45, section ".printk_index", align 4
@kaweth_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.1, ptr @.str.2, i32 991, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MTU: %d\0A\00", [23 x i8] zeroinitializer }, align 32
@kaweth_probe._entry_ptr.50 = internal global ptr @kaweth_probe._entry.48, section ".printk_index", align 4
@kaweth_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.1, ptr @.str.2, i32 992, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Read MAC address %pM\0A\00", [42 x i8] zeroinitializer }, align 32
@kaweth_probe._entry_ptr.53 = internal global ptr @kaweth_probe._entry.51, section ".printk_index", align 4
@kaweth_probe._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.1, ptr @.str.2, i32 997, ptr @.str.19, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Firmware not functioning properly, no net device created\0A\00", [38 x i8] zeroinitializer }, align 32
@kaweth_probe._entry_ptr.56 = internal global ptr @kaweth_probe._entry.54, section ".printk_index", align 4
@kaweth_probe.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.57, i8 0, i8 -6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error setting URB size\0A\00", [40 x i8] zeroinitializer }, align 32
@kaweth_probe._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.1, ptr @.str.2, i32 1007, ptr @.str.19, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error setting SOFS wait\0A\00", [39 x i8] zeroinitializer }, align 32
@kaweth_probe._entry_ptr.60 = internal global ptr @kaweth_probe._entry.58, section ".printk_index", align 4
@kaweth_probe._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.1, ptr @.str.2, i32 1017, ptr @.str.19, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error setting receive filter\0A\00", [34 x i8] zeroinitializer }, align 32
@kaweth_probe._entry_ptr.63 = internal global ptr @kaweth_probe._entry.61, section ".printk_index", align 4
@kaweth_probe.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.64, i8 0, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Initializing net device.\0A\00", [38 x i8] zeroinitializer }, align 32
@kaweth_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @kaweth_open, ptr @kaweth_close, ptr @kaweth_start_xmit, ptr null, ptr null, ptr null, ptr @kaweth_set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kaweth_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kaweth_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@kaweth_probe.__key.65 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&kaweth->lowmem_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@kaweth_probe.__key.67 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&kaweth->lowmem_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@kaweth_probe._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.1, ptr @.str.2, i32 1060, ptr @.str.19, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error registering netdev.\0A\00", [37 x i8] zeroinitializer }, align 32
@kaweth_probe._entry_ptr.71 = internal global ptr @kaweth_probe._entry.69, section ".printk_index", align 4
@kaweth_probe._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.1, ptr @.str.2, i32 1065, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"kaweth interface created at %s\0A\00", [32 x i8] zeroinitializer }, align 32
@kaweth_probe._entry_ptr.74 = internal global ptr @kaweth_probe._entry.72, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kaweth_reset.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 0, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kaweth_reset\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"kaweth_reset() returns %d.\0A\00", [36 x i8] zeroinitializer }, align 32
@kaweth_download_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 309, ptr @.str.19, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Firmware request failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kaweth_download_firmware\00", [39 x i8] zeroinitializer }, align 32
@kaweth_download_firmware._entry_ptr = internal global ptr @kaweth_download_firmware._entry, section ".printk_index", align 4
@kaweth_download_firmware._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 315, ptr @.str.19, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Firmware too big: %zu\0A\00", [41 x i8] zeroinitializer }, align 32
@kaweth_download_firmware._entry_ptr.81 = internal global ptr @kaweth_download_firmware._entry.79, section ".printk_index", align 4
@kaweth_download_firmware.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.2, ptr @.str.82, i8 0, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"High: %i, Low:%i\0A\00", [46 x i8] zeroinitializer }, align 32
@kaweth_download_firmware.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.2, ptr @.str.83, i8 0, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Downloading firmware at %p to kaweth device at %p\0A\00", [45 x i8] zeroinitializer }, align 32
@kaweth_download_firmware.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.2, ptr @.str.84, i8 0, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Firmware length: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@kaweth_set_urb_size.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.2, ptr @.str.86, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kaweth_set_urb_size\00", [44 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Setting URB size to %d\0A\00", [40 x i8] zeroinitializer }, align 32
@kaweth_set_sofs_wait.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.88, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kaweth_set_sofs_wait\00", [43 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Set SOFS wait to %d\0A\00", [43 x i8] zeroinitializer }, align 32
@kaweth_set_receive_filter.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.90, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kaweth_set_receive_filter\00", [38 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Set receive filter to %d\0A\00", [38 x i8] zeroinitializer }, align 32
@kaweth_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 591, ptr @.str.19, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Interface cannot be resumed.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kaweth_open\00", [20 x i8] zeroinitializer }, align 32
@kaweth_open._entry_ptr = internal global ptr @kaweth_open._entry, section ".printk_index", align 4
@kaweth_resubmit_rx_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 480, ptr @.str.19, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"resubmitting rx_urb %d failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kaweth_resubmit_rx_urb\00", [41 x i8] zeroinitializer }, align 32
@kaweth_resubmit_rx_urb._entry_ptr = internal global ptr @kaweth_resubmit_rx_urb._entry, section ".printk_index", align 4
@kaweth_usb_receive.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.96, i8 0, i8 -128, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kaweth_usb_receive\00", [45 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Status was -EPIPE.\0A\00", [44 x i8] zeroinitializer }, align 32
@kaweth_usb_receive.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.97, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Status was -ECONNRESET or -ESHUTDOWN.\0A\00", [57 x i8] zeroinitializer }, align 32
@kaweth_usb_receive.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.98, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Status was -EPROTO, -ETIME, or -EILSEQ.\0A\00", [55 x i8] zeroinitializer }, align 32
@kaweth_usb_receive.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.99, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Status was -EOVERFLOW.\0A\00", [40 x i8] zeroinitializer }, align 32
@kaweth_usb_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.2, i32 542, ptr @.str.19, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s RX status: %d count: %d packet_len: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@kaweth_usb_receive._entry_ptr = internal global ptr @kaweth_usb_receive._entry, section ".printk_index", align 4
@kaweth_usb_receive._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.95, ptr @.str.2, i32 551, ptr @.str.19, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Packet length too long for USB frame (pkt_len: %x, count: %x)\0A\00", [33 x i8] zeroinitializer }, align 32
@kaweth_usb_receive._entry_ptr.103 = internal global ptr @kaweth_usb_receive._entry.101, section ".printk_index", align 4
@kaweth_usb_receive._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.95, ptr @.str.2, i32 553, ptr @.str.19, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Packet len & 2047: %x\0A\00", [41 x i8] zeroinitializer }, align 32
@kaweth_usb_receive._entry_ptr.106 = internal global ptr @kaweth_usb_receive._entry.104, section ".printk_index", align 4
@kaweth_usb_receive._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.95, ptr @.str.2, i32 554, ptr @.str.19, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Count 2: %x\0A\00", [19 x i8] zeroinitializer }, align 32
@kaweth_usb_receive._entry_ptr.109 = internal global ptr @kaweth_usb_receive._entry.107, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kaweth_resubmit_int_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.2, i32 406, ptr @.str.19, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"can't resubmit intr, %s-%s, status %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kaweth_resubmit_int_urb\00", [40 x i8] zeroinitializer }, align 32
@kaweth_resubmit_int_urb._entry_ptr = internal global ptr @kaweth_resubmit_int_urb._entry, section ".printk_index", align 4
@kaweth_async_set_rx_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 805, ptr @.str.19, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set Rx mode: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kaweth_async_set_rx_mode\00", [39 x i8] zeroinitializer }, align 32
@kaweth_async_set_rx_mode._entry_ptr = internal global ptr @kaweth_async_set_rx_mode._entry, section ".printk_index", align 4
@kaweth_async_set_rx_mode.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.2, ptr @.str.114, i8 0, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Set Rx mode to %d\0A\00", [45 x i8] zeroinitializer }, align 32
@kaweth_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 737, ptr @.str.117, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kaweth failed tx_urb %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kaweth_start_xmit\00", [46 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@kaweth_start_xmit._entry_ptr = internal global ptr @kaweth_start_xmit._entry, section ".printk_index", align 4
@kaweth_usb_transmit_complete.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.2, ptr @.str.119, i8 0, i8 -84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"kaweth_usb_transmit_complete\00", [35 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: TX status %d.\0A\00", [45 x i8] zeroinitializer }, align 32
@kaweth_set_rx_mode.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.120, ptr @.str.2, ptr @.str.121, i8 0, i8 -65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kaweth_set_rx_mode\00", [45 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Setting Rx mode to %d\0A\00", [41 x i8] zeroinitializer }, align 32
@kaweth_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 818, ptr @.str.117, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Tx timed out. Resetting.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kaweth_tx_timeout\00", [46 x i8] zeroinitializer }, align 32
@kaweth_tx_timeout._entry_ptr = internal global ptr @kaweth_tx_timeout._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kaweth_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.2, i32 1096, ptr @.str.117, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unregistering non-existent device\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kaweth_disconnect\00", [46 x i8] zeroinitializer }, align 32
@kaweth_disconnect._entry_ptr = internal global ptr @kaweth_disconnect._entry, section ".printk_index", align 4
@kaweth_disconnect.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.2, ptr @.str.126, i8 1, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unregistering net device\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.127 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.128 = internal global [9 x i64] [i64 7, i64 32, i64 4294967188, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967234, i64 4294967264]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967175]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.131 = private unnamed_addr constant [14 x i8] c"kaweth_driver\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 156, i32 26 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1115, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 99, i32 19 }
@___asan_gen_.140 = private unnamed_addr constant [15 x i8] c"usb_klsi_table\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 112, i32 35 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 889, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 895, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 897, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 910, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 911, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 913, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 923, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 926, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 933, i32 13 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 936, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 942, i32 13 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 945, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 951, i32 13 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 954, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 961, i32 13 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 964, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 970, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 975, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 985, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 989, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 990, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 991, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 992, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 997, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1002, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1007, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1017, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1021, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant [18 x i8] c"kaweth_netdev_ops\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 866, i32 36 }
@___asan_gen_.299 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 672, i32 33 }
@___asan_gen_.308 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1055, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1060, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1064, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 378, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 309, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 314, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 329, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 332, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 335, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 253, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 268, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 284, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 591, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 479, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 512, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 519, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 525, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 530, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 540, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 549, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 552, i32 4 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 554, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 403, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 804, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 807, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 737, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 687, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 766, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 818, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1096, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.495 = private constant [28 x i8] c"../drivers/net/usb/kaweth.c\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1101, i32 2 }
@llvm.compiler.used = appending global [164 x ptr] [ptr @__UNIQUE_ID_author344, ptr @__UNIQUE_ID_description345, ptr @__UNIQUE_ID_file346, ptr @__UNIQUE_ID_firmware348, ptr @__UNIQUE_ID_firmware349, ptr @__UNIQUE_ID_firmware350, ptr @__UNIQUE_ID_firmware351, ptr @__UNIQUE_ID_license347, ptr @__exitcall_kaweth_driver_exit, ptr @__initcall__kmod_kaweth__373_1115_kaweth_driver_init6, ptr @kaweth_async_set_rx_mode._entry, ptr @kaweth_async_set_rx_mode._entry_ptr, ptr @kaweth_disconnect._entry, ptr @kaweth_disconnect._entry_ptr, ptr @kaweth_download_firmware._entry, ptr @kaweth_download_firmware._entry.79, ptr @kaweth_download_firmware._entry_ptr, ptr @kaweth_download_firmware._entry_ptr.81, ptr @kaweth_driver_exit, ptr @kaweth_open._entry, ptr @kaweth_open._entry_ptr, ptr @kaweth_probe._entry, ptr @kaweth_probe._entry.13, ptr @kaweth_probe._entry.17, ptr @kaweth_probe._entry.22, ptr @kaweth_probe._entry.26, ptr @kaweth_probe._entry.30, ptr @kaweth_probe._entry.33, ptr @kaweth_probe._entry.36, ptr @kaweth_probe._entry.39, ptr @kaweth_probe._entry.42, ptr @kaweth_probe._entry.45, ptr @kaweth_probe._entry.48, ptr @kaweth_probe._entry.51, ptr @kaweth_probe._entry.54, ptr @kaweth_probe._entry.58, ptr @kaweth_probe._entry.61, ptr @kaweth_probe._entry.69, ptr @kaweth_probe._entry.72, ptr @kaweth_probe._entry_ptr, ptr @kaweth_probe._entry_ptr.15, ptr @kaweth_probe._entry_ptr.20, ptr @kaweth_probe._entry_ptr.24, ptr @kaweth_probe._entry_ptr.28, ptr @kaweth_probe._entry_ptr.32, ptr @kaweth_probe._entry_ptr.35, ptr @kaweth_probe._entry_ptr.38, ptr @kaweth_probe._entry_ptr.41, ptr @kaweth_probe._entry_ptr.44, ptr @kaweth_probe._entry_ptr.47, ptr @kaweth_probe._entry_ptr.50, ptr @kaweth_probe._entry_ptr.53, ptr @kaweth_probe._entry_ptr.56, ptr @kaweth_probe._entry_ptr.60, ptr @kaweth_probe._entry_ptr.63, ptr @kaweth_probe._entry_ptr.71, ptr @kaweth_probe._entry_ptr.74, ptr @kaweth_resubmit_int_urb._entry, ptr @kaweth_resubmit_int_urb._entry_ptr, ptr @kaweth_resubmit_rx_urb._entry, ptr @kaweth_resubmit_rx_urb._entry_ptr, ptr @kaweth_start_xmit._entry, ptr @kaweth_start_xmit._entry_ptr, ptr @kaweth_tx_timeout._entry, ptr @kaweth_tx_timeout._entry_ptr, ptr @kaweth_usb_receive._entry, ptr @kaweth_usb_receive._entry.101, ptr @kaweth_usb_receive._entry.104, ptr @kaweth_usb_receive._entry.107, ptr @kaweth_usb_receive._entry_ptr, ptr @kaweth_usb_receive._entry_ptr.103, ptr @kaweth_usb_receive._entry_ptr.106, ptr @kaweth_usb_receive._entry_ptr.109, ptr @kaweth_driver, ptr @.str, ptr @driver_name, ptr @usb_klsi_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @kaweth_probe.__key, ptr @.str.6, ptr @kaweth_probe.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @kaweth_netdev_ops, ptr @ops, ptr @kaweth_probe.__key.65, ptr @.str.66, ptr @kaweth_probe.__key.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126], section "llvm.metadata"
@0 = internal global [122 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_klsi_table to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe.__key.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe.__key.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_probe._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_download_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_download_firmware._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_resubmit_rx_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_usb_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_usb_receive._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_usb_receive._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_usb_receive._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_resubmit_int_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_async_set_rx_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaweth_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kaweth_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @kaweth_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kaweth_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @kaweth_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kaweth_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kaweth_probe.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kaweth_probe, %if.then)) #8
          to label %do.body9 [label %if.then], !srcloc !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 8
  %idVendor = getelementptr i8, ptr %1, i32 936
  %4 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %idVendor, align 8
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %idProduct = getelementptr i8, ptr %1, i32 938
  %7 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idProduct, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv6 = zext i16 %9 to i32
  %bcdDevice = getelementptr i8, ptr %1, i32 940
  %10 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bcdDevice, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv8 = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kaweth_probe.__UNIQUE_ID_ddebug366, ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %3, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv8) #8
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kaweth_probe.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kaweth_probe, %if.then21)) #8
          to label %do.body25 [label %if.then21], !srcloc !265

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kaweth_probe.__UNIQUE_ID_ddebug367, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef %add.ptr.i) #8
  br label %do.body25

do.body25:                                        ; preds = %if.then21, %do.body9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kaweth_probe.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kaweth_probe, %if.then37)) #8
          to label %do.end44 [label %if.then37], !srcloc !265

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %descriptor38 = getelementptr i8, ptr %1, i32 928
  %13 = ptrtoint ptr %descriptor38 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %descriptor38, align 8
  %conv39 = zext i8 %14 to i32
  %bDescriptorType = getelementptr i8, ptr %1, i32 929
  %15 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bDescriptorType, align 1
  %conv41 = zext i8 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kaweth_probe.__UNIQUE_ID_ddebug368, ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %conv39, i32 noundef %conv41) #8
  br label %do.end44

do.end44:                                         ; preds = %if.then37, %do.body25
  %call45 = tail call ptr @alloc_etherdev_mqs(i32 noundef 320, i32 noundef 1, i32 noundef 1) #8
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %do.end44.cleanup_crit_edge, label %if.end48

do.end44.cleanup_crit_edge:                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %do.end44
  %add.ptr.i429 = getelementptr i8, ptr %call45, i32 2304
  %dev50 = getelementptr i8, ptr %call45, i32 2472
  %17 = ptrtoint ptr %dev50 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %dev50, align 4
  %net = getelementptr i8, ptr %call45, i32 2480
  %18 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call45, ptr %net, align 4
  %intf51 = getelementptr i8, ptr %call45, i32 2476
  %19 = ptrtoint ptr %intf51 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %intf, ptr %intf51, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %add.ptr.i429, ptr noundef nonnull @.str.6, ptr noundef nonnull @kaweth_probe.__key, i16 noundef signext 3) #8
  %term_wait = getelementptr i8, ptr %call45, i32 2484
  tail call void @__init_waitqueue_head(ptr noundef %term_wait, ptr noundef nonnull @.str.8, ptr noundef nonnull @kaweth_probe.__key.7) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kaweth_probe.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kaweth_probe, %if.then71)) #8
          to label %do.end74 [label %if.then71], !srcloc !265

if.then71:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kaweth_probe.__UNIQUE_ID_ddebug369, ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  br label %do.end74

do.end74:                                         ; preds = %if.then71, %if.end48
  tail call fastcc void @kaweth_reset(ptr noundef %add.ptr.i429)
  %bcdDevice77 = getelementptr i8, ptr %1, i32 940
  %20 = ptrtoint ptr %bcdDevice77 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %bcdDevice77, align 4
  %22 = and i16 %21, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool79.not = icmp eq i16 %22, 0
  br i1 %tobool79.not, label %do.end86, label %do.end83

do.end83:                                         ; preds = %do.end74
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.10) #11
  %23 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev50, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i.i = shl i32 %26, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %configuration.i = getelementptr i8, ptr %call45, i32 2606
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %configuration.i, i16 noundef zeroext 18, i32 noundef 30000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp137 = icmp slt i32 %call3.i, 0
  br i1 %cmp137, label %do.end142, label %do.end146

do.end86:                                         ; preds = %do.end74
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.14) #11
  %call87 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  %27 = inttoptr i32 %call87 to ptr
  %firmware_buf = getelementptr i8, ptr %call45, i32 2568
  %28 = ptrtoint ptr %firmware_buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %firmware_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool89.not = icmp eq i32 %call87, 0
  br i1 %tobool89.not, label %do.end86.err_free_netdev_crit_edge, label %if.end91

do.end86.err_free_netdev_crit_edge:               ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_netdev

if.end91:                                         ; preds = %do.end86
  %call92 = tail call fastcc i32 @kaweth_download_firmware(ptr noundef %add.ptr.i429, ptr noundef nonnull @.str.16, i8 noundef zeroext 100, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp = icmp slt i32 %call92, 0
  br i1 %cmp, label %do.end97, label %if.end98

do.end97:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %call92) #11
  br label %err_fw

if.end98:                                         ; preds = %if.end91
  %call99 = tail call fastcc i32 @kaweth_download_firmware(ptr noundef %add.ptr.i429, ptr noundef nonnull @.str.21, i8 noundef zeroext 100, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %do.end105, label %if.end106

do.end105:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %call99) #11
  br label %err_fw

if.end106:                                        ; preds = %if.end98
  %call107 = tail call fastcc i32 @kaweth_download_firmware(ptr noundef %add.ptr.i429, ptr noundef nonnull @.str.25, i8 noundef zeroext 126, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %do.end113, label %if.end114

do.end113:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %call107) #11
  br label %err_fw

if.end114:                                        ; preds = %if.end106
  %call115 = tail call fastcc i32 @kaweth_download_firmware(ptr noundef %add.ptr.i429, ptr noundef nonnull @.str.29, i8 noundef zeroext 126, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %do.end121, label %if.end122

do.end121:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %call115) #11
  br label %err_fw

if.end122:                                        ; preds = %if.end114
  %call123 = tail call fastcc i32 @kaweth_trigger_firmware(ptr noundef %add.ptr.i429)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %do.end129, label %do.end133

do.end129:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %call123) #11
  br label %err_fw

do.end133:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.37) #11
  br label %err_fw

err_fw:                                           ; preds = %do.end133, %do.end129, %do.end121, %do.end113, %do.end105, %do.end97
  %29 = ptrtoint ptr %firmware_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %firmware_buf, align 4
  %31 = ptrtoint ptr %30 to i32
  tail call void @free_pages(i32 noundef %31, i32 noundef 0) #8
  tail call void @free_netdev(ptr noundef nonnull %call45) #8
  br label %cleanup

do.end142:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40, i32 noundef %call3.i) #11
  br label %err_free_netdev

do.end146:                                        ; preds = %do.end83
  %statistics_mask = getelementptr i8, ptr %call45, i32 2615
  %32 = ptrtoint ptr %statistics_mask to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %statistics_mask, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %33) #11
  %max_multicast_filters = getelementptr i8, ptr %call45, i32 2621
  %34 = ptrtoint ptr %max_multicast_filters to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %max_multicast_filters, align 1
  %36 = and i16 %35, 32767
  %and = zext i16 %36 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.46, i32 noundef %and) #11
  %segment_size = getelementptr i8, ptr %call45, i32 2619
  %37 = ptrtoint ptr %segment_size to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %segment_size, align 1
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %conv156 = zext i16 %39 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.49, i32 noundef %conv156) #11
  %hw_addr = getelementptr i8, ptr %call45, i32 2609
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.52, ptr noundef %hw_addr) #11
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %hw_addr, ptr noundef nonnull dereferenceable(6) @__const.kaweth_probe.bcast_addr, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool164.not = icmp eq i32 %bcmp, 0
  br i1 %tobool164.not, label %do.end168, label %if.end169

do.end168:                                        ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.55) #11
  br label %err_free_netdev

if.end169:                                        ; preds = %do.end146
  %call170 = tail call fastcc i32 @kaweth_set_urb_size(ptr noundef %add.ptr.i429)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %cmp171 = icmp slt i32 %call170, 0
  br i1 %cmp171, label %do.body174, label %if.end190

do.body174:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kaweth_probe.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kaweth_probe, %if.then186)) #8
          to label %err_free_netdev [label %if.then186], !srcloc !265

if.then186:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kaweth_probe.__UNIQUE_ID_ddebug370, ptr noundef %dev1, ptr noundef nonnull @.str.57) #8
  br label %err_free_netdev

if.end190:                                        ; preds = %if.end169
  %call191 = tail call fastcc i32 @kaweth_set_sofs_wait(ptr noundef %add.ptr.i429)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %cmp192 = icmp slt i32 %call191, 0
  br i1 %cmp192, label %do.end197, label %if.end198

do.end197:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.59) #11
  br label %err_free_netdev

if.end198:                                        ; preds = %if.end190
  %call199 = tail call fastcc i32 @kaweth_set_receive_filter(ptr noundef %add.ptr.i429)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %cmp200 = icmp slt i32 %call199, 0
  br i1 %cmp200, label %do.end205, label %do.body207

do.end205:                                        ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.62) #11
  br label %err_free_netdev

do.body207:                                       ; preds = %if.end198
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kaweth_probe.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kaweth_probe, %if.then219)) #8
          to label %do.end222 [label %if.then219], !srcloc !265

if.then219:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kaweth_probe.__UNIQUE_ID_ddebug371, ptr noundef %dev1, ptr noundef nonnull @.str.64) #8
  br label %do.end222

do.end222:                                        ; preds = %if.then219, %do.body207
  %call223 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %tx_urb = getelementptr i8, ptr %call45, i32 2540
  %40 = ptrtoint ptr %tx_urb to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call223, ptr %tx_urb, align 4
  %tobool225.not = icmp eq ptr %call223, null
  br i1 %tobool225.not, label %do.end222.err_free_netdev_crit_edge, label %if.end227

do.end222.err_free_netdev_crit_edge:              ; preds = %do.end222
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_netdev

if.end227:                                        ; preds = %do.end222
  %call228 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %rx_urb = getelementptr i8, ptr %call45, i32 2536
  %41 = ptrtoint ptr %rx_urb to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call228, ptr %rx_urb, align 4
  %tobool230.not = icmp eq ptr %call228, null
  br i1 %tobool230.not, label %if.end227.err_only_tx_crit_edge, label %if.end232

if.end227.err_only_tx_crit_edge:                  ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_only_tx

if.end232:                                        ; preds = %if.end227
  %call233 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %irq_urb = getelementptr i8, ptr %call45, i32 2544
  %42 = ptrtoint ptr %irq_urb to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call233, ptr %irq_urb, align 4
  %tobool235.not = icmp eq ptr %call233, null
  br i1 %tobool235.not, label %if.end232.err_tx_and_rx_crit_edge, label %if.end237

if.end232.err_tx_and_rx_crit_edge:                ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_tx_and_rx

if.end237:                                        ; preds = %if.end232
  %43 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev50, align 4
  %intbufferhandle = getelementptr i8, ptr %call45, i32 2548
  %call239 = tail call ptr @usb_alloc_coherent(ptr noundef %44, i32 noundef 4, i32 noundef 3264, ptr noundef %intbufferhandle) #8
  %intbuffer = getelementptr i8, ptr %call45, i32 2552
  %45 = ptrtoint ptr %intbuffer to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call239, ptr %intbuffer, align 4
  %tobool241.not = icmp eq ptr %call239, null
  br i1 %tobool241.not, label %if.end237.err_tx_and_rx_and_irq_crit_edge, label %if.end243

if.end237.err_tx_and_rx_and_irq_crit_edge:        ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_tx_and_rx_and_irq

if.end243:                                        ; preds = %if.end237
  %46 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev50, align 4
  %rxbufferhandle = getelementptr i8, ptr %call45, i32 2556
  %call245 = tail call ptr @usb_alloc_coherent(ptr noundef %47, i32 noundef 1664, i32 noundef 3264, ptr noundef %rxbufferhandle) #8
  %rx_buf = getelementptr i8, ptr %call45, i32 2560
  %48 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call245, ptr %rx_buf, align 4
  %tobool247.not = icmp eq ptr %call245, null
  br i1 %tobool247.not, label %if.end243.err_all_but_rxbuf_crit_edge, label %if.end249

if.end243.err_all_but_rxbuf_crit_edge:            ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_all_but_rxbuf

if.end249:                                        ; preds = %if.end243
  %broadcast = getelementptr inbounds %struct.net_device, ptr %call45, i32 0, i32 99
  %49 = call ptr @memset(ptr %broadcast, i32 255, i32 6)
  tail call void @dev_addr_mod(ptr noundef nonnull %call45, i32 noundef 0, ptr noundef %hw_addr, i32 noundef 6) #8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call45, i32 0, i32 16
  %50 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @kaweth_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call45, i32 0, i32 115
  %51 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 500, ptr %watchdog_timeo, align 4
  %52 = ptrtoint ptr %segment_size to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %segment_size, align 1
  %54 = tail call i16 @llvm.bswap.i16(i16 %53)
  %conv255 = zext i16 %54 to i32
  %mtu = getelementptr inbounds %struct.net_device, ptr %call45, i32 0, i32 20
  %55 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv255, ptr %mtu, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call45, i32 0, i32 44
  %56 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @ops, ptr %ethtool_ops, align 16
  %lowmem_work = getelementptr i8, ptr %call45, i32 2372
  tail call void @__init_work(ptr noundef %lowmem_work, i32 noundef 0) #8
  %57 = ptrtoint ptr %lowmem_work to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -64, ptr %lowmem_work, align 4
  %lockdep_map = getelementptr i8, ptr %call45, i32 2388
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.66, ptr noundef nonnull @kaweth_probe.__key.65, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry264 = getelementptr i8, ptr %call45, i32 2376
  %58 = ptrtoint ptr %entry264 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %entry264, ptr %entry264, align 4
  %prev.i = getelementptr i8, ptr %call45, i32 2380
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %entry264, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call45, i32 2384
  %60 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @kaweth_resubmit_tl, ptr %func, align 4
  %timer = getelementptr i8, ptr %call45, i32 2416
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.68, ptr noundef nonnull @kaweth_probe.__key.67) #8
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %61 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr.i429, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call45, i32 0, i32 133, i32 1
  %62 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %dev1, ptr %parent, align 8
  %call276 = tail call i32 @register_netdev(ptr noundef nonnull %call45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call276)
  %cmp277.not = icmp eq i32 %call276, 0
  br i1 %cmp277.not, label %do.end286, label %do.end282

do.end282:                                        ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.70) #11
  %63 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %driver_data.i.i, align 4
  %64 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev50, align 4
  %66 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rx_buf, align 4
  %68 = ptrtoint ptr %rxbufferhandle to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rxbufferhandle, align 4
  tail call void @usb_free_coherent(ptr noundef %65, i32 noundef 1664, ptr noundef %67, i32 noundef %69) #8
  br label %err_all_but_rxbuf

do.end286:                                        ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.73, ptr noundef %71) #11
  br label %cleanup

err_all_but_rxbuf:                                ; preds = %do.end282, %if.end243.err_all_but_rxbuf_crit_edge
  %72 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev50, align 4
  %74 = ptrtoint ptr %intbuffer to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %intbuffer, align 4
  %76 = ptrtoint ptr %intbufferhandle to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %intbufferhandle, align 4
  tail call void @usb_free_coherent(ptr noundef %73, i32 noundef 4, ptr noundef %75, i32 noundef %77) #8
  br label %err_tx_and_rx_and_irq

err_tx_and_rx_and_irq:                            ; preds = %err_all_but_rxbuf, %if.end237.err_tx_and_rx_and_irq_crit_edge
  %78 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %irq_urb, align 4
  tail call void @usb_free_urb(ptr noundef %79) #8
  br label %err_tx_and_rx

err_tx_and_rx:                                    ; preds = %err_tx_and_rx_and_irq, %if.end232.err_tx_and_rx_crit_edge
  %80 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rx_urb, align 4
  tail call void @usb_free_urb(ptr noundef %81) #8
  br label %err_only_tx

err_only_tx:                                      ; preds = %err_tx_and_rx, %if.end227.err_only_tx_crit_edge
  %82 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tx_urb, align 4
  tail call void @usb_free_urb(ptr noundef %83) #8
  br label %err_free_netdev

err_free_netdev:                                  ; preds = %err_only_tx, %do.end222.err_free_netdev_crit_edge, %do.end205, %do.end197, %if.then186, %do.body174, %do.end168, %do.end142, %do.end86.err_free_netdev_crit_edge
  %rv.0 = phi i32 [ -5, %do.end142 ], [ -5, %if.then186 ], [ -5, %do.end197 ], [ -5, %do.end205 ], [ -5, %err_only_tx ], [ -5, %do.end222.err_free_netdev_crit_edge ], [ -5, %do.end168 ], [ -12, %do.end86.err_free_netdev_crit_edge ], [ -5, %do.body174 ]
  tail call void @free_netdev(ptr noundef nonnull %call45) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_netdev, %do.end286, %err_fw, %do.end44.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.0, %err_free_netdev ], [ 0, %do.end286 ], [ -5, %err_fw ], [ -12, %do.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kaweth_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.124) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %net = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kaweth_disconnect.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kaweth_disconnect, %if.then7)) #8
          to label %do.end13 [label %if.then7], !srcloc !265

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @kaweth_disconnect.__UNIQUE_ID_ddebug372, ptr noundef %5, ptr noundef nonnull @.str.126) #8
  br label %do.end13

do.end13:                                         ; preds = %if.then7, %if.end
  tail call void @unregister_netdev(ptr noundef %3) #8
  %rx_urb = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_urb, align 4
  tail call void @usb_free_urb(ptr noundef %7) #8
  %tx_urb = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_urb, align 4
  tail call void @usb_free_urb(ptr noundef %9) #8
  %irq_urb = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_urb, align 4
  tail call void @usb_free_urb(ptr noundef %11) #8
  %dev14 = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev14, align 4
  %rx_buf = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_buf, align 4
  %rxbufferhandle = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %rxbufferhandle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rxbufferhandle, align 4
  tail call void @usb_free_coherent(ptr noundef %13, i32 noundef 1664, ptr noundef %15, i32 noundef %17) #8
  %18 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev14, align 4
  %intbuffer = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 16
  %20 = ptrtoint ptr %intbuffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %intbuffer, align 4
  %intbufferhandle = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 15
  %22 = ptrtoint ptr %intbufferhandle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %intbufferhandle, align 4
  tail call void @usb_free_coherent(ptr noundef %19, i32 noundef 4, ptr noundef %21, i32 noundef %23) #8
  tail call void @free_netdev(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kaweth_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %status = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %or = or i32 %3, 4
  store i32 %or, ptr %status, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #8
  %irq_urb.i = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %irq_urb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #8
  %rx_urb.i = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #8
  %tx_urb.i = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #8
  %lowmem_work.i = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 7
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %lowmem_work.i) #8
  %10 = ptrtoint ptr %irq_urb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #8
  %12 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kaweth_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %status = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %and = and i32 %3, -5
  store i32 %and, ptr %status, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #8
  %opened = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call fastcc i32 @kaweth_resubmit_rx_urb(ptr noundef %1, i32 noundef 3072)
  %irq_urb.i = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %irq_urb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_urb.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef 3072) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -12
  %suspend_lowmem_ctrl.i = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 4
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i, !prof !266

if.end.thread.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %suspend_lowmem_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %suspend_lowmem_ctrl.i, align 4
  %lowmem_work.i = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %lowmem_work.i, i32 noundef 25) #8
  br label %do.end.i

if.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %suspend_lowmem_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %suspend_lowmem_ctrl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %if.end.thread.i
  %intf.i = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  %dev6.i = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev6.i, align 4
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.110, ptr noundef %18, ptr noundef %devpath.i, i32 noundef %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kaweth_reset(ptr nocapture noundef readonly %kaweth) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @usb_reset_configuration(ptr noundef %1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kaweth_reset.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kaweth_reset, %if.then)) #8
          to label %do.end7 [label %if.then], !srcloc !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 10
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @kaweth_reset.__UNIQUE_ID_ddebug358, ptr noundef %13, ptr noundef nonnull @.str.76, i32 noundef %call) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kaweth_download_firmware(ptr noundef %kaweth, ptr noundef %fwname, i8 noundef zeroext %interrupt, i8 noundef zeroext %type) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #8
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !267
  %dev = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 8
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %fwname, ptr noundef %dev1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 9
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.77) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %8)
  %cmp = icmp ugt i32 %8, 4096
  br i1 %cmp, label %do.end6, label %if.end10

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %intf7 = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 9
  %9 = ptrtoint ptr %intf7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf7, align 4
  %dev8 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.80, i32 noundef %8) #11
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %12) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %firmware_buf = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 20
  %13 = ptrtoint ptr %firmware_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %firmware_buf, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = call ptr @memcpy(ptr %14, ptr %16, i32 %8)
  %18 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %19) #8
  %20 = trunc i32 %8 to i8
  %conv = add i8 %20, -7
  %21 = ptrtoint ptr %firmware_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %firmware_buf, align 4
  %arrayidx = getelementptr i8, ptr %22, i32 2
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %arrayidx, align 1
  %24 = lshr i32 %8, 8
  %conv14 = trunc i32 %24 to i8
  %25 = load ptr, ptr %firmware_buf, align 4
  %arrayidx16 = getelementptr i8, ptr %25, i32 3
  %26 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv14, ptr %arrayidx16, align 1
  %27 = load ptr, ptr %firmware_buf, align 4
  %arrayidx18 = getelementptr i8, ptr %27, i32 4
  %28 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %type, ptr %arrayidx18, align 1
  %29 = load ptr, ptr %firmware_buf, align 4
  %arrayidx20 = getelementptr i8, ptr %29, i32 5
  %30 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %interrupt, ptr %arrayidx20, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kaweth_download_firmware.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kaweth_download_firmware, %if.then27)) #8
          to label %do.body40 [label %if.then27], !srcloc !265

if.then27:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 10
  %31 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net, align 4
  %33 = ptrtoint ptr %firmware_buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %firmware_buf, align 4
  %arrayidx29 = getelementptr i8, ptr %34, i32 3
  %35 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %36 to i32
  %arrayidx32 = getelementptr i8, ptr %34, i32 2
  %37 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %38 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @kaweth_download_firmware.__UNIQUE_ID_ddebug355, ptr noundef %32, ptr noundef nonnull @.str.82, i32 noundef %conv30, i32 noundef %conv33) #8
  br label %do.body40

do.body40:                                        ; preds = %if.then27, %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kaweth_download_firmware.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kaweth_download_firmware, %if.then52)) #8
          to label %do.body61 [label %if.then52], !srcloc !265

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  %net53 = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 10
  %39 = ptrtoint ptr %net53 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net53, align 4
  %41 = ptrtoint ptr %firmware_buf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %firmware_buf, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @kaweth_download_firmware.__UNIQUE_ID_ddebug356, ptr noundef %40, ptr noundef nonnull @.str.83, ptr noundef %42, ptr noundef %kaweth) #8
  br label %do.body61

do.body61:                                        ; preds = %if.then52, %do.body40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kaweth_download_firmware.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kaweth_download_firmware, %if.then73)) #8
          to label %do.end79 [label %if.then73], !srcloc !265

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #10
  %net74 = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 10
  %43 = ptrtoint ptr %net74 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net74, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @kaweth_download_firmware.__UNIQUE_ID_ddebug357, ptr noundef %44, ptr noundef nonnull @.str.84, i32 noundef %8) #8
  br label %do.end79

do.end79:                                         ; preds = %if.then73, %do.body61
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 8
  %shl.i = shl i32 %48, 8
  %or = or i32 %shl.i, -2147483648
  %49 = ptrtoint ptr %firmware_buf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %firmware_buf, align 4
  %conv84 = trunc i32 %8 to i16
  %call85 = call i32 @usb_control_msg(ptr noundef %46, i32 noundef %or, i8 noundef zeroext -1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %50, i16 noundef zeroext %conv84, i32 noundef 30000) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end79, %do.end6, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -28, %do.end6 ], [ %call85, %do.end79 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kaweth_trigger_firmware(ptr nocapture noundef readonly %kaweth) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware_buf = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 20
  %0 = ptrtoint ptr %firmware_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %firmware_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -74, ptr %1, align 1
  %3 = load ptr, ptr %firmware_buf, align 4
  %arrayidx2 = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -61, ptr %arrayidx2, align 1
  %5 = load ptr, ptr %firmware_buf, align 4
  %arrayidx4 = getelementptr i8, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx4, align 1
  %7 = load ptr, ptr %firmware_buf, align 4
  %arrayidx6 = getelementptr i8, ptr %7, i32 3
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx6, align 1
  %9 = load ptr, ptr %firmware_buf, align 4
  %arrayidx8 = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 6, ptr %arrayidx8, align 1
  %11 = load ptr, ptr %firmware_buf, align 4
  %arrayidx10 = getelementptr i8, ptr %11, i32 5
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 126, ptr %arrayidx10, align 1
  %13 = load ptr, ptr %firmware_buf, align 4
  %arrayidx12 = getelementptr i8, ptr %13, i32 6
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx12, align 1
  %15 = load ptr, ptr %firmware_buf, align 4
  %arrayidx14 = getelementptr i8, ptr %15, i32 7
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx14, align 1
  %dev = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i = shl i32 %20, 8
  %or = or i32 %shl.i, -2147483648
  %21 = load ptr, ptr %firmware_buf, align 4
  %call17 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or, i8 noundef zeroext -1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %21, i16 noundef zeroext 8, i32 noundef 30000) #8
  ret i32 %call17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kaweth_set_urb_size(ptr noundef %kaweth) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kaweth_set_urb_size.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kaweth_set_urb_size, %if.then)) #8
          to label %do.end4 [label %if.then], !srcloc !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 10
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @kaweth_set_urb_size.__UNIQUE_ID_ddebug352, ptr noundef %1, ptr noundef nonnull @.str.86, i32 noundef 1664) #8
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %dev = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i = shl i32 %5, 8
  %or = or i32 %shl.i, -2147483648
  %scratch = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 21
  %call7 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or, i8 noundef zeroext 8, i8 noundef zeroext 64, i16 noundef zeroext 1664, i16 noundef zeroext 0, ptr noundef %scratch, i16 noundef zeroext 0, i32 noundef 30000) #8
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kaweth_set_sofs_wait(ptr noundef %kaweth) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kaweth_set_sofs_wait.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kaweth_set_sofs_wait, %if.then)) #8
          to label %do.end4 [label %if.then], !srcloc !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 10
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @kaweth_set_sofs_wait.__UNIQUE_ID_ddebug353, ptr noundef %1, ptr noundef nonnull @.str.88, i32 noundef 5) #8
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %dev = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i = shl i32 %5, 8
  %or = or i32 %shl.i, -2147483648
  %scratch = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 21
  %call7 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or, i8 noundef zeroext 9, i8 noundef zeroext 64, i16 noundef zeroext 5, i16 noundef zeroext 0, ptr noundef %scratch, i16 noundef zeroext 0, i32 noundef 30000) #8
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kaweth_set_receive_filter(ptr noundef %kaweth) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kaweth_set_receive_filter.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kaweth_set_receive_filter, %if.then)) #8
          to label %do.end4 [label %if.then], !srcloc !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 10
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @kaweth_set_receive_filter.__UNIQUE_ID_ddebug354, ptr noundef %1, ptr noundef nonnull @.str.90, i32 noundef 28) #8
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %dev = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i = shl i32 %5, 8
  %or = or i32 %shl.i, -2147483648
  %scratch = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 21
  %call7 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 28, i16 noundef zeroext 0, ptr noundef %scratch, i16 noundef zeroext 0, i32 noundef 30000) #8
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kaweth_resubmit_tl(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -68
  %status = getelementptr i8, ptr %work, i32 -24
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  %and = and i32 %1, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %suspend_lowmem_rx = getelementptr i8, ptr %work, i32 -16
  %2 = ptrtoint ptr %suspend_lowmem_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %suspend_lowmem_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @kaweth_resubmit_rx_urb(ptr noundef %add.ptr, i32 noundef 3072)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %suspend_lowmem_ctrl = getelementptr i8, ptr %work, i32 -12
  %4 = ptrtoint ptr %suspend_lowmem_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %suspend_lowmem_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  %irq_urb.i = getelementptr i8, ptr %work, i32 172
  %6 = ptrtoint ptr %irq_urb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_urb.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef 3072) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -12
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i, !prof !266

if.end.thread.i:                                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %suspend_lowmem_ctrl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %suspend_lowmem_ctrl, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work, i32 noundef 25) #8
  br label %do.end.i

if.end.i:                                         ; preds = %if.then5
  %10 = ptrtoint ptr %suspend_lowmem_ctrl to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %suspend_lowmem_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %if.end.thread.i
  %intf.i = getelementptr i8, ptr %work, i32 104
  %11 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  %dev6.i = getelementptr i8, ptr %work, i32 100
  %13 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev6.i, align 4
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.110, ptr noundef %18, ptr noundef %devpath.i, i32 noundef %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_configuration(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kaweth_open(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %intf = getelementptr i8, ptr %net, i32 2476
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %call1 = tail call i32 @usb_autopm_get_interface(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.91) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @kaweth_resubmit_rx_urb(ptr noundef %add.ptr.i, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.err_out_crit_edge

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end6:                                          ; preds = %if.end
  %irq_urb = getelementptr i8, ptr %net, i32 2544
  %4 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_urb, align 4
  %dev7 = getelementptr i8, ptr %net, i32 2472
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i = shl i32 %9, 8
  %or10 = or i32 %shl.i, 1073840256
  %intbuffer = getelementptr i8, ptr %net, i32 2552
  %10 = ptrtoint ptr %intbuffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intbuffer, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %7, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 10
  %13 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or10, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 14
  %14 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 19
  %15 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 28
  %16 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @int_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 27
  %17 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 4
  %18 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp.i = icmp eq i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp6.i = icmp ugt i32 %19, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  %spec.select.i = select i1 %or.cond.i, i32 32768, i32 250
  %20 = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 25
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select.i, ptr %20, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 23
  %22 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %start_frame.i, align 4
  %intbufferhandle = getelementptr i8, ptr %net, i32 2548
  %23 = ptrtoint ptr %intbufferhandle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %intbufferhandle, align 4
  %25 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irq_urb, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 15
  %27 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %transfer_dma, align 4
  %28 = load ptr, ptr %irq_urb, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %transfer_flags, align 4
  %or13 = or i32 %30, 4
  store i32 %or13, ptr %transfer_flags, align 4
  %31 = load ptr, ptr %irq_urb, align 4
  %call15 = tail call i32 @usb_submit_urb(ptr noundef %31, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %rx_urb = getelementptr i8, ptr %net, i32 2536
  %32 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %33) #8
  br label %err_out

if.end18:                                         ; preds = %if.end6
  %opened = getelementptr i8, ptr %net, i32 2368
  %34 = ptrtoint ptr %opened to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %opened, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %35 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %36, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %packet_filter_bitmap1.i = getelementptr i8, ptr %net, i32 2604
  %37 = ptrtoint ptr %packet_filter_bitmap1.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %packet_filter_bitmap1.i, align 4
  store i16 0, ptr %packet_filter_bitmap1.i, align 4
  %conv.i = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp.i39.not = icmp eq i16 %38, 0
  br i1 %cmp.i39.not, label %if.end18.cleanup_crit_edge, label %if.end5.i

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.i:                                        ; preds = %if.end18
  %39 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev7, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i.i = shl i32 %42, 8
  %or.i40 = or i32 %shl.i.i, -2147483648
  %scratch.i = getelementptr i8, ptr %net, i32 2572
  %call7.i = tail call i32 @usb_control_msg(ptr noundef %40, i32 noundef %or.i40, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext %38, i16 noundef zeroext 0, ptr noundef %scratch.i, i16 noundef zeroext 0, i32 noundef 30000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %do.end.i, label %do.body13.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %intf, align 4
  %dev11.i = getelementptr inbounds %struct.usb_interface, ptr %44, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.112, i32 noundef %call7.i) #11
  br label %cleanup

do.body13.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kaweth_async_set_rx_mode.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kaweth_open, %if.then19.i)) #8
          to label %cleanup [label %if.then19.i], !srcloc !265

if.then19.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #10
  %net.i = getelementptr i8, ptr %net, i32 2480
  %45 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @kaweth_async_set_rx_mode.__UNIQUE_ID_ddebug365, ptr noundef %46, ptr noundef nonnull @.str.114, i32 noundef %conv.i) #8
  br label %cleanup

err_out:                                          ; preds = %if.then17, %if.end.err_out_crit_edge
  %47 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %48) #8
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.then19.i, %do.body13.i, %do.end.i, %if.end18.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %err_out ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %do.body13.i ], [ 0, %if.then19.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kaweth_close(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %opened = getelementptr i8, ptr %net, i32 2368
  %2 = ptrtoint ptr %opened to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %opened, align 4
  %status = getelementptr i8, ptr %net, i32 2348
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %or = or i32 %4, 2
  store i32 %or, ptr %status, align 4
  %irq_urb.i = getelementptr i8, ptr %net, i32 2544
  %5 = ptrtoint ptr %irq_urb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %6) #8
  %rx_urb.i = getelementptr i8, ptr %net, i32 2536
  %7 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %8) #8
  %tx_urb.i = getelementptr i8, ptr %net, i32 2540
  %9 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %10) #8
  %lowmem_work.i = getelementptr i8, ptr %net, i32 2372
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %lowmem_work.i) #8
  %11 = ptrtoint ptr %irq_urb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %12) #8
  %13 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %14) #8
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  %and = and i32 %16, -3
  store i32 %and, ptr %status, align 4
  %intf = getelementptr i8, ptr %net, i32 2476
  %17 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %18) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kaweth_start_xmit(ptr noundef %skb, ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i) #8
  %packet_filter_bitmap1.i = getelementptr i8, ptr %net, i32 2604
  %0 = ptrtoint ptr %packet_filter_bitmap1.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %packet_filter_bitmap1.i, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %1 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %2, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %status = getelementptr i8, ptr %net, i32 2348
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %and = and i32 %4, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.skip_crit_edge

entry.skip_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip

if.end:                                           ; preds = %entry
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %5 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %skb_header_cloned.exit.thread.i, label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #8
  %8 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %dataref1.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i.i.i)
  %cmp.i1.i = icmp ult i32 %sub.ptr.sub.i.i.i, 2
  br i1 %cmp.i1.i, label %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge, label %if.end.i2.i

skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread.i.i

skb_header_cloned.exit.thread.i:                  ; preds = %if.end
  %data.i.i5.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i5.i, align 4
  %head.i.i6.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i6.i, align 8
  %sub.ptr.lhs.cast.i.i7.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i8.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i9.i = sub i32 %sub.ptr.lhs.cast.i.i7.i, %sub.ptr.rhs.cast.i.i8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i.i9.i)
  %cmp.i110.i = icmp ult i32 %sub.ptr.sub.i.i9.i, 2
  br i1 %cmp.i110.i, label %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge, label %skb_header_cloned.exit.thread.i.if.end5_crit_edge

skb_header_cloned.exit.thread.i.if.end5_crit_edge: ; preds = %skb_header_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread.i.i

if.end.thread.i.i:                                ; preds = %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge, %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge
  %sub.ptr.sub.i.i12.i = phi i32 [ %sub.ptr.sub.i.i9.i, %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i, %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge ]
  %phi.bo.i.i = sub nuw nsw i32 129, %sub.ptr.sub.i.i12.i
  %phi.bo11.i.i = and i32 %phi.bo.i.i, -128
  br label %skb_cow_head.exit

if.end.i2.i:                                      ; preds = %skb_header_cloned.exit.i
  %and.i.i = and i32 %9, 65535
  %shr.i.i = ashr i32 %9, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br i1 %cmp.i.not.i, label %if.end.i2.i.if.end5_crit_edge, label %if.end.i2.i.skb_cow_head.exit_crit_edge

if.end.i2.i.skb_cow_head.exit_crit_edge:          ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_cow_head.exit

if.end.i2.i.if.end5_crit_edge:                    ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

skb_cow_head.exit:                                ; preds = %if.end.i2.i.skb_cow_head.exit_crit_edge, %if.end.thread.i.i
  %delta.010.i.i = phi i32 [ %phi.bo11.i.i, %if.end.thread.i.i ], [ 0, %if.end.i2.i.skb_cow_head.exit_crit_edge ]
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %delta.010.i.i, i32 noundef 0, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool2.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool2.not, label %skb_cow_head.exit.if.end5_crit_edge, label %if.then3

skb_cow_head.exit.if.end5_crit_edge:              ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 5
  %18 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %tx_errors, align 4
  %20 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i54 = getelementptr inbounds %struct.netdev_queue, ptr %21, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i54) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #8
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

if.end5:                                          ; preds = %skb_cow_head.exit.if.end5_crit_edge, %if.end.i2.i.if.end5_crit_edge, %skb_header_cloned.exit.thread.i.if.end5_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %23, i32 -2
  store ptr %add.ptr.i55, ptr %data.i, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len1.i, align 4
  %add.i = add i32 %25, 2
  store i32 %add.i, ptr %len1.i, align 4
  %26 = trunc i32 %add.i to i16
  %conv = add i16 %26, -2
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %28 = ptrtoint ptr %add.ptr.i55 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %add.ptr.i55, align 2
  %tx_skb = getelementptr i8, ptr %net, i32 2564
  %29 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %skb, ptr %tx_skb, align 4
  %tx_urb = getelementptr i8, ptr %net, i32 2540
  %30 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_urb, align 4
  %dev = getelementptr i8, ptr %net, i32 2472
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i = shl i32 %35, 8
  %or = or i32 %shl.i, -1073676288
  %36 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len1.i, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 8
  %38 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %33, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 10
  %39 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 14
  %40 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr.i55, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 19
  %41 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %37, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 28
  %42 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @kaweth_usb_transmit_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 27
  %43 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr.i, ptr %context4.i, align 4
  %end = getelementptr i8, ptr %net, i32 2352
  %44 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %end, align 4
  %45 = load ptr, ptr %tx_urb, align 4
  %call11 = tail call i32 @usb_submit_urb(ptr noundef %45, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %dev14 = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev14, ptr noundef nonnull @.str.115, i32 noundef %call11) #11
  br label %skip

skip:                                             ; preds = %do.end, %entry.skip_crit_edge
  %tx_errors16 = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 5
  %46 = ptrtoint ptr %tx_errors16 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_errors16, align 4
  %inc17 = add i32 %47, 1
  store i32 %inc17, ptr %tx_errors16, align 4
  %48 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i57 = getelementptr inbounds %struct.netdev_queue, ptr %49, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i57) #8
  tail call void @__dev_kfree_skb_irq(ptr noundef %skb, i32 noundef 1) #8
  br label %if.end22

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 1
  %50 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_packets, align 4
  %inc19 = add i32 %51, 1
  store i32 %inc19, ptr %tx_packets, align 4
  %52 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len1.i, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 3
  %54 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %55, %53
  store i32 %add, ptr %tx_bytes, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %skip
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kaweth_set_rx_mode(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kaweth_set_rx_mode.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kaweth_set_rx_mode, %if.then)) #8
          to label %do.end6 [label %if.then], !srcloc !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @kaweth_set_rx_mode.__UNIQUE_ID_ddebug364, ptr noundef %net, ptr noundef nonnull @.str.121, i32 noundef 28) #8
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %flags = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else, label %do.end6.if.end20_crit_edge

do.end6.if.end20_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else:                                          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  %count = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %and13 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %or.cond = select i1 %cmp, i1 %tobool14.not, i1 false
  %spec.select = select i1 %or.cond, i16 28, i16 30
  br label %if.end20

if.end20:                                         ; preds = %if.else, %do.end6.if.end20_crit_edge
  %packet_filter_bitmap.0 = phi i16 [ 29, %do.end6.if.end20_crit_edge ], [ %spec.select, %if.else ]
  %packet_filter_bitmap21 = getelementptr i8, ptr %net, i32 2604
  %6 = ptrtoint ptr %packet_filter_bitmap21 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %packet_filter_bitmap.0, ptr %packet_filter_bitmap21, align 4
  %7 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %8) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kaweth_tx_timeout(ptr noundef %net, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.122, ptr noundef %net) #11
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 5
  %0 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %tx_errors, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp.not.i.i = icmp eq i32 %6, %4
  br i1 %cmp.not.i.i, label %entry.netif_trans_update.exit_crit_edge, label %do.body5.i.i

entry.netif_trans_update.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %4, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %entry.netif_trans_update.exit_crit_edge
  %tx_urb = getelementptr i8, ptr %net, i32 2540
  %8 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_urb, align 4
  %call1 = tail call i32 @usb_unlink_urb(ptr noundef %9) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kaweth_resubmit_rx_urb(ptr noundef %kaweth, i32 noundef %mem_flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_urb = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 12
  %0 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_urb, align 4
  %dev = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i = shl i32 %5, 8
  %or2 = or i32 %shl.i, -1073708928
  %rx_buf = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 18
  %6 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_buf, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or2, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1664, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 28
  %12 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @kaweth_usb_receive, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 27
  %13 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %kaweth, ptr %context4.i, align 4
  %14 = load ptr, ptr %rx_urb, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %transfer_flags, align 4
  %or4 = or i32 %16, 4
  store i32 %or4, ptr %transfer_flags, align 4
  %rxbufferhandle = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 17
  %17 = ptrtoint ptr %rxbufferhandle to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rxbufferhandle, align 4
  %19 = load ptr, ptr %rx_urb, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %transfer_dma, align 4
  %21 = load ptr, ptr %rx_urb, align 4
  %call7 = tail call i32 @usb_submit_urb(ptr noundef %21, i32 noundef %mem_flags) #8
  %22 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call7, label %entry.do.end_crit_edge [
    i32 0, label %if.else
    i32 -12, label %if.then8
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %suspend_lowmem_rx = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 3
  %23 = ptrtoint ptr %suspend_lowmem_rx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %suspend_lowmem_rx, align 4
  %lowmem_work = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %lowmem_work, i32 noundef 25) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %entry.do.end_crit_edge
  %intf = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 9
  %25 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %intf, align 4
  %dev10 = getelementptr inbounds %struct.usb_interface, ptr %26, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.93, i32 noundef %call7) #11
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %suspend_lowmem_rx11 = getelementptr inbounds %struct.kaweth_device, ptr %kaweth, i32 0, i32 3
  %27 = ptrtoint ptr %suspend_lowmem_rx11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %suspend_lowmem_rx11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %do.end
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @int_callback(ptr nocapture noundef readonly %u) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %u, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %u, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %3, label %entry.resubmit_crit_edge [
    i32 0, label %sw.epilog
    i32 -104, label %entry.cleanup_crit_edge
    i32 -2, label %entry.cleanup_crit_edge16
    i32 -108, label %entry.cleanup_crit_edge17
  ]

entry.cleanup_crit_edge17:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge16:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.resubmit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %resubmit

sw.epilog:                                        ; preds = %entry
  %linkstate = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %linkstate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %linkstate, align 4
  %intbuffer = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %intbuffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intbuffer, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %11 = lshr i8 %10, 5
  %12 = or i8 %11, 2
  %13 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %13)
  %cmp.not = icmp eq i32 %6, %13
  br i1 %cmp.not, label %sw.epilog.resubmit_crit_edge, label %if.then3

sw.epilog.resubmit_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %resubmit

if.then3:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net, align 4
  tail call void @netif_carrier_on(ptr noundef %15) #8
  %16 = ptrtoint ptr %linkstate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %linkstate, align 4
  br label %resubmit

resubmit:                                         ; preds = %if.then3, %sw.epilog.resubmit_crit_edge, %entry.resubmit_crit_edge
  %irq_urb.i = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %irq_urb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %irq_urb.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %18, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -12
  %suspend_lowmem_ctrl.i = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 4
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i, !prof !266

if.end.thread.i:                                  ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %suspend_lowmem_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %suspend_lowmem_ctrl.i, align 4
  %lowmem_work.i = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %lowmem_work.i, i32 noundef 25) #8
  br label %do.end.i

if.end.i:                                         ; preds = %resubmit
  %21 = ptrtoint ptr %suspend_lowmem_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %suspend_lowmem_ctrl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %if.end.thread.i
  %intf.i = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %23, i32 0, i32 7
  %dev6.i = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev6.i, align 4
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.110, ptr noundef %29, ptr noundef %devpath.i, i32 noundef %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge16, %entry.cleanup_crit_edge17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kaweth_usb_receive(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %net3 = getelementptr inbounds %struct.kaweth_device, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %net3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net3, align 4
  %status4 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status4, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %10 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %transfer_buffer_length, align 4
  %rx_buf = getelementptr inbounds %struct.kaweth_device, ptr %3, i32 0, i32 18
  %12 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_buf, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #8
  %17 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %7, label %entry.do.body105_crit_edge [
    i32 -32, label %if.then
    i32 -104, label %entry.if.then24_crit_edge
    i32 -108, label %entry.if.then24_crit_edge268
    i32 -71, label %entry.if.then55_crit_edge
    i32 -62, label %entry.if.then55_crit_edge269
    i32 -84, label %entry.if.then55_crit_edge270
    i32 -75, label %if.then83
  ], !prof !268

entry.if.then55_crit_edge270:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then55

entry.if.then55_crit_edge269:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then55

entry.if.then55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then55

entry.if.then24_crit_edge268:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

entry.if.then24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

entry.do.body105_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body105

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 4
  %18 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %rx_errors, align 8
  %end = getelementptr inbounds %struct.kaweth_device, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %end, align 4
  %term_wait = getelementptr inbounds %struct.kaweth_device, ptr %3, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %term_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kaweth_usb_receive.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kaweth_usb_receive, %if.then14)) #8
          to label %cleanup [label %if.then14], !srcloc !265

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kaweth_usb_receive.__UNIQUE_ID_ddebug359, ptr noundef %dev2, ptr noundef nonnull @.str.96) #8
  br label %cleanup

if.then24:                                        ; preds = %entry.if.then24_crit_edge, %entry.if.then24_crit_edge268
  %end25 = getelementptr inbounds %struct.kaweth_device, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %end25 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %end25, align 4
  %term_wait26 = getelementptr inbounds %struct.kaweth_device, ptr %3, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %term_wait26, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kaweth_usb_receive.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kaweth_usb_receive, %if.then39)) #8
          to label %cleanup [label %if.then39], !srcloc !265

if.then39:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kaweth_usb_receive.__UNIQUE_ID_ddebug360, ptr noundef %dev2, ptr noundef nonnull @.str.97) #8
  br label %cleanup

if.then55:                                        ; preds = %entry.if.then55_crit_edge, %entry.if.then55_crit_edge269, %entry.if.then55_crit_edge270
  %rx_errors57 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 4
  %22 = ptrtoint ptr %rx_errors57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_errors57, align 8
  %inc58 = add i32 %23, 1
  store i32 %inc58, ptr %rx_errors57, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kaweth_usb_receive.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kaweth_usb_receive, %if.then71)) #8
          to label %cleanup [label %if.then71], !srcloc !265

if.then71:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kaweth_usb_receive.__UNIQUE_ID_ddebug361, ptr noundef %dev2, ptr noundef nonnull @.str.98) #8
  br label %cleanup

if.then83:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rx_errors85 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 4
  %24 = ptrtoint ptr %rx_errors85 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_errors85, align 8
  %inc86 = add i32 %25, 1
  store i32 %inc86, ptr %rx_errors85, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kaweth_usb_receive.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kaweth_usb_receive, %if.then99)) #8
          to label %do.body105 [label %if.then99], !srcloc !265

if.then99:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kaweth_usb_receive.__UNIQUE_ID_ddebug362, ptr noundef %dev2, ptr noundef nonnull @.str.99) #8
  br label %do.body105

do.body105:                                       ; preds = %if.then99, %if.then83, %entry.do.body105_crit_edge
  %call109 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %status114 = getelementptr inbounds %struct.kaweth_device, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %status114 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status114, align 4
  %and = and i32 %27, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool115.not = icmp eq i32 %and, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call109) #8
  br i1 %tobool115.not, label %if.end118, label %do.body105.cleanup_crit_edge

do.body105.cleanup_crit_edge:                     ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end118:                                        ; preds = %do.body105
  %28 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %7, label %land.lhs.true123 [
    i32 0, label %if.end118.if.end133_crit_edge
    i32 -121, label %if.end118.if.end133_crit_edge271
  ]

if.end118.if.end133_crit_edge271:                 ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

if.end118.if.end133_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

land.lhs.true123:                                 ; preds = %if.end118
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp124.not = icmp eq i32 %9, 1
  br i1 %cmp124.not, label %land.lhs.true123.if.end181_crit_edge, label %do.end129

land.lhs.true123.if.end181_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end181

do.end129:                                        ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr inbounds %struct.kaweth_device, ptr %3, i32 0, i32 9
  %29 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %intf, align 4
  %dev130 = getelementptr inbounds %struct.usb_interface, ptr %30, i32 0, i32 7
  %conv131 = zext i16 %16 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev130, ptr noundef nonnull @.str.100, ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %conv131) #11
  %call132 = tail call fastcc i32 @kaweth_resubmit_rx_urb(ptr noundef %3, i32 noundef 2592)
  br label %cleanup

if.end133:                                        ; preds = %if.end118.if.end133_crit_edge, %if.end118.if.end133_crit_edge271
  %31 = ptrtoint ptr %net3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net3, align 4
  %tobool135.not = icmp ne ptr %32, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp137 = icmp sgt i32 %9, 2
  %or.cond = select i1 %tobool135.not, i1 %cmp137, i1 false
  br i1 %or.cond, label %if.then139, label %if.end133.if.end181_crit_edge

if.end133.if.end181_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end181

if.then139:                                       ; preds = %if.end133
  %conv140 = zext i16 %16 to i32
  %sub = add nsw i32 %9, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv140)
  %cmp141 = icmp ult i32 %sub, %conv140
  br i1 %cmp141, label %do.end146, label %if.end163

do.end146:                                        ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #10
  %intf147 = getelementptr inbounds %struct.kaweth_device, ptr %3, i32 0, i32 9
  %33 = ptrtoint ptr %intf147 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %intf147, align 4
  %dev148 = getelementptr inbounds %struct.usb_interface, ptr %34, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev148, ptr noundef nonnull @.str.102, i32 noundef %conv140, i32 noundef %9) #11
  %35 = ptrtoint ptr %intf147 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %intf147, align 4
  %dev154 = getelementptr inbounds %struct.usb_interface, ptr %36, i32 0, i32 7
  %and156 = and i32 %conv140, 2047
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev154, ptr noundef nonnull @.str.105, i32 noundef %and156) #11
  %37 = ptrtoint ptr %intf147 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %intf147, align 4
  %dev161 = getelementptr inbounds %struct.usb_interface, ptr %38, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev161, ptr noundef nonnull @.str.108, i32 noundef %11) #11
  %call162 = tail call fastcc i32 @kaweth_resubmit_rx_urb(ptr noundef %3, i32 noundef 2592)
  br label %cleanup

if.end163:                                        ; preds = %if.then139
  %add = add nuw nsw i32 %conv140, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #8
  %tobool166.not = icmp eq ptr %call.i.i, null
  br i1 %tobool166.not, label %if.then167, label %if.end169

if.then167:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  %call168 = tail call fastcc i32 @kaweth_resubmit_rx_urb(ptr noundef %3, i32 noundef 2592)
  br label %cleanup

if.end169:                                        ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %41 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %42, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %43 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_buf, align 4
  %add.ptr = getelementptr i8, ptr %44, i32 2
  %45 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr, i32 %conv140)
  %call173 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv140) #8
  %call174 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i, ptr noundef %5) #8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %46 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %call174, ptr %protocol, align 8
  %call175 = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i) #8
  %stats176 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36
  %47 = ptrtoint ptr %stats176 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stats176, align 8
  %inc177 = add i32 %48, 1
  store i32 %inc177, ptr %stats176, align 8
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 2
  %49 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_bytes, align 8
  %add180 = add i32 %50, %conv140
  store i32 %add180, ptr %rx_bytes, align 8
  br label %if.end181

if.end181:                                        ; preds = %if.end169, %if.end133.if.end181_crit_edge, %land.lhs.true123.if.end181_crit_edge
  %call182 = tail call fastcc i32 @kaweth_resubmit_rx_urb(ptr noundef %3, i32 noundef 2592)
  br label %cleanup

cleanup:                                          ; preds = %if.end181, %if.then167, %do.end146, %do.end129, %do.body105.cleanup_crit_edge, %if.then71, %if.then55, %if.then39, %if.then24, %if.then14, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kaweth_usb_transmit_complete(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tx_skb = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_skb, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %5, label %do.body [
    i32 0, label %entry.if.end15_crit_edge
    i32 -2, label %entry.if.end15_crit_edge24
  ], !prof !269

entry.if.end15_crit_edge24:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kaweth_usb_transmit_complete.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kaweth_usb_transmit_complete, %if.then12)) #8
          to label %if.end15 [label %if.then12], !srcloc !265

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dev13 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  %net = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kaweth_usb_transmit_complete.__UNIQUE_ID_ddebug363, ptr noundef %dev13, ptr noundef nonnull @.str.119, ptr noundef %10, i32 noundef %5) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %do.body, %entry.if.end15_crit_edge, %entry.if.end15_crit_edge24
  %net16 = getelementptr inbounds %struct.kaweth_device, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net16, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 103
  %13 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %14) #8
  tail call void @__dev_kfree_skb_irq(ptr noundef %3, i32 noundef 1) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kaweth_get_link(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %linkstate = getelementptr i8, ptr %dev, i32 2364
  %0 = ptrtoint ptr %linkstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %linkstate, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !21, !23, !25, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !47, !48, !49, !51, !52, !53, !55, !57, !58, !59, !60, !62, !64, !65, !66, !68, !70, !71, !72, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !175, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !189, !190, !192, !193, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !222, !224, !225, !227, !228, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !244, !246, !248, !249, !250, !251, !253, !254}
!llvm.module.flags = !{!256, !257, !258, !259, !260, !261, !262, !263}
!llvm.ident = !{!264}

!0 = !{ptr @__UNIQUE_ID_author344, !1, !"__UNIQUE_ID_author344", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/kaweth.c", i32 91, i32 1}
!2 = !{ptr @__UNIQUE_ID_description345, !3, !"__UNIQUE_ID_description345", i1 false, i1 false}
!3 = !{!"../drivers/net/usb/kaweth.c", i32 92, i32 1}
!4 = !{ptr @__UNIQUE_ID_file346, !5, !"__UNIQUE_ID_file346", i1 false, i1 false}
!5 = !{!"../drivers/net/usb/kaweth.c", i32 93, i32 1}
!6 = !{ptr @__UNIQUE_ID_license347, !5, !"__UNIQUE_ID_license347", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_firmware348, !8, !"__UNIQUE_ID_firmware348", i1 false, i1 false}
!8 = !{!"../drivers/net/usb/kaweth.c", i32 94, i32 1}
!9 = !{ptr @__UNIQUE_ID_firmware349, !10, !"__UNIQUE_ID_firmware349", i1 false, i1 false}
!10 = !{!"../drivers/net/usb/kaweth.c", i32 95, i32 1}
!11 = !{ptr @__UNIQUE_ID_firmware350, !12, !"__UNIQUE_ID_firmware350", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/kaweth.c", i32 96, i32 1}
!13 = !{ptr @__UNIQUE_ID_firmware351, !14, !"__UNIQUE_ID_firmware351", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/kaweth.c", i32 97, i32 1}
!15 = !{ptr @__initcall__kmod_kaweth__373_1115_kaweth_driver_init6, !16, !"__initcall__kmod_kaweth__373_1115_kaweth_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/net/usb/kaweth.c", i32 1115, i32 1}
!17 = !{ptr @__exitcall_kaweth_driver_exit, !16, !"__exitcall_kaweth_driver_exit", i1 false, i1 false}
!18 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @kaweth_driver, !20, !"kaweth_driver", i1 false, i1 false}
!20 = !{!"../drivers/net/usb/kaweth.c", i32 156, i32 26}
!21 = !{ptr @driver_name, !22, !"driver_name", i1 false, i1 false}
!22 = !{!"../drivers/net/usb/kaweth.c", i32 99, i32 19}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/usb/kaweth.c", i32 889, i32 2}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @kaweth_probe.__UNIQUE_ID_ddebug366, !24, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/usb/kaweth.c", i32 895, i32 2}
!30 = !{ptr @kaweth_probe.__UNIQUE_ID_ddebug367, !29, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/usb/kaweth.c", i32 897, i32 2}
!33 = !{ptr @kaweth_probe.__UNIQUE_ID_ddebug368, !32, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!34 = !{ptr @kaweth_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/net/usb/kaweth.c", i32 910, i32 2}
!36 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @kaweth_probe.__key.7, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/net/usb/kaweth.c", i32 911, i32 2}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/usb/kaweth.c", i32 913, i32 2}
!42 = !{ptr @kaweth_probe.__UNIQUE_ID_ddebug369, !41, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/usb/kaweth.c", i32 923, i32 3}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @kaweth_probe._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @kaweth_probe._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/usb/kaweth.c", i32 926, i32 3}
!51 = !{ptr @kaweth_probe._entry.13, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @kaweth_probe._entry_ptr.15, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/usb/kaweth.c", i32 933, i32 13}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/usb/kaweth.c", i32 936, i32 4}
!57 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @kaweth_probe._entry.17, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @kaweth_probe._entry_ptr.20, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/usb/kaweth.c", i32 942, i32 13}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/usb/kaweth.c", i32 945, i32 4}
!64 = !{ptr @kaweth_probe._entry.22, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @kaweth_probe._entry_ptr.24, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/usb/kaweth.c", i32 951, i32 13}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/usb/kaweth.c", i32 954, i32 4}
!70 = !{ptr @kaweth_probe._entry.26, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @kaweth_probe._entry_ptr.28, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/usb/kaweth.c", i32 961, i32 13}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/usb/kaweth.c", i32 964, i32 4}
!76 = !{ptr @kaweth_probe._entry.30, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @kaweth_probe._entry_ptr.32, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/usb/kaweth.c", i32 970, i32 4}
!80 = !{ptr @kaweth_probe._entry.33, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @kaweth_probe._entry_ptr.35, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/usb/kaweth.c", i32 975, i32 3}
!84 = !{ptr @kaweth_probe._entry.36, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @kaweth_probe._entry_ptr.38, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/usb/kaweth.c", i32 985, i32 3}
!88 = !{ptr @kaweth_probe._entry.39, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @kaweth_probe._entry_ptr.41, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/usb/kaweth.c", i32 989, i32 2}
!92 = !{ptr @kaweth_probe._entry.42, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @kaweth_probe._entry_ptr.44, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/usb/kaweth.c", i32 990, i32 2}
!96 = !{ptr @kaweth_probe._entry.45, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @kaweth_probe._entry_ptr.47, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/usb/kaweth.c", i32 991, i32 2}
!100 = !{ptr @kaweth_probe._entry.48, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @kaweth_probe._entry_ptr.50, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/usb/kaweth.c", i32 992, i32 2}
!104 = !{ptr @kaweth_probe._entry.51, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @kaweth_probe._entry_ptr.53, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/usb/kaweth.c", i32 997, i32 3}
!108 = !{ptr @kaweth_probe._entry.54, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @kaweth_probe._entry_ptr.56, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/usb/kaweth.c", i32 1002, i32 3}
!112 = !{ptr @kaweth_probe.__UNIQUE_ID_ddebug370, !111, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/usb/kaweth.c", i32 1007, i32 3}
!115 = !{ptr @kaweth_probe._entry.58, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @kaweth_probe._entry_ptr.60, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/usb/kaweth.c", i32 1017, i32 3}
!119 = !{ptr @kaweth_probe._entry.61, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @kaweth_probe._entry_ptr.63, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/usb/kaweth.c", i32 1021, i32 2}
!123 = !{ptr @kaweth_probe.__UNIQUE_ID_ddebug371, !122, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!124 = !{ptr @kaweth_probe.__key.65, !125, !"__key", i1 false, i1 false}
!125 = !{!"../drivers/net/usb/kaweth.c", i32 1055, i32 2}
!126 = !{ptr @.str.66, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @kaweth_probe.__key.67, !125, !"__key", i1 false, i1 false}
!128 = !{ptr @.str.68, !125, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/usb/kaweth.c", i32 1060, i32 3}
!131 = !{ptr @kaweth_probe._entry.69, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @kaweth_probe._entry_ptr.71, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.73, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/usb/kaweth.c", i32 1064, i32 2}
!135 = !{ptr @kaweth_probe._entry.72, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @kaweth_probe._entry_ptr.74, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.75, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/usb/kaweth.c", i32 378, i32 2}
!139 = !{ptr @.str.76, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @kaweth_reset.__UNIQUE_ID_ddebug358, !138, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!141 = !{ptr @.str.77, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/usb/kaweth.c", i32 309, i32 3}
!143 = !{ptr @.str.78, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @kaweth_download_firmware._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @kaweth_download_firmware._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.80, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/usb/kaweth.c", i32 314, i32 3}
!148 = !{ptr @kaweth_download_firmware._entry.79, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @kaweth_download_firmware._entry_ptr.81, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.82, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/usb/kaweth.c", i32 329, i32 2}
!152 = !{ptr @kaweth_download_firmware.__UNIQUE_ID_ddebug355, !151, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!153 = !{ptr @.str.83, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/usb/kaweth.c", i32 332, i32 2}
!155 = !{ptr @kaweth_download_firmware.__UNIQUE_ID_ddebug356, !154, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!156 = !{ptr @.str.84, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/usb/kaweth.c", i32 335, i32 2}
!158 = !{ptr @kaweth_download_firmware.__UNIQUE_ID_ddebug357, !157, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!159 = !{ptr @.str.85, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/usb/kaweth.c", i32 253, i32 2}
!161 = !{ptr @.str.86, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @kaweth_set_urb_size.__UNIQUE_ID_ddebug352, !160, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!163 = !{ptr @.str.87, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/usb/kaweth.c", i32 268, i32 2}
!165 = !{ptr @.str.88, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @kaweth_set_sofs_wait.__UNIQUE_ID_ddebug353, !164, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!167 = !{ptr @.str.89, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/usb/kaweth.c", i32 284, i32 2}
!169 = !{ptr @.str.90, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @kaweth_set_receive_filter.__UNIQUE_ID_ddebug354, !168, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!171 = !{ptr @kaweth_netdev_ops, !172, !"kaweth_netdev_ops", i1 false, i1 false}
!172 = !{!"../drivers/net/usb/kaweth.c", i32 866, i32 36}
!173 = !{ptr @.str.91, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/usb/kaweth.c", i32 591, i32 3}
!175 = !{ptr @.str.92, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @kaweth_open._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @kaweth_open._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.93, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/usb/kaweth.c", i32 479, i32 3}
!180 = !{ptr @.str.94, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @kaweth_resubmit_rx_urb._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @kaweth_resubmit_rx_urb._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.95, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/usb/kaweth.c", i32 512, i32 3}
!185 = !{ptr @.str.96, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @kaweth_usb_receive.__UNIQUE_ID_ddebug359, !184, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!187 = !{ptr @.str.97, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/usb/kaweth.c", i32 519, i32 3}
!189 = !{ptr @kaweth_usb_receive.__UNIQUE_ID_ddebug360, !188, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!190 = !{ptr @.str.98, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/usb/kaweth.c", i32 525, i32 3}
!192 = !{ptr @kaweth_usb_receive.__UNIQUE_ID_ddebug361, !191, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!193 = !{ptr @.str.99, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/usb/kaweth.c", i32 530, i32 3}
!195 = !{ptr @kaweth_usb_receive.__UNIQUE_ID_ddebug362, !194, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!196 = !{ptr @.str.100, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/usb/kaweth.c", i32 540, i32 3}
!198 = !{ptr @kaweth_usb_receive._entry, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @kaweth_usb_receive._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.102, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/usb/kaweth.c", i32 549, i32 4}
!202 = !{ptr @kaweth_usb_receive._entry.101, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @kaweth_usb_receive._entry_ptr.103, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.105, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/usb/kaweth.c", i32 552, i32 4}
!206 = !{ptr @kaweth_usb_receive._entry.104, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @kaweth_usb_receive._entry_ptr.106, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.108, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/usb/kaweth.c", i32 554, i32 4}
!210 = !{ptr @kaweth_usb_receive._entry.107, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @kaweth_usb_receive._entry_ptr.109, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.110, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/usb/kaweth.c", i32 403, i32 3}
!214 = !{ptr @.str.111, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @kaweth_resubmit_int_urb._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @kaweth_resubmit_int_urb._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.112, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/usb/kaweth.c", i32 804, i32 3}
!219 = !{ptr @.str.113, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @kaweth_async_set_rx_mode._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @kaweth_async_set_rx_mode._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.114, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/usb/kaweth.c", i32 807, i32 3}
!224 = !{ptr @kaweth_async_set_rx_mode.__UNIQUE_ID_ddebug365, !223, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!225 = !{ptr @.str.115, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/usb/kaweth.c", i32 737, i32 3}
!227 = !{ptr @.str.116, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.117, !226, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @kaweth_start_xmit._entry, !226, !"_entry", i1 false, i1 false}
!230 = !{ptr @kaweth_start_xmit._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.118, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/usb/kaweth.c", i32 687, i32 4}
!233 = !{ptr @.str.119, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @kaweth_usb_transmit_complete.__UNIQUE_ID_ddebug363, !232, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!235 = !{ptr @.str.120, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/usb/kaweth.c", i32 766, i32 2}
!237 = !{ptr @.str.121, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @kaweth_set_rx_mode.__UNIQUE_ID_ddebug364, !236, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!239 = !{ptr @.str.122, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/usb/kaweth.c", i32 818, i32 2}
!241 = !{ptr @.str.123, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @kaweth_tx_timeout._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @kaweth_tx_timeout._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @ops, !245, !"ops", i1 false, i1 false}
!245 = !{!"../drivers/net/usb/kaweth.c", i32 672, i32 33}
!246 = !{ptr @.str.124, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/usb/kaweth.c", i32 1096, i32 3}
!248 = !{ptr @.str.125, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @kaweth_disconnect._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @kaweth_disconnect._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.126, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/usb/kaweth.c", i32 1101, i32 2}
!253 = !{ptr @kaweth_disconnect.__UNIQUE_ID_ddebug372, !252, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!254 = !{ptr @usb_klsi_table, !255, !"usb_klsi_table", i1 false, i1 false}
!255 = !{!"../drivers/net/usb/kaweth.c", i32 112, i32 35}
!256 = !{i32 1, !"wchar_size", i32 2}
!257 = !{i32 1, !"min_enum_size", i32 4}
!258 = !{i32 8, !"branch-target-enforcement", i32 0}
!259 = !{i32 8, !"sign-return-address", i32 0}
!260 = !{i32 8, !"sign-return-address-all", i32 0}
!261 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!262 = !{i32 7, !"uwtable", i32 1}
!263 = !{i32 7, !"frame-pointer", i32 2}
!264 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!265 = !{i64 2148984308, i64 2148984313, i64 2148984326, i64 2148984370, i64 2148984404, i64 2148984425}
!266 = !{!"branch_weights", i32 1, i32 2000}
!267 = !{!"auto-init"}
!268 = !{!"branch_weights", i32 1907348632, i32 3822332, i32 3820421, i32 -474545124, i32 1909255, i32 1908302, i32 1908302307, i32 953674}
!269 = !{!"branch_weights", i32 1, i32 4000, i32 1}
