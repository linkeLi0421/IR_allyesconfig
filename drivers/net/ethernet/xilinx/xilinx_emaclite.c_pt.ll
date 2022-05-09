; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/xilinx/xilinx_emaclite.c_pt.bc'
source_filename = "../drivers/net/ethernet/xilinx/xilinx_emaclite.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
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
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.net_local = type { ptr, i8, i8, i32, i32, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, i32 }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
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
%struct.sockaddr = type { i16, [14 x i8] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__initcall__kmod_xilinx_emaclite__353_1293_xemaclite_of_driver_init6 = internal global ptr @xemaclite_of_driver_init, section ".initcall6.init", align 4
@xemaclite_of_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xemaclite_of_probe, ptr @xemaclite_of_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xemaclite_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xemaclite_of_driver_exit = internal global ptr @xemaclite_of_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author354 = internal constant [36 x i8] c"xilinx_emaclite.author=Xilinx, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description355 = internal constant [60 x i8] c"xilinx_emaclite.description=Xilinx Ethernet MAC Lite driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file356 = internal constant [65 x i8] c"xilinx_emaclite.file=drivers/net/ethernet/xilinx/xilinx_emaclite\00", section ".modinfo", align 1
@__UNIQUE_ID_license357 = internal constant [28 x i8] c"xilinx_emaclite.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xilinx_emaclite\00", [16 x i8] zeroinitializer }, align 32
@xemaclite_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,opb-ethernetlite-1.01.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,opb-ethernetlite-1.01.b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-ethernetlite-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-ethernetlite-2.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-ethernetlite-2.01.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-ethernetlite-3.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@xemaclite_of_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Device Tree Probing\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xemaclite_of_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/xilinx/xilinx_emaclite.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xemaclite_of_probe._entry_ptr = internal global ptr @xemaclite_of_probe._entry, section ".printk_index", align 4
@xemaclite_of_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&lp->reset_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xlnx,tx-ping-pong\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xlnx,rx-ping-pong\00", [46 x i8] zeroinitializer }, align 32
@xemaclite_of_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1160, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No MAC address found, using random\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@xemaclite_of_probe._entry_ptr.12 = internal global ptr @xemaclite_of_probe._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@xemaclite_of_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1174, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MAC address is now %pM\0A\00", [40 x i8] zeroinitializer }, align 32
@xemaclite_of_probe._entry_ptr.16 = internal global ptr @xemaclite_of_probe._entry.14, section ".printk_index", align 4
@xemaclite_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @xemaclite_open, ptr @xemaclite_close, ptr @xemaclite_send, ptr null, ptr null, ptr null, ptr null, ptr @xemaclite_set_mac_address, ptr null, ptr null, ptr @xemaclite_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xemaclite_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xemaclite_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@xemaclite_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @xemaclite_ethtools_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@xemaclite_of_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1185, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot register network device, aborting\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@xemaclite_of_probe._entry_ptr.20 = internal global ptr @xemaclite_of_probe._entry.17, section ".printk_index", align 4
@xemaclite_of_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Xilinx EmacLite at 0x%08lX mapped to 0x%p, irq=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@xemaclite_of_probe._entry_ptr.23 = internal global ptr @xemaclite_of_probe._entry.21, section ".printk_index", align 4
@get_bool._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 1070, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Parameter %s not found, defaulting to false\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"get_bool\00", [23 x i8] zeroinitializer }, align 32
@get_bool._entry_ptr = internal global ptr @get_bool._entry, section ".printk_index", align 4
@xemaclite_mdio_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 835, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register mdio bus.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xemaclite_mdio_setup\00", [43 x i8] zeroinitializer }, align 32
@xemaclite_mdio_setup._entry_ptr = internal global ptr @xemaclite_mdio_setup._entry, section ".printk_index", align 4
@xemaclite_mdio_setup._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 846, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MDIO of the phy is not registered yet\0A\00", [57 x i8] zeroinitializer }, align 32
@xemaclite_mdio_setup._entry_ptr.30 = internal global ptr @xemaclite_mdio_setup._entry.28, section ".printk_index", align 4
@xemaclite_mdio_setup._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.3, i32 860, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to allocate mdiobus\0A\00", [36 x i8] zeroinitializer }, align 32
@xemaclite_mdio_setup._entry_ptr.33 = internal global ptr @xemaclite_mdio_setup._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%.8llx\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Xilinx Emaclite MDIO\00", [43 x i8] zeroinitializer }, align 32
@xemaclite_mdio_setup._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 874, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@xemaclite_mdio_setup._entry_ptr.37 = internal global ptr @xemaclite_mdio_setup._entry.36, section ".printk_index", align 4
@xemaclite_mdio_read.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 -65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xemaclite_mdio_read\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(phy_id=%i, reg=%x) == %x\0A\00", [35 x i8] zeroinitializer }, align 32
@xemaclite_mdio_write.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xemaclite_mdio_write\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(phy_id=%i, reg=%x, val=%x)\0A\00", [33 x i8] zeroinitializer }, align 32
@xemaclite_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 935, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"of_phy_connect() failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xemaclite_open\00", [17 x i8] zeroinitializer }, align 32
@xemaclite_open._entry_ptr = internal global ptr @xemaclite_open._entry, section ".printk_index", align 4
@xemaclite_open._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.3, i32 964, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not allocate interrupt %d\0A\00", [63 x i8] zeroinitializer }, align 32
@xemaclite_open._entry_ptr.46 = internal global ptr @xemaclite_open._entry.44, section ".printk_index", align 4
@xemaclite_rx_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 610, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not allocate receive buffer\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xemaclite_rx_handler\00", [43 x i8] zeroinitializer }, align 32
@xemaclite_rx_handler._entry_ptr = internal global ptr @xemaclite_rx_handler._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@xemaclite_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 533, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Exceeded transmit timeout of %lu ms\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xemaclite_tx_timeout\00", [43 x i8] zeroinitializer }, align 32
@xemaclite_tx_timeout._entry_ptr = internal global ptr @xemaclite_tx_timeout._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 2054]
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"xemaclite_of_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1284, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1286, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"xemaclite_of_match\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1273, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1122, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1152, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1155, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1156, i32 37 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1160, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1171, i32 54 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1174, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [21 x i8] c"xemaclite_netdev_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1260, i32 36 }
@___asan_gen_.111 = private unnamed_addr constant [22 x i8] c"xemaclite_ethtool_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1091, i32 33 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1184, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1189, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1070, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 835, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 845, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 860, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 864, i32 37 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 867, i32 14 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 874, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 765, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 790, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 935, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 963, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 610, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.211 = private constant [49 x i8] c"../drivers/net/ethernet/xilinx/xilinx_emaclite.c\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 532, i32 2 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_description355, ptr @__UNIQUE_ID_file356, ptr @__UNIQUE_ID_license357, ptr @__exitcall_xemaclite_of_driver_exit, ptr @__initcall__kmod_xilinx_emaclite__353_1293_xemaclite_of_driver_init6, ptr @get_bool._entry, ptr @get_bool._entry_ptr, ptr @xemaclite_mdio_setup._entry, ptr @xemaclite_mdio_setup._entry.28, ptr @xemaclite_mdio_setup._entry.31, ptr @xemaclite_mdio_setup._entry.36, ptr @xemaclite_mdio_setup._entry_ptr, ptr @xemaclite_mdio_setup._entry_ptr.30, ptr @xemaclite_mdio_setup._entry_ptr.33, ptr @xemaclite_mdio_setup._entry_ptr.37, ptr @xemaclite_of_driver_exit, ptr @xemaclite_of_probe._entry, ptr @xemaclite_of_probe._entry.14, ptr @xemaclite_of_probe._entry.17, ptr @xemaclite_of_probe._entry.21, ptr @xemaclite_of_probe._entry.9, ptr @xemaclite_of_probe._entry_ptr, ptr @xemaclite_of_probe._entry_ptr.12, ptr @xemaclite_of_probe._entry_ptr.16, ptr @xemaclite_of_probe._entry_ptr.20, ptr @xemaclite_of_probe._entry_ptr.23, ptr @xemaclite_open._entry, ptr @xemaclite_open._entry.44, ptr @xemaclite_open._entry_ptr, ptr @xemaclite_open._entry_ptr.46, ptr @xemaclite_rx_handler._entry, ptr @xemaclite_rx_handler._entry_ptr, ptr @xemaclite_tx_timeout._entry, ptr @xemaclite_tx_timeout._entry_ptr, ptr @xemaclite_of_driver, ptr @.str, ptr @xemaclite_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @xemaclite_of_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @xemaclite_netdev_ops, ptr @xemaclite_ethtool_ops, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xemaclite_of_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xemaclite_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xemaclite_of_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xemaclite_of_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xemaclite_of_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xemaclite_of_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xemaclite_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xemaclite_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xemaclite_of_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xemaclite_of_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_bool._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xemaclite_mdio_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xemaclite_mdio_setup._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xemaclite_mdio_setup._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xemaclite_mdio_setup._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xemaclite_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xemaclite_open._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xemaclite_rx_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xemaclite_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xemaclite_of_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xemaclite_of_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xemaclite_of_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @xemaclite_of_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xemaclite_of_probe(ptr noundef %ofdev) #2 align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.1) #13
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 84, i32 noundef 1, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %driver_data.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %add.ptr.i, align 4
  %call6 = tail call i32 @platform_get_irq(ptr noundef %ofdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end.error_crit_edge, label %if.end8

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end8:                                          ; preds = %if.end
  %irq = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call6, ptr %irq, align 4
  %call9 = tail call ptr @platform_get_resource(ptr noundef %ofdev, i32 noundef 512, i32 noundef 0) #10
  %call11 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call9) #10
  %base_addr = getelementptr i8, ptr %call, i32 2320
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %base_addr, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call11 to i32
  br label %error

