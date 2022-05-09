; ModuleID = '/llk/IR_all_yes/drivers/net/usb/asix_devices.c_pt.bc'
source_filename = "../drivers/net/usb/asix_devices.c"
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.121, i32 }
%union.anon.121 = type { ptr }
%struct.asix_common_private = type { ptr, ptr, i16, i16, %struct.asix_rx_fixup_info, ptr, ptr, i16, [20 x i8], i8 }
%struct.asix_rx_fixup_info = type { ptr, i32, i16, i8 }
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
%struct.ethtool_cmd = type { i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i8, i32, [2 x i32] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.ax88172_int_data = type <{ i16, i8, i16, i8, i16 }>
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.asix_data = type { [8 x i8], [6 x i8], i8, i8, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }

@__initcall__kmod_asix__389_1431_asix_driver_init6 = internal global ptr @asix_driver_init, section ".initcall6.init", align 4
@asix_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @asix_suspend, ptr @asix_resume, ptr @asix_resume, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 96 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_asix_driver_exit = internal global ptr @asix_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author390 = internal constant [25 x i8] c"asix.author=David Hollis\00", section ".modinfo", align 1
@__UNIQUE_ID_version391 = internal constant [25 x i8] c"asix.version=22-Dec-2011\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"asix\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"22-Dec-2011\00", [20 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_description392 = internal constant [61 x i8] c"asix.description=ASIX AX8817X based USB 2.0 Ethernet Devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file393 = internal constant [31 x i8] c"asix.file=drivers/net/usb/asix\00", section ".modinfo", align 1
@__UNIQUE_ID_license394 = internal constant [17 x i8] c"asix.license=GPL\00", section ".modinfo", align 1
@products = internal constant { [38 x %struct.usb_device_id], [240 x i8] } { [38 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1915, i16 8742, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax8817x_info to i32) }, %struct.usb_device_id { i16 3, i16 2118, i16 4160, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @netgear_fa120_info to i32) }, %struct.usb_device_id { i16 3, i16 8193, i16 6656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @dlink_dub_e100_info to i32) }, %struct.usb_device_id { i16 3, i16 2965, i16 5920, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax8817x_info to i32) }, %struct.usb_device_id { i16 3, i16 1976, i16 16906, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @hawking_uf200_info to i32) }, %struct.usb_device_id { i16 3, i16 2269, i16 -28417, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax8817x_info to i32) }, %struct.usb_device_id { i16 3, i16 2269, i16 276, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178_info to i32) }, %struct.usb_device_id { i16 3, i16 1367, i16 8201, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax8817x_info to i32) }, %struct.usb_device_id { i16 3, i16 1041, i16 61, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax8817x_info to i32) }, %struct.usb_device_id { i16 3, i16 1041, i16 110, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178_info to i32) }, %struct.usb_device_id { i16 3, i16 24969, i16 6189, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax8817x_info to i32) }, %struct.usb_device_id { i16 3, i16 3574, i16 86, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178_info to i32) }, %struct.usb_device_id { i16 3, i16 3574, i16 1564, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178_info to i32) }, %struct.usb_device_id { i16 3, i16 1962, i16 23, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax8817x_info to i32) }, %struct.usb_device_id { i16 3, i16 4489, i16 2195, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax8817x_info to i32) }, %struct.usb_device_id { i16 3, i16 5681, i16 25088, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax8817x_info to i32) }, %struct.usb_device_id { i16 3, i16 1265, i16 12296, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax8817x_info to i32) }, %struct.usb_device_id { i16 3, i16 6127, i16 29187, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772b_info to i32) }, %struct.usb_device_id { i16 3, i16 2965, i16 30507, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772b_info to i32) }, %struct.usb_device_id { i16 3, i16 2965, i16 30496, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772_info to i32) }, %struct.usb_device_id { i16 3, i16 2965, i16 6016, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178_info to i32) }, %struct.usb_device_id { i16 3, i16 1929, i16 352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178_info to i32) }, %struct.usb_device_id { i16 3, i16 5041, i16 24, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772_info to i32) }, %struct.usb_device_id { i16 3, i16 5463, i16 30496, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772_info to i32) }, %struct.usb_device_id { i16 3, i16 2001, i16 15365, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772_info to i32) }, %struct.usb_device_id { i16 3, i16 8193, i16 15365, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772_info to i32) }, %struct.usb_device_id { i16 3, i16 8193, i16 6658, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772_info to i32) }, %struct.usb_device_id { i16 3, i16 5943, i16 57, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178_info to i32) }, %struct.usb_device_id { i16 3, i16 1211, i16 2352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178_info to i32) }, %struct.usb_device_id { i16 3, i16 1293, i16 20565, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178_info to i32) }, %struct.usb_device_id { i16 3, i16 1452, i16 5122, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772_info to i32) }, %struct.usb_device_id { i16 3, i16 2965, i16 30506, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772_info to i32) }, %struct.usb_device_id { i16 3, i16 5354, i16 -21743, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88178_info to i32) }, %struct.usb_device_id { i16 3, i16 3504, i16 -22409, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772_info to i32) }, %struct.usb_device_id { i16 3, i16 2965, i16 32299, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88772b_info to i32) }, %struct.usb_device_id { i16 3, i16 2965, i16 5930, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ax88172a_info to i32) }, %struct.usb_device_id { i16 3, i16 1643, i16 8441, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @hg20f9_info to i32) }, %struct.usb_device_id zeroinitializer], [240 x i8] zeroinitializer }, align 32
@ax8817x_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.3, i32 2080, ptr @ax88172_bind, ptr null, ptr @ax88172_link_reset, ptr null, ptr null, ptr null, ptr @asix_status, ptr @ax88172_link_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 1245443 }, [52 x i8] zeroinitializer }, align 32
@netgear_fa120_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.13, i32 2080, ptr @ax88172_bind, ptr null, ptr @ax88172_link_reset, ptr null, ptr null, ptr null, ptr @asix_status, ptr @ax88172_link_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 1245443 }, [52 x i8] zeroinitializer }, align 32
@dlink_dub_e100_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.14, i32 2080, ptr @ax88172_bind, ptr null, ptr @ax88172_link_reset, ptr null, ptr null, ptr null, ptr @asix_status, ptr @ax88172_link_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 10460575 }, [52 x i8] zeroinitializer }, align 32
@hawking_uf200_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.15, i32 2080, ptr @ax88172_bind, ptr null, ptr @ax88172_link_reset, ptr null, ptr null, ptr null, ptr @asix_status, ptr @ax88172_link_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 2039071 }, [52 x i8] zeroinitializer }, align 32
@ax88178_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.16, i32 10336, ptr @ax88178_bind, ptr @ax88178_unbind, ptr @ax88178_reset, ptr null, ptr null, ptr null, ptr @asix_status, ptr @ax88178_link_reset, ptr @asix_rx_fixup_common, ptr @asix_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@ax88772b_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.40, i32 10336, ptr @ax88772_bind, ptr @ax88772_unbind, ptr @ax88772_reset, ptr @ax88772_stop, ptr null, ptr null, ptr @asix_status, ptr null, ptr @asix_rx_fixup_common, ptr @asix_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 1 }, [52 x i8] zeroinitializer }, align 32
@ax88772_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.58, i32 10336, ptr @ax88772_bind, ptr @ax88772_unbind, ptr @ax88772_reset, ptr @ax88772_stop, ptr null, ptr null, ptr @asix_status, ptr null, ptr @asix_rx_fixup_common, ptr @asix_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@ax88172a_info = external dso_local constant %struct.driver_info, align 4
@hg20f9_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.59, i32 10336, ptr @ax88772_bind, ptr @ax88772_unbind, ptr @ax88772_reset, ptr null, ptr null, ptr null, ptr @asix_status, ptr null, ptr @asix_rx_fixup_common, ptr @asix_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 1 }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ASIX AX8817x USB 2.0 Ethernet\00", [34 x i8] zeroinitializer }, align 32
@ax88172_bind.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ax88172_bind\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/usb/asix_devices.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"read AX_CMD_READ_NODE_ID failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ax88172_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @ax88172_set_multicast, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @asix_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ax88172_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @asix_get_drvinfo, ptr null, ptr null, ptr @asix_get_wol, ptr @asix_set_wol, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @usbnet_nway_reset, ptr @asix_get_link, ptr null, ptr @asix_get_eeprom_len, ptr @asix_get_eeprom, ptr @asix_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_link_ksettings_mii, ptr @usbnet_set_link_ksettings_mii, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid hw address, using random\0A\00", [62 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"BMCR_RESET timeout on phy_id %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ax88172_link_reset.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.5, ptr @.str.10, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ax88172_link_reset\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"ax88172_link_reset() speed: %u duplex: %d setting mode to 0x%04x\0A\00", [62 x i8] zeroinitializer }, align 32
@asix_status.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.5, ptr @.str.12, i8 0, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"asix_status\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Link Status is: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Netgear FA-120 USB Ethernet\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DLink DUB-E100 USB Ethernet\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Hawking UF200 USB Ethernet\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ASIX AX88178 USB 2.0 Ethernet\00", [34 x i8] zeroinitializer }, align 32
@ax88178_bind.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.5, ptr @.str.18, i8 1, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ax88178_bind\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read MAC address: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ax88178_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @asix_set_multicast, ptr @asix_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @asix_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @ax88178_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ax88178_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @asix_get_drvinfo, ptr null, ptr null, ptr @asix_get_wol, ptr @asix_set_wol, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @usbnet_nway_reset, ptr @asix_get_link, ptr null, ptr @asix_get_eeprom_len, ptr @asix_get_eeprom, ptr @asix_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_link_ksettings_mii, ptr @usbnet_set_link_ksettings_mii, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ax88178_change_mtu.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.5, ptr @.str.20, i8 1, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ax88178_change_mtu\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ax88178_change_mtu() new_mtu=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ax88178_reset.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.5, ptr @.str.22, i8 0, i8 -25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ax88178_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GPIO Status: 0x%04x\0A\00", [43 x i8] zeroinitializer }, align 32
@ax88178_reset.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.5, ptr @.str.23, i8 0, i8 -24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EEPROM index 0x17 is 0x%04x\0A\00", [35 x i8] zeroinitializer }, align 32
@ax88178_reset.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.5, ptr @.str.24, i8 0, i8 -21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GPIO0: %d, PhyMode: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ax88178_reset.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.5, ptr @.str.25, i8 0, i8 -19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gpio phymode == 1 path\0A\00", [40 x i8] zeroinitializer }, align 32
@ax88178_reset.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.5, ptr @.str.26, i8 0, i8 -17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PHYID=0x%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@marvell_phy_init.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.5, ptr @.str.28, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"marvell_phy_init\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"marvell_phy_init()\0A\00", [44 x i8] zeroinitializer }, align 32
@marvell_phy_init.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.5, ptr @.str.29, i8 0, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MII_MARVELL_STATUS = 0x%04x\0A\00", [35 x i8] zeroinitializer }, align 32
@marvell_phy_init.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.5, ptr @.str.30, i8 0, i8 -44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MII_MARVELL_LED_CTRL (1) = 0x%04x\0A\00", [61 x i8] zeroinitializer }, align 32
@marvell_phy_init.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.5, ptr @.str.31, i8 0, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MII_MARVELL_LED_CTRL (2) = 0x%04x\0A\00", [61 x i8] zeroinitializer }, align 32
@rtl8211cl_phy_init.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.5, ptr @.str.33, i8 0, i8 -39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl8211cl_phy_init\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl8211cl_phy_init()\0A\00", [42 x i8] zeroinitializer }, align 32
@ax88178_link_reset.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.5, ptr @.str.35, i8 0, i8 -5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ax88178_link_reset\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ax88178_link_reset()\0A\00", [42 x i8] zeroinitializer }, align 32
@ax88178_link_reset.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.5, ptr @.str.36, i8 1, i8 1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"ax88178_link_reset() speed: %u duplex: %d setting mode to 0x%04x\0A\00", [62 x i8] zeroinitializer }, align 32
@marvell_led_status.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.5, ptr @.str.38, i8 0, i8 -33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"marvell_led_status\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"marvell_led_status() read 0x%04x\0A\00", [62 x i8] zeroinitializer }, align 32
@marvell_led_status.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.5, ptr @.str.39, i8 0, i8 -29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"marvell_led_status() writing 0x%04x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ASIX AX88772B USB 2.0 Ethernet\00", [33 x i8] zeroinitializer }, align 32
@ax88772_bind.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.5, ptr @.str.42, i8 0, i8 -76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ax88772_bind\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MAC address read from device tree\00", [62 x i8] zeroinitializer }, align 32
@ax88772_bind.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.5, ptr @.str.18, i8 0, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ax88772_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @asix_set_multicast, ptr @asix_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ax88772_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @asix_get_drvinfo, ptr null, ptr null, ptr @asix_get_wol, ptr @asix_set_wol, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @phy_ethtool_nway_reset, ptr @usbnet_get_link, ptr null, ptr @asix_get_eeprom_len, ptr @asix_get_eeprom, ptr @asix_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @net_selftest, ptr @ax88772_ethtool_get_strings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ax88772_ethtool_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ax88772_bind.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.5, ptr @.str.43, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to reset AX88772: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ax88772_hw_reset.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.5, ptr @.str.45, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ax88772_hw_reset\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Select PHY #1 failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ax88772_hw_reset.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.5, ptr @.str.46, i8 0, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Write IPG,IPG1,IPG2 failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ax88772_hw_reset.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.5, ptr @.str.47, i8 0, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"RX_CTL is 0x%04x after all initializations\0A\00", [52 x i8] zeroinitializer }, align 32
@ax88772_hw_reset.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.5, ptr @.str.48, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Medium Status is 0x%04x after all initializations\0A\00", [45 x i8] zeroinitializer }, align 32
@ax88772a_hw_reset.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.5, ptr @.str.45, i8 0, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ax88772a_hw_reset\00", [46 x i8] zeroinitializer }, align 32
@ax88772a_hw_reset.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.5, ptr @.str.50, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Write BQ setting failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ax88772a_hw_reset.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.5, ptr @.str.51, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"772a_hw_reset: MR20=0x%x MR21=0x%x MR22=0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@ax88772a_hw_reset.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.5, ptr @.str.46, i8 0, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ax88772a_hw_reset.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.5, ptr @.str.47, i8 0, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ax88772a_hw_reset.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.5, ptr @.str.48, i8 0, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ax88772_suspend.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.5, ptr @.str.53, i8 0, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ax88772_suspend\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ax88772_suspend: medium=0x%04x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Asix MDIO Bus\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb-%03d:%03d\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s:%02x\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Could not connect to PHY device %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ASIX AX88772 USB 2.0 Ethernet\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HG20F9 USB 2.0 Ethernet\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 12]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 7, i64 16, i64 32]
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"asix_driver\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1419, i32 26 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1434, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1261, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant [13 x i8] c"ax8817x_info\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1160, i32 33 }
@___asan_gen_.81 = private unnamed_addr constant [19 x i8] c"netgear_fa120_info\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1180, i32 33 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"dlink_dub_e100_info\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1170, i32 33 }
@___asan_gen_.87 = private unnamed_addr constant [19 x i8] c"hawking_uf200_info\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1190, i32 33 }
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"ax88178_info\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1226, i32 33 }
@___asan_gen_.93 = private unnamed_addr constant [14 x i8] c"ax88772b_info\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1212, i32 33 }
@___asan_gen_.96 = private unnamed_addr constant [13 x i8] c"ax88772_info\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1200, i32 33 }
@___asan_gen_.99 = private unnamed_addr constant [12 x i8] c"hg20f9_info\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1248, i32 33 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1161, i32 17 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 252, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [19 x i8] c"ax88172_netdev_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 191, i32 36 }
@___asan_gen_.117 = private unnamed_addr constant [20 x i8] c"ax88172_ethtool_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 117, i32 33 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 64, i32 25 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 222, i32 23 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 183, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 55, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1181, i32 17 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1171, i32 17 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1191, i32 17 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1227, i32 17 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1117, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [19 x i8] c"ax88178_netdev_ops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1094, i32 36 }
@___asan_gen_.159 = private unnamed_addr constant [20 x i8] c"ax88178_ethtool_ops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 820, i32 33 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1079, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 924, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 930, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 941, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 951, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 958, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 840, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 843, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 851, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 860, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 871, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1007, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1028, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 892, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 908, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1213, i32 17 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 720, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [19 x i8] c"ax88772_netdev_ops\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 581, i32 36 }
@___asan_gen_.237 = private unnamed_addr constant [20 x i8] c"ax88772_ethtool_ops\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 306, i32 33 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 765, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 369, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 417, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 434, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 438, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 463, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 505, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 518, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 607, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 671, i32 21 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 673, i32 44 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 684, i32 51 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 690, i32 24 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1201, i32 17 }
@___asan_gen_.288 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.289 = private constant [34 x i8] c"../drivers/net/usb/asix_devices.c\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1249, i32 17 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author390, ptr @__UNIQUE_ID_description392, ptr @__UNIQUE_ID_file393, ptr @__UNIQUE_ID_license394, ptr @__UNIQUE_ID_version391, ptr @__exitcall_asix_driver_exit, ptr @__initcall__kmod_asix__389_1431_asix_driver_init6, ptr @__modver_attr, ptr @asix_driver_exit, ptr @asix_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @products, ptr @ax8817x_info, ptr @netgear_fa120_info, ptr @dlink_dub_e100_info, ptr @hawking_uf200_info, ptr @ax88178_info, ptr @ax88772b_info, ptr @ax88772_info, ptr @hg20f9_info, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ax88172_netdev_ops, ptr @ax88172_ethtool_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @ax88178_netdev_ops, ptr @ax88178_ethtool_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @ax88772_netdev_ops, ptr @ax88772_ethtool_ops, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asix_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 912, i32 1152, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax8817x_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netgear_fa120_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlink_dub_e100_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hawking_uf200_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88178_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88772b_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88772_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hg20f9_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88172_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88172_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88178_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88178_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88772_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88772_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @asix_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @asix_driver, ptr noundef null, ptr noundef nonnull @.str.1) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @asix_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @asix_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_probe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_disconnect(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asix_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %suspend = getelementptr inbounds %struct.asix_common_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %suspend, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %5(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call4 = tail call i32 @usbnet_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #9
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asix_resume(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %5(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call i32 @usbnet_resume(ptr noundef %intf) #9
  ret i32 %call3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88172_bind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  %buf = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #9
  %0 = call ptr @memset(ptr %buf, i32 0, i32 6)
  %driver_info = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 2
  %1 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_info, align 4
  %data = getelementptr inbounds %struct.driver_info, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  %call = tail call i32 @usbnet_get_endpoints(ptr noundef %dev, ptr noundef %intf) #9
  %shr = lshr i32 %4, 16
  %5 = trunc i32 %shr to i16
  %conv = and i16 %5, 255
  %call1 = tail call i32 @asix_write_cmd(ptr noundef %dev, i8 noundef zeroext 31, i16 noundef zeroext %conv, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 5) #9
  %6 = trunc i32 %4 to i16
  %7 = lshr i16 %6, 8
  %call1.1 = tail call i32 @asix_write_cmd(ptr noundef %dev, i8 noundef zeroext 31, i16 noundef zeroext %7, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp2.1 = icmp slt i32 %call1.1, 0
  br i1 %cmp2.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 5) #9
  %8 = trunc i32 %4 to i16
  %conv.2 = and i16 %8, 255
  %call1.2 = tail call i32 @asix_write_cmd(ptr noundef %dev, i8 noundef zeroext 31, i16 noundef zeroext %conv.2, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %cmp2.2 = icmp slt i32 %call1.2, 0
  br i1 %cmp2.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  tail call void @msleep(i32 noundef 5) #9
  %call4 = tail call i32 @asix_write_rx_ctl(ptr noundef %dev, i16 noundef zeroext 128, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.2.cleanup_crit_edge, label %if.end8

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end.2
  %call9 = call i32 @asix_read_cmd(ptr noundef %dev, i8 noundef zeroext 23, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef nonnull %buf, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.body13, label %if.end21

do.body13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88172_bind.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88172_bind, %if.then17)) #9
          to label %cleanup [label %if.then17], !srcloc !194

if.then17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %9 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88172_bind.__UNIQUE_ID_ddebug358, ptr noundef %10, ptr noundef nonnull @.str.6, i32 noundef %call9) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end8
  call fastcc void @asix_set_netdev_dev_addr(ptr noundef %dev, ptr noundef nonnull %buf)
  %net23 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %11 = ptrtoint ptr %net23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net23, align 4
  %mii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  %dev24 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 5
  %13 = ptrtoint ptr %dev24 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dev24, align 4
  %mdio_read = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 6
  %14 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @asix_mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 7
  %15 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @asix_mdio_write, ptr %mdio_write, align 4
  %phy_id_mask = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 2
  %16 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 63, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 3
  %17 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 31, ptr %reg_num_mask, align 4
  %call29 = call i32 @asix_read_phy_addr(ptr noundef %dev, i1 noundef zeroext true) #9
  %18 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call29, ptr %mii, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp33 = icmp slt i32 %call29, 0
  br i1 %cmp33, label %if.end21.cleanup_crit_edge, label %if.end38

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %if.end21
  %19 = ptrtoint ptr %net23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net23, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ax88172_netdev_ops, ptr %netdev_ops, align 8
  %22 = load ptr, ptr %net23, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ax88172_ethtool_ops, ptr %ethtool_ops, align 16
  %24 = load ptr, ptr %net23, align 4
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 21
  %25 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 4, ptr %needed_headroom, align 8
  %26 = load ptr, ptr %net23, align 4
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 22
  %27 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 4, ptr %needed_tailroom, align 2
  %28 = load ptr, ptr %net23, align 4
  %29 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mii, align 4
  call void @asix_mdio_write(ptr noundef %28, i32 noundef %30, i32 noundef 0, i32 noundef 32768) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 107374000) #9
  br label %while.body.i

while.body.i:                                     ; preds = %if.then.i.while.body.i_crit_edge, %if.end38
  %dec13.i = phi i32 [ 4999, %if.end38 ], [ %dec.i, %if.then.i.while.body.i_crit_edge ]
  %32 = ptrtoint ptr %net23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net23, align 4
  %34 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mii, align 4
  %call.i = call i32 @asix_mdio_read(ptr noundef %33, i32 noundef %35, i32 noundef 0) #9
  %and.i = and i32 %call.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %while.body.i.asix_phy_reset.exit_crit_edge, label %if.then.i

while.body.i.asix_phy_reset.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_phy_reset.exit

if.then.i:                                        ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 21474800) #9
  %dec.i = add nsw i32 %dec13.i, -1
  %tobool.not.i = icmp eq i32 %dec13.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %if.then.i.while.body.i_crit_edge