if.end17:                                         ; preds = %if.end8
  %6 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call9, align 4
  %mem_start = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %mem_start to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mem_start, align 4
  %end = getelementptr inbounds %struct.resource, ptr %call9, i32 0, i32 1
  %9 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end, align 4
  %mem_end = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 3
  %11 = ptrtoint ptr %mem_end to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mem_end, align 8
  %reset_lock = getelementptr i8, ptr %call, i32 2324
  tail call void @__raw_spin_lock_init(ptr noundef %reset_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @xemaclite_of_probe.__key, i16 noundef signext 3) #10
  %next_tx_buf_to_use = getelementptr i8, ptr %call, i32 2312
  %12 = ptrtoint ptr %next_tx_buf_to_use to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %next_tx_buf_to_use, align 4
  %next_rx_buf_to_use = getelementptr i8, ptr %call, i32 2316
  %13 = ptrtoint ptr %next_rx_buf_to_use to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %next_rx_buf_to_use, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 27
  %14 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_get_property(ptr noundef %15, ptr noundef nonnull @.str.7, ptr noundef null) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.7) #13
  br label %get_bool.exit

if.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.i = icmp ne i32 %17, 0
  br label %get_bool.exit

get_bool.exit:                                    ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ false, %do.end.i ]
  %tx_ping_pong = getelementptr i8, ptr %call, i32 2308
  %frombool = zext i1 %retval.0.i to i8
  %18 = ptrtoint ptr %tx_ping_pong to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %tx_ping_pong, align 4
  %19 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i, align 8
  %call.i125 = tail call ptr @of_get_property(ptr noundef %20, ptr noundef nonnull @.str.8, ptr noundef null) #10
  %tobool.not.i126 = icmp eq ptr %call.i125, null
  br i1 %tobool.not.i126, label %do.end.i128, label %if.end.i130

do.end.i128:                                      ; preds = %get_bool.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.8) #13
  br label %get_bool.exit132

if.end.i130:                                      ; preds = %get_bool.exit
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %call.i125 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call.i125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.i129 = icmp ne i32 %22, 0
  br label %get_bool.exit132

get_bool.exit132:                                 ; preds = %if.end.i130, %do.end.i128
  %retval.0.i131 = phi i1 [ %tobool2.i129, %if.end.i130 ], [ false, %do.end.i128 ]
  %rx_ping_pong = getelementptr i8, ptr %call, i32 2309
  %frombool24 = zext i1 %retval.0.i131 to i8
  %23 = ptrtoint ptr %rx_ping_pong to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool24, ptr %rx_ping_pong, align 1
  %24 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node.i, align 8
  %call26 = tail call i32 @of_get_ethdev_address(ptr noundef %25, ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %get_bool.exit132.do.body33_crit_edge, label %do.end31

get_bool.exit132.do.body33_crit_edge:             ; preds = %get_bool.exit132
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body33

do.end31:                                         ; preds = %get_bool.exit132
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.10) #13
  tail call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call)
  br label %do.body33

do.body33:                                        ; preds = %do.end31, %get_bool.exit132.do.body33_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_addr, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 2044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base_addr, align 4
  %add.ptr42 = getelementptr i8, ptr %29, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 0) #10, !srcloc !117
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %30 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_addr, align 64
  tail call fastcc void @xemaclite_update_address(ptr noundef %add.ptr.i, ptr noundef %31)
  %32 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #10
  %34 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i133 = call i32 @__of_parse_phandle_with_args(ptr noundef %33, ptr noundef nonnull @.str.13, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool.not.i134 = icmp eq i32 %call.i133, 0
  br i1 %tobool.not.i134, label %if.end.i135, label %do.body33.of_parse_phandle.exit_crit_edge

do.body33.of_parse_phandle.exit_crit_edge:        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_parse_phandle.exit

if.end.i135:                                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i135, %do.body33.of_parse_phandle.exit_crit_edge
  %retval.0.i136 = phi ptr [ %36, %if.end.i135 ], [ null, %do.body33.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  %phy_node = getelementptr i8, ptr %call, i32 2376
  %37 = ptrtoint ptr %phy_node to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %retval.0.i136, ptr %phy_node, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #10
  %38 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  %39 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %phy_node, align 4
  %call.i137 = call ptr @of_get_parent(ptr noundef %40) #10
  %tobool.not.i138 = icmp eq ptr %call.i137, null
  br i1 %tobool.not.i138, label %do.end.i139, label %if.end.i140

do.end.i139:                                      ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #13
  br label %xemaclite_mdio_setup.exit

if.end.i140:                                      ; preds = %of_parse_phandle.exit
  %call1.i = call ptr @of_get_parent(ptr noundef nonnull %call.i137) #10
  %call2.i = call i32 @of_address_to_resource(ptr noundef %call1.i, i32 noundef 0, ptr noundef nonnull %res.i) #10
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 4
  %mem_start.i = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %mem_start.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mem_start.i, align 4
  %45 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %res.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp.not.i = icmp eq i32 %44, %46
  br i1 %cmp.not.i, label %do.body14.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i140
  %47 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %phy_node, align 4
  %call5.i = call ptr @of_phy_find_device(ptr noundef %48) #10
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %do.end10.i, label %if.else.i

do.end10.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.29) #13
  br label %xemaclite_mdio_setup.exit

if.else.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @put_device(ptr noundef nonnull %call5.i) #10
  br label %xemaclite_mdio_setup.exit

do.body14.i:                                      ; preds = %if.end.i140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !119
  call void @arm_heavy_mb() #10
  %49 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base_addr, align 4
  %add.ptr.i141 = getelementptr i8, ptr %50, i32 2032
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 8) #10, !srcloc !117
  %call.i.i = call ptr @mdiobus_alloc_size(i32 noundef 0) #10
  %tobool18.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool18.not.i, label %do.end22.i, label %if.end23.i

do.end22.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32) #13
  br label %xemaclite_mdio_setup.exit

if.end23.i:                                       ; preds = %do.body14.i
  %id.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %res.i, align 4
  %conv.i = zext i32 %52 to i64
  %call25.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id.i, i32 noundef 61, ptr noundef nonnull @.str.34, i64 noundef %conv.i) #10
  %priv.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr.i, ptr %priv.i, align 8
  %name.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.35, ptr %name.i, align 4
  %read.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 4
  %55 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @xemaclite_mdio_read, ptr %read.i, align 4
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 5
  %56 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @xemaclite_mdio_write, ptr %write.i, align 8
  %parent.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 9
  %57 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dev1, ptr %parent.i, align 4
  %call26.i = call i32 @of_mdiobus_register(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call.i137) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end32.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #13
  call void @mdiobus_free(ptr noundef nonnull %call.i.i) #10
  br label %xemaclite_mdio_setup.exit

if.end32.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %mii_bus.i = getelementptr i8, ptr %call, i32 2380
  %58 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i.i, ptr %mii_bus.i, align 4
  br label %xemaclite_mdio_setup.exit

xemaclite_mdio_setup.exit:                        ; preds = %if.end32.i, %do.end31.i, %do.end22.i, %if.else.i, %do.end10.i, %do.end.i139
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #10
  %59 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef %60) #13
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %61 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @xemaclite_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %62 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @xemaclite_ethtool_ops, ptr %ethtool_ops, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 14
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags, align 8
  %and = and i32 %64, -4097
  store i32 %and, ptr %flags, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %65 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 6000, ptr %watchdog_timeo, align 4
  %call52 = call i32 @register_netdev(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %do.end61, label %do.end57

do.end57:                                         ; preds = %xemaclite_mdio_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #13
  %66 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %phy_node, align 4
  call void @of_node_put(ptr noundef %67) #10
  br label %error

do.end61:                                         ; preds = %xemaclite_mdio_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mem_start, align 4
  %70 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base_addr, align 4
  %72 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %69, ptr noundef %71, i32 noundef %73) #13
  br label %cleanup

error:                                            ; preds = %do.end57, %if.then14, %if.end.error_crit_edge
  %rc.0 = phi i32 [ %call6, %if.end.error_crit_edge ], [ %5, %if.then14 ], [ %call52, %do.end57 ]
  call void @free_netdev(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end61, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %error ], [ 0, %do.end61 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xemaclite_of_remove(ptr nocapture noundef readonly %of_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %of_dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mii_bus = getelementptr i8, ptr %1, i32 2380
  %2 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mii_bus, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mdiobus_unregister(ptr noundef nonnull %3) #10
  %4 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mii_bus, align 4
  tail call void @mdiobus_free(ptr noundef %5) #10
  %6 = ptrtoint ptr %mii_bus to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %mii_bus, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @unregister_netdev(ptr noundef %1) #10
  %phy_node = getelementptr i8, ptr %1, i32 2376
  %7 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_node, align 4
  tail call void @of_node_put(ptr noundef %8) #10
  %9 = ptrtoint ptr %phy_node to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %phy_node, align 4
  tail call void @free_netdev(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #10
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #10
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #10
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xemaclite_update_address(ptr nocapture noundef readonly %drvdata, ptr nocapture noundef readonly %address_ptr) unnamed_addr #2 align 64 {
xemaclite_aligned_write.exit:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_local, ptr %drvdata, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 4
  %next_tx_buf_to_use = getelementptr inbounds %struct.net_local, ptr %drvdata, i32 0, i32 3
  %2 = ptrtoint ptr %next_tx_buf_to_use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_tx_buf_to_use, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %incdec.ptr.i = getelementptr i16, ptr %address_ptr, i32 1
  %4 = ptrtoint ptr %address_ptr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %address_ptr, align 2
  %6 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %incdec.ptr.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !120
  tail call void @arm_heavy_mb() #10
  %align_buffer.i.sroa.7.0.insert.ext = zext i16 %7 to i32
  %align_buffer.i.sroa.0.0.insert.ext = zext i16 %5 to i32
  %align_buffer.i.sroa.0.0.insert.shift = shl nuw i32 %align_buffer.i.sroa.0.0.insert.ext, 16
  %align_buffer.i.sroa.0.0.insert.insert = or i32 %align_buffer.i.sroa.0.0.insert.shift, %align_buffer.i.sroa.7.0.insert.ext
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %align_buffer.i.sroa.0.0.insert.insert, ptr %add.ptr, align 4
  %incdec.ptr4.i = getelementptr i32, ptr %add.ptr, i32 1
  %incdec.ptr2.i = getelementptr i16, ptr %address_ptr, i32 2
  %9 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %align_buffer.i.sroa.0.0.copyload = load i16, ptr %incdec.ptr2.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  tail call void @arm_heavy_mb() #10
  %align_buffer.i.sroa.0.0.insert.ext17 = zext i16 %align_buffer.i.sroa.0.0.copyload to i32
  %align_buffer.i.sroa.0.0.insert.shift18 = shl nuw i32 %align_buffer.i.sroa.0.0.insert.ext17, 16
  %10 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %align_buffer.i.sroa.0.0.insert.shift18, ptr %incdec.ptr4.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @arm_heavy_mb() #10
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 2036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 6) #10, !srcloc !117
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 2044
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !125
  tail call void @arm_heavy_mb() #10
  %or = or i32 %11, 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %or) #10, !srcloc !117
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %xemaclite_aligned_write.exit
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !126
  %and = and i32 %12, 3
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_find_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xemaclite_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call fastcc i32 @xemaclite_mdio_wait(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %base_addr = getelementptr inbounds %struct.net_local, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 2032
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  %shl = shl i32 %phy_id, 5
  %or = or i32 %shl, %reg
  %or2 = or i32 %or, 1024
  %5 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 2020
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %or2) #10, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !129
  tail call void @arm_heavy_mb() #10
  %or8 = or i32 %4, 1
  %7 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base_addr, align 4
  %add.ptr10 = getelementptr i8, ptr %8, i32 2032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %or8) #10, !srcloc !117
  %call11 = tail call fastcc i32 @xemaclite_mdio_wait(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base_addr, align 4
  %add.ptr17 = getelementptr i8, ptr %10, i32 2028
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xemaclite_mdio_read.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xemaclite_mdio_read, %if.then26)) #10
          to label %cleanup [label %if.then26], !srcloc !131

if.then26:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xemaclite_mdio_read.__UNIQUE_ID_ddebug351, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef %phy_id, i32 noundef %reg, i32 noundef %11) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ], [ %11, %if.then26 ], [ %11, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xemaclite_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xemaclite_mdio_write.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xemaclite_mdio_write, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !131

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 133
  %conv = zext i16 %val to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xemaclite_mdio_write.__UNIQUE_ID_ddebug352, ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %phy_id, i32 noundef %reg, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @xemaclite_mdio_wait(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %base_addr = getelementptr inbounds %struct.net_local, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 2032
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  %shl = shl i32 %phy_id, 5
  %or = or i32 %shl, %reg
  %and = and i32 %or, -1025
  %7 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base_addr, align 4
  %add.ptr13 = getelementptr i8, ptr %8, i32 2020
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %and) #10, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %conv17 = zext i16 %val to i32
  %9 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base_addr, align 4
  %add.ptr19 = getelementptr i8, ptr %10, i32 2024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %conv17) #10, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !135
  tail call void @arm_heavy_mb() #10
  %or23 = or i32 %6, 1
  %11 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr, align 4
  %add.ptr25 = getelementptr i8, ptr %12, i32 2032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %or23) #10, !srcloc !117
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -110, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xemaclite_mdio_wait(ptr nocapture noundef readonly %lp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #10
  %add.i = add i64 %call, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 725) #10
  %base_addr = getelementptr inbounds %struct.net_local, ptr %lp, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 4
  %add.ptr36 = getelementptr i8, ptr %1, i32 2032
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  %and37 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool.not38 = icmp eq i32 %and37, 0
  br i1 %tobool.not38, label %entry.for.end.thread_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

land.lhs.true:                                    ; preds = %if.then23.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call12 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then23

if.then23:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #10
  %3 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base_addr, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 2032
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  %and = and i32 %5, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then23.for.end.thread_crit_edge, label %if.then23.land.lhs.true_crit_edge

if.then23.land.lhs.true_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then23.for.end.thread_crit_edge:               ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr, align 4
  %add.ptr18 = getelementptr i8, ptr %7, i32 2032
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !137
  %.pre = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool27.not = icmp eq i32 %.pre, 0
  br i1 %tobool27.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %9

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.then23.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  br label %9