if.then.i.while.body.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %net23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net23, align 4
  %39 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mii, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %38, ptr noundef nonnull @.str.8, i32 noundef %40) #12
  br label %asix_phy_reset.exit

asix_phy_reset.exit:                              ; preds = %while.end.i, %while.body.i.asix_phy_reset.exit_crit_edge
  %41 = ptrtoint ptr %net23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net23, align 4
  %43 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mii, align 4
  call void @asix_mdio_write(ptr noundef %42, i32 noundef %44, i32 noundef 4, i32 noundef 1505) #9
  %call47 = call i32 @mii_nway_restart(ptr noundef %mii) #9
  br label %cleanup

cleanup:                                          ; preds = %asix_phy_reset.exit, %if.end21.cleanup_crit_edge, %if.then17, %do.body13, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %asix_phy_reset.exit ], [ %call29, %if.end21.cleanup_crit_edge ], [ %call4, %if.end.2.cleanup_crit_edge ], [ %call9, %if.then17 ], [ %call9, %do.body13 ], [ %call1, %entry.cleanup_crit_edge ], [ %call1.1, %if.end.cleanup_crit_edge ], [ %call1.2, %if.end.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88172_link_reset(ptr noundef %dev) #2 align 64 {
entry:
  %ecmd = alloca %struct.ethtool_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %ecmd) #9
  %0 = getelementptr inbounds i8, ptr %ecmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %ecmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %ecmd, align 4
  %mii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  %call = tail call i32 @mii_check_media(ptr noundef %mii, i32 noundef 1, i32 noundef 1) #9
  call void @mii_ethtool_gset(ptr noundef %mii, ptr noundef nonnull %ecmd) #9
  %duplex = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 4
  %3 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp.not = icmp eq i8 %4, 1
  %spec.select = select i1 %cmp.not, i8 22, i8 -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88172_link_reset.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88172_link_reset, %if.then9)) #9
          to label %do.end16 [label %if.then9], !srcloc !194

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net, align 4
  %speed_hi.i = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 12
  %7 = ptrtoint ptr %speed_hi.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %speed_hi.i, align 4
  %conv.i = zext i16 %8 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %speed.i = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 3
  %9 = ptrtoint ptr %speed.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %speed.i, align 4
  %conv1.i = zext i16 %10 to i32
  %or.i = or i32 %shl.i, %conv1.i
  %11 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %duplex, align 2
  %conv12 = zext i8 %12 to i32
  %conv13 = zext i8 %spec.select to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88172_link_reset.__UNIQUE_ID_ddebug357, ptr noundef %6, ptr noundef nonnull @.str.10, i32 noundef %or.i, i32 noundef %conv12, i32 noundef %conv13) #9
  br label %do.end16

do.end16:                                         ; preds = %if.then9, %entry
  %conv17 = zext i8 %spec.select to i16
  %call18 = call i32 @asix_write_medium_mode(ptr noundef %dev, i16 noundef zeroext %conv17, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ecmd) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asix_status(ptr noundef %dev, ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %0 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp ult i32 %1, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %link1 = getelementptr inbounds %struct.ax88172_int_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %link1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link1, align 1
  %6 = and i8 %5, 1
  %and = zext i8 %6 to i32
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %7 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %12 = icmp eq i8 %6, 0
  %cmp3.not = xor i1 %12, %tobool.not.i
  br i1 %cmp3.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool = icmp ne i8 %6, 0
  tail call void @usbnet_link_change(ptr noundef %dev, i1 noundef zeroext %tobool, i1 noundef zeroext true) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asix_status.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asix_status, %if.then11)) #9
          to label %cleanup [label %if.then11], !srcloc !194

if.then11:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @asix_status.__UNIQUE_ID_ddebug356, ptr noundef %14, ptr noundef nonnull @.str.12, i32 noundef %and) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_write_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_write_rx_ctl(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_read_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @asix_set_netdev_dev_addr(ptr nocapture noundef readonly %dev, ptr noundef %addr) unnamed_addr #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %addr, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.else_crit_edge, label %if.then

is_valid_ether_addr.exit.if.else_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net, align 4
  tail call void @dev_addr_mod(ptr noundef %6, i32 noundef 0, ptr noundef %addr, i32 noundef 6) #9
  br label %if.end

if.else:                                          ; preds = %is_valid_ether_addr.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %net1 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %7 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net1, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %8, ptr noundef nonnull @.str.7) #12
  %9 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #9
  %11 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #9
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %addr.i, align 1
  %14 = and i8 %13, -4
  %15 = or i8 %14, 2
  store i8 %15, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #9
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 55
  %16 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_mdio_read(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_mdio_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_read_phy_addr(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_start_xmit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax88172_set_multicast(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %data1 = getelementptr i8, ptr %net, i32 2556
  %flags = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end69_crit_edge

entry.if.end69_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.else:                                          ; preds = %entry
  %and4 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.else.if.end69_crit_edge

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

lor.lhs.false:                                    ; preds = %if.else
  %mc = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 66, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp = icmp sgt i32 %3, 64
  br i1 %cmp, label %lor.lhs.false.if.end69_crit_edge, label %if.else11

lor.lhs.false.if.end69_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.else11:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14 = icmp eq i32 %3, 0
  br i1 %cmp14, label %if.else11.if.end69_crit_edge, label %if.else17

if.else11.if.end69_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.else17:                                        ; preds = %if.else11
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %data1, align 1
  %5 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %5)
  %ha.099 = load ptr, ptr %mc, align 4
  %cmp22.not100 = icmp eq ptr %ha.099, %mc
  br i1 %cmp22.not100, label %if.else17.for.end_crit_edge, label %if.else17.cond.end_crit_edge

if.else17.cond.end_crit_edge:                     ; preds = %if.else17
  br label %cond.end

if.else17.for.end_crit_edge:                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %if.else17.cond.end_crit_edge
  %ha.0101 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.099, %if.else17.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0101, i32 0, i32 2
  %call25 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #13
  %6 = and i32 %call25, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i.i, align 1
  %shr50 = lshr i8 %8, 2
  %and51 = and i8 %shr50, 7
  %shl52 = shl i8 1, %and51
  %9 = lshr i8 %8, 5
  %shr54 = zext i8 %9 to i32
  %arrayidx = getelementptr [8 x i8], ptr %data1, i32 0, i32 %shr54
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv57 = or i8 %11, %shl52
  store i8 %conv57, ptr %arrayidx, align 1
  %12 = ptrtoint ptr %ha.0101 to i32
  call void @__asan_load4_noabort(i32 %12)
  %ha.0 = load ptr, ptr %ha.0101, align 4
  %cmp22.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp22.not, label %cond.end.for.end_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %if.else17.for.end_crit_edge
  tail call void @asix_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext 22, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef %data1) #9
  br label %if.end69

if.end69:                                         ; preds = %for.end, %if.else11.if.end69_crit_edge, %lor.lhs.false.if.end69_crit_edge, %if.else.if.end69_crit_edge, %entry.if.end69_crit_edge
  %rx_ctl.0 = phi i8 [ -116, %if.else11.if.end69_crit_edge ], [ -100, %for.end ], [ -115, %entry.if.end69_crit_edge ], [ -114, %lor.lhs.false.if.end69_crit_edge ], [ -114, %if.else.if.end69_crit_edge ]
  %conv70 = zext i8 %rx_ctl.0 to i16
  tail call void @asix_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext 16, i16 noundef zeroext %conv70, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asix_ioctl(ptr noundef %net, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %net, i32 2588
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %call2 = tail call i32 @generic_mii_ioctl(ptr noundef %mii, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #9
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_tx_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_write_cmd_async(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_get_drvinfo(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_get_wol(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_set_wol(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_msglevel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_set_msglevel(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_nway_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asix_get_link(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %net, i32 2588
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_get_eeprom_len(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_get_eeprom(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_set_eeprom(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_link_ksettings_mii(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_set_link_ksettings_mii(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_check_media(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_gset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_write_medium_mode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_link_change(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88178_bind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  %buf = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #9
  %0 = call ptr @memset(ptr %buf, i32 0, i32 6)
  %call = tail call i32 @usbnet_get_endpoints(ptr noundef %dev, ptr noundef %intf) #9
  %call1 = call i32 @asix_read_cmd(ptr noundef %dev, i8 noundef zeroext 19, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef nonnull %buf, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.body2, label %if.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88178_bind.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88178_bind, %if.then6)) #9
          to label %cleanup [label %if.then6], !srcloc !194

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88178_bind.__UNIQUE_ID_ddebug388, ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %call1) #9
  br label %cleanup

if.end9:                                          ; preds = %entry
  call fastcc void @asix_set_netdev_dev_addr(ptr noundef %dev, ptr noundef nonnull %buf)
  %net11 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %net11 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net11, align 4
  %mii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  %dev12 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 5
  %5 = ptrtoint ptr %dev12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %dev12, align 4
  %mdio_read = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 6
  %6 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @asix_mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 7
  %7 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @asix_mdio_write, ptr %mdio_write, align 4
  %phy_id_mask = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 2
  %8 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 31, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 3
  %9 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 255, ptr %reg_num_mask, align 4
  %supports_gmii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 4
  %10 = ptrtoint ptr %supports_gmii to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %supports_gmii, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %supports_gmii, align 4
  %call18 = call i32 @asix_read_phy_addr(ptr noundef %dev, i1 noundef zeroext true) #9
  %11 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call18, ptr %mii, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp22 = icmp slt i32 %call18, 0
  br i1 %cmp22, label %if.end9.cleanup_crit_edge, label %if.end26

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end9
  %12 = ptrtoint ptr %net11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net11, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ax88178_netdev_ops, ptr %netdev_ops, align 8
  %15 = load ptr, ptr %net11, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 44
  %16 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ax88178_ethtool_ops, ptr %ethtool_ops, align 16
  %17 = load ptr, ptr %net11, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %19 to i32
  %sub = sub nsw i32 16380, %conv
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 31
  %20 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %max_mtu, align 4
  %call31 = call i32 @asix_sw_reset(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 0) #9
  call void @msleep(i32 noundef 150) #9
  %call32 = call i32 @asix_sw_reset(ptr noundef %dev, i8 noundef zeroext 72, i32 noundef 0) #9
  call void @msleep(i32 noundef 150) #9
  %driver_info = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 2
  %21 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_info, align 4
  %flags = getelementptr inbounds %struct.driver_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.end26.if.end35_crit_edge, label %if.then34

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then34:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %rx_urb_size = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %25 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2048, ptr %rx_urb_size, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end26.if.end35_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 56) #14
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %27 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %driver_priv, align 4
  %tobool38.not = icmp eq ptr %call7.i.i, null
  %. = select i1 %tobool38.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end9.cleanup_crit_edge, %if.then6, %do.body2
  %retval.0 = phi i32 [ %call1, %if.then6 ], [ %call18, %if.end9.cleanup_crit_edge ], [ %., %if.end35 ], [ %call1, %do.body2 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax88178_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  tail call void @asix_rx_fixup_common_free(ptr noundef %1) #9
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88178_reset(ptr noundef %dev) #2 align 64 {
entry:
  %eeprom = alloca i16, align 2
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %eeprom) #9
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %eeprom, align 2, !annotation !195
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #9
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %status, align 1, !annotation !195
  %call = call i32 @asix_read_cmd(ptr noundef %dev, i8 noundef zeroext 30, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %status, i32 noundef 0) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88178_reset.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88178_reset, %if.then)) #9
          to label %do.end7 [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status, align 1
  %conv = zext i8 %5 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88178_reset.__UNIQUE_ID_ddebug380, ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef %conv) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %call8 = call i32 @asix_write_cmd(ptr noundef %dev, i8 noundef zeroext 13, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #9
  %call9 = call i32 @asix_read_cmd(ptr noundef %dev, i8 noundef zeroext 11, i16 noundef zeroext 23, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef nonnull %eeprom, i32 noundef 0) #9
  %call10 = call i32 @asix_write_cmd(ptr noundef %dev, i8 noundef zeroext 14, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88178_reset.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88178_reset, %if.then24)) #9
          to label %do.end31 [label %if.then24], !srcloc !194

if.then24:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %net25 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %6 = ptrtoint ptr %net25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net25, align 4
  %8 = ptrtoint ptr %eeprom to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %eeprom, align 2
  %conv26 = zext i16 %9 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88178_reset.__UNIQUE_ID_ddebug381, ptr noundef %7, ptr noundef nonnull @.str.23, i32 noundef %conv26) #9
  br label %do.end31

do.end31:                                         ; preds = %if.then24, %do.end7
  %10 = ptrtoint ptr %eeprom to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %eeprom, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp = icmp eq i16 %11, -1
  br i1 %cmp, label %do.end31.do.body46_crit_edge, label %if.else

do.end31.do.body46_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body46

if.else:                                          ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  %12 = lshr i16 %11, 8
  %13 = trunc i16 %12 to i8
  %conv36 = and i8 %13, 127
  %conv39 = trunc i16 %11 to i8
  %14 = xor i16 %11, -1
  %15 = lshr i16 %14, 15
  %.not = zext i16 %15 to i32
  br label %do.body46

do.body46:                                        ; preds = %if.else, %do.end31.do.body46_crit_edge
  %conv36.sink = phi i8 [ %conv36, %if.else ], [ 0, %do.end31.do.body46_crit_edge ]
  %conv39.sink = phi i8 [ %conv39, %if.else ], [ 0, %do.end31.do.body46_crit_edge ]
  %gpio0.0 = phi i32 [ %.not, %if.else ], [ 1, %do.end31.do.body46_crit_edge ]
  %16 = getelementptr inbounds %struct.asix_data, ptr %data1, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv36.sink, ptr %16, align 1
  %18 = getelementptr inbounds %struct.asix_data, ptr %data1, i32 0, i32 3
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv39.sink, ptr %18, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88178_reset.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88178_reset, %if.then58)) #9
          to label %do.end66 [label %if.then58], !srcloc !194

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  %net59 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %20 = ptrtoint ptr %net59 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net59, align 4
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %16, align 1
  %conv61 = zext i8 %23 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88178_reset.__UNIQUE_ID_ddebug382, ptr noundef %21, ptr noundef nonnull @.str.24, i32 noundef %gpio0.0, i32 noundef %conv61) #9
  br label %do.end66

do.end66:                                         ; preds = %if.then58, %do.body46
  %call67 = call i32 @asix_write_gpio(ptr noundef %dev, i16 noundef zeroext 140, i32 noundef 40, i32 noundef 0) #9
  %24 = ptrtoint ptr %eeprom to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %eeprom, align 2
  %26 = and i16 %25, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %26)
  %cmp70.not = icmp eq i16 %26, 1
  br i1 %cmp70.not, label %do.body78, label %if.then72

if.then72:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #11
  %call73 = call i32 @asix_write_gpio(ptr noundef %dev, i16 noundef zeroext 60, i32 noundef 30, i32 noundef 0) #9
  %call74 = call i32 @asix_write_gpio(ptr noundef %dev, i16 noundef zeroext 28, i32 noundef 300, i32 noundef 0) #9
  br label %if.end99

do.body78:                                        ; preds = %do.end66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88178_reset.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88178_reset, %if.then90)) #9
          to label %do.end96 [label %if.then90], !srcloc !194

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #11
  %net91 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %27 = ptrtoint ptr %net91 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net91, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88178_reset.__UNIQUE_ID_ddebug383, ptr noundef %28, ptr noundef nonnull @.str.25) #9
  br label %do.end96

do.end96:                                         ; preds = %if.then90, %do.body78
  %call97 = call i32 @asix_write_gpio(ptr noundef %dev, i16 noundef zeroext 4, i32 noundef 30, i32 noundef 0) #9
  br label %if.end99

if.end99:                                         ; preds = %do.end96, %if.then72
  %.sink = phi i16 [ 12, %do.end96 ], [ 60, %if.then72 ]
  %call98 = call i32 @asix_write_gpio(ptr noundef %dev, i16 noundef zeroext %.sink, i32 noundef 30, i32 noundef 0) #9
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %mii.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  br label %for.body.i

for.body.i:                                       ; preds = %if.end6.i.for.body.i_crit_edge, %if.end99
  %i.033.i = phi i32 [ 0, %if.end99 ], [ %inc.i, %if.end6.i.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net.i, align 4
  %31 = ptrtoint ptr %mii.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mii.i, align 4
  %call.i = call i32 @asix_mdio_read(ptr noundef %30, i32 noundef %32, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %for.body.i.asix_get_phyid.exit_crit_edge, label %if.end.i

for.body.i.asix_get_phyid.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_get_phyid.exit

if.end.i:                                         ; preds = %for.body.i
  %33 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.end.i.if.end10.i_crit_edge [
    i32 0, label %if.end.i.if.end6.i_crit_edge
    i32 65535, label %if.end.i.if.end6.i_crit_edge247
  ]

if.end.i.if.end6.i_crit_edge247:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.end6.i:                                        ; preds = %if.end.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge247
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 214748000) #9
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %for.end.i, label %if.end6.i.for.body.i_crit_edge

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %if.end6.i
  %35 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %call.i, label %for.end.i.if.end10.i_crit_edge [
    i32 65535, label %for.end.i.asix_get_phyid.exit_crit_edge
    i32 0, label %for.end.i.asix_get_phyid.exit_crit_edge248
  ]

for.end.i.asix_get_phyid.exit_crit_edge248:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_get_phyid.exit

for.end.i.asix_get_phyid.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_get_phyid.exit

for.end.i.if.end10.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.end10.i:                                       ; preds = %for.end.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %36 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net.i, align 4
  %38 = ptrtoint ptr %mii.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mii.i, align 4
  %call14.i = call i32 @asix_mdio_read(ptr noundef %37, i32 noundef %39, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end10.i.asix_get_phyid.exit_crit_edge, label %if.end17.i

if.end10.i.asix_get_phyid.exit_crit_edge:         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_get_phyid.exit

if.end17.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i = shl i32 %call.i, 16
  %and18.i = and i32 %call14.i, 65535
  %or.i = or i32 %and18.i, %shl.i
  br label %asix_get_phyid.exit

asix_get_phyid.exit:                              ; preds = %if.end17.i, %if.end10.i.asix_get_phyid.exit_crit_edge, %for.end.i.asix_get_phyid.exit_crit_edge, %for.end.i.asix_get_phyid.exit_crit_edge248, %for.body.i.asix_get_phyid.exit_crit_edge
  %retval.0.i220 = phi i32 [ %or.i, %if.end17.i ], [ 0, %for.end.i.asix_get_phyid.exit_crit_edge ], [ 0, %if.end10.i.asix_get_phyid.exit_crit_edge ], [ 0, %for.end.i.asix_get_phyid.exit_crit_edge248 ], [ 0, %for.body.i.asix_get_phyid.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88178_reset.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88178_reset, %if.then114)) #9
          to label %do.end120 [label %if.then114], !srcloc !194

if.then114:                                       ; preds = %asix_get_phyid.exit
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88178_reset.__UNIQUE_ID_ddebug384, ptr noundef %41, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i220) #9
  br label %do.end120

do.end120:                                        ; preds = %if.then114, %asix_get_phyid.exit
  %call121 = call i32 @asix_write_cmd(ptr noundef %dev, i8 noundef zeroext 34, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #9
  %call122 = call i32 @asix_sw_reset(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 0) #9
  call void @msleep(i32 noundef 150) #9
  %call123 = call i32 @asix_sw_reset(ptr noundef %dev, i8 noundef zeroext 72, i32 noundef 0) #9
  call void @msleep(i32 noundef 150) #9
  %call124 = call i32 @asix_write_rx_ctl(ptr noundef %dev, i16 noundef zeroext 0, i32 noundef 0) #9
  %42 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %16, align 1
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %43, label %do.end120.if.end139_crit_edge [
    i8 0, label %if.then129
    i8 12, label %if.then136
  ]

do.end120.if.end139_crit_edge:                    ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139

if.then129:                                       ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @marvell_phy_init(ptr noundef %dev)
  call void @msleep(i32 noundef 60) #9
  br label %if.end139

if.then136:                                       ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rtl8211cl_phy_init(ptr noundef %dev)
  br label %if.end139

if.end139:                                        ; preds = %if.then136, %if.then129, %do.end120.if.end139_crit_edge
  %45 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %net.i, align 4
  %47 = ptrtoint ptr %mii.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mii.i, align 4
  call void @asix_mdio_write(ptr noundef %46, i32 noundef %48, i32 noundef 0, i32 noundef 36864) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 107374000) #9
  br label %while.body.i

while.body.i:                                     ; preds = %if.then.i.while.body.i_crit_edge, %if.end139
  %dec13.i = phi i32 [ 4999, %if.end139 ], [ %dec.i, %if.then.i.while.body.i_crit_edge ]
  %50 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net.i, align 4
  %52 = ptrtoint ptr %mii.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mii.i, align 4
  %call.i223 = call i32 @asix_mdio_read(ptr noundef %51, i32 noundef %53, i32 noundef 0) #9
  %and.i = and i32 %call.i223, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %while.body.i.asix_phy_reset.exit_crit_edge, label %if.then.i

while.body.i.asix_phy_reset.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asix_phy_reset.exit

if.then.i:                                        ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 21474800) #9
  %dec.i = add nsw i32 %dec13.i, -1
  %tobool.not.i = icmp eq i32 %dec13.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %if.then.i.while.body.i_crit_edge

if.then.i.while.body.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %net.i, align 4
  %57 = ptrtoint ptr %mii.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mii.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %56, ptr noundef nonnull @.str.8, i32 noundef %58) #12
  br label %asix_phy_reset.exit

asix_phy_reset.exit:                              ; preds = %while.end.i, %while.body.i.asix_phy_reset.exit_crit_edge
  %59 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %net.i, align 4
  %61 = ptrtoint ptr %mii.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mii.i, align 4
  call void @asix_mdio_write(ptr noundef %60, i32 noundef %62, i32 noundef 4, i32 noundef 1505) #9
  %63 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %net.i, align 4
  %65 = ptrtoint ptr %mii.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mii.i, align 4
  call void @asix_mdio_write(ptr noundef %64, i32 noundef %66, i32 noundef 9, i32 noundef 512) #9
  %call144 = call i32 @asix_write_medium_mode(ptr noundef %dev, i16 noundef zeroext 886, i32 noundef 0) #9
  %call146 = call i32 @mii_nway_restart(ptr noundef %mii.i) #9
  %mac_addr = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 2
  %67 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %net.i, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 86
  %69 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_addr, align 64
  %71 = call ptr @memcpy(ptr %mac_addr, ptr %70, i32 6)
  %call150 = call i32 @asix_write_cmd(ptr noundef %dev, i8 noundef zeroext 20, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef %mac_addr, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %cmp151 = icmp slt i32 %call150, 0
  br i1 %cmp151, label %asix_phy_reset.exit.cleanup_crit_edge, label %if.end154

asix_phy_reset.exit.cleanup_crit_edge:            ; preds = %asix_phy_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end154:                                        ; preds = %asix_phy_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call155 = call i32 @asix_write_rx_ctl(ptr noundef %dev, i16 noundef zeroext 136, i32 noundef 0) #9
  %72 = call i32 @llvm.smin.i32(i32 %call155, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end154, %asix_phy_reset.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call150, %asix_phy_reset.exit.cleanup_crit_edge ], [ %72, %if.end154 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %eeprom) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88178_link_reset(ptr noundef %dev) #2 align 64 {
entry:
  %ecmd = alloca %struct.ethtool_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %ecmd) #9
  %0 = getelementptr inbounds i8, ptr %ecmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %ecmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %ecmd, align 4
  %data1 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88178_link_reset.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88178_link_reset, %if.then)) #9
          to label %do.end6 [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88178_link_reset.__UNIQUE_ID_ddebug385, ptr noundef %4, ptr noundef nonnull @.str.35) #9
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %mii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  %call7 = tail call i32 @mii_check_media(ptr noundef %mii, i32 noundef 1, i32 noundef 1) #9
  call void @mii_ethtool_gset(ptr noundef %mii, ptr noundef nonnull %ecmd) #9
  %speed_hi.i = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 12
  %5 = ptrtoint ptr %speed_hi.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %speed_hi.i, align 4
  %conv.i = zext i16 %6 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %speed.i = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 3
  %7 = ptrtoint ptr %speed.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %speed.i, align 4
  %conv1.i = zext i16 %8 to i32
  %or.i = or i32 %shl.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %or.i)
  %switch.selectcmp = icmp eq i32 %or.i, 100
  %switch.select = select i1 %switch.selectcmp, i16 894, i16 382
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %or.i)
  %switch.selectcmp88 = icmp eq i32 %or.i, 1000
  %switch.select89 = select i1 %switch.selectcmp88, i16 895, i16 %switch.select
  %duplex = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 4
  %9 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp27 = icmp eq i8 %10, 1
  %conv36 = and i16 %switch.select89, 893
  %mode.1 = select i1 %cmp27, i16 %switch.select89, i16 %conv36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88178_link_reset.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88178_link_reset, %if.then51)) #9
          to label %do.end60 [label %if.then51], !srcloc !194