9:                                                ; preds = %for.end.thread, %for.end._crit_edge
  %10 = phi i32 [ 0, %for.end.thread ], [ -110, %for.end._crit_edge ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xemaclite_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !138
  tail call void @arm_heavy_mb() #10
  %base_addr.i = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %1, i32 2040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 -2147483648) #10, !srcloc !117
  %2 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 2044
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %and.i = and i32 %4, -9
  %5 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %6, i32 2044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %and.i) #10, !srcloc !117
  %7 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base_addr.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %8, i32 6140
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  tail call void @arm_heavy_mb() #10
  %and16.i = and i32 %9, -9
  %10 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_addr.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %11, i32 6140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %and16.i) #10, !srcloc !117
  %phy_node = getelementptr i8, ptr %dev, i32 2376
  %12 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_node, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then:                                          ; preds = %entry
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %call3 = tail call ptr @of_phy_connect(ptr noundef %15, ptr noundef nonnull %13, ptr noundef nonnull @xemaclite_adjust_link, i32 noundef 0, i32 noundef 2) #10
  %phy_dev = getelementptr i8, ptr %dev, i32 2372
  %16 = ptrtoint ptr %phy_dev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call3, ptr %phy_dev, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 4
  %dev8 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.42) #13
  br label %cleanup37

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 @phy_set_max_speed(ptr noundef nonnull %call3, i32 noundef 100) #10
  %19 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy_dev, align 4
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %20, i32 0, i32 6
  %23 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %22, i32 noundef %24, i32 noundef 9, i16 noundef zeroext 0) #10
  %25 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy_dev, align 4
  %bus.i67 = getelementptr inbounds %struct.mdio_device, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %bus.i67 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i67, align 8
  %addr.i68 = getelementptr inbounds %struct.mdio_device, ptr %26, i32 0, i32 6
  %29 = ptrtoint ptr %addr.i68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i68, align 8
  %call.i69 = tail call i32 @mdiobus_write(ptr noundef %28, i32 noundef %30, i32 noundef 4, i16 noundef zeroext 481) #10
  %31 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phy_dev, align 4
  %bus.i70 = getelementptr inbounds %struct.mdio_device, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %bus.i70 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus.i70, align 8
  %addr.i71 = getelementptr inbounds %struct.mdio_device, ptr %32, i32 0, i32 6
  %35 = ptrtoint ptr %addr.i71 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr.i71, align 8
  %call.i72 = tail call i32 @mdiobus_read(ptr noundef %34, i32 noundef %36, i32 noundef 0) #10
  %37 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phy_dev, align 4
  %39 = trunc i32 %call.i72 to i16
  %conv = or i16 %39, 4608
  %bus.i73 = getelementptr inbounds %struct.mdio_device, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %bus.i73 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i73, align 8
  %addr.i74 = getelementptr inbounds %struct.mdio_device, ptr %38, i32 0, i32 6
  %42 = ptrtoint ptr %addr.i74 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i74, align 8
  %call.i75 = tail call i32 @mdiobus_write(ptr noundef %41, i32 noundef %43, i32 noundef 0, i16 noundef zeroext %conv) #10
  %44 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %phy_dev, align 4
  tail call void @phy_start(ptr noundef %45) #10
  br label %if.end20

if.end20:                                         ; preds = %if.end, %entry.if.end20_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %46 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_addr, align 64
  tail call fastcc void @xemaclite_update_address(ptr noundef %add.ptr.i, ptr noundef %47)
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %48 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq, align 4
  %call.i76 = tail call i32 @request_threaded_irq(i32 noundef %49, ptr noundef nonnull @xemaclite_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %dev, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool22.not = icmp eq i32 %call.i76, 0
  br i1 %tobool22.not, label %if.end36, label %do.end26

do.end26:                                         ; preds = %if.end20
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 4
  %dev28 = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 133
  %52 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.45, i32 noundef %53) #13
  %phy_dev30 = getelementptr i8, ptr %dev, i32 2372
  %54 = ptrtoint ptr %phy_dev30 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %phy_dev30, align 4
  %tobool31.not = icmp eq ptr %55, null
  br i1 %tobool31.not, label %do.end26.if.end34_crit_edge, label %if.then32

do.end26.if.end34_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @phy_disconnect(ptr noundef nonnull %55) #10
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %do.end26.if.end34_crit_edge
  %56 = ptrtoint ptr %phy_dev30 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %phy_dev30, align 4
  br label %cleanup37

if.end36:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %58, i32 2044
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  tail call void @arm_heavy_mb() #10
  %or.i = or i32 %59, 8
  %60 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base_addr.i, align 4
  %add.ptr2.i79 = getelementptr i8, ptr %61, i32 2044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i79, i32 %or.i) #10, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  tail call void @arm_heavy_mb() #10
  %62 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base_addr.i, align 4
  %add.ptr7.i80 = getelementptr i8, ptr %63, i32 6140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i80, i32 8) #10, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !146
  tail call void @arm_heavy_mb() #10
  %64 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base_addr.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %65, i32 2040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 -2147483648) #10, !srcloc !117
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %66 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %67, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %cleanup37

cleanup37:                                        ; preds = %if.end36, %if.end34, %do.end
  %retval.1 = phi i32 [ %call.i76, %if.end34 ], [ 0, %if.end36 ], [ -19, %do.end ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xemaclite_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !138
  tail call void @arm_heavy_mb() #10
  %base_addr.i = getelementptr i8, ptr %dev, i32 2320
  %2 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %3, i32 2040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 -2147483648) #10, !srcloc !117
  %4 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 2044
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %and.i = and i32 %6, -9
  %7 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base_addr.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %8, i32 2044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %and.i) #10, !srcloc !117
  %9 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base_addr.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %10, i32 6140
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  tail call void @arm_heavy_mb() #10
  %and16.i = and i32 %11, -9
  %12 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_addr.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %13, i32 6140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %and16.i) #10, !srcloc !117
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %dev) #10
  %phy_dev = getelementptr i8, ptr %dev, i32 2372
  %16 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_dev, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @phy_disconnect(ptr noundef nonnull %17) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %phy_dev to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %phy_dev, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xemaclite_send(ptr noundef %orig_skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %orig_skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %reset_lock = getelementptr i8, ptr %dev, i32 2324
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reset_lock) #10
  %data = getelementptr inbounds %struct.sk_buff, ptr %orig_skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call7 = tail call fastcc i32 @xemaclite_send_data(ptr noundef %add.ptr.i, ptr noundef %3, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %deferred_skb = getelementptr i8, ptr %dev, i32 2368
  %6 = ptrtoint ptr %deferred_skb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %orig_skb, ptr %deferred_skb, align 4
  tail call void @skb_clone_tx_timestamp(ptr noundef %orig_skb) #10
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %orig_skb, i32 0, i32 17
  %7 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tx_flags.i, align 1
  %11 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.then.skb_tx_timestamp.exit_crit_edge, label %if.then.i

if.then.skb_tx_timestamp.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_tx_timestamp.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_tstamp_tx(ptr noundef %orig_skb, ptr noundef null) #10
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i, %if.then.skb_tx_timestamp.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reset_lock, i32 noundef %call4) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reset_lock, i32 noundef %call4) #10
  tail call void @skb_clone_tx_timestamp(ptr noundef %orig_skb) #10
  %end.i.i28 = getelementptr inbounds %struct.sk_buff, ptr %orig_skb, i32 0, i32 17
  %12 = ptrtoint ptr %end.i.i28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i.i28, align 4
  %tx_flags.i29 = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %tx_flags.i29 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_flags.i29, align 1
  %16 = and i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i30 = icmp eq i8 %16, 0
  br i1 %tobool.not.i30, label %if.end.skb_tx_timestamp.exit32_crit_edge, label %if.then.i31

if.end.skb_tx_timestamp.exit32_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_tx_timestamp.exit32

if.then.i31:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_tstamp_tx(ptr noundef %orig_skb, ptr noundef null) #10
  br label %skb_tx_timestamp.exit32

skb_tx_timestamp.exit32:                          ; preds = %if.then.i31, %if.end.skb_tx_timestamp.exit32_crit_edge
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %17 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %18, %1
  store i32 %add, ptr %tx_bytes, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %orig_skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %skb_tx_timestamp.exit32, %skb_tx_timestamp.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xemaclite_set_mac_address(ptr noundef %dev, ptr noundef %address) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
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
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %address, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #10
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  tail call fastcc void @xemaclite_update_address(ptr noundef %add.ptr.i, ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xemaclite_ioctl(ptr noundef %dev, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %cmd.off = add i32 %cmd, -35143
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cmd.off)
  %switch = icmp ult i32 %cmd.off, 3
  br i1 %switch, label %sw.bb, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @phy_mii_ioctl(ptr noundef nonnull %1, ptr noundef %rq, i32 noundef %cmd) #10
  br label %return

return:                                           ; preds = %sw.bb, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -95, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xemaclite_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %dev1 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.49, i32 noundef 60000) #13
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %2 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %tx_errors, align 4
  %reset_lock = getelementptr i8, ptr %dev, i32 2324
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reset_lock) #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !138
  tail call void @arm_heavy_mb() #10
  %base_addr.i = getelementptr i8, ptr %dev, i32 2320
  %6 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %7, i32 2040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 -2147483648) #10, !srcloc !117
  %8 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %9, i32 2044
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %and.i = and i32 %10, -9
  %11 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %12, i32 2044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %and.i) #10, !srcloc !117
  %13 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_addr.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %14, i32 6140
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  tail call void @arm_heavy_mb() #10
  %and16.i = and i32 %15, -9
  %16 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_addr.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %17, i32 6140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %and16.i) #10, !srcloc !117
  %18 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %19, i32 2044
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  tail call void @arm_heavy_mb() #10
  %or.i = or i32 %20, 8
  %21 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base_addr.i, align 4
  %add.ptr2.i31 = getelementptr i8, ptr %22, i32 2044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i31, i32 %or.i) #10, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base_addr.i, align 4
  %add.ptr7.i32 = getelementptr i8, ptr %24, i32 6140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i32, i32 8) #10, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !146
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base_addr.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %26, i32 2040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 -2147483648) #10, !srcloc !117
  %deferred_skb = getelementptr i8, ptr %dev, i32 2368
  %27 = ptrtoint ptr %deferred_skb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %deferred_skb, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %28) #10
  %29 = ptrtoint ptr %deferred_skb to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %deferred_skb, align 4
  %30 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_errors, align 4
  %inc14 = add i32 %31, 1
  store i32 %inc14, ptr %tx_errors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %32 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %33, i32 0, i32 12
  %35 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %34)
  %cmp.not.i.i = icmp eq i32 %36, %34
  br i1 %cmp.not.i.i, label %if.end.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end.netif_trans_update.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 %34, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end.netif_trans_update.exit_crit_edge
  %38 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %39) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reset_lock, i32 noundef %call5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xemaclite_poll_controller(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #10
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call = tail call i32 @xemaclite_interrupt(i32 noundef %3, ptr noundef %ndev)
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xemaclite_adjust_link(ptr nocapture noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_dev = getelementptr i8, ptr %ndev, i32 2372
  %0 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_dev, align 4
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %duplex, align 4
  %shl = shl i32 %5, 1
  %or = or i32 %shl, %3
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %link, align 8
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %or1 = or i32 %or, %bf.cast
  %last_link = getelementptr i8, ptr %ndev, i32 2384
  %7 = ptrtoint ptr %last_link to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_link, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %or1)
  %cmp.not = icmp eq i32 %8, %or1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %last_link to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or1, ptr %last_link, align 4
  tail call void @phy_print_status(ptr noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xemaclite_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %base_addr1 = getelementptr i8, ptr %dev_id, i32 2320
  %0 = ptrtoint ptr %base_addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 6140
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !147
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %add.ptr5 = getelementptr i8, ptr %1, i32 8188
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !148
  %and8 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev_id, i32 noundef 1522, i32 noundef 2592) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 6
  %4 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_dropped.i, align 8
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %rx_dropped.i, align 8
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %dev2.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.47) #13
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %sub.i = sub i32 0, %10
  %rem.i = and i32 %sub.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool3.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i49.i = getelementptr i8, ptr %9, i32 %rem.i
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i49.i, ptr %data.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %13, i32 %rem.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %add.ptr.i51.i = getelementptr i8, ptr %15, i32 2
  store ptr %add.ptr.i51.i, ptr %data.i, align 4
  %tail.i52.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i52.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i52.i, align 8
  %add.ptr1.i53.i = getelementptr i8, ptr %17, i32 2
  store ptr %add.ptr1.i53.i, ptr %tail.i52.i, align 8
  %18 = ptrtoint ptr %base_addr1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr1, align 4
  %next_rx_buf_to_use.i.i = getelementptr i8, ptr %dev_id, i32 2316
  %20 = ptrtoint ptr %next_rx_buf_to_use.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %next_rx_buf_to_use.i.i, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %19, i32 %21
  %add.ptr1.i55.i = getelementptr i8, ptr %add.ptr.i54.i, i32 6140
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i55.i) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 0
  %rx_ping_pong6.i.i = getelementptr i8, ptr %dev_id, i32 2309
  %23 = ptrtoint ptr %rx_ping_pong6.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rx_ping_pong6.i.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool7.not.i.i = icmp eq i8 %24, 0
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end5.i
  br i1 %tobool7.not.i.i, label %if.then.i.i.if.end24.i.i_crit_edge, label %if.then4.i.i

if.then.i.i.if.end24.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %next_rx_buf_to_use.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %next_rx_buf_to_use.i.i, align 4
  %xor.i.i = xor i32 %26, 2048
  store i32 %xor.i.i, ptr %next_rx_buf_to_use.i.i, align 4
  br label %if.end24.i.i

if.else.i.i:                                      ; preds = %if.end5.i
  br i1 %tobool7.not.i.i, label %if.else.i.i.if.then9.i_crit_edge, label %if.then11.i.i

if.else.i.i.if.then9.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i

if.then11.i.i:                                    ; preds = %if.else.i.i
  %27 = ptrtoint ptr %add.ptr.i54.i to i32
  %xor12.i.i = xor i32 %27, 2048
  %28 = inttoptr i32 %xor12.i.i to ptr
  %add.ptr16.i.i = getelementptr i8, ptr %28, i32 6140
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i.i) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !151
  %and19.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %cmp20.not.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %cmp20.not.not.i.i, label %if.then11.i.i.if.then9.i_crit_edge, label %if.then11.i.i.if.end24.i.i_crit_edge

if.then11.i.i.if.end24.i.i_crit_edge:             ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i.i

if.then11.i.i.if.then9.i_crit_edge:               ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i

if.end24.i.i:                                     ; preds = %if.then11.i.i.if.end24.i.i_crit_edge, %if.then4.i.i, %if.then.i.i.if.end24.i.i_crit_edge
  %addr.0.i.i = phi ptr [ %add.ptr.i54.i, %if.then4.i.i ], [ %add.ptr.i54.i, %if.then.i.i.if.end24.i.i_crit_edge ], [ %28, %if.then11.i.i.if.end24.i.i_crit_edge ]
  %add.ptr27.i.i = getelementptr i8, ptr %addr.0.i.i, i32 4108
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i.i) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  %shr.i.i = lshr i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 98369535, i32 %30)
  %cmp33.i.i = icmp ugt i32 %30, 98369535
  %trunc.i.i = trunc i32 %shr.i.i to i16
  br i1 %cmp33.i.i, label %if.then35.i.i, label %if.end24.i.i.if.end100.i.i_crit_edge

if.end24.i.i.if.end100.i.i_crit_edge:             ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100.i.i

if.then35.i.i:                                    ; preds = %if.end24.i.i
  %31 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc.i.i, label %if.else63.i.i [
    i16 2048, label %if.then39.i.i
    i16 2054, label %if.then35.i.i.if.end100.thread.i.i_crit_edge
  ]

if.then35.i.i.if.end100.thread.i.i_crit_edge:     ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100.thread.i.i

if.then39.i.i:                                    ; preds = %if.then35.i.i
  %add.ptr42.i.i = getelementptr i8, ptr %addr.0.i.i, i32 4112
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42.i.i) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 98304000, i32 %32)
  %cmp51.i.i = icmp ult i32 %32, 98304000
  %shr45.i.i = lshr i32 %32, 16
  %33 = trunc i32 %shr45.i.i to i16
  br i1 %cmp51.i.i, label %if.then39.i.i.if.end100.i.i_crit_edge, label %if.then39.i.i.if.end100.thread.i.i_crit_edge