if.then51:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  %net52 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %11 = ptrtoint ptr %net52 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net52, align 4
  %13 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %duplex, align 2
  %conv54 = zext i8 %14 to i32
  %conv55 = zext i16 %mode.1 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88178_link_reset.__UNIQUE_ID_ddebug386, ptr noundef %12, ptr noundef nonnull @.str.36, i32 noundef %or.i, i32 noundef %conv54, i32 noundef %conv55) #9
  br label %do.end60

do.end60:                                         ; preds = %if.then51, %do.end6
  %call61 = call i32 @asix_write_medium_mode(ptr noundef %dev, i16 noundef zeroext %mode.1, i32 noundef 0) #9
  %phymode = getelementptr inbounds %struct.asix_data, ptr %data1, i32 0, i32 2
  %15 = ptrtoint ptr %phymode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %phymode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp63 = icmp eq i8 %16, 0
  br i1 %cmp63, label %land.lhs.true, label %do.end60.if.end70_crit_edge

do.end60.if.end70_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

land.lhs.true:                                    ; preds = %do.end60
  %ledmode = getelementptr inbounds %struct.asix_data, ptr %data1, i32 0, i32 3
  %17 = ptrtoint ptr %ledmode to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ledmode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool66.not = icmp eq i8 %18, 0
  br i1 %tobool66.not, label %land.lhs.true.if.end70_crit_edge, label %if.then67

land.lhs.true.if.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then67:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @marvell_led_status(ptr noundef %dev, i16 noundef zeroext %8)
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %land.lhs.true.if.end70_crit_edge, %do.end60.if.end70_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ecmd) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_rx_fixup_common(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @asix_tx_fixup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_sw_reset(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_set_multicast(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_set_mac_address(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88178_change_mtu(ptr noundef %net, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 19
  %0 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %1 to i32
  %add = add i32 %new_mtu, 4
  %add1 = add i32 %add, %conv
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88178_change_mtu.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88178_change_mtu, %if.then)) #9
          to label %do.end8 [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %net6 = getelementptr i8, ptr %net, i32 2548
  %2 = ptrtoint ptr %net6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88178_change_mtu.__UNIQUE_ID_ddebug387, ptr noundef %3, ptr noundef nonnull @.str.20, i32 noundef %new_mtu) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  %maxpacket = getelementptr i8, ptr %net, i32 2492
  %4 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxpacket, align 4
  %rem = urem i32 %add1, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %do.end8.cleanup_crit_edge, label %if.end11

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %do.end8
  %mtu = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 20
  %6 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %new_mtu, ptr %mtu, align 4
  %7 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hard_header_len, align 2
  %conv14 = zext i16 %8 to i32
  %add15 = add i32 %conv14, %new_mtu
  %hard_mtu = getelementptr i8, ptr %net, i32 2580
  %9 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add15, ptr %hard_mtu, align 4
  %rx_urb_size.i = getelementptr i8, ptr %net, i32 2584
  %10 = ptrtoint ptr %rx_urb_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_urb_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add15)
  %cmp.i = icmp ult i32 %add15, 2048
  br i1 %cmp.i, label %if.end11.if.end18.sink.split.i_crit_edge, label %if.else.i

if.end11.if.end18.sink.split.i_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.sink.split.i

if.else.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add15)
  %cmp3.i = icmp ult i32 %add15, 4096
  br i1 %cmp3.i, label %if.else.i.if.end18.sink.split.i_crit_edge, label %if.else6.i

if.else.i.if.end18.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.sink.split.i

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add15)
  %cmp8.i = icmp ult i32 %add15, 8192
  br i1 %cmp8.i, label %if.else6.i.if.end18.sink.split.i_crit_edge, label %if.else11.i

if.else6.i.if.end18.sink.split.i_crit_edge:       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.sink.split.i

if.else11.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add15)
  %cmp13.i = icmp ult i32 %add15, 16384
  br i1 %cmp13.i, label %if.else11.i.if.end18.sink.split.i_crit_edge, label %if.else11.i.if.end18.i_crit_edge

if.else11.i.if.end18.i_crit_edge:                 ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.else11.i.if.end18.sink.split.i_crit_edge:      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.sink.split.i

if.end18.sink.split.i:                            ; preds = %if.else11.i.if.end18.sink.split.i_crit_edge, %if.else6.i.if.end18.sink.split.i_crit_edge, %if.else.i.if.end18.sink.split.i_crit_edge, %if.end11.if.end18.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 2048, %if.end11.if.end18.sink.split.i_crit_edge ], [ 4096, %if.else.i.if.end18.sink.split.i_crit_edge ], [ 8192, %if.else6.i.if.end18.sink.split.i_crit_edge ], [ 16384, %if.else11.i.if.end18.sink.split.i_crit_edge ]
  %mfb.0.ph.i = phi i16 [ 0, %if.end11.if.end18.sink.split.i_crit_edge ], [ 256, %if.else.i.if.end18.sink.split.i_crit_edge ], [ 512, %if.else6.i.if.end18.sink.split.i_crit_edge ], [ 768, %if.else11.i.if.end18.sink.split.i_crit_edge ]
  %12 = ptrtoint ptr %rx_urb_size.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink.i, ptr %rx_urb_size.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end18.sink.split.i, %if.else11.i.if.end18.i_crit_edge
  %mfb.0.i = phi i16 [ 768, %if.else11.i.if.end18.i_crit_edge ], [ %mfb.0.ph.i, %if.end18.sink.split.i ]
  %call.i = tail call zeroext i16 @asix_read_rx_ctl(ptr noundef %add.ptr.i, i32 noundef 0) #9
  %13 = and i16 %call.i, -769
  %or.i = or i16 %13, %mfb.0.i
  %call21.i = tail call i32 @asix_write_rx_ctl(ptr noundef %add.ptr.i, i16 noundef zeroext %or.i, i32 noundef 0) #9
  %call22.i = tail call zeroext i16 @asix_read_medium_status(ptr noundef %add.ptr.i, i32 noundef 0) #9
  %net.i = getelementptr i8, ptr %net, i32 2548
  %14 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 20
  %16 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %17)
  %cmp23.i = icmp ugt i32 %17, 1500
  %18 = and i16 %call22.i, -65
  %masksel.i = select i1 %cmp23.i, i16 64, i16 0
  %medium.0.i = or i16 %masksel.i, %18
  %call34.i = tail call i32 @asix_write_medium_mode(ptr noundef %add.ptr.i, i16 noundef zeroext %medium.0.i, i32 noundef 0) #9
  %19 = ptrtoint ptr %rx_urb_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_urb_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %11)
  %cmp36.i = icmp ugt i32 %20, %11
  br i1 %cmp36.i, label %if.then38.i, label %if.end18.i.ax88178_set_mfb.exit_crit_edge

if.end18.i.ax88178_set_mfb.exit_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ax88178_set_mfb.exit

if.then38.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usbnet_unlink_rx_urbs(ptr noundef %add.ptr.i) #9
  br label %ax88178_set_mfb.exit

ax88178_set_mfb.exit:                             ; preds = %if.then38.i, %if.end18.i.ax88178_set_mfb.exit_crit_edge
  tail call void @usbnet_update_max_qlen(ptr noundef %add.ptr.i) #9
  br label %cleanup

cleanup:                                          ; preds = %ax88178_set_mfb.exit, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ax88178_set_mfb.exit ], [ -33, %do.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_update_max_qlen(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @asix_read_rx_ctl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @asix_read_medium_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_unlink_rx_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_rx_fixup_common_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_write_gpio(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @marvell_phy_init(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @marvell_phy_init.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@marvell_phy_init, %if.then)) #9
          to label %do.end6 [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @marvell_phy_init.__UNIQUE_ID_ddebug373, ptr noundef %1, ptr noundef nonnull @.str.28) #9
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %net7 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net7, align 4
  %mii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  %4 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii, align 4
  %call8 = tail call i32 @asix_mdio_read(ptr noundef %3, i32 noundef %5, i32 noundef 27) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @marvell_phy_init.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@marvell_phy_init, %if.then22)) #9
          to label %do.end29 [label %if.then22], !srcloc !194

if.then22:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net7, align 4
  %conv24 = and i32 %call8, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @marvell_phy_init.__UNIQUE_ID_ddebug374, ptr noundef %7, ptr noundef nonnull @.str.29, i32 noundef %conv24) #9
  br label %do.end29

do.end29:                                         ; preds = %if.then22, %do.end6
  %8 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net7, align 4
  %10 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mii, align 4
  tail call void @asix_mdio_write(ptr noundef %9, i32 noundef %11, i32 noundef 20, i32 noundef 130) #9
  %ledmode = getelementptr inbounds %struct.asix_data, ptr %data1, i32 0, i32 3
  %12 = ptrtoint ptr %ledmode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ledmode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool33.not = icmp eq i8 %13, 0
  br i1 %tobool33.not, label %do.end29.if.end98_crit_edge, label %if.then34

do.end29.if.end98_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then34:                                        ; preds = %do.end29
  %14 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net7, align 4
  %16 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mii, align 4
  %call38 = tail call i32 @asix_mdio_read(ptr noundef %15, i32 noundef %17, i32 noundef 24) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @marvell_phy_init.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@marvell_phy_init, %if.then53)) #9
          to label %do.end60 [label %if.then53], !srcloc !194

if.then53:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net7, align 4
  %conv55 = and i32 %call38, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @marvell_phy_init.__UNIQUE_ID_ddebug375, ptr noundef %19, ptr noundef nonnull @.str.30, i32 noundef %conv55) #9
  br label %do.end60

do.end60:                                         ; preds = %if.then53, %if.then34
  %20 = and i32 %call38, 63742
  %conv64 = or i32 %20, 257
  %21 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net7, align 4
  %23 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mii, align 4
  tail call void @asix_mdio_write(ptr noundef %22, i32 noundef %24, i32 noundef 24, i32 noundef %conv64) #9
  %25 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net7, align 4
  %27 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mii, align 4
  %call72 = tail call i32 @asix_mdio_read(ptr noundef %26, i32 noundef %28, i32 noundef 24) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @marvell_phy_init.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@marvell_phy_init, %if.then87)) #9
          to label %if.end98 [label %if.then87], !srcloc !194

if.then87:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net7, align 4
  %conv89 = and i32 %call72, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @marvell_phy_init.__UNIQUE_ID_ddebug376, ptr noundef %30, ptr noundef nonnull @.str.31, i32 noundef %conv89) #9
  br label %if.end98

if.end98:                                         ; preds = %if.then87, %do.end60, %do.end29.if.end98_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8211cl_phy_init(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8211cl_phy_init.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8211cl_phy_init, %if.then)) #9
          to label %do.end6 [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8211cl_phy_init.__UNIQUE_ID_ddebug377, ptr noundef %1, ptr noundef nonnull @.str.33) #9
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %net7 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net7, align 4
  %mii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  %4 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii, align 4
  tail call void @asix_mdio_write(ptr noundef %3, i32 noundef %5, i32 noundef 31, i32 noundef 5) #9
  %6 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net7, align 4
  %8 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mii, align 4
  tail call void @asix_mdio_write(ptr noundef %7, i32 noundef %9, i32 noundef 12, i32 noundef 0) #9
  %10 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net7, align 4
  %12 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mii, align 4
  %call17 = tail call i32 @asix_mdio_read(ptr noundef %11, i32 noundef %13, i32 noundef 1) #9
  %or = or i32 %call17, 128
  tail call void @asix_mdio_write(ptr noundef %11, i32 noundef %13, i32 noundef 1, i32 noundef %or) #9
  %14 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net7, align 4
  %16 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mii, align 4
  tail call void @asix_mdio_write(ptr noundef %15, i32 noundef %17, i32 noundef 31, i32 noundef 0) #9
  %ledmode = getelementptr inbounds %struct.asix_data, ptr %data1, i32 0, i32 3
  %18 = ptrtoint ptr %ledmode to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ledmode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %19)
  %cmp = icmp eq i8 %19, 12
  br i1 %cmp, label %if.then22, label %do.end6.if.end32_crit_edge

do.end6.if.end32_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then22:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net7, align 4
  %22 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mii, align 4
  tail call void @asix_mdio_write(ptr noundef %21, i32 noundef %23, i32 noundef 31, i32 noundef 2) #9
  %24 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net7, align 4
  %26 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mii, align 4
  tail call void @asix_mdio_write(ptr noundef %25, i32 noundef %27, i32 noundef 26, i32 noundef 203) #9
  %28 = ptrtoint ptr %net7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net7, align 4
  %30 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mii, align 4
  tail call void @asix_mdio_write(ptr noundef %29, i32 noundef %31, i32 noundef 31, i32 noundef 0) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then22, %do.end6.if.end32_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @marvell_led_status(ptr nocapture noundef readonly %dev, i16 noundef zeroext %speed) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %mii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  %2 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mii, align 4
  %call = tail call i32 @asix_mdio_read(ptr noundef %1, i32 noundef %3, i32 noundef 25) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @marvell_led_status.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@marvell_led_status, %if.then)) #9
          to label %do.end8 [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  %conv6 = and i32 %call, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @marvell_led_status.__UNIQUE_ID_ddebug378, ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef %conv6) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  %6 = trunc i32 %call to i16
  %conv10 = and i16 %6, -1009
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %speed)
  %switch.selectcmp = icmp eq i16 %speed, 100
  %switch.select = select i1 %switch.selectcmp, i16 944, i16 752
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %speed)
  %switch.selectcmp6 = icmp eq i16 %speed, 1000
  %switch.select7 = select i1 %switch.selectcmp6, i16 992, i16 %switch.select
  %7 = or i16 %conv10, %switch.select7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @marvell_led_status.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@marvell_led_status, %if.then34)) #9
          to label %do.end41 [label %if.then34], !srcloc !194

if.then34:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  %conv36 = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @marvell_led_status.__UNIQUE_ID_ddebug379, ptr noundef %9, ptr noundef nonnull @.str.39, i32 noundef %conv36) #9
  br label %do.end41

do.end41:                                         ; preds = %if.then34, %do.end8
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  %12 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mii, align 4
  %conv45 = zext i16 %7 to i32
  tail call void @asix_mdio_write(ptr noundef %11, i32 noundef %13, i32 noundef 25, i32 noundef %conv45) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88772_bind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  %buf = alloca [6 x i8], align 1
  %chipcode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #9
  %0 = call ptr @memset(ptr %buf, i32 0, i32 6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %chipcode) #9
  %1 = ptrtoint ptr %chipcode to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %chipcode, align 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 56, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_priv, align 4
  %call2 = tail call i32 @usbnet_get_endpoints(ptr noundef %dev, ptr noundef %intf) #9
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  %call5 = call i32 @eth_platform_get_mac_address(ptr noundef %dev4, ptr noundef nonnull %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body, label %if.else

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 4
  %and = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body.if.end57_crit_edge, label %do.body10

do.body.if.end57_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

do.body10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88772_bind.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88772_bind, %if.then15)) #9
          to label %if.end57 [label %if.then15], !srcloc !194

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %9 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88772_bind.__UNIQUE_ID_ddebug370, ptr noundef %10, ptr noundef nonnull @.str.42) #9
  br label %if.end57

if.else:                                          ; preds = %if.end
  %driver_info = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 2
  %11 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_info, align 4
  %data = getelementptr inbounds %struct.driver_info, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data, align 4
  %and20 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end32, label %for.body.preheader

for.body.preheader:                               ; preds = %if.else
  %call24 = call i32 @asix_read_cmd(ptr noundef %dev, i8 noundef zeroext 11, i16 noundef zeroext 4, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef nonnull %buf, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %for.body.preheader.do.body37_crit_edge, label %for.cond

for.body.preheader.do.body37_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body37

for.cond:                                         ; preds = %for.body.preheader
  %add.ptr.1 = getelementptr inbounds i8, ptr %buf, i32 2
  %call24.1 = call i32 @asix_read_cmd(ptr noundef %dev, i8 noundef zeroext 11, i16 noundef zeroext 5, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %add.ptr.1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.1)
  %cmp25.1 = icmp slt i32 %call24.1, 0
  br i1 %cmp25.1, label %for.cond.do.body37_crit_edge, label %for.cond.1

for.cond.do.body37_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body37

for.cond.1:                                       ; preds = %for.cond
  %add.ptr.2 = getelementptr inbounds i8, ptr %buf, i32 4
  %call24.2 = call i32 @asix_read_cmd(ptr noundef %dev, i8 noundef zeroext 11, i16 noundef zeroext 6, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %add.ptr.2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.2)
  %cmp25.2 = icmp slt i32 %call24.2, 0
  br i1 %cmp25.2, label %for.cond.1.do.body37_crit_edge, label %for.cond.1.if.end57_crit_edge

for.cond.1.if.end57_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

for.cond.1.do.body37_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body37

if.end32:                                         ; preds = %if.else
  %call31 = call i32 @asix_read_cmd(ptr noundef %dev, i8 noundef zeroext 19, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef nonnull %buf, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp33 = icmp slt i32 %call31, 0
  br i1 %cmp33, label %if.end32.do.body37_crit_edge, label %if.end32.if.end57_crit_edge

if.end32.if.end57_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.end32.do.body37_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body37

do.body37:                                        ; preds = %if.end32.do.body37_crit_edge, %for.cond.1.do.body37_crit_edge, %for.cond.do.body37_crit_edge, %for.body.preheader.do.body37_crit_edge
  %ret.1193 = phi i32 [ %call31, %if.end32.do.body37_crit_edge ], [ %call24, %for.body.preheader.do.body37_crit_edge ], [ %call24.1, %for.cond.do.body37_crit_edge ], [ %call24.2, %for.cond.1.do.body37_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88772_bind.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88772_bind, %if.then49)) #9
          to label %cleanup [label %if.then49], !srcloc !194

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %net50 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %15 = ptrtoint ptr %net50 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net50, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88772_bind.__UNIQUE_ID_ddebug371, ptr noundef %16, ptr noundef nonnull @.str.18, i32 noundef %ret.1193) #9
  br label %cleanup

if.end57:                                         ; preds = %if.end32.if.end57_crit_edge, %for.cond.1.if.end57_crit_edge, %if.then15, %do.body10, %do.body.if.end57_crit_edge
  call fastcc void @asix_set_netdev_dev_addr(ptr noundef %dev, ptr noundef nonnull %buf)
  %net59 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %17 = ptrtoint ptr %net59 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net59, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ax88772_netdev_ops, ptr %netdev_ops, align 8
  %20 = load ptr, ptr %net59, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ax88772_ethtool_ops, ptr %ethtool_ops, align 16
  %22 = load ptr, ptr %net59, align 4
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 21
  %23 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 4, ptr %needed_headroom, align 8
  %24 = load ptr, ptr %net59, align 4
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 4, ptr %needed_tailroom, align 2
  %call63 = call i32 @asix_read_phy_addr(ptr noundef %dev, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end57.cleanup_crit_edge, label %if.end67

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end67:                                         ; preds = %if.end57
  %conv68 = trunc i32 %call63 to i16
  %phy_addr = getelementptr inbounds %struct.asix_common_private, ptr %call.i, i32 0, i32 7
  %26 = ptrtoint ptr %phy_addr to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv68, ptr %phy_addr, align 4
  %and71 = and i32 %call63, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and71)
  %cmp72 = icmp eq i32 %and71, 16
  %embd_phy = getelementptr inbounds %struct.asix_common_private, ptr %call.i, i32 0, i32 9
  %frombool74 = zext i1 %cmp72 to i8
  %27 = ptrtoint ptr %embd_phy to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool74, ptr %embd_phy, align 2
  %call75 = call i32 @asix_read_cmd(ptr noundef %dev, i8 noundef zeroext 9, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %chipcode, i32 noundef 0) #9
  %28 = ptrtoint ptr %chipcode to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %chipcode, align 1
  %30 = and i8 %29, 112
  store i8 %30, ptr %chipcode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp80 = icmp eq i8 %30, 0
  br i1 %cmp80, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %call82 = call fastcc i32 @ax88772_hw_reset(ptr noundef %dev, i32 noundef 0)
  br label %cond.end