if.then39.i.i.if.end100.thread.i.i_crit_edge:     ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100.thread.i.i

if.then39.i.i.if.end100.i.i_crit_edge:            ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100.i.i

if.else63.i.i:                                    ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100.thread.i.i

if.end100.thread.i.i:                             ; preds = %if.else63.i.i, %if.then39.i.i.if.end100.thread.i.i_crit_edge, %if.then35.i.i.if.end100.thread.i.i_crit_edge
  %length.0.ph.i.i = phi i16 [ 46, %if.then35.i.i.if.end100.thread.i.i_crit_edge ], [ 1518, %if.else63.i.i ], [ 1518, %if.then39.i.i.if.end100.thread.i.i_crit_edge ]
  %add.ptr1013.i.i = getelementptr i8, ptr %addr.0.i.i, i32 4096
  %conv1024.i.i = zext i16 %length.0.ph.i.i to i32
  br label %for.body.i.preheader.i.i

if.end100.i.i:                                    ; preds = %if.then39.i.i.if.end100.i.i_crit_edge, %if.end24.i.i.if.end100.i.i_crit_edge
  %length.0.in.i.i = phi i16 [ %33, %if.then39.i.i.if.end100.i.i_crit_edge ], [ %trunc.i.i, %if.end24.i.i.if.end100.i.i_crit_edge ]
  %length.0.i.i = add i16 %length.0.in.i.i, 18
  %add.ptr101.i.i = getelementptr i8, ptr %addr.0.i.i, i32 4096
  %conv102.i.i = zext i16 %length.0.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %length.0.i.i)
  %cmp28.i.i.i = icmp ugt i16 %length.0.i.i, 3
  br i1 %cmp28.i.i.i, label %if.end100.i.i.for.body.i.preheader.i.i_crit_edge, label %if.end100.i.i.for.end.i.i.i_crit_edge

if.end100.i.i.for.end.i.i.i_crit_edge:            ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i.i

if.end100.i.i.for.body.i.preheader.i.i_crit_edge: ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader.i.i

for.body.i.preheader.i.i:                         ; preds = %if.end100.i.i.for.body.i.preheader.i.i_crit_edge, %if.end100.thread.i.i
  %conv1029.i.i = phi i32 [ %conv1024.i.i, %if.end100.thread.i.i ], [ %conv102.i.i, %if.end100.i.i.for.body.i.preheader.i.i_crit_edge ]
  %add.ptr1018.i.i = phi ptr [ %add.ptr1013.i.i, %if.end100.thread.i.i ], [ %add.ptr101.i.i, %if.end100.i.i.for.body.i.preheader.i.i_crit_edge ]
  %length.07.i.i = phi i16 [ %length.0.ph.i.i, %if.end100.thread.i.i ], [ %length.0.i.i, %if.end100.i.i.for.body.i.preheader.i.i_crit_edge ]
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.preheader.i.i
  %from_u32_ptr.031.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %add.ptr1018.i.i, %for.body.i.preheader.i.i ]
  %to_u16_ptr.030.i.i.i = phi ptr [ %incdec.ptr4.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %add.ptr.i51.i, %for.body.i.preheader.i.i ]
  %length.addr.029.i.i.i = phi i32 [ %sub.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %conv1029.i.i, %for.body.i.preheader.i.i ]
  %incdec.ptr.i.i.i = getelementptr i32, ptr %from_u32_ptr.031.i.i.i, i32 1
  %34 = ptrtoint ptr %from_u32_ptr.031.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %from_u32_ptr.031.i.i.i, align 4
  %align_buffer.sroa.0.0.extract.shift.i.i.i = lshr i32 %35, 16
  %align_buffer.sroa.7.0.extract.trunc.i.i.i = trunc i32 %35 to i16
  %36 = trunc i32 %align_buffer.sroa.0.0.extract.shift.i.i.i to i16
  %incdec.ptr2.i.i.i = getelementptr i16, ptr %to_u16_ptr.030.i.i.i, i32 1
  %37 = ptrtoint ptr %to_u16_ptr.030.i.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %to_u16_ptr.030.i.i.i, align 2
  %incdec.ptr4.i.i.i = getelementptr i16, ptr %to_u16_ptr.030.i.i.i, i32 2
  %38 = ptrtoint ptr %incdec.ptr2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %align_buffer.sroa.7.0.extract.trunc.i.i.i, ptr %incdec.ptr2.i.i.i, align 2
  %sub.i.i.i = add i32 %length.addr.029.i.i.i, -4
  %cmp.i.i.i = icmp ugt i32 %sub.i.i.i, 3
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.for.end.i.i.i_crit_edge

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i.for.end.i.i.i_crit_edge, %if.end100.i.i.for.end.i.i.i_crit_edge
  %length.06.i.i = phi i16 [ %length.0.i.i, %if.end100.i.i.for.end.i.i.i_crit_edge ], [ %length.07.i.i, %for.body.i.i.i.for.end.i.i.i_crit_edge ]
  %length.addr.0.lcssa.i.i.i = phi i32 [ %conv102.i.i, %if.end100.i.i.for.end.i.i.i_crit_edge ], [ %sub.i.i.i, %for.body.i.i.i.for.end.i.i.i_crit_edge ]
  %to_u16_ptr.0.lcssa.i.i.i = phi ptr [ %add.ptr.i51.i, %if.end100.i.i.for.end.i.i.i_crit_edge ], [ %incdec.ptr4.i.i.i, %for.body.i.i.i.for.end.i.i.i_crit_edge ]
  %from_u32_ptr.0.lcssa.i.i.i = phi ptr [ %add.ptr101.i.i, %if.end100.i.i.for.end.i.i.i_crit_edge ], [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.addr.0.lcssa.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %length.addr.0.lcssa.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.end.i.i.i.xemaclite_recv_data.exit.i_crit_edge, label %if.then.i.i.i

for.end.i.i.i.xemaclite_recv_data.exit.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xemaclite_recv_data.exit.i

if.then.i.i.i:                                    ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %from_u32_ptr.0.lcssa.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %from_u32_ptr.0.lcssa.i.i.i, align 4
  %sum.shift.i.i.i = lshr i32 %40, 24
  %align_buffer.sroa.0.sroa.0.0.extract.trunc24.i.i.i = trunc i32 %sum.shift.i.i.i to i8
  %41 = ptrtoint ptr %to_u16_ptr.0.lcssa.i.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %align_buffer.sroa.0.sroa.0.0.extract.trunc24.i.i.i, ptr %to_u16_ptr.0.lcssa.i.i.i, align 1
  br label %xemaclite_recv_data.exit.i

xemaclite_recv_data.exit.i:                       ; preds = %if.then.i.i.i, %for.end.i.i.i.xemaclite_recv_data.exit.i_crit_edge
  %add.ptr104.i.i = getelementptr i8, ptr %addr.0.i.i, i32 6140
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104.i.i) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !154
  %and107.i.i = and i32 %42, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !155
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104.i.i, i32 %and107.i.i) #10, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %length.06.i.i)
  %tobool8.not.i = icmp eq i16 %length.06.i.i, 0
  br i1 %tobool8.not.i, label %xemaclite_recv_data.exit.i.if.then9.i_crit_edge, label %if.end12.i

xemaclite_recv_data.exit.i.if.then9.i_crit_edge:  ; preds = %xemaclite_recv_data.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i

if.then9.i:                                       ; preds = %xemaclite_recv_data.exit.i.if.then9.i_crit_edge, %if.then11.i.i.if.then9.i_crit_edge, %if.else.i.i.if.then9.i_crit_edge
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 4
  %43 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_errors.i, align 8
  %inc11.i = add i32 %44, 1
  store i32 %inc11.i, ptr %rx_errors.i, align 8
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %call.i.i, i32 noundef 1) #10
  br label %if.end