cond.false:                                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %call83 = call fastcc i32 @ax88772a_hw_reset(ptr noundef %dev, i32 noundef 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call82, %cond.true ], [ %call83, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp84 = icmp slt i32 %cond, 0
  br i1 %cmp84, label %do.body88, label %if.end107

do.body88:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88772_bind.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88772_bind, %if.then100)) #9
          to label %cleanup [label %if.then100], !srcloc !194

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %net59 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net59, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88772_bind.__UNIQUE_ID_ddebug372, ptr noundef %32, ptr noundef nonnull @.str.43, i32 noundef %cond) #9
  br label %cleanup

if.end107:                                        ; preds = %cond.end
  %driver_info108 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 2
  %33 = ptrtoint ptr %driver_info108 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_info108, align 4
  %flags = getelementptr inbounds %struct.driver_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %and109 = and i32 %36, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end107.if.end112_crit_edge, label %if.then111

if.end107.if.end112_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then111:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %rx_urb_size = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %37 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2048, ptr %rx_urb_size, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.end107.if.end112_crit_edge
  %presvd_phy_bmcr = getelementptr inbounds %struct.asix_common_private, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %presvd_phy_bmcr to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %presvd_phy_bmcr, align 2
  %presvd_phy_advertise = getelementptr inbounds %struct.asix_common_private, ptr %call.i, i32 0, i32 2
  %39 = ptrtoint ptr %presvd_phy_advertise to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %presvd_phy_advertise, align 4
  %40 = ptrtoint ptr %chipcode to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %chipcode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp114 = icmp eq i8 %41, 0
  %spec.select = select i1 %cmp114, ptr @ax88772_resume, ptr @ax88772a_resume
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %spec.select, ptr %call.i, align 4
  %43 = getelementptr inbounds %struct.asix_common_private, ptr %call.i, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @ax88772_suspend, ptr %43, align 4
  %45 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %driver_priv, align 4
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %dev1.i = getelementptr inbounds %struct.usb_device, ptr %48, i32 0, i32 15
  %call.i.i = call ptr @devm_mdiobus_alloc_size(ptr noundef %dev1.i, i32 noundef 0) #9
  %mdio.i = getelementptr inbounds %struct.asix_common_private, ptr %46, i32 0, i32 5
  %49 = ptrtoint ptr %mdio.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i.i, ptr %mdio.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end112.cleanup_crit_edge, label %ax88772_init_mdio.exit

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ax88772_init_mdio.exit:                           ; preds = %if.end112
  %priv4.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %priv4.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %dev, ptr %priv4.i, align 8
  %51 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mdio.i, align 4
  %read.i = getelementptr inbounds %struct.mii_bus, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @asix_mdio_bus_read, ptr %read.i, align 4
  %54 = load ptr, ptr %mdio.i, align 4
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @asix_mdio_bus_write, ptr %write.i, align 8
  %56 = load ptr, ptr %mdio.i, align 4
  %name.i = getelementptr inbounds %struct.mii_bus, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.54, ptr %name.i, align 4
  %58 = load ptr, ptr %mdio.i, align 4
  %id.i = getelementptr inbounds %struct.mii_bus, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %60, i32 0, i32 12
  %61 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bus.i, align 8
  %busnum.i = getelementptr inbounds %struct.usb_bus, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %busnum.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %busnum.i, align 4
  %65 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %60, align 8
  %call11.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id.i, i32 noundef 61, ptr noundef nonnull @.str.55, i32 noundef %64, i32 noundef %66) #9
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  %dev13.i = getelementptr inbounds %struct.usb_device, ptr %68, i32 0, i32 15
  %69 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mdio.i, align 4
  %call15.i = call i32 @__devm_mdiobus_register(ptr noundef %dev13.i, ptr noundef %70, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool122.not = icmp eq i32 %call15.i, 0
  br i1 %tobool122.not, label %if.end124, label %ax88772_init_mdio.exit.cleanup_crit_edge

ax88772_init_mdio.exit.cleanup_crit_edge:         ; preds = %ax88772_init_mdio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end124:                                        ; preds = %ax88772_init_mdio.exit
  %71 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %driver_priv, align 4
  %phy_name.i = getelementptr inbounds %struct.asix_common_private, ptr %72, i32 0, i32 8
  %mdio.i185 = getelementptr inbounds %struct.asix_common_private, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %mdio.i185 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mdio.i185, align 4
  %id.i186 = getelementptr inbounds %struct.mii_bus, ptr %74, i32 0, i32 2
  %phy_addr.i = getelementptr inbounds %struct.asix_common_private, ptr %72, i32 0, i32 7
  %75 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %phy_addr.i, align 4
  %conv.i = zext i16 %76 to i32
  %call.i187 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phy_name.i, i32 noundef 20, ptr noundef nonnull @.str.56, ptr noundef %id.i186, i32 noundef %conv.i) #9
  %77 = ptrtoint ptr %net59 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %net59, align 4
  %call4.i = call ptr @phy_connect(ptr noundef %78, ptr noundef %phy_name.i, ptr noundef nonnull @asix_adjust_link, i32 noundef 1) #9
  %phydev.i = getelementptr inbounds %struct.asix_common_private, ptr %72, i32 0, i32 6
  %79 = ptrtoint ptr %phydev.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call4.i, ptr %phydev.i, align 4
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i188

if.then.i:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %net59 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %net59, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %81, ptr noundef nonnull @.str.57, ptr noundef %phy_name.i) #12
  %82 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %phydev.i, align 4
  %84 = ptrtoint ptr %83 to i32
  br label %cleanup

if.end.i188:                                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i = call i32 @phy_suspend(ptr noundef %call4.i) #9
  %85 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %phydev.i, align 4
  %mac_managed_pm.i = getelementptr inbounds %struct.phy_device, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %mac_managed_pm.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %bf.load.i = load i16, ptr %mac_managed_pm.i, align 8
  %bf.set.i = or i16 %bf.load.i, 16
  store i16 %bf.set.i, ptr %mac_managed_pm.i, align 8
  %88 = load ptr, ptr %phydev.i, align 4
  call void @phy_attached_info(ptr noundef %88) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i188, %if.then.i, %ax88772_init_mdio.exit.cleanup_crit_edge, %if.end112.cleanup_crit_edge, %if.then100, %do.body88, %if.end57.cleanup_crit_edge, %if.then49, %do.body37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %ret.1193, %if.then49 ], [ %call63, %if.end57.cleanup_crit_edge ], [ %cond, %if.then100 ], [ %call15.i, %ax88772_init_mdio.exit.cleanup_crit_edge ], [ %ret.1193, %do.body37 ], [ %cond, %do.body88 ], [ %84, %if.then.i ], [ 0, %if.end.i188 ], [ -12, %if.end112.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %chipcode) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax88772_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %phydev = getelementptr inbounds %struct.asix_common_private, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 4
  tail call void @phy_disconnect(ptr noundef %3) #9
  %4 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_priv, align 4
  tail call void @asix_rx_fixup_common_free(ptr noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88772_reset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %mac_addr = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 2
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %4 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr, align 64
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.usbnet, ptr %dev, i32 0, i32 21, i32 3
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %add.ptr1.i, align 2
  %call = tail call i32 @asix_write_cmd(ptr noundef %dev, i8 noundef zeroext 20, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef %mac_addr, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @asix_write_rx_ctl(ptr noundef %dev, i16 noundef zeroext 136, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @asix_write_medium_mode(ptr noundef %dev, i16 noundef zeroext 822, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %phydev = getelementptr inbounds %struct.asix_common_private, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phydev, align 4
  tail call void @phy_start(ptr noundef %13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88772_stop(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %phydev = getelementptr inbounds %struct.asix_common_private, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 4
  %state = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phy_stop(ptr noundef %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_platform_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ax88772_hw_reset(ptr noundef %dev, i32 noundef %in_pm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %call = tail call i32 @asix_write_gpio(ptr noundef %dev, i16 noundef zeroext 176, i32 noundef 5, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %embd_phy = getelementptr inbounds %struct.asix_common_private, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %embd_phy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %embd_phy, align 2, !range !196
  %4 = zext i8 %3 to i16
  %call2 = tail call i32 @asix_write_cmd(ptr noundef %dev, i8 noundef zeroext 34, i16 noundef zeroext %4, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.body6, label %if.end15

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88772_hw_reset.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88772_hw_reset, %if.then11)) #9
          to label %cleanup [label %if.then11], !srcloc !194

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88772_hw_reset.__UNIQUE_ID_ddebug359, ptr noundef %6, ptr noundef nonnull @.str.45, i32 noundef %call2) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %7 = ptrtoint ptr %embd_phy to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %embd_phy, align 2, !range !196
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool17.not = icmp eq i8 %8, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end15
  %call19 = tail call i32 @asix_sw_reset(ptr noundef %dev, i8 noundef zeroext 64, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then18.cleanup_crit_edge, label %if.end23

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.then18
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  %call24 = tail call i32 @asix_sw_reset(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  tail call void @msleep(i32 noundef 60) #9
  %call29 = tail call i32 @asix_sw_reset(ptr noundef %dev, i8 noundef zeroext 40, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end28.cleanup_crit_edge, label %if.end28.if.end39_crit_edge

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end15
  %call34 = tail call i32 @asix_sw_reset(ptr noundef %dev, i8 noundef zeroext 72, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.else.cleanup_crit_edge, label %if.else.if.end39_crit_edge

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %if.else.if.end39_crit_edge, %if.end28.if.end39_crit_edge
  tail call void @msleep(i32 noundef 150) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_pm)
  %tobool40.not = icmp eq i32 %in_pm, 0
  br i1 %tobool40.not, label %if.end39.if.end45_crit_edge, label %land.lhs.true

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

land.lhs.true:                                    ; preds = %if.end39
  %net41 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %9 = ptrtoint ptr %net41 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net41, align 4
  %mii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  %11 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mii, align 4
  %call42 = tail call i32 @asix_mdio_read_nopm(ptr noundef %10, i32 noundef %12, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end45_crit_edge

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45:                                         ; preds = %land.lhs.true.if.end45_crit_edge, %if.end39.if.end45_crit_edge
  %call46 = tail call i32 @asix_write_rx_ctl(ptr noundef %dev, i16 noundef zeroext 136, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end45.cleanup_crit_edge, label %if.end50

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  %call51 = tail call i32 @asix_write_medium_mode(ptr noundef %dev, i16 noundef zeroext 822, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end50.cleanup_crit_edge, label %if.end55

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  %call56 = tail call i32 @asix_write_cmd(ptr noundef %dev, i8 noundef zeroext 18, i16 noundef zeroext 29, i16 noundef zeroext 18, i16 noundef zeroext 0, ptr noundef null, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %do.body61, label %if.end80

do.body61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88772_hw_reset.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88772_hw_reset, %if.then73)) #9
          to label %cleanup [label %if.then73], !srcloc !194

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #11
  %net74 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %13 = ptrtoint ptr %net74 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net74, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88772_hw_reset.__UNIQUE_ID_ddebug360, ptr noundef %14, ptr noundef nonnull @.str.46, i32 noundef %call56) #9
  br label %cleanup

if.end80:                                         ; preds = %if.end55
  %mac_addr = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 2
  %net81 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %15 = ptrtoint ptr %net81 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net81, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 86
  %17 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_addr, align 64
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %21 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.usbnet, ptr %dev, i32 0, i32 21, i32 3
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %add.ptr1.i, align 2
  %call84 = tail call i32 @asix_write_cmd(ptr noundef %dev, i8 noundef zeroext 20, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef %mac_addr, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.end80.cleanup_crit_edge, label %if.end88

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end88:                                         ; preds = %if.end80
  %call89 = tail call i32 @asix_write_rx_ctl(ptr noundef %dev, i16 noundef zeroext 136, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.end88.cleanup_crit_edge, label %if.end93

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end93:                                         ; preds = %if.end88
  %call94 = tail call zeroext i16 @asix_read_rx_ctl(ptr noundef %dev, i32 noundef %in_pm) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88772_hw_reset.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88772_hw_reset, %if.then108)) #9
          to label %do.end115 [label %if.then108], !srcloc !194

if.then108:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %net81 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net81, align 4
  %conv110 = zext i16 %call94 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88772_hw_reset.__UNIQUE_ID_ddebug361, ptr noundef %26, ptr noundef nonnull @.str.47, i32 noundef %conv110) #9
  br label %do.end115

do.end115:                                        ; preds = %if.then108, %if.end93
  %call116 = tail call zeroext i16 @asix_read_medium_status(ptr noundef %dev, i32 noundef %in_pm) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88772_hw_reset.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88772_hw_reset, %if.then130)) #9
          to label %cleanup [label %if.then130], !srcloc !194

if.then130:                                       ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %net81 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net81, align 4
  %conv132 = zext i16 %call116 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88772_hw_reset.__UNIQUE_ID_ddebug362, ptr noundef %28, ptr noundef nonnull @.str.48, i32 noundef %conv132) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then130, %do.end115, %if.end88.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %if.then73, %do.body61, %if.end50.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.then11, %do.body6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then130 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.then11 ], [ %call19, %if.then18.cleanup_crit_edge ], [ %call24, %if.end23.cleanup_crit_edge ], [ %call29, %if.end28.cleanup_crit_edge ], [ %call46, %if.end45.cleanup_crit_edge ], [ %call51, %if.end50.cleanup_crit_edge ], [ %call56, %if.then73 ], [ %call84, %if.end80.cleanup_crit_edge ], [ %call89, %if.end88.cleanup_crit_edge ], [ %call34, %if.else.cleanup_crit_edge ], [ -5, %land.lhs.true.cleanup_crit_edge ], [ %call2, %do.body6 ], [ %call56, %do.body61 ], [ 0, %do.end115 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ax88772a_hw_reset(ptr noundef %dev, i32 noundef %in_pm) unnamed_addr #2 align 64 {
entry:
  %chipcode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %chipcode) #9
  %2 = ptrtoint ptr %chipcode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %chipcode, align 1
  %call = tail call i32 @asix_write_gpio(ptr noundef %dev, i16 noundef zeroext 128, i32 noundef 5, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %embd_phy = getelementptr inbounds %struct.asix_common_private, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %embd_phy to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %embd_phy, align 2, !range !196
  %5 = or i8 %4, 16
  %conv2 = zext i8 %5 to i16
  %call3 = tail call i32 @asix_write_cmd(ptr noundef %dev, i8 noundef zeroext 34, i16 noundef zeroext %conv2, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.body7, label %if.end16

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88772a_hw_reset.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88772a_hw_reset, %if.then12)) #9
          to label %cleanup [label %if.then12], !srcloc !194

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88772a_hw_reset.__UNIQUE_ID_ddebug363, ptr noundef %7, ptr noundef nonnull @.str.45, i32 noundef %call3) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  %call17 = tail call i32 @asix_sw_reset(ptr noundef %dev, i8 noundef zeroext 96, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  %call22 = tail call i32 @asix_sw_reset(ptr noundef %dev, i8 noundef zeroext 32, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  tail call void @msleep(i32 noundef 160) #9
  %call27 = tail call i32 @asix_sw_reset(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %call32 = tail call i32 @asix_sw_reset(ptr noundef %dev, i8 noundef zeroext 32, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %if.end36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  tail call void @msleep(i32 noundef 200) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_pm)
  %tobool37.not = icmp eq i32 %in_pm, 0
  br i1 %tobool37.not, label %if.end36.if.end42_crit_edge, label %land.lhs.true

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end36
  %net38 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %net38 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net38, align 4
  %mii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  %10 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mii, align 4
  %call39 = tail call i32 @asix_mdio_read_nopm(ptr noundef %9, i32 noundef %11, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end42_crit_edge

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42:                                         ; preds = %land.lhs.true.if.end42_crit_edge, %if.end36.if.end42_crit_edge
  %call43 = call i32 @asix_read_cmd(ptr noundef %dev, i8 noundef zeroext 9, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %chipcode, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end42.cleanup_crit_edge, label %if.end47

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %if.end42
  %12 = ptrtoint ptr %chipcode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %chipcode, align 1
  %14 = trunc i8 %13 to i7
  %trunc = and i7 %14, -16
  %15 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.62)
  switch i7 %trunc, label %if.end47.if.end145_crit_edge [
    i7 32, label %if.then51
    i7 16, label %if.then81
  ]

if.end47.if.end145_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.then51:                                        ; preds = %if.end47
  %call52 = call i32 @asix_write_cmd(ptr noundef %dev, i8 noundef zeroext 42, i16 noundef zeroext -32768, i16 noundef zeroext -32767, i16 noundef zeroext 0, ptr noundef null, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %do.body57, label %if.then51.if.end145_crit_edge

if.then51.if.end145_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

do.body57:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88772a_hw_reset.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88772a_hw_reset, %if.then69)) #9
          to label %cleanup [label %if.then69], !srcloc !194

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #11
  %net70 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %16 = ptrtoint ptr %net70 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net70, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88772a_hw_reset.__UNIQUE_ID_ddebug364, ptr noundef %17, ptr noundef nonnull @.str.50, i32 noundef %call52) #9
  br label %cleanup

if.then81:                                        ; preds = %if.end47
  %net82 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %18 = ptrtoint ptr %net82 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net82, align 4
  %mii83 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  %20 = ptrtoint ptr %mii83 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mii83, align 4
  %call85 = call i32 @asix_mdio_read_nopm(ptr noundef %19, i32 noundef %21, i32 noundef 20) #9
  %22 = ptrtoint ptr %net82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net82, align 4
  %24 = ptrtoint ptr %mii83 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mii83, align 4
  %call90 = call i32 @asix_mdio_read_nopm(ptr noundef %23, i32 noundef %25, i32 noundef 21) #9
  %26 = ptrtoint ptr %net82 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net82, align 4
  %28 = ptrtoint ptr %mii83 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mii83, align 4
  %call95 = call i32 @asix_mdio_read_nopm(ptr noundef %27, i32 noundef %29, i32 noundef 22) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88772a_hw_reset.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88772a_hw_reset, %if.then110)) #9
          to label %do.end119 [label %if.then110], !srcloc !194

if.then110:                                       ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %net82 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net82, align 4
  %conv112 = and i32 %call85, 65535
  %conv113 = and i32 %call90, 65535
  %conv114 = and i32 %call95, 65535
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88772a_hw_reset.__UNIQUE_ID_ddebug365, ptr noundef %31, ptr noundef nonnull @.str.51, i32 noundef %conv112, i32 noundef %conv113, i32 noundef %conv114) #9
  br label %do.end119

do.end119:                                        ; preds = %if.then110, %if.then81
  %conv120 = and i32 %call85, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 17452, i32 %conv120)
  %cmp121.not = icmp eq i32 %conv120, 17452
  br i1 %cmp121.not, label %do.end119.if.end127_crit_edge, label %if.then123

do.end119.if.end127_crit_edge:                    ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then123:                                       ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %net82 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net82, align 4
  %34 = ptrtoint ptr %mii83 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mii83, align 4
  call void @asix_mdio_write_nopm(ptr noundef %33, i32 noundef %35, i32 noundef 20, i32 noundef 17452) #9
  br label %if.end127

if.end127:                                        ; preds = %if.then123, %do.end119.if.end127_crit_edge
  %conv128 = and i32 %call90, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 968, i32 %conv128)
  %cmp129.not = icmp eq i32 %conv128, 968
  br i1 %cmp129.not, label %if.end127.if.end135_crit_edge, label %if.then131

if.end127.if.end135_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135

if.then131:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %net82 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net82, align 4
  %38 = ptrtoint ptr %mii83 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mii83, align 4
  call void @asix_mdio_write_nopm(ptr noundef %37, i32 noundef %39, i32 noundef 21, i32 noundef 968) #9
  br label %if.end135

if.end135:                                        ; preds = %if.then131, %if.end127.if.end135_crit_edge
  %conv136 = and i32 %call95, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 16452, i32 %conv136)
  %cmp137.not = icmp eq i32 %conv136, 16452
  br i1 %cmp137.not, label %if.end135.if.end145_crit_edge, label %if.then139

if.end135.if.end145_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.then139:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %net82 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net82, align 4
  %42 = ptrtoint ptr %mii83 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mii83, align 4
  call void @asix_mdio_write_nopm(ptr noundef %41, i32 noundef %43, i32 noundef 22, i32 noundef 16452) #9
  br label %if.end145

if.end145:                                        ; preds = %if.then139, %if.end135.if.end145_crit_edge, %if.then51.if.end145_crit_edge, %if.end47.if.end145_crit_edge
  %call146 = call i32 @asix_write_cmd(ptr noundef %dev, i8 noundef zeroext 18, i16 noundef zeroext 29, i16 noundef zeroext 18, i16 noundef zeroext 0, ptr noundef null, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %cmp147 = icmp slt i32 %call146, 0
  br i1 %cmp147, label %do.body151, label %if.end170

do.body151:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88772a_hw_reset.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88772a_hw_reset, %if.then163)) #9
          to label %cleanup [label %if.then163], !srcloc !194

if.then163:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #11
  %net164 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %44 = ptrtoint ptr %net164 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %net164, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88772a_hw_reset.__UNIQUE_ID_ddebug366, ptr noundef %45, ptr noundef nonnull @.str.46, i32 noundef %call146) #9
  br label %cleanup

if.end170:                                        ; preds = %if.end145
  %mac_addr = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 2
  %net171 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %46 = ptrtoint ptr %net171 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net171, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 86
  %48 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_addr, align 64
  %50 = call ptr @memcpy(ptr %mac_addr, ptr %49, i32 6)
  %call174 = call i32 @asix_write_cmd(ptr noundef %dev, i8 noundef zeroext 20, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef %mac_addr, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %cmp175 = icmp slt i32 %call174, 0
  br i1 %cmp175, label %if.end170.cleanup_crit_edge, label %if.end178

if.end170.cleanup_crit_edge:                      ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end178:                                        ; preds = %if.end170
  %call179 = call i32 @asix_write_rx_ctl(ptr noundef %dev, i16 noundef zeroext 136, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %cmp180 = icmp slt i32 %call179, 0
  br i1 %cmp180, label %if.end178.cleanup_crit_edge, label %if.end183

if.end178.cleanup_crit_edge:                      ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end183:                                        ; preds = %if.end178
  %call184 = call i32 @asix_write_medium_mode(ptr noundef %dev, i16 noundef zeroext 822, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %cmp185 = icmp slt i32 %call184, 0
  br i1 %cmp185, label %if.end183.cleanup_crit_edge, label %if.end188

if.end183.cleanup_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end188:                                        ; preds = %if.end183
  %call189 = call i32 @asix_write_rx_ctl(ptr noundef %dev, i16 noundef zeroext 136, i32 noundef %in_pm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %cmp190 = icmp slt i32 %call189, 0
  br i1 %cmp190, label %if.end188.cleanup_crit_edge, label %if.end193

if.end188.cleanup_crit_edge:                      ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end193:                                        ; preds = %if.end188
  %call194 = call zeroext i16 @asix_read_rx_ctl(ptr noundef %dev, i32 noundef %in_pm) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88772a_hw_reset.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88772a_hw_reset, %if.then208)) #9
          to label %do.end215 [label %if.then208], !srcloc !194

if.then208:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %net171 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %net171, align 4
  %conv210 = zext i16 %call194 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88772a_hw_reset.__UNIQUE_ID_ddebug367, ptr noundef %52, ptr noundef nonnull @.str.47, i32 noundef %conv210) #9
  br label %do.end215

do.end215:                                        ; preds = %if.then208, %if.end193
  %call216 = call zeroext i16 @asix_read_medium_status(ptr noundef %dev, i32 noundef %in_pm) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88772a_hw_reset.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88772a_hw_reset, %if.then230)) #9
          to label %cleanup [label %if.then230], !srcloc !194

if.then230:                                       ; preds = %do.end215
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %net171 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %net171, align 4
  %conv232 = zext i16 %call216 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88772a_hw_reset.__UNIQUE_ID_ddebug368, ptr noundef %54, ptr noundef nonnull @.str.48, i32 noundef %conv232) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then230, %do.end215, %if.end188.cleanup_crit_edge, %if.end183.cleanup_crit_edge, %if.end178.cleanup_crit_edge, %if.end170.cleanup_crit_edge, %if.then163, %do.body151, %if.then69, %do.body57, %if.end42.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then12, %do.body7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call184, %if.end183.cleanup_crit_edge ], [ 0, %if.then230 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.then12 ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ], [ %call43, %if.end42.cleanup_crit_edge ], [ %call52, %if.then69 ], [ %call146, %if.then163 ], [ %call174, %if.end170.cleanup_crit_edge ], [ %call179, %if.end178.cleanup_crit_edge ], [ %call189, %if.end188.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %call3, %do.body7 ], [ %call52, %do.body57 ], [ %call146, %do.body151 ], [ 0, %do.end215 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %chipcode) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax88772_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %call = tail call fastcc i32 @ax88772_hw_reset(ptr noundef %dev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %for.cond

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %entry
  %call.1 = tail call fastcc i32 @ax88772_hw_reset(ptr noundef %dev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %call.2 = tail call fastcc i32 @ax88772_hw_reset(ptr noundef %dev, i32 noundef 1)
  br label %for.end

for.end:                                          ; preds = %for.cond.1, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.end.if.end3_crit_edge, label %if.then2

for.end.if.end3_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %phydev = getelementptr inbounds %struct.asix_common_private, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev, align 4
  tail call void @phy_start(ptr noundef %7) #9
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %for.end.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax88772_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %phydev = getelementptr inbounds %struct.asix_common_private, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev, align 4
  tail call void @phy_stop(ptr noundef %7) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call zeroext i16 @asix_read_medium_status(ptr noundef %dev, i32 noundef 1) #9
  %8 = and i16 %call1, -257
  %call3 = tail call i32 @asix_write_medium_mode(ptr noundef %dev, i16 noundef zeroext %8, i32 noundef 1) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88772_suspend.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88772_suspend, %if.then8)) #9
          to label %do.end14 [label %if.then8], !srcloc !194

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net, align 4
  %call10 = tail call zeroext i16 @asix_read_medium_status(ptr noundef %dev, i32 noundef 1) #9
  %conv11 = zext i16 %call10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88772_suspend.__UNIQUE_ID_ddebug369, ptr noundef %10, ptr noundef nonnull @.str.53, i32 noundef %conv11) #9
  br label %do.end14