if.end12.i:                                       ; preds = %xemaclite_recv_data.exit.i
  %conv.i = zext i16 %length.06.i.i to i32
  %call13.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv.i) #10
  %call14.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i, ptr noundef %dev_id) #10
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %45 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %call14.i, ptr %protocol.i, align 8
  %stats15.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36
  %46 = ptrtoint ptr %stats15.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %stats15.i, align 8
  %inc16.i = add i32 %47, 1
  store i32 %inc16.i, ptr %stats15.i, align 8
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 2
  %48 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_bytes.i, align 8
  %add18.i = add i32 %49, %conv.i
  store i32 %add18.i, ptr %rx_bytes.i, align 8
  %call19.i = tail call zeroext i1 @skb_defer_rx_timestamp(ptr noundef nonnull %call.i.i) #10
  br i1 %call19.i, label %if.end12.i.if.end_crit_edge, label %if.then20.i

if.end12.i.if.end_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then20.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then20.i, %if.end12.i.if.end_crit_edge, %if.then9.i, %if.then.i, %lor.lhs.false.if.end_crit_edge
  %add.ptr11 = getelementptr i8, ptr %1, i32 2044
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  %51 = and i32 %50, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %51)
  %.not = icmp eq i32 %51, -2147483648
  br i1 %.not, label %if.then17, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %and18 = and i32 %50, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %and18) #10, !srcloc !117
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end.if.end20_crit_edge
  %add.ptr23 = getelementptr i8, ptr %1, i32 4092
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !158
  %53 = and i32 %52, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %53)
  %.not65 = icmp eq i32 %53, -2147483648
  br i1 %.not65, label %if.then31, label %if.end38

if.then31:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %and32 = and i32 %52, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !159
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %and32) #10, !srcloc !117
  br label %if.then42

if.end38:                                         ; preds = %if.end20
  br i1 %.not, label %if.end38.if.then42_crit_edge, label %if.end38.if.end43_crit_edge

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.end38.if.then42_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

if.then42:                                        ; preds = %if.end38.if.then42_crit_edge, %if.then31
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  %54 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_packets.i, align 4
  %inc.i60 = add i32 %55, 1
  store i32 %inc.i60, ptr %tx_packets.i, align 4
  %deferred_skb.i = getelementptr i8, ptr %dev_id, i32 2368
  %56 = ptrtoint ptr %deferred_skb.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %deferred_skb.i, align 4
  %tobool.not.i61 = icmp eq ptr %57, null
  br i1 %tobool.not.i61, label %if.then42.if.end43_crit_edge, label %if.end.i64

if.then42.if.end43_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.end.i64:                                       ; preds = %if.then42
  %data.i63 = getelementptr inbounds %struct.sk_buff, ptr %57, i32 0, i32 19
  %58 = ptrtoint ptr %data.i63 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i63, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %57, i32 0, i32 6
  %60 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len.i, align 4
  %call3.i = tail call fastcc i32 @xemaclite_send_data(ptr noundef %add.ptr.i, ptr noundef %59, i32 noundef %61) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i64.if.end43_crit_edge

if.end.i64.if.end43_crit_edge:                    ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.end6.i:                                        ; preds = %if.end.i64
  %62 = ptrtoint ptr %deferred_skb.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %deferred_skb.i, align 4
  %len8.i = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %len8.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len8.i, align 4
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 3
  %66 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %67, %65
  store i32 %add.i, ptr %tx_bytes.i, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %63, i32 noundef 0) #10
  %68 = ptrtoint ptr %deferred_skb.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %deferred_skb.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %69 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %_tx.i.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %70, i32 0, i32 12
  %72 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %trans_start.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %71)
  %cmp.not.i.i.i = icmp eq i32 %73, %71
  br i1 %cmp.not.i.i.i, label %if.end6.i.netif_trans_update.exit.i_crit_edge, label %do.body5.i.i.i

if.end6.i.netif_trans_update.exit.i_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_trans_update.exit.i

do.body5.i.i.i:                                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 %71, ptr %trans_start.i.i.i, align 16
  br label %netif_trans_update.exit.i

netif_trans_update.exit.i:                        ; preds = %do.body5.i.i.i, %if.end6.i.netif_trans_update.exit.i_crit_edge
  %75 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %76) #10
  br label %if.end43

if.end43:                                         ; preds = %netif_trans_update.exit.i, %if.end.i64.if.end43_crit_edge, %if.then42.if.end43_crit_edge, %if.end38.if.end43_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_defer_rx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xemaclite_send_data(ptr nocapture noundef %drvdata, ptr nocapture noundef readonly %data, i32 noundef %byte_count) unnamed_addr #2 align 64 {
entry:
  %align_buffer.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_local, ptr %drvdata, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 4
  %next_tx_buf_to_use = getelementptr inbounds %struct.net_local, ptr %drvdata, i32 0, i32 3
  %2 = ptrtoint ptr %next_tx_buf_to_use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_tx_buf_to_use, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %4 = tail call i32 @llvm.umin.i32(i32 %byte_count, i32 1514)
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 2044
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %and = and i32 %5, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2 = icmp eq i32 %and, 0
  %tx_ping_pong = getelementptr inbounds %struct.net_local, ptr %drvdata, i32 0, i32 1
  %6 = ptrtoint ptr %tx_ping_pong to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_ping_pong, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %entry
  br i1 %tobool.not, label %if.then3.if.end27_crit_edge, label %if.then6

if.then3.if.end27_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %next_tx_buf_to_use to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %next_tx_buf_to_use, align 4
  %xor = xor i32 %9, 2048
  store i32 %xor, ptr %next_tx_buf_to_use, align 4
  br label %if.end27

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.then14

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %if.else
  %10 = ptrtoint ptr %add.ptr to i32
  %xor15 = xor i32 %10, 2048
  %11 = inttoptr i32 %xor15 to ptr
  %add.ptr17 = getelementptr i8, ptr %11, i32 2044
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  %and20 = and i32 %12, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %cmp21.not = icmp eq i32 %and20, 0
  br i1 %cmp21.not, label %if.then14.if.end27_crit_edge, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14.if.end27_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end27:                                         ; preds = %if.then14.if.end27_crit_edge, %if.then6, %if.then3.if.end27_crit_edge
  %addr.0 = phi ptr [ %add.ptr, %if.then6 ], [ %add.ptr, %if.then3.if.end27_crit_edge ], [ %11, %if.then14.if.end27_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %align_buffer.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp23.i = icmp ugt i32 %4, 3
  br i1 %cmp23.i, label %for.body.lr.ph.i, label %if.end27.for.end.i_crit_edge

if.end27.for.end.i_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end27
  %incdec.ptr1.i = getelementptr inbounds i16, ptr %align_buffer.i, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %to_u32_ptr.026.i = phi ptr [ %addr.0, %for.body.lr.ph.i ], [ %incdec.ptr4.i, %for.body.i.for.body.i_crit_edge ]
  %from_u16_ptr.025.i = phi ptr [ %data, %for.body.lr.ph.i ], [ %incdec.ptr2.i, %for.body.i.for.body.i_crit_edge ]
  %length.addr.024.i = phi i32 [ %4, %for.body.lr.ph.i ], [ %sub.i, %for.body.i.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i16, ptr %from_u16_ptr.025.i, i32 1
  %13 = ptrtoint ptr %from_u16_ptr.025.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %from_u16_ptr.025.i, align 2
  %15 = ptrtoint ptr %align_buffer.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %align_buffer.i, align 4
  %incdec.ptr2.i = getelementptr i16, ptr %from_u16_ptr.025.i, i32 2
  %16 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %incdec.ptr.i, align 2
  %18 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %incdec.ptr1.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !120
  tail call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %align_buffer.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %align_buffer.i, align 4
  %incdec.ptr4.i = getelementptr i32, ptr %to_u32_ptr.026.i, i32 1
  %21 = ptrtoint ptr %to_u32_ptr.026.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %to_u32_ptr.026.i, align 4
  %sub.i = add i32 %length.addr.024.i, -4
  %cmp.i = icmp ugt i32 %sub.i, 3
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end27.for.end.i_crit_edge
  %length.addr.0.lcssa.i = phi i32 [ %4, %if.end27.for.end.i_crit_edge ], [ %sub.i, %for.body.i.for.end.i_crit_edge ]
  %from_u16_ptr.0.lcssa.i = phi ptr [ %data, %if.end27.for.end.i_crit_edge ], [ %incdec.ptr2.i, %for.body.i.for.end.i_crit_edge ]
  %to_u32_ptr.0.lcssa.i = phi ptr [ %addr.0, %if.end27.for.end.i_crit_edge ], [ %incdec.ptr4.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.addr.0.lcssa.i)
  %tobool.not.i = icmp eq i32 %length.addr.0.lcssa.i, 0
  br i1 %tobool.not.i, label %for.end.i.xemaclite_aligned_write.exit_crit_edge, label %if.then.i

for.end.i.xemaclite_aligned_write.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xemaclite_aligned_write.exit

if.then.i:                                        ; preds = %for.end.i
  %22 = ptrtoint ptr %align_buffer.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %align_buffer.i, align 4
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %if.then.i
  %to_u8_ptr.032.i = phi ptr [ %align_buffer.i, %if.then.i ], [ %incdec.ptr9.i, %for.body7.i.for.body7.i_crit_edge ]
  %from_u8_ptr.031.i = phi ptr [ %from_u16_ptr.0.lcssa.i, %if.then.i ], [ %incdec.ptr8.i, %for.body7.i.for.body7.i_crit_edge ]
  %length.addr.130.i = phi i32 [ %length.addr.0.lcssa.i, %if.then.i ], [ %dec.i, %for.body7.i.for.body7.i_crit_edge ]
  %incdec.ptr8.i = getelementptr i8, ptr %from_u8_ptr.031.i, i32 1
  %23 = ptrtoint ptr %from_u8_ptr.031.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %from_u8_ptr.031.i, align 1
  %incdec.ptr9.i = getelementptr i8, ptr %to_u8_ptr.032.i, i32 1
  %25 = ptrtoint ptr %to_u8_ptr.032.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %to_u8_ptr.032.i, align 1
  %dec.i = add i32 %length.addr.130.i, -1
  %cmp6.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp6.not.i, label %do.body12.i, label %for.body7.i.for.body7.i_crit_edge

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i

do.body12.i:                                      ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %align_buffer.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %align_buffer.i, align 4
  %28 = ptrtoint ptr %to_u32_ptr.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %to_u32_ptr.0.lcssa.i, align 4
  br label %xemaclite_aligned_write.exit

xemaclite_aligned_write.exit:                     ; preds = %do.body12.i, %for.end.i.xemaclite_aligned_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %align_buffer.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !162
  tail call void @arm_heavy_mb() #10
  %add.ptr29 = getelementptr i8, ptr %addr.0, i32 2036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %4) #10, !srcloc !117
  %add.ptr31 = getelementptr i8, ptr %addr.0, i32 2044
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !163
  %or = or i32 %29, -2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %or) #10, !srcloc !117
  br label %cleanup