do.end14:                                         ; preds = %if.then8, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax88772a_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %call = tail call fastcc i32 @ax88772a_hw_reset(ptr noundef %dev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %for.cond

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %entry
  %call.1 = tail call fastcc i32 @ax88772a_hw_reset(ptr noundef %dev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %call.2 = tail call fastcc i32 @ax88772a_hw_reset(ptr noundef %dev, i32 noundef 1)
  br label %for.end

for.end:                                          ; preds = %for.cond.1, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.end.if.end3_crit_edge, label %if.then2

for.end.if.end3_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %phydev = getelementptr inbounds %struct.asix_common_private, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev, align 4
  tail call void @phy_start(ptr noundef %7) #9
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %for.end.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_selftest(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax88772_ethtool_get_strings(ptr nocapture noundef readnone %netdev, i32 noundef %sset, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sset)
  %cond = icmp eq i32 %sset, 0
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @net_selftest_get_strings(ptr noundef %data) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88772_ethtool_get_sset_count(ptr nocapture noundef readnone %ndev, i32 noundef %sset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sset)
  %cond = icmp eq i32 %sset, 0
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @net_selftest_get_count() #9
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_selftest_get_strings(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_selftest_get_count() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_mdio_read_nopm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_mdio_write_nopm(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_mdio_bus_read(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_mdio_bus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_mdiobus_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_adjust_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !16, !18, !20, !22, !24, !26, !27, !28, !29, !31, !33, !35, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !65, !67, !69, !70, !71, !73, !75, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116, !117, !119, !120, !122, !124, !126, !127, !128, !130, !132, !133, !135, !137, !139, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !163, !165, !167, !168, !169, !171, !173, !175, !177, !179, !181, !183}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !{ptr @__initcall__kmod_asix__389_1431_asix_driver_init6, !1, !"__initcall__kmod_asix__389_1431_asix_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/asix_devices.c", i32 1431, i32 1}
!2 = !{ptr @__exitcall_asix_driver_exit, !1, !"__exitcall_asix_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author390, !4, !"__UNIQUE_ID_author390", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/asix_devices.c", i32 1433, i32 1}
!5 = !{ptr @__UNIQUE_ID_version391, !6, !"__UNIQUE_ID_version391", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/asix_devices.c", i32 1434, i32 1}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__modver_attr, !6, !"__modver_attr", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description392, !12, !"__UNIQUE_ID_description392", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/asix_devices.c", i32 1435, i32 1}
!13 = !{ptr @__UNIQUE_ID_file393, !14, !"__UNIQUE_ID_file393", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/asix_devices.c", i32 1436, i32 1}
!15 = !{ptr @__UNIQUE_ID_license394, !14, !"__UNIQUE_ID_license394", i1 false, i1 false}
!16 = !{ptr @asix_driver, !17, !"asix_driver", i1 false, i1 false}
!17 = !{!"../drivers/net/usb/asix_devices.c", i32 1419, i32 26}
!18 = !{ptr @products, !19, !"products", i1 false, i1 false}
!19 = !{!"../drivers/net/usb/asix_devices.c", i32 1261, i32 35}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/usb/asix_devices.c", i32 1161, i32 17}
!22 = !{ptr @ax8817x_info, !23, !"ax8817x_info", i1 false, i1 false}
!23 = !{!"../drivers/net/usb/asix_devices.c", i32 1160, i32 33}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/usb/asix_devices.c", i32 252, i32 3}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ax88172_bind.__UNIQUE_ID_ddebug358, !25, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/usb/asix_devices.c", i32 64, i32 25}
!31 = !{ptr @ax88172_netdev_ops, !32, !"ax88172_netdev_ops", i1 false, i1 false}
!32 = !{!"../drivers/net/usb/asix_devices.c", i32 191, i32 36}
!33 = !{ptr @ax88172_ethtool_ops, !34, !"ax88172_ethtool_ops", i1 false, i1 false}
!34 = !{!"../drivers/net/usb/asix_devices.c", i32 117, i32 33}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/usb/asix_devices.c", i32 222, i32 23}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/usb/asix_devices.c", i32 183, i32 2}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ax88172_link_reset.__UNIQUE_ID_ddebug357, !38, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/usb/asix_devices.c", i32 55, i32 3}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @asix_status.__UNIQUE_ID_ddebug356, !42, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/usb/asix_devices.c", i32 1181, i32 17}
!47 = !{ptr @netgear_fa120_info, !48, !"netgear_fa120_info", i1 false, i1 false}
!48 = !{!"../drivers/net/usb/asix_devices.c", i32 1180, i32 33}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/usb/asix_devices.c", i32 1171, i32 17}
!51 = !{ptr @dlink_dub_e100_info, !52, !"dlink_dub_e100_info", i1 false, i1 false}
!52 = !{!"../drivers/net/usb/asix_devices.c", i32 1170, i32 33}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/usb/asix_devices.c", i32 1191, i32 17}
!55 = !{ptr @hawking_uf200_info, !56, !"hawking_uf200_info", i1 false, i1 false}
!56 = !{!"../drivers/net/usb/asix_devices.c", i32 1190, i32 33}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/usb/asix_devices.c", i32 1227, i32 17}
!59 = !{ptr @ax88178_info, !60, !"ax88178_info", i1 false, i1 false}
!60 = !{!"../drivers/net/usb/asix_devices.c", i32 1226, i32 33}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/usb/asix_devices.c", i32 1117, i32 3}
!63 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ax88178_bind.__UNIQUE_ID_ddebug388, !62, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!65 = !{ptr @ax88178_netdev_ops, !66, !"ax88178_netdev_ops", i1 false, i1 false}
!66 = !{!"../drivers/net/usb/asix_devices.c", i32 1094, i32 36}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/usb/asix_devices.c", i32 1079, i32 2}
!69 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ax88178_change_mtu.__UNIQUE_ID_ddebug387, !68, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!71 = !{ptr @ax88178_ethtool_ops, !72, !"ax88178_ethtool_ops", i1 false, i1 false}
!72 = !{!"../drivers/net/usb/asix_devices.c", i32 820, i32 33}
!73 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/usb/asix_devices.c", i32 924, i32 2}
!75 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ax88178_reset.__UNIQUE_ID_ddebug380, !74, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/usb/asix_devices.c", i32 930, i32 2}
!79 = !{ptr @ax88178_reset.__UNIQUE_ID_ddebug381, !78, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/usb/asix_devices.c", i32 941, i32 2}
!82 = !{ptr @ax88178_reset.__UNIQUE_ID_ddebug382, !81, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!83 = !{ptr @.str.25, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/usb/asix_devices.c", i32 951, i32 3}
!85 = !{ptr @ax88178_reset.__UNIQUE_ID_ddebug383, !84, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/usb/asix_devices.c", i32 958, i32 2}
!88 = !{ptr @ax88178_reset.__UNIQUE_ID_ddebug384, !87, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/usb/asix_devices.c", i32 840, i32 2}
!91 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @marvell_phy_init.__UNIQUE_ID_ddebug373, !90, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!93 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/usb/asix_devices.c", i32 843, i32 2}
!95 = !{ptr @marvell_phy_init.__UNIQUE_ID_ddebug374, !94, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!96 = !{ptr @.str.30, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/usb/asix_devices.c", i32 851, i32 3}
!98 = !{ptr @marvell_phy_init.__UNIQUE_ID_ddebug375, !97, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!99 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/usb/asix_devices.c", i32 860, i32 3}
!101 = !{ptr @marvell_phy_init.__UNIQUE_ID_ddebug376, !100, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!102 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/usb/asix_devices.c", i32 871, i32 2}
!104 = !{ptr @.str.33, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @rtl8211cl_phy_init.__UNIQUE_ID_ddebug377, !103, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!106 = !{ptr @.str.34, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/usb/asix_devices.c", i32 1007, i32 2}
!108 = !{ptr @.str.35, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ax88178_link_reset.__UNIQUE_ID_ddebug385, !107, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!110 = !{ptr @.str.36, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/usb/asix_devices.c", i32 1028, i32 2}
!112 = !{ptr @ax88178_link_reset.__UNIQUE_ID_ddebug386, !111, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!113 = !{ptr @.str.37, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/usb/asix_devices.c", i32 892, i32 2}
!115 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @marvell_led_status.__UNIQUE_ID_ddebug378, !114, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!117 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/usb/asix_devices.c", i32 908, i32 2}
!119 = !{ptr @marvell_led_status.__UNIQUE_ID_ddebug379, !118, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!120 = !{ptr @.str.40, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/usb/asix_devices.c", i32 1213, i32 17}
!122 = !{ptr @ax88772b_info, !123, !"ax88772b_info", i1 false, i1 false}
!123 = !{!"../drivers/net/usb/asix_devices.c", i32 1212, i32 33}
!124 = !{ptr @.str.41, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/usb/asix_devices.c", i32 720, i32 3}
!126 = !{ptr @.str.42, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @ax88772_bind.__UNIQUE_ID_ddebug370, !125, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!128 = !{ptr @ax88772_bind.__UNIQUE_ID_ddebug371, !129, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!129 = !{!"../drivers/net/usb/asix_devices.c", i32 738, i32 4}
!130 = !{ptr @.str.43, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/usb/asix_devices.c", i32 765, i32 3}
!132 = !{ptr @ax88772_bind.__UNIQUE_ID_ddebug372, !131, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!133 = !{ptr @ax88772_netdev_ops, !134, !"ax88772_netdev_ops", i1 false, i1 false}
!134 = !{!"../drivers/net/usb/asix_devices.c", i32 581, i32 36}
!135 = !{ptr @ax88772_ethtool_ops, !136, !"ax88772_ethtool_ops", i1 false, i1 false}
!136 = !{!"../drivers/net/usb/asix_devices.c", i32 306, i32 33}
!137 = !{ptr @.str.44, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/usb/asix_devices.c", i32 369, i32 3}
!139 = !{ptr @.str.45, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @ax88772_hw_reset.__UNIQUE_ID_ddebug359, !138, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!141 = !{ptr @.str.46, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/usb/asix_devices.c", i32 417, i32 3}
!143 = !{ptr @ax88772_hw_reset.__UNIQUE_ID_ddebug360, !142, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!144 = !{ptr @.str.47, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/usb/asix_devices.c", i32 434, i32 2}
!146 = !{ptr @ax88772_hw_reset.__UNIQUE_ID_ddebug361, !145, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!147 = !{ptr @.str.48, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/usb/asix_devices.c", i32 438, i32 2}
!149 = !{ptr @ax88772_hw_reset.__UNIQUE_ID_ddebug362, !148, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!150 = !{ptr @.str.49, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/usb/asix_devices.c", i32 463, i32 3}
!152 = !{ptr @ax88772a_hw_reset.__UNIQUE_ID_ddebug363, !151, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!153 = !{ptr @.str.50, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/usb/asix_devices.c", i32 505, i32 4}
!155 = !{ptr @ax88772a_hw_reset.__UNIQUE_ID_ddebug364, !154, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!156 = !{ptr @.str.51, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/usb/asix_devices.c", i32 518, i32 3}
!158 = !{ptr @ax88772a_hw_reset.__UNIQUE_ID_ddebug365, !157, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!159 = !{ptr @ax88772a_hw_reset.__UNIQUE_ID_ddebug366, !160, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!160 = !{!"../drivers/net/usb/asix_devices.c", i32 541, i32 3}
!161 = !{ptr @ax88772a_hw_reset.__UNIQUE_ID_ddebug367, !162, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!162 = !{!"../drivers/net/usb/asix_devices.c", i32 567, i32 2}
!163 = !{ptr @ax88772a_hw_reset.__UNIQUE_ID_ddebug368, !164, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!164 = !{!"../drivers/net/usb/asix_devices.c", i32 571, i32 2}
!165 = !{ptr @.str.52, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/usb/asix_devices.c", i32 607, i32 2}
!167 = !{ptr @.str.53, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @ax88772_suspend.__UNIQUE_ID_ddebug369, !166, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!169 = !{ptr @.str.54, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/usb/asix_devices.c", i32 671, i32 21}
!171 = !{ptr @.str.55, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/usb/asix_devices.c", i32 673, i32 44}
!173 = !{ptr @.str.56, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/usb/asix_devices.c", i32 684, i32 51}
!175 = !{ptr @.str.57, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/usb/asix_devices.c", i32 690, i32 24}
!177 = !{ptr @.str.58, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/usb/asix_devices.c", i32 1201, i32 17}
!179 = !{ptr @ax88772_info, !180, !"ax88772_info", i1 false, i1 false}
!180 = !{!"../drivers/net/usb/asix_devices.c", i32 1200, i32 33}
!181 = !{ptr @.str.59, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/usb/asix_devices.c", i32 1249, i32 17}
!183 = !{ptr @hg20f9_info, !184, !"hg20f9_info", i1 false, i1 false}
!184 = !{!"../drivers/net/usb/asix_devices.c", i32 1248, i32 33}
!185 = !{i32 1, !"wchar_size", i32 2}
!186 = !{i32 1, !"min_enum_size", i32 4}
!187 = !{i32 8, !"branch-target-enforcement", i32 0}
!188 = !{i32 8, !"sign-return-address", i32 0}
!189 = !{i32 8, !"sign-return-address-all", i32 0}
!190 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!191 = !{i32 7, !"uwtable", i32 1}
!192 = !{i32 7, !"frame-pointer", i32 2}
!193 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!194 = !{i64 2148996871, i64 2148996876, i64 2148996889, i64 2148996933, i64 2148996967, i64 2148996988}
!195 = !{!"auto-init"}
!196 = !{i8 0, i8 2}