cleanup:                                          ; preds = %xemaclite_aligned_write.exit, %if.then14.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %xemaclite_aligned_write.exit ], [ -1, %if.then14.cleanup_crit_edge ], [ -1, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xemaclite_ethtools_get_drvinfo(ptr nocapture noundef readnone %ndev, ptr noundef %ed) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %ed, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !31, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !73, !74, !76, !77, !78, !80, !81, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__initcall__kmod_xilinx_emaclite__353_1293_xemaclite_of_driver_init6, !1, !"__initcall__kmod_xilinx_emaclite__353_1293_xemaclite_of_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 1293, i32 1}
!2 = !{ptr @__exitcall_xemaclite_of_driver_exit, !1, !"__exitcall_xemaclite_of_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author354, !4, !"__UNIQUE_ID_author354", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 1295, i32 1}
!5 = !{ptr @__UNIQUE_ID_description355, !6, !"__UNIQUE_ID_description355", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 1296, i32 1}
!7 = !{ptr @__UNIQUE_ID_file356, !8, !"__UNIQUE_ID_file356", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 1297, i32 1}
!9 = !{ptr @__UNIQUE_ID_license357, !8, !"__UNIQUE_ID_license357", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 1286, i32 11}
!12 = !{ptr @xemaclite_of_driver, !13, !"xemaclite_of_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 1284, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 1122, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @xemaclite_of_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @xemaclite_of_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @xemaclite_of_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 1152, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 1155, i32 37}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 1156, i32 37}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 1160, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @xemaclite_of_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @xemaclite_of_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 1171, i32 54}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 1174, i32 2}
!38 = !{ptr @xemaclite_of_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @xemaclite_of_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 1184, i32 3}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @xemaclite_of_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @xemaclite_of_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 1189, i32 2}
!47 = !{ptr @xemaclite_of_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @xemaclite_of_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 1070, i32 3}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @get_bool._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @get_bool._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 835, i32 3}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @xemaclite_mdio_setup._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @xemaclite_mdio_setup._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 845, i32 4}
!61 = !{ptr @xemaclite_mdio_setup._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @xemaclite_mdio_setup._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 860, i32 3}
!65 = !{ptr @xemaclite_mdio_setup._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @xemaclite_mdio_setup._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 864, i32 37}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 867, i32 14}
!71 = !{ptr @xemaclite_mdio_setup._entry.36, !72, !"_entry", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 874, i32 3}
!73 = !{ptr @xemaclite_mdio_setup._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 765, i32 2}
!76 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @xemaclite_mdio_read.__UNIQUE_ID_ddebug351, !75, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 790, i32 2}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @xemaclite_mdio_write.__UNIQUE_ID_ddebug352, !79, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!82 = !{ptr @xemaclite_netdev_ops, !83, !"xemaclite_netdev_ops", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 1260, i32 36}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 935, i32 4}
!86 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @xemaclite_open._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @xemaclite_open._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 963, i32 3}
!91 = !{ptr @xemaclite_open._entry.44, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @xemaclite_open._entry_ptr.46, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 610, i32 3}
!95 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @xemaclite_rx_handler._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @xemaclite_rx_handler._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 532, i32 2}
!100 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @xemaclite_tx_timeout._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @xemaclite_tx_timeout._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @xemaclite_ethtool_ops, !104, !"xemaclite_ethtool_ops", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 1091, i32 33}
!105 = !{ptr @xemaclite_of_match, !106, !"xemaclite_of_match", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/xilinx/xilinx_emaclite.c", i32 1273, i32 34}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{i64 2156657884}
!117 = !{i64 6744997}
!118 = !{i64 2156658221}
!119 = !{i64 2156644807}
!120 = !{i64 2156616701}
!121 = !{i64 2156616849}
!122 = !{i64 2156624273}
!123 = !{i64 6745415}
!124 = !{i64 2156624641}
!125 = !{i64 2156625002}
!126 = !{i64 2156625407}
!127 = !{i64 2156633638}
!128 = !{i64 2156633952}
!129 = !{i64 2156634342}
!130 = !{i64 2156634752}
!131 = !{i64 2148989198, i64 2148989203, i64 2148989216, i64 2148989260, i64 2148989294, i64 2148989315}
!132 = !{i64 2156640020}
!133 = !{i64 2156640336}
!134 = !{i64 2156640699}
!135 = !{i64 2156641053}
!136 = !{i64 2156632992}
!137 = !{i64 2156633302}
!138 = !{i64 2156615036}
!139 = !{i64 2156615441}
!140 = !{i64 2156615745}
!141 = !{i64 2156616166}
!142 = !{i64 2156616470}
!143 = !{i64 2156613661}
!144 = !{i64 2156613960}
!145 = !{i64 2156614326}
!146 = !{i64 2156614681}
!147 = !{i64 2156629832}
!148 = !{i64 2156630188}
!149 = !{i64 2156618878}
!150 = !{i8 0, i8 2}
!151 = !{i64 2156619224}
!152 = !{i64 2156620196}
!153 = !{i64 2156621182}
!154 = !{i64 2156623678}
!155 = !{i64 2156623950}
!156 = !{i64 2156630519}
!157 = !{i64 2156630819}
!158 = !{i64 2156631230}
!159 = !{i64 2156631546}
!160 = !{i64 2156617169}
!161 = !{i64 2156617515}
!162 = !{i64 2156617827}
!163 = !{i64 2156618220}
!164 = !{i64 2156618503}
