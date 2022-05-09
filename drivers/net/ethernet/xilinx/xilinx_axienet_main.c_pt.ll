; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/xilinx/xilinx_axienet_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/xilinx/xilinx_axienet_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phylink_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.axienet_option = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.axienet_local = type { ptr, ptr, ptr, ptr, %struct.phylink_config, ptr, i8, ptr, [3 x %struct.clk_bulk_data], ptr, i8, i32, ptr, ptr, %struct.work_struct, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.axidma_bd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [8 x i8] }
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
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.anon.53 = type { i16, i16 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }

@__initcall__kmod_xilinx_emac__353_2185_axienet_driver_init6 = internal global ptr @axienet_driver_init, section ".initcall6.init", align 4
@axienet_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @axienet_probe, ptr @axienet_remove, ptr @axienet_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @axienet_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_axienet_driver_exit = internal global ptr @axienet_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description354 = internal constant [51 x i8] c"xilinx_emac.description=Xilinx Axi Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author355 = internal constant [26 x i8] c"xilinx_emac.author=Xilinx\00", section ".modinfo", align 1
@__UNIQUE_ID_file356 = internal constant [57 x i8] c"xilinx_emac.file=drivers/net/ethernet/xilinx/xilinx_emac\00", section ".modinfo", align 1
@__UNIQUE_ID_license357 = internal constant [24 x i8] c"xilinx_emac.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xilinx_axienet\00", [17 x i8] zeroinitializer }, align 32
@axienet_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,axi-ethernet-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,axi-ethernet-1.01.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,axi-ethernet-2.01.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@axienet_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @axienet_open, ptr @axienet_stop, ptr @axienet_start_xmit, ptr null, ptr null, ptr null, ptr @axienet_set_multicast_list, ptr @netdev_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @axienet_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @axienet_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @axienet_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@axienet_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 34, i32 0, ptr @axienet_ethtools_get_drvinfo, ptr @axienet_ethtools_get_regs_len, ptr @axienet_ethtools_get_regs, ptr null, ptr null, ptr null, ptr null, ptr @axienet_ethtools_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @axienet_ethtools_get_coalesce, ptr @axienet_ethtools_set_coalesce, ptr @axienet_ethtools_get_ringparam, ptr @axienet_ethtools_set_ringparam, ptr null, ptr @axienet_ethtools_get_pauseparam, ptr @axienet_ethtools_set_pauseparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @axienet_ethtools_get_link_ksettings, ptr @axienet_ethtools_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s_axi_lite_clk\00", [17 x i8] zeroinitializer }, align 32
@axienet_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1863, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to enable AXI clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"axienet_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/xilinx/xilinx_axienet_main.c\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@axienet_probe._entry_ptr = internal global ptr @axienet_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"axis_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mgt_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xlnx,txcsum\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xlnx,rxcsum\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xlnx,rxmem\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xlnx,switch-x-sgmii\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xlnx,phy-type\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Please upgrade your device tree binary blob to use phy-mode\00", [36 x i8] zeroinitializer }, align 32
@axienet_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1970, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"xlnx,switch-x-sgmii only supported with SGMII or 1000BaseX\0A\00", [36 x i8] zeroinitializer }, align 32
@axienet_probe._entry_ptr.18 = internal global ptr @axienet_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"axistream-connected\00", [44 x i8] zeroinitializer }, align 32
@axienet_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 1983, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to get DMA resource\0A\00", [36 x i8] zeroinitializer }, align 32
@axienet_probe._entry_ptr.22 = internal global ptr @axienet_probe._entry.20, section ".printk_index", align 4
@axienet_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 2001, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not map DMA regs\0A\00", [40 x i8] zeroinitializer }, align 32
@axienet_probe._entry_ptr.25 = internal global ptr @axienet_probe._entry.23, section ".printk_index", align 4
@axienet_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 2006, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not determine irqs\0A\00", [38 x i8] zeroinitializer }, align 32
@axienet_probe._entry_ptr.28 = internal global ptr @axienet_probe._entry.26, section ".printk_index", align 4
@axienet_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 2029, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"autodetected 64-bit DMA range\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@axienet_probe._entry_ptr.32 = internal global ptr @axienet_probe._entry.29, section ".printk_index", align 4
@axienet_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.3, ptr @.str.4, i32 2037, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No suitable DMA available\0A\00", [37 x i8] zeroinitializer }, align 32
@axienet_probe._entry_ptr.35 = internal global ptr @axienet_probe._entry.33, section ".printk_index", align 4
@axienet_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.3, ptr @.str.4, i32 2043, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Ethernet core IRQ not defined\0A\00", [33 x i8] zeroinitializer }, align 32
@axienet_probe._entry_ptr.38 = internal global ptr @axienet_probe._entry.36, section ".printk_index", align 4
@axienet_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.3, ptr @.str.4, i32 2051, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"could not find MAC address property: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@axienet_probe._entry_ptr.42 = internal global ptr @axienet_probe._entry.39, section ".printk_index", align 4
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@axienet_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.3, ptr @.str.4, i32 2068, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error registering MDIO bus: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@axienet_probe._entry_ptr.46 = internal global ptr @axienet_probe._entry.44, section ".printk_index", align 4
@axienet_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.3, ptr @.str.4, i32 2073, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"phy-handle required for 1000BaseX/SGMII\0A\00", [55 x i8] zeroinitializer }, align 32
@axienet_probe._entry_ptr.49 = internal global ptr @axienet_probe._entry.47, section ".printk_index", align 4
@axienet_phylink_ops = internal constant { %struct.phylink_mac_ops, [60 x i8] } { %struct.phylink_mac_ops { ptr @phylink_generic_validate, ptr null, ptr @axienet_mac_pcs_get_state, ptr @axienet_mac_prepare, ptr @axienet_mac_config, ptr null, ptr @axienet_mac_an_restart, ptr @axienet_mac_link_down, ptr @axienet_mac_link_up }, [60 x i8] zeroinitializer }, align 32
@axienet_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.3, ptr @.str.4, i32 2104, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"phylink_create error (%i)\0A\00", [37 x i8] zeroinitializer }, align 32
@axienet_probe._entry_ptr.52 = internal global ptr @axienet_probe._entry.50, section ".printk_index", align 4
@axienet_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.3, ptr @.str.4, i32 2110, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"register_netdev() error (%i)\0A\00", [34 x i8] zeroinitializer }, align 32
@axienet_probe._entry_ptr.55 = internal global ptr @axienet_probe._entry.53, section ".printk_index", align 4
@axienet_open.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.56, ptr @.str.57, ptr @.str.4, ptr @.str.58, i8 1, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xilinx_emac\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"axienet_open\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"axienet_open()\0A\00", [16 x i8] zeroinitializer }, align 32
@axienet_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.4, i32 1089, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"phylink_of_phy_connect() failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@axienet_open._entry_ptr = internal global ptr @axienet_open._entry, section ".printk_index", align 4
@axienet_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&lp->dma_err_task)\00", [59 x i8] zeroinitializer }, align 32
@axienet_open._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.4, i32 1126, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request_irq() failed\0A\00", [42 x i8] zeroinitializer }, align 32
@axienet_open._entry_ptr.63 = internal global ptr @axienet_open._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: descriptor allocation failed\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.axienet_device_reset = private unnamed_addr constant [21 x i8] c"axienet_device_reset\00", align 1
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA mapping error\0A\00", [45 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@axienet_options = internal constant { [13 x %struct.axienet_option], [36 x i8] } { [13 x %struct.axienet_option] [%struct.axienet_option { i32 2, i32 1032, i32 1073741824 }, %struct.axienet_option { i32 2, i32 1028, i32 1073741824 }, %struct.axienet_option { i32 4, i32 1032, i32 134217728 }, %struct.axienet_option { i32 4, i32 1028, i32 134217728 }, %struct.axienet_option { i32 32, i32 1028, i32 536870912 }, %struct.axienet_option { i32 64, i32 1032, i32 536870912 }, %struct.axienet_option { i32 128, i32 1028, i32 33554432 }, %struct.axienet_option { i32 16, i32 1036, i32 536870912 }, %struct.axienet_option { i32 16, i32 1036, i32 1073741824 }, %struct.axienet_option { i32 1, i32 1800, i32 -2147483648 }, %struct.axienet_option { i32 2048, i32 1032, i32 268435456 }, %struct.axienet_option { i32 4096, i32 1028, i32 268435456 }, %struct.axienet_option zeroinitializer], [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@axienet_tx_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 954, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA Tx error 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"axienet_tx_irq\00", [17 x i8] zeroinitializer }, align 32
@axienet_tx_irq._entry_ptr = internal global ptr @axienet_tx_irq._entry, section ".printk_index", align 4
@axienet_tx_irq._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.4, i32 957, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Current BD is at: 0x%x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@axienet_tx_irq._entry_ptr.72 = internal global ptr @axienet_tx_irq._entry.70, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@axienet_rx_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.4, i32 1004, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA Rx error 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"axienet_rx_irq\00", [17 x i8] zeroinitializer }, align 32
@axienet_rx_irq._entry_ptr = internal global ptr @axienet_rx_irq._entry, section ".printk_index", align 4
@axienet_rx_irq._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.74, ptr @.str.4, i32 1007, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@axienet_rx_irq._entry_ptr.76 = internal global ptr @axienet_rx_irq._entry.75, section ".printk_index", align 4
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RX DMA mapping error\0A\00", [42 x i8] zeroinitializer }, align 32
@axienet_stop.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.56, ptr @.str.78, ptr @.str.4, ptr @.str.79, i8 1, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"axienet_stop\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"axienet_close()\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TX ring unexpectedly full\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TX DMA mapping error\0A\00", [42 x i8] zeroinitializer }, align 32
@axienet_set_multicast_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.4, i32 426, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Promiscuous mode enabled.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"axienet_set_multicast_list\00", [37 x i8] zeroinitializer }, align 32
@axienet_set_multicast_list._entry_ptr = internal global ptr @axienet_set_multicast_list._entry, section ".printk_index", align 4
@axienet_set_multicast_list._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.4, i32 466, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Promiscuous mode disabled.\0A\00", [36 x i8] zeroinitializer }, align 32
@axienet_set_multicast_list._entry_ptr.86 = internal global ptr @axienet_set_multicast_list._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xaxienet\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.00a\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Please stop netif before applying configuration\0A\00", [47 x i8] zeroinitializer }, align 32
@__axienet_device_reset._entry = internal constant %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.4, i32 516, ptr @.str.5, ptr @.str.6 }, align 1
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: DMA reset timeout!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__axienet_device_reset\00", [41 x i8] zeroinitializer }, align 32
@__axienet_device_reset._entry_ptr = internal global ptr @__axienet_device_reset._entry, section ".printk_index", align 4
@__axienet_device_reset._entry.92 = internal constant %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.4, i32 526, ptr @.str.5, ptr @.str.6 }, align 1
@.str.93 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: timeout waiting for PhyRstCmplt\0A\00", [59 x i8] zeroinitializer }, align 32
@__axienet_device_reset._entry_ptr.94 = internal global ptr @__axienet_device_reset._entry.92, section ".printk_index", align 4
@.str.95 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to switch PHY interface: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to configure PCS: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@axienet_mac_link_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.4, i32 1646, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Speed other than 10, 100 or 1Gbps is not supported\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"axienet_mac_link_up\00", [44 x i8] zeroinitializer }, align 32
@axienet_mac_link_up._entry_ptr = internal global ptr @axienet_mac_link_up._entry, section ".printk_index", align 4
@switch.table.axienet_probe = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 2, i32 3, i32 2, i32 10, i32 4, i32 21], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 21]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 21]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 21]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 21]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 21]
@__sancov_gen_cov_switch_values.106 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@___asan_gen_.107 = private unnamed_addr constant [15 x i8] c"axienet_driver\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2175, i32 31 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2180, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"axienet_of_match\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 58, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant [19 x i8] c"axienet_netdev_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1250, i32 36 }
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c"axienet_ethtool_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1523, i32 33 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1850, i32 50 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1863, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1867, i32 24 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1868, i32 24 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1869, i32 24 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1890, i32 48 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1911, i32 48 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1934, i32 42 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1937, i32 10 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1940, i32 48 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1942, i32 21 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1970, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1976, i32 43 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1982, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2001, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2006, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2028, i32 5 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2037, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2043, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2050, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2063, i32 53 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2067, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2073, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant [20 x i8] c"axienet_phylink_ops\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1664, i32 37 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2104, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2110, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1077, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1089, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1096, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1126, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 570, i32 20 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 291, i32 21 }
@___asan_gen_.294 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 326, i32 6 }
@___asan_gen_.296 = private unnamed_addr constant [16 x i8] c"axienet_options\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 68, i32 30 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 954, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 955, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1004, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1005, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 906, i32 22 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1146, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 758, i32 22 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 781, i32 21 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 426, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 466, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1275, i32 22 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1276, i32 23 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1486, i32 7 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 516, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 526, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1583, i32 22 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1605, i32 22 }
@___asan_gen_.380 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.386 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.387 = private constant [53 x i8] c"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1645, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant [27 x i8] c"switch.table.axienet_probe\00", align 1
@llvm.compiler.used = appending global [128 x ptr] [ptr @__UNIQUE_ID_author355, ptr @__UNIQUE_ID_description354, ptr @__UNIQUE_ID_file356, ptr @__UNIQUE_ID_license357, ptr @__axienet_device_reset._entry, ptr @__axienet_device_reset._entry.92, ptr @__axienet_device_reset._entry_ptr, ptr @__axienet_device_reset._entry_ptr.94, ptr @__exitcall_axienet_driver_exit, ptr @__initcall__kmod_xilinx_emac__353_2185_axienet_driver_init6, ptr @axienet_driver_exit, ptr @axienet_mac_link_up._entry, ptr @axienet_mac_link_up._entry_ptr, ptr @axienet_open._entry, ptr @axienet_open._entry.61, ptr @axienet_open._entry_ptr, ptr @axienet_open._entry_ptr.63, ptr @axienet_probe._entry, ptr @axienet_probe._entry.16, ptr @axienet_probe._entry.20, ptr @axienet_probe._entry.23, ptr @axienet_probe._entry.26, ptr @axienet_probe._entry.29, ptr @axienet_probe._entry.33, ptr @axienet_probe._entry.36, ptr @axienet_probe._entry.39, ptr @axienet_probe._entry.44, ptr @axienet_probe._entry.47, ptr @axienet_probe._entry.50, ptr @axienet_probe._entry.53, ptr @axienet_probe._entry_ptr, ptr @axienet_probe._entry_ptr.18, ptr @axienet_probe._entry_ptr.22, ptr @axienet_probe._entry_ptr.25, ptr @axienet_probe._entry_ptr.28, ptr @axienet_probe._entry_ptr.32, ptr @axienet_probe._entry_ptr.35, ptr @axienet_probe._entry_ptr.38, ptr @axienet_probe._entry_ptr.42, ptr @axienet_probe._entry_ptr.46, ptr @axienet_probe._entry_ptr.49, ptr @axienet_probe._entry_ptr.52, ptr @axienet_probe._entry_ptr.55, ptr @axienet_rx_irq._entry, ptr @axienet_rx_irq._entry.75, ptr @axienet_rx_irq._entry_ptr, ptr @axienet_rx_irq._entry_ptr.76, ptr @axienet_set_multicast_list._entry, ptr @axienet_set_multicast_list._entry.84, ptr @axienet_set_multicast_list._entry_ptr, ptr @axienet_set_multicast_list._entry_ptr.86, ptr @axienet_tx_irq._entry, ptr @axienet_tx_irq._entry.70, ptr @axienet_tx_irq._entry_ptr, ptr @axienet_tx_irq._entry_ptr.72, ptr @axienet_driver, ptr @.str, ptr @axienet_of_match, ptr @axienet_netdev_ops, ptr @axienet_ethtool_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @axienet_phylink_ops, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @axienet_open.__key, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @axienet_options, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @switch.table.axienet_probe], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_phylink_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_open._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_options to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_tx_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_tx_irq._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_rx_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_rx_irq._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_set_multicast_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_set_multicast_list._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axienet_mac_link_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.axienet_probe to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @axienet_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @axienet_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @axienet_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @axienet_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axienet_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ethres = alloca ptr, align 4
  %mac_addr = alloca [6 x i8], align 1
  %value = alloca i32, align 4
  %dmares = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ethres) #12
  %0 = ptrtoint ptr %ethres to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ethres, align 4, !annotation !201
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #12
  %1 = call ptr @memset(ptr %mac_addr, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #12
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !201
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 224, i32 noundef 1, i32 noundef 1) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup321_crit_edge, label %if.end

entry.cleanup321_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup321

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %dev1 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %parent, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, -4097
  store i32 %and, ptr %flags, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %7 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1, ptr %features, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @axienet_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %9 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @axienet_ethtool_ops, ptr %ethtool_ops, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 30
  %10 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 64, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %11 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 9000, ptr %max_mtu, align 4
  %add.ptr.i508 = getelementptr i8, ptr %call, i32 2304
  %12 = ptrtoint ptr %add.ptr.i508 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %add.ptr.i508, align 4
  %dev5 = getelementptr i8, ptr %call, i32 2308
  %13 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %dev5, align 4
  %options = getelementptr i8, ptr %call, i32 2460
  %14 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6160, ptr %options, align 4
  %rx_bd_num = getelementptr i8, ptr %call, i32 2488
  %15 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1024, ptr %rx_bd_num, align 4
  %tx_bd_num = getelementptr i8, ptr %call, i32 2476
  %16 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 128, ptr %tx_bd_num, align 4
  %call7 = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  %axi_clk = getelementptr i8, ptr %call, i32 2352
  %17 = ptrtoint ptr %axi_clk to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7, ptr %axi_clk, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.then10, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef null) #12
  %18 = ptrtoint ptr %axi_clk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call12, ptr %axi_clk, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end.if.end14_crit_edge
  %19 = phi ptr [ %call12, %if.then10 ], [ %call7, %if.end.if.end14_crit_edge ]
  %cmp.i = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %19 to i32
  br label %free_netdev

if.end20:                                         ; preds = %if.end14
  %call.i = tail call i32 @clk_prepare(ptr noundef %19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.do.end_crit_edge

if.end20.do.end_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.i:                                         ; preds = %if.end20
  %call1.i = tail call i32 @clk_enable(ptr noundef %19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end26, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %19) #12
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end20.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end20.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i.ph) #15
  br label %free_netdev

if.end26:                                         ; preds = %if.end.i
  %misc_clks = getelementptr i8, ptr %call, i32 2356
  %21 = ptrtoint ptr %misc_clks to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.7, ptr %misc_clks, align 4
  %arrayidx28 = getelementptr i8, ptr %call, i32 2364
  %22 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.8, ptr %arrayidx28, align 4
  %arrayidx31 = getelementptr i8, ptr %call, i32 2372
  %23 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.9, ptr %arrayidx31, align 4
  %call35 = tail call i32 @devm_clk_bulk_get_optional(ptr noundef %dev, i32 noundef 3, ptr noundef %misc_clks) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end26.cleanup_clk_crit_edge

if.end26.cleanup_clk_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup_clk

if.end38:                                         ; preds = %if.end26
  %call.i509 = tail call i32 @clk_bulk_prepare(i32 noundef 3, ptr noundef %misc_clks) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i509)
  %tobool.not.i510 = icmp eq i32 %call.i509, 0
  br i1 %tobool.not.i510, label %if.end.i513, label %if.end38.cleanup_clk_crit_edge

if.end38.cleanup_clk_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup_clk

if.end.i513:                                      ; preds = %if.end38
  %call1.i511 = tail call i32 @clk_bulk_enable(i32 noundef 3, ptr noundef %misc_clks) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i511)
  %tobool2.not.i512 = icmp eq i32 %call1.i511, 0
  br i1 %tobool2.not.i512, label %if.end44, label %if.then3.i514

if.then3.i514:                                    ; preds = %if.end.i513
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef %misc_clks) #12
  br label %cleanup_clk

if.end44:                                         ; preds = %if.end.i513
  %call45 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %ethres) #12
  %regs = getelementptr i8, ptr %call, i32 2392
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call45, ptr %regs, align 4
  %cmp.i516 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i516, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %call45 to i32
  br label %cleanup_clk

if.end51:                                         ; preds = %if.end44
  %26 = ptrtoint ptr %ethres to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ethres, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %regs_start = getelementptr i8, ptr %call, i32 2388
  %30 = ptrtoint ptr %regs_start to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %regs_start, align 4
  %features52 = getelementptr i8, ptr %call, i32 2464
  %31 = ptrtoint ptr %features52 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %features52, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %33, ptr noundef nonnull @.str.10, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool55.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool55.not, label %if.then56, label %if.end51.if.end67_crit_edge

if.end51.if.end67_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then56:                                        ; preds = %if.end51
  %34 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %value, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %35, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb60
  ]

sw.bb:                                            ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  %csum_offload_on_tx_path = getelementptr i8, ptr %call, i32 2512
  %37 = ptrtoint ptr %csum_offload_on_tx_path to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %csum_offload_on_tx_path, align 4
  %38 = ptrtoint ptr %features52 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %features52, align 4
  %or = or i32 %39, 2
  store i32 %or, ptr %features52, align 4
  %40 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %features, align 16
  %or59 = or i64 %41, 2
  store i64 %or59, ptr %features, align 16
  br label %if.end67

sw.bb60:                                          ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  %csum_offload_on_tx_path61 = getelementptr i8, ptr %call, i32 2512
  %42 = ptrtoint ptr %csum_offload_on_tx_path61 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8, ptr %csum_offload_on_tx_path61, align 4
  %43 = ptrtoint ptr %features52 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %features52, align 4
  %or63 = or i32 %44, 8
  store i32 %or63, ptr %features52, align 4
  %45 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %features, align 16
  %or65 = or i64 %46, 2
  store i64 %or65, ptr %features, align 16
  br label %if.end67

sw.default:                                       ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  %csum_offload_on_tx_path66 = getelementptr i8, ptr %call, i32 2512
  %47 = ptrtoint ptr %csum_offload_on_tx_path66 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %csum_offload_on_tx_path66, align 4
  br label %if.end67

if.end67:                                         ; preds = %sw.default, %sw.bb60, %sw.bb, %if.end51.if.end67_crit_edge
  %48 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node, align 8
  %call.i.i517 = call i32 @of_property_read_variable_u32_array(ptr noundef %49, ptr noundef nonnull @.str.11, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i517)
  %tobool71.not = icmp sgt i32 %call.i.i517, -1
  br i1 %tobool71.not, label %if.then72, label %if.end67.if.end83_crit_edge

if.end67.if.end83_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then72:                                        ; preds = %if.end67
  %50 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %value, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %51, label %sw.default80 [
    i32 1, label %sw.bb73
    i32 2, label %sw.bb76
  ]

sw.bb73:                                          ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  %csum_offload_on_rx_path = getelementptr i8, ptr %call, i32 2516
  %53 = ptrtoint ptr %csum_offload_on_rx_path to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %csum_offload_on_rx_path, align 4
  %54 = ptrtoint ptr %features52 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %features52, align 4
  %or75 = or i32 %55, 1
  store i32 %or75, ptr %features52, align 4
  br label %if.end83

sw.bb76:                                          ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  %csum_offload_on_rx_path77 = getelementptr i8, ptr %call, i32 2516
  %56 = ptrtoint ptr %csum_offload_on_rx_path77 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 4, ptr %csum_offload_on_rx_path77, align 4
  %57 = ptrtoint ptr %features52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %features52, align 4
  %or79 = or i32 %58, 4
  store i32 %or79, ptr %features52, align 4
  br label %if.end83

sw.default80:                                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  %csum_offload_on_rx_path81 = getelementptr i8, ptr %call, i32 2516
  %59 = ptrtoint ptr %csum_offload_on_rx_path81 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %csum_offload_on_rx_path81, align 4
  br label %if.end83

if.end83:                                         ; preds = %sw.default80, %sw.bb76, %sw.bb73, %if.end67.if.end83_crit_edge
  %60 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %of_node, align 8
  %rxmem = getelementptr i8, ptr %call, i32 2508
  %call.i.i518 = call i32 @of_property_read_variable_u32_array(ptr noundef %61, ptr noundef nonnull @.str.12, ptr noundef %rxmem, i32 noundef 1, i32 noundef 0) #12
  %62 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %of_node, align 8
  %call.i519 = call ptr @of_find_property(ptr noundef %63, ptr noundef nonnull @.str.13, ptr noundef null) #12
  %tobool.i = icmp ne ptr %call.i519, null
  %switch_x_sgmii = getelementptr i8, ptr %call, i32 2348
  %frombool = zext i1 %tobool.i to i8
  %64 = ptrtoint ptr %switch_x_sgmii to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %frombool, ptr %switch_x_sgmii, align 4
  %65 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %of_node, align 8
  %call.i.i520 = call i32 @of_property_read_variable_u32_array(ptr noundef %66, ptr noundef nonnull @.str.14, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i520)
  %tobool93.not = icmp sgt i32 %call.i.i520, -1
  br i1 %tobool93.not, label %if.then94, label %if.else

if.then94:                                        ; preds = %if.end83
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %call, ptr noundef nonnull @.str.15) #15
  %67 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %68)
  %69 = icmp ult i32 %68, 6
  br i1 %69, label %switch.hole_check, label %if.then94.cleanup_clk_crit_edge

if.then94.cleanup_clk_crit_edge:                  ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup_clk

if.else:                                          ; preds = %if.end83
  %70 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %of_node, align 8
  %phy_mode108 = getelementptr i8, ptr %call, i32 2456
  %call109 = call i32 @of_get_phy_mode(ptr noundef %71, ptr noundef %phy_mode108) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.else.if.end113_crit_edge, label %if.else.cleanup_clk_crit_edge

if.else.cleanup_clk_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup_clk

if.else.if.end113_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113

switch.hole_check:                                ; preds = %if.then94
  %switch.maskindex = trunc i32 %68 to i8
  %switch.shifted = lshr i8 59, %switch.maskindex
  %72 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %switch.lobit.not = icmp eq i8 %72, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_clk_crit_edge, label %switch.lookup

switch.hole_check.cleanup_clk_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup_clk

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.axienet_probe, i32 0, i32 %68
  %73 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %73)
  %switch.load = load i32, ptr %switch.gep, align 4
  %phy_mode = getelementptr i8, ptr %call, i32 2456
  %74 = ptrtoint ptr %phy_mode to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %switch.load, ptr %phy_mode, align 4
  br label %if.end113

if.end113:                                        ; preds = %switch.lookup, %if.else.if.end113_crit_edge
  %75 = ptrtoint ptr %switch_x_sgmii to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %switch_x_sgmii, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool115.not = icmp eq i8 %76, 0
  br i1 %tobool115.not, label %if.end113.if.end125_crit_edge, label %land.lhs.true

if.end113.if.end125_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

land.lhs.true:                                    ; preds = %if.end113
  %phy_mode116 = getelementptr i8, ptr %call, i32 2456
  %77 = ptrtoint ptr %phy_mode116 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %phy_mode116, align 4
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %78, label %do.end123 [
    i32 4, label %land.lhs.true.if.end125_crit_edge
    i32 21, label %land.lhs.true.if.end125_crit_edge533
  ]

land.lhs.true.if.end125_crit_edge533:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

land.lhs.true.if.end125_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

do.end123:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #15
  br label %cleanup_clk

if.end125:                                        ; preds = %land.lhs.true.if.end125_crit_edge, %land.lhs.true.if.end125_crit_edge533, %if.end113.if.end125_crit_edge
  %80 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %of_node, align 8
  %call128 = call fastcc ptr @of_parse_phandle(ptr noundef %81, ptr noundef nonnull @.str.19)
  %tobool129.not = icmp eq ptr %call128, null
  br i1 %tobool129.not, label %if.else144, label %if.then130

if.then130:                                       ; preds = %if.end125
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dmares) #12
  %82 = call ptr @memset(ptr %dmares, i32 255, i32 32)
  %call131 = call i32 @of_address_to_resource(ptr noundef nonnull %call128, i32 noundef 0, ptr noundef nonnull %dmares) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  %call140 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %dmares) #12
  %dma_regs = getelementptr i8, ptr %call, i32 2396
  %83 = ptrtoint ptr %dma_regs to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call140, ptr %dma_regs, align 4
  %call141 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %call128, i32 noundef 1) #12
  %rx_irq = getelementptr i8, ptr %call, i32 2448
  %84 = ptrtoint ptr %rx_irq to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call141, ptr %rx_irq, align 4
  %call142 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %call128, i32 noundef 0) #12
  %tx_irq = getelementptr i8, ptr %call, i32 2444
  %85 = ptrtoint ptr %tx_irq to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call142, ptr %tx_irq, align 4
  call void @of_node_put(ptr noundef nonnull %call128) #12
  %call143 = call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #12
  %eth_irq = getelementptr i8, ptr %call, i32 2452
  %86 = ptrtoint ptr %eth_irq to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call143, ptr %eth_irq, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dmares) #12
  br label %if.end153

cleanup:                                          ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #15
  call void @of_node_put(ptr noundef nonnull %call128) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dmares) #12
  br label %cleanup_clk

if.else144:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #14
  %call145 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 1, ptr noundef null) #12
  %dma_regs146 = getelementptr i8, ptr %call, i32 2396
  %87 = ptrtoint ptr %dma_regs146 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call145, ptr %dma_regs146, align 4
  %call147 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #12
  %rx_irq148 = getelementptr i8, ptr %call, i32 2448
  %88 = ptrtoint ptr %rx_irq148 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call147, ptr %rx_irq148, align 4
  %call149 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  %tx_irq150 = getelementptr i8, ptr %call, i32 2444
  %89 = ptrtoint ptr %tx_irq150 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call149, ptr %tx_irq150, align 4
  %call151 = call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 2) #12
  %eth_irq152 = getelementptr i8, ptr %call, i32 2452
  %90 = ptrtoint ptr %eth_irq152 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %call151, ptr %eth_irq152, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.else144, %cleanup.thread
  %dma_regs154 = getelementptr i8, ptr %call, i32 2396
  %91 = ptrtoint ptr %dma_regs154 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dma_regs154, align 4
  %cmp.i521 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i521, label %do.end159, label %if.end163

do.end159:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #15
  %93 = ptrtoint ptr %dma_regs154 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dma_regs154, align 4
  %95 = ptrtoint ptr %94 to i32
  br label %cleanup_clk

if.end163:                                        ; preds = %if.end153
  %rx_irq164 = getelementptr i8, ptr %call, i32 2448
  %96 = ptrtoint ptr %rx_irq164 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rx_irq164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %97)
  %cmp165 = icmp slt i32 %97, 1
  br i1 %cmp165, label %if.end163.do.end171_crit_edge, label %lor.lhs.false

if.end163.do.end171_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end171

lor.lhs.false:                                    ; preds = %if.end163
  %tx_irq166 = getelementptr i8, ptr %call, i32 2444
  %98 = ptrtoint ptr %tx_irq166 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_irq166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp167 = icmp slt i32 %99, 1
  br i1 %cmp167, label %lor.lhs.false.do.end171_crit_edge, label %if.end173

lor.lhs.false.do.end171_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end171

do.end171:                                        ; preds = %lor.lhs.false.do.end171_crit_edge, %if.end163.do.end171_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #15
  br label %cleanup_clk

if.end173:                                        ; preds = %lor.lhs.false
  %100 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs, align 4
  %add.ptr.i522 = getelementptr i8, ptr %101, i32 1272
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i522) #12, !srcloc !203
  %103 = shl i32 %102, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 150994943, i32 %103)
  %cmp175 = icmp ugt i32 %103, 150994943
  br i1 %cmp175, label %if.then176, label %if.end173.cond.false_crit_edge

if.end173.cond.false_crit_edge:                   ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

if.then176:                                       ; preds = %if.end173
  %104 = ptrtoint ptr %dma_regs154 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dma_regs154, align 4
  %add.ptr178 = getelementptr i8, ptr %105, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 0) #12, !srcloc !206
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr178) #12, !srcloc !203
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp180 = icmp eq i32 %106, 0
  br i1 %cmp180, label %if.then181, label %if.then176.cond.false_crit_edge

if.then176.cond.false_crit_edge:                  ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

if.then181:                                       ; preds = %if.then176
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 -1) #12, !srcloc !206
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr178) #12, !srcloc !203
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp183.not = icmp eq i32 %107, 0
  br i1 %cmp183.not, label %if.then181.if.end193_crit_edge, label %if.then184

if.then181.if.end193_crit_edge:                   ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end193

if.then184:                                       ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #14
  %108 = ptrtoint ptr %features52 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %features52, align 4
  %or186 = or i32 %109, 16
  store i32 %or186, ptr %features52, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.30) #15
  br label %if.end193

if.end193:                                        ; preds = %if.then184, %if.then181.if.end193_crit_edge
  %addr_width.0 = phi i32 [ 64, %if.then184 ], [ 32, %if.then181.if.end193_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 0) #12, !srcloc !206
  br i1 %cmp183.not, label %if.end193.cond.false_crit_edge, label %if.end193.cond.end_crit_edge

if.end193.cond.end_crit_edge:                     ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

if.end193.cond.false_crit_edge:                   ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

cond.false:                                       ; preds = %if.end193.cond.false_crit_edge, %if.then176.cond.false_crit_edge, %if.end173.cond.false_crit_edge
  %addr_width.2532 = phi i32 [ %addr_width.0, %if.end193.cond.false_crit_edge ], [ 32, %if.end173.cond.false_crit_edge ], [ 32, %if.then176.cond.false_crit_edge ]
  %sh_prom = zext i32 %addr_width.2532 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end193.cond.end_crit_edge
  %cond = phi i64 [ %sub, %cond.false ], [ -1, %if.end193.cond.end_crit_edge ]
  %call196 = call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev, i64 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %if.end203, label %do.end201

do.end201:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #15
  br label %cleanup_clk

if.end203:                                        ; preds = %cond.end
  %eth_irq204 = getelementptr i8, ptr %call, i32 2452
  %110 = ptrtoint ptr %eth_irq204 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %eth_irq204, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %111)
  %cmp205 = icmp slt i32 %111, 1
  br i1 %cmp205, label %do.end209, label %if.end203.if.end211_crit_edge

if.end203.if.end211_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end211

do.end209:                                        ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.37) #15
  br label %if.end211

if.end211:                                        ; preds = %do.end209, %if.end203.if.end211_crit_edge
  %112 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %of_node, align 8
  %call215 = call i32 @of_get_mac_address(ptr noundef %113, ptr noundef nonnull %mac_addr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %if.then217, label %do.end222

if.then217:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @axienet_set_mac_address(ptr noundef nonnull %call, ptr noundef nonnull %mac_addr)
  br label %if.end224

do.end222:                                        ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %call215) #15
  call fastcc void @axienet_set_mac_address(ptr noundef nonnull %call, ptr noundef null)
  br label %if.end224

if.end224:                                        ; preds = %do.end222, %if.then217
  %coalesce_count_rx = getelementptr i8, ptr %call, i32 2520
  %114 = ptrtoint ptr %coalesce_count_rx to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 24, ptr %coalesce_count_rx, align 4
  %coalesce_count_tx = getelementptr i8, ptr %call, i32 2524
  %115 = ptrtoint ptr %coalesce_count_tx to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 24, ptr %coalesce_count_tx, align 4
  %call225 = call fastcc i32 @__axienet_device_reset(ptr noundef %add.ptr.i508)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %if.end228, label %if.end224.cleanup_clk_crit_edge

if.end224.cleanup_clk_crit_edge:                  ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup_clk

if.end228:                                        ; preds = %if.end224
  %116 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %of_node, align 8
  %call231 = call fastcc ptr @of_parse_phandle(ptr noundef %117, ptr noundef nonnull @.str.43)
  %phy_node = getelementptr i8, ptr %call, i32 2312
  %118 = ptrtoint ptr %phy_node to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call231, ptr %phy_node, align 4
  %tobool233.not = icmp eq ptr %call231, null
  br i1 %tobool233.not, label %if.end228.if.end243_crit_edge, label %if.then234

if.end228.if.end243_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end243

if.then234:                                       ; preds = %if.end228
  %call235 = call i32 @axienet_mdio_setup(ptr noundef %add.ptr.i508) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %if.then234.if.end243_crit_edge, label %do.end240

if.then234.if.end243_crit_edge:                   ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end243

do.end240:                                        ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %call235) #15
  br label %if.end243

if.end243:                                        ; preds = %do.end240, %if.then234.if.end243_crit_edge, %if.end228.if.end243_crit_edge
  %phy_mode244 = getelementptr i8, ptr %call, i32 2456
  %119 = ptrtoint ptr %phy_mode244 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %phy_mode244, align 4
  %121 = zext i32 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %120, label %if.end243.if.end264_crit_edge [
    i32 4, label %if.end243.if.then249_crit_edge
    i32 21, label %if.end243.if.then249_crit_edge534
  ]

if.end243.if.then249_crit_edge534:                ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then249

if.end243.if.then249_crit_edge:                   ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then249

if.end243.if.end264_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end264

if.then249:                                       ; preds = %if.end243.if.then249_crit_edge, %if.end243.if.then249_crit_edge534
  %122 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %phy_node, align 4
  %tobool251.not = icmp eq ptr %123, null
  br i1 %tobool251.not, label %do.end255, label %if.end257

do.end255:                                        ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48) #15
  br label %cleanup_mdio

if.end257:                                        ; preds = %if.then249
  %call259 = call ptr @of_mdio_find_device(ptr noundef nonnull %123) #12
  %pcs_phy = getelementptr i8, ptr %call, i32 2344
  %124 = ptrtoint ptr %pcs_phy to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call259, ptr %pcs_phy, align 4
  %tobool261.not = icmp eq ptr %call259, null
  br i1 %tobool261.not, label %if.end257.cleanup_mdio_crit_edge, label %if.end263

if.end257.cleanup_mdio_crit_edge:                 ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup_mdio

if.end263:                                        ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #14
  %pcs_poll = getelementptr i8, ptr %call, i32 2329
  %125 = ptrtoint ptr %pcs_poll to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %pcs_poll, align 1
  br label %if.end264

if.end264:                                        ; preds = %if.end263, %if.end243.if.end264_crit_edge
  %phylink_config266 = getelementptr i8, ptr %call, i32 2320
  %126 = ptrtoint ptr %phylink_config266 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %dev1, ptr %phylink_config266, align 4
  %type = getelementptr i8, ptr %call, i32 2324
  %127 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %type, align 4
  %legacy_pre_march2020 = getelementptr i8, ptr %call, i32 2328
  %128 = ptrtoint ptr %legacy_pre_march2020 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %legacy_pre_march2020, align 4
  %mac_capabilities = getelementptr i8, ptr %call, i32 2340
  %129 = ptrtoint ptr %mac_capabilities to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 171, ptr %mac_capabilities, align 4
  %130 = ptrtoint ptr %phy_mode244 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %phy_mode244, align 4
  %supported_interfaces = getelementptr i8, ptr %call, i32 2336
  %rem.i = and i32 %131, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %131, 5
  %add.ptr.i = getelementptr i32, ptr %supported_interfaces, i32 %div2.i
  %132 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %133
  store i32 %or.i, ptr %add.ptr.i, align 4
  %134 = ptrtoint ptr %switch_x_sgmii to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %switch_x_sgmii, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool275.not = icmp eq i8 %135, 0
  br i1 %tobool275.not, label %if.end264.if.end283_crit_edge, label %if.then276

if.end264.if.end283_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end283

if.then276:                                       ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #14
  %136 = ptrtoint ptr %supported_interfaces to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %supported_interfaces, align 4
  %or.i507 = or i32 %137, 2097168
  store i32 %or.i507, ptr %supported_interfaces, align 4
  br label %if.end283

if.end283:                                        ; preds = %if.then276, %if.end264.if.end283_crit_edge
  %fwnode = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 28
  %138 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %fwnode, align 4
  %140 = ptrtoint ptr %phy_mode244 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %phy_mode244, align 4
  %call287 = call ptr @phylink_create(ptr noundef %phylink_config266, ptr noundef %139, i32 noundef %141, ptr noundef nonnull @axienet_phylink_ops) #12
  %phylink = getelementptr i8, ptr %call, i32 2316
  %142 = ptrtoint ptr %phylink to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call287, ptr %phylink, align 4
  %cmp.i523 = icmp ugt ptr %call287, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i523, label %if.then290, label %if.end297

if.then290:                                       ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #14
  %143 = ptrtoint ptr %call287 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %143) #15
  br label %cleanup_mdio

if.end297:                                        ; preds = %if.end283
  %144 = ptrtoint ptr %add.ptr.i508 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %add.ptr.i508, align 4
  %call299 = call i32 @register_netdev(ptr noundef %145) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call299)
  %tobool300.not = icmp eq i32 %call299, 0
  br i1 %tobool300.not, label %if.end297.cleanup321_crit_edge, label %do.end304

if.end297.cleanup321_crit_edge:                   ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup321

do.end304:                                        ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #14
  %146 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.54, i32 noundef %call299) #15
  %148 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %phylink, align 4
  call void @phylink_destroy(ptr noundef %149) #12
  br label %cleanup_mdio

cleanup_mdio:                                     ; preds = %do.end304, %if.then290, %if.end257.cleanup_mdio_crit_edge, %do.end255
  %ret.0 = phi i32 [ %143, %if.then290 ], [ %call299, %do.end304 ], [ -22, %do.end255 ], [ -517, %if.end257.cleanup_mdio_crit_edge ]
  %pcs_phy308 = getelementptr i8, ptr %call, i32 2344
  %150 = ptrtoint ptr %pcs_phy308 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pcs_phy308, align 4
  %tobool309.not = icmp eq ptr %151, null
  br i1 %tobool309.not, label %cleanup_mdio.if.end313_crit_edge, label %if.then310

cleanup_mdio.if.end313_crit_edge:                 ; preds = %cleanup_mdio
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end313

if.then310:                                       ; preds = %cleanup_mdio
  call void @__sanitizer_cov_trace_pc() #14
  call void @put_device(ptr noundef nonnull %151) #12
  br label %if.end313

if.end313:                                        ; preds = %if.then310, %cleanup_mdio.if.end313_crit_edge
  %mii_bus = getelementptr i8, ptr %call, i32 2380
  %152 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %mii_bus, align 4
  %tobool314.not = icmp eq ptr %153, null
  br i1 %tobool314.not, label %if.end313.if.end316_crit_edge, label %if.then315

if.end313.if.end316_crit_edge:                    ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end316

if.then315:                                       ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #14
  call void @axienet_mdio_teardown(ptr noundef %add.ptr.i508) #12
  br label %if.end316

if.end316:                                        ; preds = %if.then315, %if.end313.if.end316_crit_edge
  %154 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %phy_node, align 4
  call void @of_node_put(ptr noundef %155) #12
  br label %cleanup_clk

cleanup_clk:                                      ; preds = %if.end316, %if.end224.cleanup_clk_crit_edge, %do.end201, %do.end171, %do.end159, %cleanup, %do.end123, %switch.hole_check.cleanup_clk_crit_edge, %if.else.cleanup_clk_crit_edge, %if.then94.cleanup_clk_crit_edge, %if.then48, %if.then3.i514, %if.end38.cleanup_clk_crit_edge, %if.end26.cleanup_clk_crit_edge
  %ret.1 = phi i32 [ %call35, %if.end26.cleanup_clk_crit_edge ], [ %25, %if.then48 ], [ %call109, %if.else.cleanup_clk_crit_edge ], [ -22, %do.end123 ], [ %call131, %cleanup ], [ %95, %do.end159 ], [ -12, %do.end171 ], [ %call196, %do.end201 ], [ %call225, %if.end224.cleanup_clk_crit_edge ], [ %ret.0, %if.end316 ], [ -22, %if.then94.cleanup_clk_crit_edge ], [ %call1.i511, %if.then3.i514 ], [ %call.i509, %if.end38.cleanup_clk_crit_edge ], [ -22, %switch.hole_check.cleanup_clk_crit_edge ]
  call void @clk_bulk_disable(i32 noundef 3, ptr noundef %misc_clks) #12
  call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef %misc_clks) #12
  %156 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %axi_clk, align 4
  call void @clk_disable(ptr noundef %157) #12
  call void @clk_unprepare(ptr noundef %157) #12
  br label %free_netdev

free_netdev:                                      ; preds = %cleanup_clk, %do.end, %if.then17
  %ret.2 = phi i32 [ %20, %if.then17 ], [ %retval.0.i.ph, %do.end ], [ %ret.1, %cleanup_clk ]
  call void @free_netdev(ptr noundef nonnull %call) #12
  br label %cleanup321

cleanup321:                                       ; preds = %free_netdev, %if.end297.cleanup321_crit_edge, %entry.cleanup321_crit_edge
  %retval.0 = phi i32 [ %ret.2, %free_netdev ], [ -12, %entry.cleanup321_crit_edge ], [ 0, %if.end297.cleanup321_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ethres) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axienet_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #12
  %phylink = getelementptr i8, ptr %1, i32 2316
  %2 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phylink, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @phylink_destroy(ptr noundef nonnull %3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pcs_phy = getelementptr i8, ptr %1, i32 2344
  %4 = ptrtoint ptr %pcs_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcs_phy, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @put_device(ptr noundef nonnull %5) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @axienet_mdio_teardown(ptr noundef %add.ptr.i) #12
  %misc_clks = getelementptr i8, ptr %1, i32 2356
  tail call void @clk_bulk_disable(i32 noundef 3, ptr noundef %misc_clks) #12
  tail call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef %misc_clks) #12
  %axi_clk = getelementptr i8, ptr %1, i32 2352
  %6 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %axi_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #12
  tail call void @clk_unprepare(ptr noundef %7) #12
  %phy_node = getelementptr i8, ptr %1, i32 2312
  %8 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_node, align 4
  tail call void @of_node_put(ptr noundef %9) #12
  %10 = ptrtoint ptr %phy_node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %phy_node, align 4
  tail call void @free_netdev(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axienet_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @rtnl_lock() #12
  tail call void @netif_device_detach(ptr noundef %1) #12
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dev_close(ptr noundef %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @rtnl_unlock() #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_optional(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @of_parse_phandle(ptr noundef %np, ptr noundef %phandle_name) unnamed_addr #5 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #12
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef %phandle_name, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev, i64 noundef %mask) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %mask) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %mask) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @axienet_set_mac_address(ptr noundef %ndev, ptr noundef %address) unnamed_addr #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %address, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef nonnull %address, i32 noundef 6) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.if.then2_crit_edge

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then2_crit_edge, label %is_valid_ether_addr.exit.if.end3_crit_edge

is_valid_ether_addr.exit.if.end3_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

is_valid_ether_addr.exit.if.then2_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2

if.then2:                                         ; preds = %is_valid_ether_addr.exit.if.then2_crit_edge, %if.end.if.then2_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #12
  %7 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #12
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr.i, align 1
  %10 = and i8 %9, -4
  %11 = or i8 %10, 2
  store i8 %11, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #12
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 55
  %12 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #12
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %is_valid_ether_addr.exit.if.end3_crit_edge
  %13 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr, align 64
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %conv = zext i8 %16 to i32
  %arrayidx6 = getelementptr i8, ptr %14, i32 1
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %18 to i32
  %shl = shl nuw nsw i32 %conv7, 8
  %or = or i32 %shl, %conv
  %arrayidx9 = getelementptr i8, ptr %14, i32 2
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %20 to i32
  %shl11 = shl nuw nsw i32 %conv10, 16
  %or12 = or i32 %or, %shl11
  %arrayidx14 = getelementptr i8, ptr %14, i32 3
  %21 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %22 to i32
  %shl16 = shl nuw i32 %conv15, 24
  %or17 = or i32 %or12, %shl16
  %regs.i = getelementptr i8, ptr %ndev, i32 2392
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %24, i32 1792
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  call void @arm_heavy_mb() #12
  %25 = call i32 @llvm.bswap.i32(i32 %or17) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %25) #12, !srcloc !206
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %27, i32 1796
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #12, !srcloc !203
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %29 = and i32 %28, 65535
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_addr, align 64
  %arrayidx20 = getelementptr i8, ptr %32, i32 4
  %33 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %34 to i32
  %arrayidx23 = getelementptr i8, ptr %32, i32 5
  %35 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %36 to i32
  %shl25 = shl nuw nsw i32 %conv24, 8
  %or26 = or i32 %30, %conv21
  %or27 = or i32 %or26, %shl25
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %38, i32 1796
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  call void @arm_heavy_mb() #12
  %39 = call i32 @llvm.bswap.i32(i32 %or27) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %39) #12, !srcloc !206
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__axienet_device_reset(ptr nocapture noundef readonly %lp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_regs.i = getelementptr inbounds %struct.axienet_local, ptr %lp, i32 0, i32 13
  %0 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 67108864) #12, !srcloc !206
  %call = tail call i64 @ktime_get() #12
  %add.i = add i64 %call, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 514) #12
  %2 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_regs.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #12, !srcloc !203
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %and111 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool.not112 = icmp eq i32 %and111, 0
  br i1 %tobool.not112, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.lhs.true:                                    ; preds = %if.then19.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call12 = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %if.then15, label %if.then19

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_regs.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #12, !srcloc !203
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  br label %for.end

if.then19:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %10 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_regs.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #12, !srcloc !203
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %and = and i32 %13, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then19.for.end_crit_edge, label %if.then19.land.lhs.true_crit_edge

if.then19.land.lhs.true_crit_edge:                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.then19.for.end_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.then19.for.end_crit_edge, %if.then15, %entry.for.end_crit_edge
  %value.0 = phi i32 [ %9, %if.then15 ], [ %5, %entry.for.end_crit_edge ], [ %13, %if.then19.for.end_crit_edge ]
  %and21 = and i32 %value.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end28, label %for.end.cleanup.sink.split_crit_edge

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end28:                                         ; preds = %for.end
  %call32 = tail call i64 @ktime_get() #12
  %add.i100 = add i64 %call32, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 524) #12
  %regs.i = getelementptr inbounds %struct.axienet_local, ptr %lp, i32 0, i32 12
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #12, !srcloc !203
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %and48114 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48114)
  %tobool49.not115 = icmp eq i32 %and48114, 0
  br i1 %tobool49.not115, label %if.end28.land.lhs.true53_crit_edge, label %if.end28.for.end65_crit_edge

if.end28.for.end65_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end65

if.end28.land.lhs.true53_crit_edge:               ; preds = %if.end28
  br label %land.lhs.true53

land.lhs.true53:                                  ; preds = %if.then61.land.lhs.true53_crit_edge, %if.end28.land.lhs.true53_crit_edge
  %call54 = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call54, i64 %add.i100)
  %cmp3.i102 = icmp sgt i64 %call54, %add.i100
  br i1 %cmp3.i102, label %if.then57, label %if.then61

if.then57:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %19, i32 12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106) #12, !srcloc !203
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  br label %for.end65

if.then61:                                        ; preds = %land.lhs.true53
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #12
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !203
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %and48 = and i32 %25, 256
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.then61.land.lhs.true53_crit_edge, label %if.then61.for.end65_crit_edge

if.then61.for.end65_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end65

if.then61.land.lhs.true53_crit_edge:              ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true53

for.end65:                                        ; preds = %if.then61.for.end65_crit_edge, %if.then57, %if.end28.for.end65_crit_edge
  %value.1 = phi i32 [ %21, %if.then57 ], [ %17, %if.end28.for.end65_crit_edge ], [ %25, %if.then61.for.end65_crit_edge ]
  %and67 = and i32 %value.1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %for.end65.cleanup.sink.split_crit_edge, label %for.end65.cleanup_crit_edge

for.end65.cleanup_crit_edge:                      ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.end65.cleanup.sink.split_crit_edge:           ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end65.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge
  %.str.93.sink = phi ptr [ @.str.90, %for.end.cleanup.sink.split_crit_edge ], [ @.str.93, %for.end65.cleanup.sink.split_crit_edge ]
  %dev75 = getelementptr inbounds %struct.axienet_local, ptr %lp, i32 0, i32 1
  %26 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev75, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull %.str.93.sink, ptr noundef nonnull @.str.91) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end65.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end65.cleanup_crit_edge ], [ -110, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @axienet_mdio_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_mdio_find_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phylink_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @axienet_mdio_teardown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axienet_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axienet_open.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axienet_open, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !207

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @axienet_open.__UNIQUE_ID_ddebug351, ptr noundef %dev, ptr noundef nonnull @.str.58) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mii_bus.i = getelementptr i8, ptr %ndev, i32 2380
  %0 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mii_bus.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end.axienet_lock_mii.exit_crit_edge, label %if.then.i

do.end.axienet_lock_mii.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %axienet_lock_mii.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 0) #12
  br label %axienet_lock_mii.exit

axienet_lock_mii.exit:                            ; preds = %if.then.i, %do.end.axienet_lock_mii.exit_crit_edge
  %call1.i = tail call fastcc i32 @__axienet_device_reset(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i91 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i91, label %if.end.i, label %axienet_lock_mii.exit.axienet_device_reset.exit_crit_edge

axienet_lock_mii.exit.axienet_device_reset.exit_crit_edge: ; preds = %axienet_lock_mii.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %axienet_device_reset.exit

if.end.i:                                         ; preds = %axienet_lock_mii.exit
  %max_frm_size.i = getelementptr i8, ptr %ndev, i32 2504
  %2 = ptrtoint ptr %max_frm_size.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1522, ptr %max_frm_size.i, align 4
  %options.i = getelementptr i8, ptr %ndev, i32 2460
  %3 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %options.i, align 4
  %or.i = and i32 %4, -7
  %and.i = or i32 %or.i, 4
  store i32 %and.i, ptr %options.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %5 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mtu.i, align 4
  %7 = add i32 %6, -1501
  call void @__sanitizer_cov_trace_const_cmp4(i32 7500, i32 %7)
  %8 = icmp ult i32 %7, 7500
  br i1 %8, label %if.then5.i, label %if.end.i.if.end15.i_crit_edge

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.then5.i:                                       ; preds = %if.end.i
  %add7.i = add nuw nsw i32 %6, 22
  %9 = ptrtoint ptr %max_frm_size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add7.i, ptr %max_frm_size.i, align 4
  %rxmem.i = getelementptr i8, ptr %ndev, i32 2508
  %10 = ptrtoint ptr %rxmem.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxmem.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %11)
  %cmp10.not.i = icmp ugt i32 %add7.i, %11
  br i1 %cmp10.not.i, label %if.then5.i.if.end15.i_crit_edge, label %if.then11.i

if.then5.i.if.end15.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  %or13.i = or i32 %4, 6
  %12 = ptrtoint ptr %options.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or13.i, ptr %options.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.then5.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %tx_bd_ci.i.i = getelementptr i8, ptr %ndev, i32 2492
  %13 = ptrtoint ptr %tx_bd_ci.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tx_bd_ci.i.i, align 4
  %tx_bd_tail.i.i = getelementptr i8, ptr %ndev, i32 2496
  %14 = ptrtoint ptr %tx_bd_tail.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tx_bd_tail.i.i, align 4
  %rx_bd_ci.i.i = getelementptr i8, ptr %ndev, i32 2500
  %15 = ptrtoint ptr %rx_bd_ci.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rx_bd_ci.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %16 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i.i, align 8
  %tx_bd_num.i.i = getelementptr i8, ptr %ndev, i32 2476
  %18 = ptrtoint ptr %tx_bd_num.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_bd_num.i.i, align 4
  %mul.i.i = shl i32 %19, 6
  %tx_bd_p.i.i = getelementptr i8, ptr %ndev, i32 2472
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %17, i32 noundef %mul.i.i, ptr noundef %tx_bd_p.i.i, i32 noundef 3264, i32 noundef 0) #12
  %tx_bd_v.i.i = getelementptr i8, ptr %ndev, i32 2468
  %20 = ptrtoint ptr %tx_bd_v.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i.i, ptr %tx_bd_v.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end15.i.if.then18.i_crit_edge, label %if.end.i.i

if.end15.i.if.then18.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18.i

if.end.i.i:                                       ; preds = %if.end15.i
  %21 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i.i, align 8
  %rx_bd_num.i.i = getelementptr i8, ptr %ndev, i32 2488
  %23 = ptrtoint ptr %rx_bd_num.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_bd_num.i.i, align 4
  %mul5.i.i = shl i32 %24, 6
  %rx_bd_p.i.i = getelementptr i8, ptr %ndev, i32 2484
  %call.i182.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %22, i32 noundef %mul5.i.i, ptr noundef %rx_bd_p.i.i, i32 noundef 3264, i32 noundef 0) #12
  %rx_bd_v.i.i = getelementptr i8, ptr %ndev, i32 2480
  %25 = ptrtoint ptr %rx_bd_v.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i182.i.i, ptr %rx_bd_v.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %call.i182.i.i, null
  br i1 %tobool8.not.i.i, label %if.end.i.i.out.i.i_crit_edge, label %for.cond.preheader.i.i

if.end.i.i.out.i.i_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  %26 = ptrtoint ptr %tx_bd_num.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_bd_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp228.not.i.i = icmp eq i32 %27, 0
  br i1 %cmp228.not.i.i, label %for.cond.preheader.i.i.for.cond24.preheader.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.cond24.preheader.i.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond24.preheader.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %features.i.i = getelementptr i8, ptr %ndev, i32 2464
  br label %for.body.i.i

for.cond24.preheader.i.i:                         ; preds = %if.end23.i.i.for.cond24.preheader.i.i_crit_edge, %for.cond.preheader.i.i.for.cond24.preheader.i.i_crit_edge
  %28 = ptrtoint ptr %rx_bd_num.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_bd_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp26230.not.i.i = icmp eq i32 %29, 0
  br i1 %cmp26230.not.i.i, label %for.cond24.preheader.i.i.for.end73.i.i_crit_edge, label %for.body27.lr.ph.i.i

for.cond24.preheader.i.i.for.end73.i.i_crit_edge: ; preds = %for.cond24.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end73.i.i

for.body27.lr.ph.i.i:                             ; preds = %for.cond24.preheader.i.i
  %features39.i.i = getelementptr i8, ptr %ndev, i32 2464
  br label %for.body27.i.i

for.body.i.i:                                     ; preds = %if.end23.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %30 = phi i32 [ %27, %for.body.lr.ph.i.i ], [ %42, %if.end23.i.i.for.body.i.i_crit_edge ]
  %i.0229.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add.i.i, %if.end23.i.i.for.body.i.i_crit_edge ]
  %31 = ptrtoint ptr %tx_bd_p.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_bd_p.i.i, align 4
  %add.i.i = add nuw i32 %i.0229.i.i, 1
  %rem.i.i = urem i32 %add.i.i, %30
  %mul14.i.i = shl i32 %rem.i.i, 6
  %add15.i.i = add i32 %mul14.i.i, %32
  %33 = ptrtoint ptr %tx_bd_v.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_bd_v.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.axidma_bd, ptr %34, i32 %i.0229.i.i
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add15.i.i, ptr %arrayidx.i.i, align 64
  %36 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %features.i.i, align 4
  %and17.i.i = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %for.body.i.i.if.end23.i.i_crit_edge, label %if.then19.i.i

for.body.i.i.if.end23.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i.i

if.then19.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %tx_bd_v.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_bd_v.i.i, align 4
  %next_msb.i.i = getelementptr %struct.axidma_bd, ptr %39, i32 %i.0229.i.i, i32 1
  %40 = ptrtoint ptr %next_msb.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %next_msb.i.i, align 4
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then19.i.i, %for.body.i.i.if.end23.i.i_crit_edge
  %41 = ptrtoint ptr %tx_bd_num.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_bd_num.i.i, align 4
  %cmp.i.i = icmp ult i32 %add.i.i, %42
  br i1 %cmp.i.i, label %if.end23.i.i.for.body.i.i_crit_edge, label %if.end23.i.i.for.cond24.preheader.i.i_crit_edge

if.end23.i.i.for.cond24.preheader.i.i_crit_edge:  ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond24.preheader.i.i

if.end23.i.i.for.body.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body27.i.i:                                   ; preds = %cleanup.i.i.for.body27.i.i_crit_edge, %for.body27.lr.ph.i.i
  %43 = phi i32 [ %29, %for.body27.lr.ph.i.i ], [ %90, %cleanup.i.i.for.body27.i.i_crit_edge ]
  %i.1231.i.i = phi i32 [ 0, %for.body27.lr.ph.i.i ], [ %add30.i.i, %cleanup.i.i.for.body27.i.i_crit_edge ]
  %44 = ptrtoint ptr %rx_bd_p.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_bd_p.i.i, align 4
  %add30.i.i = add nuw i32 %i.1231.i.i, 1
  %rem32.i.i = urem i32 %add30.i.i, %43
  %mul33.i.i = shl i32 %rem32.i.i, 6
  %add34.i.i = add i32 %mul33.i.i, %45
  %46 = ptrtoint ptr %rx_bd_v.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_bd_v.i.i, align 4
  %arrayidx37.i.i = getelementptr %struct.axidma_bd, ptr %47, i32 %i.1231.i.i
  %48 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add34.i.i, ptr %arrayidx37.i.i, align 64
  %49 = ptrtoint ptr %features39.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %features39.i.i, align 4
  %and40.i.i = and i32 %50, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i)
  %tobool41.not.i.i = icmp eq i32 %and40.i.i, 0
  br i1 %tobool41.not.i.i, label %for.body27.i.i.if.end48.i.i_crit_edge, label %if.then42.i.i

for.body27.i.i.if.end48.i.i_crit_edge:            ; preds = %for.body27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i.i

if.then42.i.i:                                    ; preds = %for.body27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %rx_bd_v.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rx_bd_v.i.i, align 4
  %next_msb47.i.i = getelementptr %struct.axidma_bd, ptr %52, i32 %i.1231.i.i, i32 1
  %53 = ptrtoint ptr %next_msb47.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %next_msb47.i.i, align 4
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then42.i.i, %for.body27.i.i.if.end48.i.i_crit_edge
  %54 = ptrtoint ptr %max_frm_size.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_frm_size.i, align 4
  %add.i.i.i.i = add i32 %55, 2
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %ndev, i32 noundef %add.i.i.i.i, i32 noundef 2592) #12
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end48.i.i.out.i.i_crit_edge, label %if.end52.i.i

if.end48.i.i.out.i.i_crit_edge:                   ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

if.end52.i.i:                                     ; preds = %if.end48.i.i
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %56 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %57, i32 2
  store ptr %add.ptr.i.i.i.i.i, ptr %data.i.i.i.i.i, align 4
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %58 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %59, i32 2
  store ptr %add.ptr1.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %60 = ptrtoint ptr %rx_bd_v.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rx_bd_v.i.i, align 4
  %skb55.i.i = getelementptr %struct.axidma_bd, ptr %61, i32 %i.1231.i.i, i32 13
  %62 = ptrtoint ptr %skb55.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i.i.i.i, ptr %skb55.i.i, align 4
  %63 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %parent.i.i, align 8
  %65 = load ptr, ptr %data.i.i.i.i.i, align 4
  %66 = ptrtoint ptr %max_frm_size.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_frm_size.i, align 4
  %call.i183.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %65) #12
  br i1 %call.i183.i.i, label %land.rhs.i.i.i, label %dma_map_single_attrs.exit.i.i

land.rhs.i.i.i:                                   ; preds = %if.end52.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge, label %if.then.i.i.i, !prof !208

land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.thread.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %64) #12
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 3
  %68 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i184.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i.i184.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %64, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %71, %if.end.i.i.i.i ], [ %69, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.67, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #12
  br label %dma_map_single_attrs.exit.thread.i.i

dma_map_single_attrs.exit.thread.i.i:             ; preds = %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge
  %72 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %parent.i.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %73, i32 noundef -1) #12
  br label %if.then64.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end52.i.i
  tail call void @debug_dma_map_single(ptr noundef %64, ptr noundef %65, i32 noundef %67) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %74 = load ptr, ptr @mem_map, align 4
  %75 = ptrtoint ptr %65 to i32
  %sub.i.i.i = add i32 %75, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i185.i.i = getelementptr %struct.page, ptr %74, i32 %shr.i.i.i
  %and.i.i.i = and i32 %75, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %64, ptr noundef %add.ptr.i185.i.i, i32 noundef %and.i.i.i, i32 noundef %67, i32 noundef 2, i32 noundef 0) #12
  %76 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %parent.i.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %77, i32 noundef %call41.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call41.i.i.i, -1
  br i1 %cmp.i.i.i, label %dma_map_single_attrs.exit.i.i.if.then64.i.i_crit_edge, label %if.end65.i.i

dma_map_single_attrs.exit.i.i.if.then64.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64.i.i

if.then64.i.i:                                    ; preds = %dma_map_single_attrs.exit.i.i.if.then64.i.i_crit_edge, %dma_map_single_attrs.exit.thread.i.i
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.65) #15
  br label %out.i.i

if.end65.i.i:                                     ; preds = %dma_map_single_attrs.exit.i.i
  %78 = ptrtoint ptr %rx_bd_v.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rx_bd_v.i.i, align 4
  %phys.i.i.i = getelementptr %struct.axidma_bd, ptr %79, i32 %i.1231.i.i, i32 2
  %80 = ptrtoint ptr %phys.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call41.i.i.i, ptr %phys.i.i.i, align 8
  %81 = ptrtoint ptr %features39.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %features39.i.i, align 4
  %and1.i.i.i = and i32 %82, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end65.i.i.cleanup.i.i_crit_edge, label %if.then.i186.i.i

if.end65.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

if.then.i186.i.i:                                 ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %phys_msb.i.i.i = getelementptr %struct.axidma_bd, ptr %79, i32 %i.1231.i.i, i32 3
  %83 = ptrtoint ptr %phys_msb.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %phys_msb.i.i.i, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then.i186.i.i, %if.end65.i.i.cleanup.i.i_crit_edge
  %84 = ptrtoint ptr %max_frm_size.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %max_frm_size.i, align 4
  %86 = ptrtoint ptr %rx_bd_v.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rx_bd_v.i.i, align 4
  %cntrl.i.i = getelementptr %struct.axidma_bd, ptr %87, i32 %i.1231.i.i, i32 6
  %88 = ptrtoint ptr %cntrl.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %85, ptr %cntrl.i.i, align 8
  %89 = ptrtoint ptr %rx_bd_num.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_bd_num.i.i, align 4
  %cmp26.i.i = icmp ult i32 %add30.i.i, %90
  br i1 %cmp26.i.i, label %cleanup.i.i.for.body27.i.i_crit_edge, label %cleanup.i.i.for.end73.i.i_crit_edge

cleanup.i.i.for.end73.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end73.i.i

cleanup.i.i.for.body27.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body27.i.i

for.end73.i.i:                                    ; preds = %cleanup.i.i.for.end73.i.i_crit_edge, %for.cond24.preheader.i.i.for.end73.i.i_crit_edge
  %dma_regs.i.i.i = getelementptr i8, ptr %ndev, i32 2396
  %91 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dma_regs.i.i.i, align 4
  %add.ptr.i187.i.i = getelementptr i8, ptr %92, i32 48
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187.i.i) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %94 = and i32 %93, -7405568
  %coalesce_count_rx.i.i = getelementptr i8, ptr %ndev, i32 2520
  %95 = ptrtoint ptr %coalesce_count_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %coalesce_count_rx.i.i, align 4
  %shl.i.i = shl i32 %96, 16
  %shl.masked.i.i = and i32 %shl.i.i, 16711680
  %97 = or i32 %94, 7340286
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #12
  %or78.i.i = or i32 %shl.masked.i.i, %98
  %99 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dma_regs.i.i.i, align 4
  %add.ptr.i189.i.i = getelementptr i8, ptr %100, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %101 = tail call i32 @llvm.bswap.i32(i32 %or78.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i189.i.i, i32 %101) #12, !srcloc !206
  %102 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dma_regs.i.i.i, align 4
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %105 = and i32 %104, -7405568
  %coalesce_count_tx.i.i = getelementptr i8, ptr %ndev, i32 2524
  %106 = ptrtoint ptr %coalesce_count_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %coalesce_count_tx.i.i, align 4
  %shl81.i.i = shl i32 %107, 16
  %shl81.masked.i.i = and i32 %shl81.i.i, 16711680
  %108 = or i32 %105, 7340286
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #12
  %or85.i.i = or i32 %shl81.masked.i.i, %109
  %110 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dma_regs.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %112 = tail call i32 @llvm.bswap.i32(i32 %or85.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %112) #12, !srcloc !206
  %113 = ptrtoint ptr %rx_bd_p.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rx_bd_p.i.i, align 4
  %115 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dma_regs.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %116, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %117 = tail call i32 @llvm.bswap.i32(i32 %114) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %117) #12, !srcloc !206
  %features.i192.i.i = getelementptr i8, ptr %ndev, i32 2464
  %118 = ptrtoint ptr %features.i192.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %features.i192.i.i, align 4
  %and1.i193.i.i = and i32 %119, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i193.i.i)
  %tobool.not.i194.i.i = icmp eq i32 %and1.i193.i.i, 0
  br i1 %tobool.not.i194.i.i, label %for.end73.i.i.axienet_dma_out_addr.exit.i.i_crit_edge, label %if.then.i195.i.i

for.end73.i.i.axienet_dma_out_addr.exit.i.i_crit_edge: ; preds = %for.end73.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %axienet_dma_out_addr.exit.i.i

if.then.i195.i.i:                                 ; preds = %for.end73.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dma_regs.i.i.i, align 4
  %add.ptr.i8.i.i.i = getelementptr i8, ptr %121, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i.i, i32 0) #12, !srcloc !206
  br label %axienet_dma_out_addr.exit.i.i

axienet_dma_out_addr.exit.i.i:                    ; preds = %if.then.i195.i.i, %for.end73.i.i.axienet_dma_out_addr.exit.i.i_crit_edge
  %122 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dma_regs.i.i.i, align 4
  %add.ptr.i197.i.i = getelementptr i8, ptr %123, i32 48
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197.i.i) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %125 = or i32 %124, 16777216
  %126 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dma_regs.i.i.i, align 4
  %add.ptr.i199.i.i = getelementptr i8, ptr %127, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i199.i.i, i32 %125) #12, !srcloc !206
  %128 = ptrtoint ptr %rx_bd_p.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %rx_bd_p.i.i, align 4
  %130 = ptrtoint ptr %rx_bd_num.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rx_bd_num.i.i, align 4
  %sub.i.i = shl i32 %131, 6
  %mul91.i.i = add i32 %129, -64
  %add92.i.i = add i32 %mul91.i.i, %sub.i.i
  %132 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dma_regs.i.i.i, align 4
  %add.ptr.i.i201.i.i = getelementptr i8, ptr %133, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %134 = tail call i32 @llvm.bswap.i32(i32 %add92.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i201.i.i, i32 %134) #12, !srcloc !206
  %135 = ptrtoint ptr %features.i192.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %features.i192.i.i, align 4
  %and1.i203.i.i = and i32 %136, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i203.i.i)
  %tobool.not.i204.i.i = icmp eq i32 %and1.i203.i.i, 0
  br i1 %tobool.not.i204.i.i, label %axienet_dma_out_addr.exit.i.i.axienet_dma_out_addr.exit207.i.i_crit_edge, label %if.then.i206.i.i

axienet_dma_out_addr.exit.i.i.axienet_dma_out_addr.exit207.i.i_crit_edge: ; preds = %axienet_dma_out_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %axienet_dma_out_addr.exit207.i.i

if.then.i206.i.i:                                 ; preds = %axienet_dma_out_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %137 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dma_regs.i.i.i, align 4
  %add.ptr.i8.i205.i.i = getelementptr i8, ptr %138, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i205.i.i, i32 0) #12, !srcloc !206
  br label %axienet_dma_out_addr.exit207.i.i

axienet_dma_out_addr.exit207.i.i:                 ; preds = %if.then.i206.i.i, %axienet_dma_out_addr.exit.i.i.axienet_dma_out_addr.exit207.i.i_crit_edge
  %139 = ptrtoint ptr %tx_bd_p.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %tx_bd_p.i.i, align 4
  %141 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dma_regs.i.i.i, align 4
  %add.ptr.i.i209.i.i = getelementptr i8, ptr %142, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %143 = tail call i32 @llvm.bswap.i32(i32 %140) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i209.i.i, i32 %143) #12, !srcloc !206
  %144 = ptrtoint ptr %features.i192.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %features.i192.i.i, align 4
  %and1.i211.i.i = and i32 %145, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i211.i.i)
  %tobool.not.i212.i.i = icmp eq i32 %and1.i211.i.i, 0
  br i1 %tobool.not.i212.i.i, label %axienet_dma_out_addr.exit207.i.i.if.end19.i_crit_edge, label %if.then.i214.i.i

axienet_dma_out_addr.exit207.i.i.if.end19.i_crit_edge: ; preds = %axienet_dma_out_addr.exit207.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then.i214.i.i:                                 ; preds = %axienet_dma_out_addr.exit207.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %146 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dma_regs.i.i.i, align 4
  %add.ptr.i8.i213.i.i = getelementptr i8, ptr %147, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i213.i.i, i32 0) #12, !srcloc !206
  br label %if.end19.i

out.i.i:                                          ; preds = %if.then64.i.i, %if.end48.i.i.out.i.i_crit_edge, %if.end.i.i.out.i.i_crit_edge
  tail call fastcc void @axienet_dma_bd_release(ptr noundef %ndev) #12
  br label %if.then18.i

if.then18.i:                                      ; preds = %out.i.i, %if.end15.i.if.then18.i_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.axienet_device_reset) #15
  br label %axienet_device_reset.exit

if.end19.i:                                       ; preds = %if.then.i214.i.i, %axienet_dma_out_addr.exit207.i.i.if.end19.i_crit_edge
  %148 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dma_regs.i.i.i, align 4
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %151 = or i32 %150, 16777216
  %152 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dma_regs.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %151) #12, !srcloc !206
  %regs.i.i = getelementptr i8, ptr %ndev, i32 2392
  %154 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %155, i32 1028
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %157 = and i32 %156, -17
  %158 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %159, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %157) #12, !srcloc !206
  %160 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %161, i32 16
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %163 = and i32 %162, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool24.not.i = icmp eq i32 %163, 0
  br i1 %tobool24.not.i, label %if.end19.i.if.end26.i_crit_edge, label %if.then25.i

if.end19.i.if.end26.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then25.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  %164 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %165, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 134217728) #12, !srcloc !206
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %if.end19.i.if.end26.i_crit_edge
  %eth_irq.i = getelementptr i8, ptr %ndev, i32 2452
  %166 = ptrtoint ptr %eth_irq.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %eth_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %cmp27.i = icmp sgt i32 %167, 0
  %cond.i = select i1 %cmp27.i, i32 402653184, i32 0
  %168 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %169, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %cond.i) #12, !srcloc !206
  %170 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %171, i32 1036
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 32) #12, !srcloc !206
  %172 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %options.i, align 4
  %and29.i = and i32 %173, -6145
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end26.i
  %tp.023.i.i = phi ptr [ @axienet_options, %if.end26.i ], [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %reg1.i.i = getelementptr inbounds %struct.axienet_option, ptr %tp.023.i.i, i32 0, i32 1
  %174 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %reg1.i.i, align 4
  %176 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i20.i.i = getelementptr i8, ptr %177, i32 %175
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i.i) #12, !srcloc !203
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %m_or.i.i = getelementptr inbounds %struct.axienet_option, ptr %tp.023.i.i, i32 0, i32 2
  %180 = ptrtoint ptr %m_or.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %m_or.i.i, align 4
  %neg.i.i = xor i32 %181, -1
  %and.i.i = and i32 %179, %neg.i.i
  %182 = ptrtoint ptr %tp.023.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %tp.023.i.i, align 4
  %and4.i.i = and i32 %183, %and29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  %or.i.i = or i32 %181, %179
  %spec.select.i.i = select i1 %tobool5.not.i.i, i32 %and.i.i, i32 %or.i.i
  %184 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %reg1.i.i, align 4
  %186 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %187, i32 %185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %188 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 %188) #12, !srcloc !206
  %incdec.ptr.i.i = getelementptr %struct.axienet_option, ptr %tp.023.i.i, i32 1
  %189 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i12.i = icmp eq i32 %190, 0
  br i1 %tobool.not.i12.i, label %axienet_setoptions.exit.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

axienet_setoptions.exit.i:                        ; preds = %while.body.i.i
  %191 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %options.i, align 4
  %or9.i.i = or i32 %192, %and29.i
  store i32 %or9.i.i, ptr %options.i, align 4
  tail call fastcc void @axienet_set_mac_address(ptr noundef %ndev, ptr noundef null) #12
  tail call void @axienet_set_multicast_list(ptr noundef %ndev) #12
  %193 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %options.i, align 4
  br label %while.body.i27.i

while.body.i27.i:                                 ; preds = %while.body.i27.i.while.body.i27.i_crit_edge, %axienet_setoptions.exit.i
  %tp.023.i14.i = phi ptr [ @axienet_options, %axienet_setoptions.exit.i ], [ %incdec.ptr.i25.i, %while.body.i27.i.while.body.i27.i_crit_edge ]
  %reg1.i15.i = getelementptr inbounds %struct.axienet_option, ptr %tp.023.i14.i, i32 0, i32 1
  %195 = ptrtoint ptr %reg1.i15.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %reg1.i15.i, align 4
  %197 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i20.i16.i = getelementptr i8, ptr %198, i32 %196
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i16.i) #12, !srcloc !203
  %200 = tail call i32 @llvm.bswap.i32(i32 %199) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %m_or.i17.i = getelementptr inbounds %struct.axienet_option, ptr %tp.023.i14.i, i32 0, i32 2
  %201 = ptrtoint ptr %m_or.i17.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %m_or.i17.i, align 4
  %neg.i18.i = xor i32 %202, -1
  %and.i19.i = and i32 %200, %neg.i18.i
  %203 = ptrtoint ptr %tp.023.i14.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %tp.023.i14.i, align 4
  %and4.i20.i = and i32 %204, %194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i20.i)
  %tobool5.not.i21.i = icmp eq i32 %and4.i20.i, 0
  %or.i22.i = or i32 %202, %200
  %spec.select.i23.i = select i1 %tobool5.not.i21.i, i32 %and.i19.i, i32 %or.i22.i
  %205 = ptrtoint ptr %reg1.i15.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %reg1.i15.i, align 4
  %207 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i22.i24.i = getelementptr i8, ptr %208, i32 %206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %209 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i23.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i24.i, i32 %209) #12, !srcloc !206
  %incdec.ptr.i25.i = getelementptr %struct.axienet_option, ptr %tp.023.i14.i, i32 1
  %210 = ptrtoint ptr %incdec.ptr.i25.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %incdec.ptr.i25.i, align 4
  %tobool.not.i26.i = icmp eq i32 %211, 0
  br i1 %tobool.not.i26.i, label %axienet_setoptions.exit30.i, label %while.body.i27.i.while.body.i27.i_crit_edge

while.body.i27.i.while.body.i27.i_crit_edge:      ; preds = %while.body.i27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i27.i

axienet_setoptions.exit30.i:                      ; preds = %while.body.i27.i
  %212 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %options.i, align 4
  %or9.i29.i = or i32 %213, %194
  store i32 %or9.i29.i, ptr %options.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %214 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %_tx.i.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %216 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %215, i32 0, i32 12
  %217 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load volatile i32, ptr %trans_start.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %218, i32 %216)
  %cmp.not.i.i.i = icmp eq i32 %218, %216
  br i1 %cmp.not.i.i.i, label %axienet_setoptions.exit30.i.axienet_device_reset.exit_crit_edge, label %do.body5.i.i.i

axienet_setoptions.exit30.i.axienet_device_reset.exit_crit_edge: ; preds = %axienet_setoptions.exit30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %axienet_device_reset.exit

do.body5.i.i.i:                                   ; preds = %axienet_setoptions.exit30.i
  call void @__sanitizer_cov_trace_pc() #14
  %219 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store volatile i32 %216, ptr %trans_start.i.i.i, align 16
  br label %axienet_device_reset.exit

axienet_device_reset.exit:                        ; preds = %do.body5.i.i.i, %axienet_setoptions.exit30.i.axienet_device_reset.exit_crit_edge, %if.then18.i, %axienet_lock_mii.exit.axienet_device_reset.exit_crit_edge
  %220 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mii_bus.i, align 4
  %tobool.not.i93 = icmp eq ptr %221, null
  br i1 %tobool.not.i93, label %axienet_device_reset.exit.axienet_unlock_mii.exit_crit_edge, label %if.then.i95

axienet_device_reset.exit.axienet_unlock_mii.exit_crit_edge: ; preds = %axienet_device_reset.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %axienet_unlock_mii.exit

if.then.i95:                                      ; preds = %axienet_device_reset.exit
  call void @__sanitizer_cov_trace_pc() #14
  %mdio_lock.i94 = getelementptr inbounds %struct.mii_bus, ptr %221, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i94) #12
  br label %axienet_unlock_mii.exit

axienet_unlock_mii.exit:                          ; preds = %if.then.i95, %axienet_device_reset.exit.axienet_unlock_mii.exit_crit_edge
  %phylink = getelementptr i8, ptr %ndev, i32 2316
  %222 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %phylink, align 4
  %dev5 = getelementptr i8, ptr %ndev, i32 2308
  %224 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dev5, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %225, i32 0, i32 27
  %226 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %of_node, align 8
  %call6 = tail call i32 @phylink_of_phy_connect(ptr noundef %223, ptr noundef %227, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end13, label %do.end11

do.end11:                                         ; preds = %axienet_unlock_mii.exit
  call void @__sanitizer_cov_trace_pc() #14
  %228 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %229, ptr noundef nonnull @.str.59, i32 noundef %call6) #15
  br label %cleanup

if.end13:                                         ; preds = %axienet_unlock_mii.exit
  %230 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %phylink, align 4
  tail call void @phylink_start(ptr noundef %231) #12
  %dma_err_task = getelementptr i8, ptr %ndev, i32 2400
  tail call void @__init_work(ptr noundef %dma_err_task, i32 noundef 0) #12
  %232 = ptrtoint ptr %dma_err_task to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 -64, ptr %dma_err_task, align 4
  %lockdep_map = getelementptr i8, ptr %ndev, i32 2416
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.60, ptr noundef nonnull @axienet_open.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry19 = getelementptr i8, ptr %ndev, i32 2404
  %233 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %233)
  store volatile ptr %entry19, ptr %entry19, align 4
  %prev.i = getelementptr i8, ptr %ndev, i32 2408
  %234 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %entry19, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %ndev, i32 2412
  %235 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr @axienet_dma_err_handler, ptr %func, align 4
  %tx_irq = getelementptr i8, ptr %ndev, i32 2444
  %236 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %tx_irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %237, ptr noundef nonnull @axienet_tx_irq, ptr noundef null, i32 noundef 128, ptr noundef %ndev, ptr noundef %ndev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not = icmp eq i32 %call.i, 0
  br i1 %tobool24.not, label %if.end26, label %if.end13.err_tx_irq_crit_edge

if.end13.err_tx_irq_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_tx_irq

if.end26:                                         ; preds = %if.end13
  %rx_irq = getelementptr i8, ptr %ndev, i32 2448
  %238 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %rx_irq, align 4
  %call.i97 = tail call i32 @request_threaded_irq(i32 noundef %239, ptr noundef nonnull @axienet_rx_irq, ptr noundef null, i32 noundef 128, ptr noundef %ndev, ptr noundef %ndev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool30.not = icmp eq i32 %call.i97, 0
  br i1 %tobool30.not, label %if.end32, label %if.end26.err_rx_irq_crit_edge

if.end26.err_rx_irq_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_rx_irq

if.end32:                                         ; preds = %if.end26
  %eth_irq = getelementptr i8, ptr %ndev, i32 2452
  %240 = ptrtoint ptr %eth_irq to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %eth_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %cmp = icmp sgt i32 %241, 0
  br i1 %cmp, label %if.then33, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then33:                                        ; preds = %if.end32
  %call.i98 = tail call i32 @request_threaded_irq(i32 noundef %241, ptr noundef nonnull @axienet_eth_irq, ptr noundef null, i32 noundef 128, ptr noundef %ndev, ptr noundef %ndev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool38.not = icmp eq i32 %call.i98, 0
  br i1 %tobool38.not, label %if.then33.cleanup_crit_edge, label %err_eth_irq

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_eth_irq:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  %242 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %rx_irq, align 4
  %call43 = tail call ptr @free_irq(i32 noundef %243, ptr noundef %ndev) #12
  br label %err_rx_irq

err_rx_irq:                                       ; preds = %err_eth_irq, %if.end26.err_rx_irq_crit_edge
  %ret.0 = phi i32 [ %call.i97, %if.end26.err_rx_irq_crit_edge ], [ %call.i98, %err_eth_irq ]
  %244 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %tx_irq, align 4
  %call45 = tail call ptr @free_irq(i32 noundef %245, ptr noundef %ndev) #12
  br label %err_tx_irq

err_tx_irq:                                       ; preds = %err_rx_irq, %if.end13.err_tx_irq_crit_edge
  %ret.1 = phi i32 [ %call.i, %if.end13.err_tx_irq_crit_edge ], [ %ret.0, %err_rx_irq ]
  %246 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %phylink, align 4
  tail call void @phylink_stop(ptr noundef %247) #12
  %248 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %phylink, align 4
  tail call void @phylink_disconnect_phy(ptr noundef %249) #12
  %call49 = tail call zeroext i1 @cancel_work_sync(ptr noundef %dma_err_task) #12
  %250 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %251, ptr noundef nonnull @.str.62) #15
  br label %cleanup

cleanup:                                          ; preds = %err_tx_irq, %if.then33.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %do.end11
  %retval.0 = phi i32 [ %call6, %do.end11 ], [ %ret.1, %err_tx_irq ], [ 0, %if.then33.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axienet_stop(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axienet_stop.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axienet_stop, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !207

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @axienet_stop.__UNIQUE_ID_ddebug352, ptr noundef %dev, ptr noundef nonnull @.str.79) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %phylink = getelementptr i8, ptr %ndev, i32 2316
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 4
  tail call void @phylink_stop(ptr noundef %1) #12
  %2 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phylink, align 4
  tail call void @phylink_disconnect_phy(ptr noundef %3) #12
  %options = getelementptr i8, ptr %ndev, i32 2460
  %4 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %options, align 4
  %and = and i32 %5, -6145
  %regs.i.i = getelementptr i8, ptr %ndev, i32 2392
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end
  %tp.023.i = phi ptr [ @axienet_options, %do.end ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %reg1.i = getelementptr inbounds %struct.axienet_option, ptr %tp.023.i, i32 0, i32 1
  %6 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg1.i, align 4
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %9, i32 %7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #12, !srcloc !203
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %m_or.i = getelementptr inbounds %struct.axienet_option, ptr %tp.023.i, i32 0, i32 2
  %12 = ptrtoint ptr %m_or.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m_or.i, align 4
  %neg.i = xor i32 %13, -1
  %and.i = and i32 %11, %neg.i
  %14 = ptrtoint ptr %tp.023.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tp.023.i, align 4
  %and4.i = and i32 %15, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %or.i = or i32 %13, %11
  %spec.select.i = select i1 %tobool5.not.i, i32 %and.i, i32 %or.i
  %16 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg1.i, align 4
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %19, i32 %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %20 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %20) #12, !srcloc !206
  %incdec.ptr.i = getelementptr %struct.axienet_option, ptr %tp.023.i, i32 1
  %21 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %axienet_setoptions.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

axienet_setoptions.exit:                          ; preds = %while.body.i
  %23 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %options, align 4
  %or9.i = or i32 %24, %and
  store i32 %or9.i, ptr %options, align 4
  %dma_regs.i = getelementptr i8, ptr %ndev, i32 2396
  %25 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %26, i32 48
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %28 = and i32 %27, -24117249
  %29 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %30, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %28) #12, !srcloc !206
  %31 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_regs.i, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %34 = and i32 %33, -24117249
  %35 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dma_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #12, !srcloc !206
  %37 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %38, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 0) #12, !srcloc !206
  %39 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %40, i32 52
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %42 = and i32 %41, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool11.not88 = icmp eq i32 %42, 0
  br i1 %tobool11.not88, label %for.body, label %axienet_setoptions.exit.for.end_crit_edge

axienet_setoptions.exit.for.end_crit_edge:        ; preds = %axienet_setoptions.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %axienet_setoptions.exit
  tail call void @msleep(i32 noundef 20) #12
  %43 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %44, i32 52
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %46 = and i32 %45, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool11.not = icmp eq i32 %46, 0
  br i1 %tobool11.not, label %for.body.1, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.1:                                       ; preds = %for.body
  tail call void @msleep(i32 noundef 20) #12
  %47 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i76.1 = getelementptr i8, ptr %48, i32 52
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76.1) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %50 = and i32 %49, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool11.not.1 = icmp eq i32 %50, 0
  br i1 %tobool11.not.1, label %for.body.2, label %for.body.1.for.end_crit_edge

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  tail call void @msleep(i32 noundef 20) #12
  %51 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i76.2 = getelementptr i8, ptr %52, i32 52
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76.2) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %54 = and i32 %53, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool11.not.2 = icmp eq i32 %54, 0
  br i1 %tobool11.not.2, label %for.body.3, label %for.body.2.for.end_crit_edge

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  tail call void @msleep(i32 noundef 20) #12
  %55 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i76.3 = getelementptr i8, ptr %56, i32 52
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76.3) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %58 = and i32 %57, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool11.not.3 = icmp eq i32 %58, 0
  br i1 %tobool11.not.3, label %for.body.4, label %for.body.3.for.end_crit_edge

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @msleep(i32 noundef 20) #12
  %59 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i76.4 = getelementptr i8, ptr %60, i32 52
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76.4) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  br label %for.end

for.end:                                          ; preds = %for.body.4, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %axienet_setoptions.exit.for.end_crit_edge
  %62 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %63, i32 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %65 = and i32 %64, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool16.not91 = icmp eq i32 %65, 0
  br i1 %tobool16.not91, label %for.body20, label %for.end.for.end24_crit_edge

for.end.for.end24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end24

for.body20:                                       ; preds = %for.end
  tail call void @msleep(i32 noundef 20) #12
  %66 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %67, i32 4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %69 = and i32 %68, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool16.not = icmp eq i32 %69, 0
  br i1 %tobool16.not, label %for.body20.1, label %for.body20.for.end24_crit_edge

for.body20.for.end24_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end24

for.body20.1:                                     ; preds = %for.body20
  tail call void @msleep(i32 noundef 20) #12
  %70 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i80.1 = getelementptr i8, ptr %71, i32 4
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80.1) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %73 = and i32 %72, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool16.not.1 = icmp eq i32 %73, 0
  br i1 %tobool16.not.1, label %for.body20.2, label %for.body20.1.for.end24_crit_edge

for.body20.1.for.end24_crit_edge:                 ; preds = %for.body20.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end24

for.body20.2:                                     ; preds = %for.body20.1
  tail call void @msleep(i32 noundef 20) #12
  %74 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i80.2 = getelementptr i8, ptr %75, i32 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80.2) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %77 = and i32 %76, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool16.not.2 = icmp eq i32 %77, 0
  br i1 %tobool16.not.2, label %for.body20.3, label %for.body20.2.for.end24_crit_edge

for.body20.2.for.end24_crit_edge:                 ; preds = %for.body20.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end24

for.body20.3:                                     ; preds = %for.body20.2
  tail call void @msleep(i32 noundef 20) #12
  %78 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i80.3 = getelementptr i8, ptr %79, i32 4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80.3) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %81 = and i32 %80, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool16.not.3 = icmp eq i32 %81, 0
  br i1 %tobool16.not.3, label %for.body20.4, label %for.body20.3.for.end24_crit_edge

for.body20.3.for.end24_crit_edge:                 ; preds = %for.body20.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end24

for.body20.4:                                     ; preds = %for.body20.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @msleep(i32 noundef 20) #12
  %82 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i80.4 = getelementptr i8, ptr %83, i32 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80.4) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  br label %for.end24

for.end24:                                        ; preds = %for.body20.4, %for.body20.3.for.end24_crit_edge, %for.body20.2.for.end24_crit_edge, %for.body20.1.for.end24_crit_edge, %for.body20.for.end24_crit_edge, %for.end.for.end24_crit_edge
  %mii_bus.i = getelementptr i8, ptr %ndev, i32 2380
  %85 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mii_bus.i, align 4
  %tobool.not.i81 = icmp eq ptr %86, null
  br i1 %tobool.not.i81, label %for.end24.axienet_lock_mii.exit_crit_edge, label %if.then.i

for.end24.axienet_lock_mii.exit_crit_edge:        ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %axienet_lock_mii.exit

if.then.i:                                        ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #14
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %86, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 0) #12
  br label %axienet_lock_mii.exit

axienet_lock_mii.exit:                            ; preds = %if.then.i, %for.end24.axienet_lock_mii.exit_crit_edge
  %call25 = tail call fastcc i32 @__axienet_device_reset(ptr noundef %add.ptr.i)
  %87 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mii_bus.i, align 4
  %tobool.not.i83 = icmp eq ptr %88, null
  br i1 %tobool.not.i83, label %axienet_lock_mii.exit.axienet_unlock_mii.exit_crit_edge, label %if.then.i85

axienet_lock_mii.exit.axienet_unlock_mii.exit_crit_edge: ; preds = %axienet_lock_mii.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %axienet_unlock_mii.exit

if.then.i85:                                      ; preds = %axienet_lock_mii.exit
  call void @__sanitizer_cov_trace_pc() #14
  %mdio_lock.i84 = getelementptr inbounds %struct.mii_bus, ptr %88, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i84) #12
  br label %axienet_unlock_mii.exit

axienet_unlock_mii.exit:                          ; preds = %if.then.i85, %axienet_lock_mii.exit.axienet_unlock_mii.exit_crit_edge
  %dma_err_task = getelementptr i8, ptr %ndev, i32 2400
  %call26 = tail call zeroext i1 @cancel_work_sync(ptr noundef %dma_err_task) #12
  %eth_irq = getelementptr i8, ptr %ndev, i32 2452
  %89 = ptrtoint ptr %eth_irq to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %eth_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp27 = icmp sgt i32 %90, 0
  br i1 %cmp27, label %if.then28, label %axienet_unlock_mii.exit.if.end31_crit_edge

axienet_unlock_mii.exit.if.end31_crit_edge:       ; preds = %axienet_unlock_mii.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then28:                                        ; preds = %axienet_unlock_mii.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call30 = tail call ptr @free_irq(i32 noundef %90, ptr noundef %ndev) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %axienet_unlock_mii.exit.if.end31_crit_edge
  %tx_irq = getelementptr i8, ptr %ndev, i32 2444
  %91 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tx_irq, align 4
  %call32 = tail call ptr @free_irq(i32 noundef %92, ptr noundef %ndev) #12
  %rx_irq = getelementptr i8, ptr %ndev, i32 2448
  %93 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rx_irq, align 4
  %call33 = tail call ptr @free_irq(i32 noundef %94, ptr noundef %ndev) #12
  tail call fastcc void @axienet_dma_bd_release(ptr noundef %ndev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axienet_start_xmit(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_bd_tail = getelementptr i8, ptr %ndev, i32 2496
  %0 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_bd_tail, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %5 to i32
  %tx_bd_v = getelementptr i8, ptr %ndev, i32 2468
  %6 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_bd_v, align 4
  %arrayidx = getelementptr %struct.axidma_bd, ptr %7, i32 %1
  %add = add nuw nsw i32 %conv, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !209
  %8 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_bd_v, align 4
  %10 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_bd_tail, align 4
  %add.i = add i32 %add, %11
  %tx_bd_num.i = getelementptr i8, ptr %ndev, i32 2476
  %12 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_bd_num.i, align 4
  %rem.i = urem i32 %add.i, %13
  %cntrl.i = getelementptr %struct.axidma_bd, ptr %9, i32 %rem.i, i32 6
  %14 = ptrtoint ptr %cntrl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cntrl.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %17, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %call4 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.then6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %ndev, ptr noundef nonnull @.str.80) #15
  br label %cleanup

if.end7:                                          ; preds = %entry
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %18 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.lshr = lshr i16 %bf.load, 9
  %trunc = trunc i16 %bf.lshr to i2
  %19 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.102)
  switch i2 %trunc, label %if.end7.if.end38_crit_edge [
    i2 -1, label %if.then10
    i2 1, label %if.then34
  ]

if.end7.if.end38_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then10:                                        ; preds = %if.end7
  %features = getelementptr i8, ptr %ndev, i32 2464
  %20 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %features, align 4
  %and = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %app0 = getelementptr %struct.axidma_bd, ptr %7, i32 %1, i32 8
  %22 = ptrtoint ptr %app0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %app0, align 32
  %or = or i32 %23, 2
  store i32 %or, ptr %app0, align 32
  br label %if.end38

if.else:                                          ; preds = %if.then10
  %and14 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else.if.end38_crit_edge, label %if.then16

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %24 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %26 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %27 to i32
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %30 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %csum_offset = getelementptr inbounds %struct.anon.53, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %csum_offset to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %csum_offset, align 2
  %conv18 = zext i16 %32 to i32
  %add19 = add i32 %sub.ptr.sub.i, %conv18
  %app020 = getelementptr %struct.axidma_bd, ptr %7, i32 %1, i32 8
  %33 = ptrtoint ptr %app020 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %app020, align 32
  %or21 = or i32 %34, 1
  store i32 %or21, ptr %app020, align 32
  %shl = shl i32 %sub.ptr.sub.i, 16
  %or22 = or i32 %shl, %add19
  %app1 = getelementptr %struct.axidma_bd, ptr %7, i32 %1, i32 9
  %35 = ptrtoint ptr %app1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or22, ptr %app1, align 4
  br label %if.end38

if.then34:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %app035 = getelementptr %struct.axidma_bd, ptr %7, i32 %1, i32 8
  %36 = ptrtoint ptr %app035 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %app035, align 32
  %or36 = or i32 %37, 2
  store i32 %or36, ptr %app035, align 32
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.then16, %if.else.if.end38_crit_edge, %if.then12, %if.end7.if.end38_crit_edge
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %38 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parent, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %42 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %44 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_len.i, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %41) #12
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end38
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !208

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %39) #12
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 3
  %46 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %39, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %49, %if.end.i.i ], [ %47, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.67, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #12
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %50 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %51, i32 noundef -1) #12
  br label %if.then47

dma_map_single_attrs.exit:                        ; preds = %if.end38
  %sub.i = sub i32 %43, %45
  tail call void @debug_dma_map_single(ptr noundef %39, ptr noundef %41, i32 noundef %sub.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %52 = load ptr, ptr @mem_map, align 4
  %53 = ptrtoint ptr %41 to i32
  %sub.i196 = add i32 %53, 1073741824
  %shr.i = lshr i32 %sub.i196, 12
  %add.ptr.i197 = getelementptr %struct.page, ptr %52, i32 %shr.i
  %and.i = and i32 %53, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %39, ptr noundef %add.ptr.i197, i32 noundef %and.i, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #12
  %54 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %55, i32 noundef %call41.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then47_crit_edge, label %if.end52

dma_map_single_attrs.exit.if.then47_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47

if.then47:                                        ; preds = %dma_map_single_attrs.exit.if.then47_crit_edge, %dma_map_single_attrs.exit.thread
  %call48 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then47.if.end51_crit_edge, label %if.then50

if.then47.if.end51_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then50:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.81) #15
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.then47.if.end51_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %56 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %57, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

if.end52:                                         ; preds = %dma_map_single_attrs.exit
  %phys.i = getelementptr %struct.axidma_bd, ptr %7, i32 %1, i32 2
  %58 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call41.i, ptr %phys.i, align 8
  %features.i = getelementptr i8, ptr %ndev, i32 2464
  %59 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %features.i, align 4
  %and1.i = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i199 = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i199, label %if.end52.desc_set_phys_addr.exit_crit_edge, label %if.then.i200

if.end52.desc_set_phys_addr.exit_crit_edge:       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %desc_set_phys_addr.exit

if.then.i200:                                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %phys_msb.i = getelementptr %struct.axidma_bd, ptr %7, i32 %1, i32 3
  %61 = ptrtoint ptr %phys_msb.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %phys_msb.i, align 4
  br label %desc_set_phys_addr.exit

desc_set_phys_addr.exit:                          ; preds = %if.then.i200, %if.end52.desc_set_phys_addr.exit_crit_edge
  %62 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len.i, align 4
  %64 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data_len.i, align 8
  %sub.i203 = sub i32 %63, %65
  %or54 = or i32 %sub.i203, 134217728
  %cntrl = getelementptr %struct.axidma_bd, ptr %7, i32 %1, i32 6
  %66 = ptrtoint ptr %cntrl to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or54, ptr %cntrl, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp55279.not = icmp eq i8 %5, 0
  br i1 %cmp55279.not, label %desc_set_phys_addr.exit.for.end_crit_edge, label %desc_set_phys_addr.exit.for.body_crit_edge

desc_set_phys_addr.exit.for.body_crit_edge:       ; preds = %desc_set_phys_addr.exit
  br label %for.body

desc_set_phys_addr.exit.for.end_crit_edge:        ; preds = %desc_set_phys_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %desc_set_phys_addr.exit232.for.body_crit_edge, %desc_set_phys_addr.exit.for.body_crit_edge
  %ii.0280 = phi i32 [ %inc98, %desc_set_phys_addr.exit232.for.body_crit_edge ], [ 0, %desc_set_phys_addr.exit.for.body_crit_edge ]
  %67 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_bd_tail, align 4
  %inc58 = add i32 %68, 1
  %69 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tx_bd_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc58, i32 %70)
  %cmp59.not = icmp ult i32 %inc58, %70
  %spec.store.select = select i1 %cmp59.not, i32 %inc58, i32 0
  %71 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %spec.store.select, ptr %tx_bd_tail, align 4
  %72 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tx_bd_v, align 4
  %74 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %end.i, align 4
  %arrayidx68 = getelementptr %struct.skb_shared_info, ptr %75, i32 0, i32 12, i32 %ii.0280
  %76 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %parent, align 8
  %78 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx68, align 4
  %call1.i = tail call ptr @page_address(ptr noundef %79) #12
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %75, i32 0, i32 12, i32 %ii.0280, i32 2
  %80 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bv_offset.i.i, align 4
  %add.ptr.i205 = getelementptr i8, ptr %call1.i, i32 %81
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %75, i32 0, i32 12, i32 %ii.0280, i32 1
  %82 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bv_len.i, align 4
  %call.i206 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i205) #12
  br i1 %call.i206, label %land.rhs.i208, label %dma_map_single_attrs.exit223

land.rhs.i208:                                    ; preds = %for.body
  %.b1.i207 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i207, label %land.rhs.i208.dma_map_single_attrs.exit223.thread_crit_edge, label %if.then.i212, !prof !208

land.rhs.i208.dma_map_single_attrs.exit223.thread_crit_edge: ; preds = %land.rhs.i208
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit223.thread

if.then.i212:                                     ; preds = %land.rhs.i208
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i209 = tail call ptr @dev_driver_string(ptr noundef %77) #12
  %init_name.i.i210 = getelementptr inbounds %struct.device, ptr %77, i32 0, i32 3
  %84 = ptrtoint ptr %init_name.i.i210 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %init_name.i.i210, align 8
  %tobool.not.i.i211 = icmp eq ptr %85, null
  br i1 %tobool.not.i.i211, label %if.end.i.i213, label %if.then.i212.dev_name.exit.i215_crit_edge

if.then.i212.dev_name.exit.i215_crit_edge:        ; preds = %if.then.i212
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i215

if.end.i.i213:                                    ; preds = %if.then.i212
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %77, align 4
  br label %dev_name.exit.i215

dev_name.exit.i215:                               ; preds = %if.end.i.i213, %if.then.i212.dev_name.exit.i215_crit_edge
  %retval.0.i.i214 = phi ptr [ %87, %if.end.i.i213 ], [ %85, %if.then.i212.dev_name.exit.i215_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.67, ptr noundef %call16.i209, ptr noundef %retval.0.i.i214) #12
  br label %dma_map_single_attrs.exit223.thread

dma_map_single_attrs.exit223.thread:              ; preds = %dev_name.exit.i215, %land.rhs.i208.dma_map_single_attrs.exit223.thread_crit_edge
  %88 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %89, i32 noundef -1) #12
  br label %if.then84

dma_map_single_attrs.exit223:                     ; preds = %for.body
  tail call void @debug_dma_map_single(ptr noundef %77, ptr noundef %add.ptr.i205, i32 noundef %83) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %90 = load ptr, ptr @mem_map, align 4
  %91 = ptrtoint ptr %add.ptr.i205 to i32
  %sub.i216 = add i32 %91, 1073741824
  %shr.i217 = lshr i32 %sub.i216, 12
  %add.ptr.i218 = getelementptr %struct.page, ptr %90, i32 %shr.i217
  %and.i219 = and i32 %91, 4095
  %call41.i220 = tail call i32 @dma_map_page_attrs(ptr noundef %77, ptr noundef %add.ptr.i218, i32 noundef %and.i219, i32 noundef %83, i32 noundef 1, i32 noundef 0) #12
  %92 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %93, i32 noundef %call41.i220) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i220)
  %cmp.i224 = icmp eq i32 %call41.i220, -1
  br i1 %cmp.i224, label %dma_map_single_attrs.exit223.if.then84_crit_edge, label %if.end95

dma_map_single_attrs.exit223.if.then84_crit_edge: ; preds = %dma_map_single_attrs.exit223
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then84

if.then84:                                        ; preds = %dma_map_single_attrs.exit223.if.then84_crit_edge, %dma_map_single_attrs.exit223.thread
  %call85 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then84.if.end88_crit_edge, label %if.then87

if.then84.if.end88_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then87:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.81) #15
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.then84.if.end88_crit_edge
  %tx_dropped90 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %94 = ptrtoint ptr %tx_dropped90 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tx_dropped90, align 4
  %inc91 = add i32 %95, 1
  store i32 %inc91, ptr %tx_dropped90, align 4
  %add92 = add nuw i32 %ii.0280, 1
  %call93 = tail call fastcc i32 @axienet_free_tx_chain(ptr noundef %ndev, i32 noundef %1, i32 noundef %add92, ptr noundef null)
  %96 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %1, ptr %tx_bd_tail, align 4
  br label %cleanup

if.end95:                                         ; preds = %dma_map_single_attrs.exit223
  %phys.i226 = getelementptr %struct.axidma_bd, ptr %73, i32 %spec.store.select, i32 2
  %97 = ptrtoint ptr %phys.i226 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call41.i220, ptr %phys.i226, align 8
  %98 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %features.i, align 4
  %and1.i228 = and i32 %99, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i228)
  %tobool.not.i229 = icmp eq i32 %and1.i228, 0
  br i1 %tobool.not.i229, label %if.end95.desc_set_phys_addr.exit232_crit_edge, label %if.then.i231

if.end95.desc_set_phys_addr.exit232_crit_edge:    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %desc_set_phys_addr.exit232

if.then.i231:                                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  %phys_msb.i230 = getelementptr %struct.axidma_bd, ptr %73, i32 %spec.store.select, i32 3
  %100 = ptrtoint ptr %phys_msb.i230 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %phys_msb.i230, align 4
  br label %desc_set_phys_addr.exit232

desc_set_phys_addr.exit232:                       ; preds = %if.then.i231, %if.end95.desc_set_phys_addr.exit232_crit_edge
  %101 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bv_len.i, align 4
  %cntrl97 = getelementptr %struct.axidma_bd, ptr %73, i32 %spec.store.select, i32 6
  %103 = ptrtoint ptr %cntrl97 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %cntrl97, align 8
  %inc98 = add nuw nsw i32 %ii.0280, 1
  %exitcond.not = icmp eq i32 %inc98, %conv
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %desc_set_phys_addr.exit232.for.body_crit_edge

desc_set_phys_addr.exit232.for.body_crit_edge:    ; preds = %desc_set_phys_addr.exit232
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %desc_set_phys_addr.exit232
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx66.le = getelementptr %struct.axidma_bd, ptr %73, i32 %spec.store.select
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %desc_set_phys_addr.exit.for.end_crit_edge
  %cur_p.0.lcssa = phi ptr [ %arrayidx66.le, %for.cond.for.end_crit_edge ], [ %arrayidx, %desc_set_phys_addr.exit.for.end_crit_edge ]
  %cntrl99 = getelementptr inbounds %struct.axidma_bd, ptr %cur_p.0.lcssa, i32 0, i32 6
  %104 = ptrtoint ptr %cntrl99 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cntrl99, align 8
  %or100 = or i32 %105, 67108864
  store i32 %or100, ptr %cntrl99, align 8
  %skb101 = getelementptr inbounds %struct.axidma_bd, ptr %cur_p.0.lcssa, i32 0, i32 13
  %106 = ptrtoint ptr %skb101 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %skb, ptr %skb101, align 4
  %tx_bd_p = getelementptr i8, ptr %ndev, i32 2472
  %107 = ptrtoint ptr %tx_bd_p to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tx_bd_p, align 4
  %109 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tx_bd_tail, align 4
  %mul = shl i32 %110, 6
  %add103 = add i32 %mul, %108
  %dma_regs.i.i = getelementptr i8, ptr %ndev, i32 2396
  %111 = ptrtoint ptr %dma_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dma_regs.i.i, align 4
  %add.ptr.i.i234 = getelementptr i8, ptr %112, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %113 = tail call i32 @llvm.bswap.i32(i32 %add103) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i234, i32 %113) #12, !srcloc !206
  %114 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %features.i, align 4
  %and1.i236 = and i32 %115, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i236)
  %tobool.not.i237 = icmp eq i32 %and1.i236, 0
  br i1 %tobool.not.i237, label %for.end.axienet_dma_out_addr.exit_crit_edge, label %if.then.i238

for.end.axienet_dma_out_addr.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %axienet_dma_out_addr.exit

if.then.i238:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %dma_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dma_regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %117, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 0) #12, !srcloc !206
  br label %axienet_dma_out_addr.exit

axienet_dma_out_addr.exit:                        ; preds = %if.then.i238, %for.end.axienet_dma_out_addr.exit_crit_edge
  %118 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tx_bd_tail, align 4
  %inc105 = add i32 %119, 1
  %120 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %tx_bd_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc105, i32 %121)
  %cmp107.not = icmp ult i32 %inc105, %121
  %spec.store.select195 = select i1 %cmp107.not, i32 %inc105, i32 0
  %122 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %spec.store.select195, ptr %tx_bd_tail, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !209
  %123 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tx_bd_v, align 4
  %125 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tx_bd_tail, align 4
  %add.i241 = add i32 %126, 18
  %127 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tx_bd_num.i, align 4
  %rem.i243 = urem i32 %add.i241, %128
  %cntrl.i244 = getelementptr %struct.axidma_bd, ptr %124, i32 %rem.i243, i32 6
  %129 = ptrtoint ptr %cntrl.i244 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %cntrl.i244, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool.not.i245 = icmp eq i32 %130, 0
  br i1 %tobool.not.i245, label %axienet_dma_out_addr.exit.cleanup_crit_edge, label %if.then114

axienet_dma_out_addr.exit.cleanup_crit_edge:      ; preds = %axienet_dma_out_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then114:                                       ; preds = %axienet_dma_out_addr.exit
  %_tx.i.i247 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %131 = ptrtoint ptr %_tx.i.i247 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %_tx.i.i247, align 128
  %state.i.i248 = getelementptr inbounds %struct.netdev_queue, ptr %132, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i248) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !209
  %133 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %tx_bd_v, align 4
  %135 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tx_bd_tail, align 4
  %add.i251 = add i32 %136, 18
  %137 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %tx_bd_num.i, align 4
  %rem.i253 = urem i32 %add.i251, %138
  %cntrl.i254 = getelementptr %struct.axidma_bd, ptr %134, i32 %rem.i253, i32 6
  %139 = ptrtoint ptr %cntrl.i254 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cntrl.i254, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.not.i255 = icmp eq i32 %140, 0
  br i1 %tobool.not.i255, label %if.then120, label %if.then114.cleanup_crit_edge

if.then114.cleanup_crit_edge:                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then120:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #14
  %141 = ptrtoint ptr %_tx.i.i247 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %_tx.i.i247, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %142) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then120, %if.then114.cleanup_crit_edge, %axienet_dma_out_addr.exit.cleanup_crit_edge, %if.end88, %if.end51, %if.then6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end51 ], [ 0, %if.end88 ], [ 16, %if.then6 ], [ 16, %if.then.cleanup_crit_edge ], [ 0, %if.then114.cleanup_crit_edge ], [ 0, %if.then120 ], [ 0, %axienet_dma_out_addr.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axienet_set_multicast_list(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp sgt i32 %3, 4
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %or = or i32 %1, 256
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %flags, align 8
  %regs.i = getelementptr i8, ptr %ndev, i32 2392
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %6, i32 1800
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %8 = or i32 %7, 128
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i108 = getelementptr i8, ptr %10, i32 1800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %8) #12, !srcloc !206
  br label %if.end63.sink.split

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6 = icmp eq i32 %3, 0
  br i1 %cmp6, label %if.else45, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  %11 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %11)
  %ha.0129 = load ptr, ptr %mc, align 4
  %cmp12.not130 = icmp eq ptr %ha.0129, %mc
  br i1 %cmp12.not130, label %for.cond.preheader.if.end63_crit_edge, label %if.end.lr.ph

for.cond.preheader.if.end63_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.end.lr.ph:                                     ; preds = %for.cond.preheader
  %regs.i109 = getelementptr i8, ptr %ndev, i32 2392
  br label %if.end

if.end:                                           ; preds = %if.end.if.end_crit_edge, %if.end.lr.ph
  %ha.0132 = phi ptr [ %ha.0129, %if.end.lr.ph ], [ %ha.0, %if.end.if.end_crit_edge ]
  %i.0131 = phi i32 [ 0, %if.end.lr.ph ], [ %inc, %if.end.if.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0132, i32 0, i32 2
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %addr, align 4
  %conv = zext i8 %13 to i32
  %arrayidx16 = getelementptr %struct.netdev_hw_addr, ptr %ha.0132, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %conv17, 8
  %or18 = or i32 %shl, %conv
  %arrayidx20 = getelementptr %struct.netdev_hw_addr, ptr %ha.0132, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx20, align 2
  %conv21 = zext i8 %17 to i32
  %shl22 = shl nuw nsw i32 %conv21, 16
  %or23 = or i32 %or18, %shl22
  %arrayidx25 = getelementptr %struct.netdev_hw_addr, ptr %ha.0132, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %19 to i32
  %shl27 = shl nuw i32 %conv26, 24
  %or28 = or i32 %or23, %shl27
  %arrayidx30 = getelementptr %struct.netdev_hw_addr, ptr %ha.0132, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx30, align 4
  %conv31 = zext i8 %21 to i32
  %arrayidx33 = getelementptr %struct.netdev_hw_addr, ptr %ha.0132, i32 0, i32 2, i32 5
  %22 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %23 to i32
  %shl35 = shl nuw nsw i32 %conv34, 8
  %or36 = or i32 %shl35, %conv31
  %24 = ptrtoint ptr %regs.i109 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i109, align 4
  %add.ptr.i110 = getelementptr i8, ptr %25, i32 1800
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %27 = and i32 %26, 16777215
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %or39 = or i32 %28, %i.0131
  %29 = ptrtoint ptr %regs.i109 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i109, align 4
  %add.ptr.i112 = getelementptr i8, ptr %30, i32 1800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %31 = tail call i32 @llvm.bswap.i32(i32 %or39) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 %31) #12, !srcloc !206
  %32 = ptrtoint ptr %regs.i109 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i109, align 4
  %add.ptr.i114 = getelementptr i8, ptr %33, i32 1808
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %34 = tail call i32 @llvm.bswap.i32(i32 %or28) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %34) #12, !srcloc !206
  %35 = ptrtoint ptr %regs.i109 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i109, align 4
  %add.ptr.i116 = getelementptr i8, ptr %36, i32 1812
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %37 = tail call i32 @llvm.bswap.i32(i32 %or36) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %37) #12, !srcloc !206
  %inc = add nuw nsw i32 %i.0131, 1
  %38 = ptrtoint ptr %ha.0132 to i32
  call void @__asan_load4_noabort(i32 %38)
  %ha.0 = load ptr, ptr %ha.0132, align 4
  %cmp12.not = icmp eq ptr %ha.0, %mc
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0131)
  %cmp13 = icmp ugt i32 %i.0131, 2
  %or.cond = select i1 %cmp12.not, i1 true, i1 %cmp13
  br i1 %or.cond, label %if.end.if.end63_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.if.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.else45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %regs.i117 = getelementptr i8, ptr %ndev, i32 2392
  %39 = ptrtoint ptr %regs.i117 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i117, align 4
  %add.ptr.i118 = getelementptr i8, ptr %40, i32 1800
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i118) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %42 = and i32 %41, -129
  %43 = ptrtoint ptr %regs.i117 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i117, align 4
  %add.ptr.i120 = getelementptr i8, ptr %44, i32 1800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %42) #12, !srcloc !206
  %45 = ptrtoint ptr %regs.i117 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i117, align 4
  %add.ptr.i122 = getelementptr i8, ptr %46, i32 1800
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %48 = and i32 %47, 16777215
  %49 = ptrtoint ptr %regs.i117 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i117, align 4
  %add.ptr.i124 = getelementptr i8, ptr %50, i32 1800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 %48) #12, !srcloc !206
  %51 = ptrtoint ptr %regs.i117 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i117, align 4
  %add.ptr.i126 = getelementptr i8, ptr %52, i32 1808
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 0) #12, !srcloc !206
  %53 = ptrtoint ptr %regs.i117 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i117, align 4
  %add.ptr.i128 = getelementptr i8, ptr %54, i32 1812
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 0) #12, !srcloc !206
  %55 = ptrtoint ptr %regs.i117 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i117, align 4
  %add.ptr.i122.1 = getelementptr i8, ptr %56, i32 1800
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122.1) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %58 = and i32 %57, 16777215
  %59 = or i32 %58, 16777216
  %60 = ptrtoint ptr %regs.i117 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i117, align 4
  %add.ptr.i124.1 = getelementptr i8, ptr %61, i32 1800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124.1, i32 %59) #12, !srcloc !206
  %62 = ptrtoint ptr %regs.i117 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i117, align 4
  %add.ptr.i126.1 = getelementptr i8, ptr %63, i32 1808
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126.1, i32 0) #12, !srcloc !206
  %64 = ptrtoint ptr %regs.i117 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i117, align 4
  %add.ptr.i128.1 = getelementptr i8, ptr %65, i32 1812
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128.1, i32 0) #12, !srcloc !206
  %66 = ptrtoint ptr %regs.i117 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i117, align 4
  %add.ptr.i122.2 = getelementptr i8, ptr %67, i32 1800
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122.2) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %69 = and i32 %68, 16777215
  %70 = or i32 %69, 33554432
  %71 = ptrtoint ptr %regs.i117 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i117, align 4
  %add.ptr.i124.2 = getelementptr i8, ptr %72, i32 1800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124.2, i32 %70) #12, !srcloc !206
  %73 = ptrtoint ptr %regs.i117 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i117, align 4
  %add.ptr.i126.2 = getelementptr i8, ptr %74, i32 1808
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126.2, i32 0) #12, !srcloc !206
  %75 = ptrtoint ptr %regs.i117 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i117, align 4
  %add.ptr.i128.2 = getelementptr i8, ptr %76, i32 1812
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128.2, i32 0) #12, !srcloc !206
  %77 = ptrtoint ptr %regs.i117 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i117, align 4
  %add.ptr.i122.3 = getelementptr i8, ptr %78, i32 1800
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122.3) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %80 = and i32 %79, 16777215
  %81 = or i32 %80, 50331648
  %82 = ptrtoint ptr %regs.i117 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i117, align 4
  %add.ptr.i124.3 = getelementptr i8, ptr %83, i32 1800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124.3, i32 %81) #12, !srcloc !206
  %84 = ptrtoint ptr %regs.i117 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i117, align 4
  %add.ptr.i126.3 = getelementptr i8, ptr %85, i32 1808
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126.3, i32 0) #12, !srcloc !206
  %86 = ptrtoint ptr %regs.i117 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i117, align 4
  %add.ptr.i128.3 = getelementptr i8, ptr %87, i32 1812
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128.3, i32 0) #12, !srcloc !206
  br label %if.end63.sink.split

if.end63.sink.split:                              ; preds = %if.else45, %if.then
  %.str.85.sink = phi ptr [ @.str.85, %if.else45 ], [ @.str.82, %if.then ]
  %dev61 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev61, ptr noundef nonnull %.str.85.sink) #15
  br label %if.end63

if.end63:                                         ; preds = %if.end63.sink.split, %if.end.if.end63_crit_edge, %for.cond.preheader.if.end63_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_set_mac_address(ptr noundef %ndev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  tail call fastcc void @axienet_set_mac_address(ptr noundef %ndev, ptr noundef %sa_data)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axienet_ioctl(ptr noundef %dev, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %phylink = getelementptr i8, ptr %dev, i32 2316
  %2 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phylink, align 4
  %call2 = tail call i32 @phylink_mii_ioctl(ptr noundef %3, ptr noundef %rq, i32 noundef %cmd) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @axienet_change_mtu(ptr noundef %ndev, i32 noundef %new_mtu) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add2 = add i32 %new_mtu, 22
  %rxmem = getelementptr i8, ptr %ndev, i32 2508
  %2 = ptrtoint ptr %rxmem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxmem, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %3)
  %cmp = icmp ugt i32 %add2, %3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axienet_poll_controller(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_irq = getelementptr i8, ptr %ndev, i32 2444
  %0 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_irq, align 4
  tail call void @disable_irq(i32 noundef %1) #12
  %rx_irq = getelementptr i8, ptr %ndev, i32 2448
  %2 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_irq, align 4
  tail call void @disable_irq(i32 noundef %3) #12
  %4 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_irq, align 4
  %call2 = tail call i32 @axienet_rx_irq(i32 noundef %5, ptr noundef %ndev)
  %6 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_irq, align 4
  %call4 = tail call i32 @axienet_tx_irq(i32 noundef %7, ptr noundef %ndev)
  %8 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_irq, align 4
  tail call void @enable_irq(i32 noundef %9) #12
  %10 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_irq, align 4
  tail call void @enable_irq(i32 noundef %11) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_of_phy_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axienet_dma_err_handler(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -96
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %options = getelementptr i8, ptr %work, i32 60
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 4
  %and = and i32 %3, -6145
  %regs.i.i = getelementptr i8, ptr %1, i32 2392
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %tp.023.i = phi ptr [ @axienet_options, %entry ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %reg1.i = getelementptr inbounds %struct.axienet_option, ptr %tp.023.i, i32 0, i32 1
  %4 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg1.i, align 4
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %7, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #12, !srcloc !203
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %m_or.i = getelementptr inbounds %struct.axienet_option, ptr %tp.023.i, i32 0, i32 2
  %10 = ptrtoint ptr %m_or.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_or.i, align 4
  %neg.i = xor i32 %11, -1
  %and.i = and i32 %9, %neg.i
  %12 = ptrtoint ptr %tp.023.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tp.023.i, align 4
  %and4.i = and i32 %13, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %or.i = or i32 %11, %9
  %spec.select.i = select i1 %tobool5.not.i, i32 %and.i, i32 %or.i
  %14 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg1.i, align 4
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %17, i32 %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %18 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %18) #12, !srcloc !206
  %incdec.ptr.i = getelementptr %struct.axienet_option, ptr %tp.023.i, i32 1
  %19 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %axienet_setoptions.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

axienet_setoptions.exit:                          ; preds = %while.body.i
  %options8.i = getelementptr i8, ptr %1, i32 2460
  %21 = ptrtoint ptr %options8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %options8.i, align 4
  %or9.i = or i32 %22, %and
  store i32 %or9.i, ptr %options8.i, align 4
  %mii_bus.i = getelementptr i8, ptr %work, i32 -20
  %23 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mii_bus.i, align 4
  %tobool.not.i129 = icmp eq ptr %24, null
  br i1 %tobool.not.i129, label %axienet_setoptions.exit.axienet_lock_mii.exit_crit_edge, label %if.then.i

axienet_setoptions.exit.axienet_lock_mii.exit_crit_edge: ; preds = %axienet_setoptions.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %axienet_lock_mii.exit

if.then.i:                                        ; preds = %axienet_setoptions.exit
  call void @__sanitizer_cov_trace_pc() #14
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %24, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 0) #12
  br label %axienet_lock_mii.exit

axienet_lock_mii.exit:                            ; preds = %if.then.i, %axienet_setoptions.exit.axienet_lock_mii.exit_crit_edge
  %call = tail call fastcc i32 @__axienet_device_reset(ptr noundef %add.ptr)
  %25 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mii_bus.i, align 4
  %tobool.not.i131 = icmp eq ptr %26, null
  br i1 %tobool.not.i131, label %axienet_lock_mii.exit.axienet_unlock_mii.exit_crit_edge, label %if.then.i133

axienet_lock_mii.exit.axienet_unlock_mii.exit_crit_edge: ; preds = %axienet_lock_mii.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %axienet_unlock_mii.exit

if.then.i133:                                     ; preds = %axienet_lock_mii.exit
  call void @__sanitizer_cov_trace_pc() #14
  %mdio_lock.i132 = getelementptr inbounds %struct.mii_bus, ptr %26, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i132) #12
  br label %axienet_unlock_mii.exit

axienet_unlock_mii.exit:                          ; preds = %if.then.i133, %axienet_lock_mii.exit.axienet_unlock_mii.exit_crit_edge
  %tx_bd_num = getelementptr i8, ptr %work, i32 76
  %27 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_bd_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp209.not = icmp eq i32 %28, 0
  br i1 %cmp209.not, label %axienet_unlock_mii.exit.for.cond11.preheader_crit_edge, label %for.body.lr.ph

axienet_unlock_mii.exit.for.cond11.preheader_crit_edge: ; preds = %axienet_unlock_mii.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond11.preheader

for.body.lr.ph:                                   ; preds = %axienet_unlock_mii.exit
  %tx_bd_v = getelementptr i8, ptr %work, i32 68
  %parent = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  br label %for.body

for.cond11.preheader:                             ; preds = %if.end8.for.cond11.preheader_crit_edge, %axienet_unlock_mii.exit.for.cond11.preheader_crit_edge
  %rx_bd_num = getelementptr i8, ptr %work, i32 88
  %29 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_bd_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp12212.not = icmp eq i32 %30, 0
  br i1 %cmp12212.not, label %for.cond11.preheader.for.end23_crit_edge, label %for.body13.lr.ph

for.cond11.preheader.for.end23_crit_edge:         ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end23

for.body13.lr.ph:                                 ; preds = %for.cond11.preheader
  %rx_bd_v = getelementptr i8, ptr %work, i32 80
  br label %for.body13

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.body.lr.ph
  %i.0210 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end8.for.body_crit_edge ]
  %31 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_bd_v, align 4
  %cntrl = getelementptr %struct.axidma_bd, ptr %32, i32 %i.0210, i32 6
  %33 = ptrtoint ptr %cntrl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cntrl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not = icmp eq i32 %34, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %phys.i = getelementptr %struct.axidma_bd, ptr %32, i32 %i.0210, i32 2
  %35 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %phys.i, align 8
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent, align 8
  %and4 = and i32 %34, 8388607
  tail call void @dma_unmap_page_attrs(ptr noundef %38, i32 noundef %36, i32 noundef %and4, i32 noundef 1, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %skb = getelementptr %struct.axidma_bd, ptr %32, i32 %i.0210, i32 13
  %39 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %skb, align 4
  %tobool5.not = icmp eq ptr %40, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %40, i32 noundef 1) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %phys = getelementptr %struct.axidma_bd, ptr %32, i32 %i.0210, i32 2
  %41 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %phys, align 8
  %phys_msb = getelementptr %struct.axidma_bd, ptr %32, i32 %i.0210, i32 3
  %42 = ptrtoint ptr %phys_msb to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %phys_msb, align 4
  %inc = add nuw i32 %i.0210, 1
  %43 = call ptr @memset(ptr %cntrl, i32 0, i32 32)
  %44 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_bd_num, align 4
  %cmp = icmp ult i32 %inc, %45
  br i1 %cmp, label %if.end8.for.body_crit_edge, label %if.end8.for.cond11.preheader_crit_edge

if.end8.for.cond11.preheader_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond11.preheader

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body13.lr.ph
  %i.1213 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc22, %for.body13.for.body13_crit_edge ]
  %46 = ptrtoint ptr %rx_bd_v to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_bd_v, align 4
  %status15 = getelementptr %struct.axidma_bd, ptr %47, i32 %i.1213, i32 7
  %inc22 = add nuw i32 %i.1213, 1
  %48 = call ptr @memset(ptr %status15, i32 0, i32 24)
  %49 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_bd_num, align 4
  %cmp12 = icmp ult i32 %inc22, %50
  br i1 %cmp12, label %for.body13.for.body13_crit_edge, label %for.body13.for.end23_crit_edge

for.body13.for.end23_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end23

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body13

for.end23:                                        ; preds = %for.body13.for.end23_crit_edge, %for.cond11.preheader.for.end23_crit_edge
  %tx_bd_ci = getelementptr i8, ptr %work, i32 92
  %51 = ptrtoint ptr %tx_bd_ci to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %tx_bd_ci, align 4
  %tx_bd_tail = getelementptr i8, ptr %work, i32 96
  %52 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %tx_bd_tail, align 4
  %rx_bd_ci = getelementptr i8, ptr %work, i32 100
  %53 = ptrtoint ptr %rx_bd_ci to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %rx_bd_ci, align 4
  %dma_regs.i = getelementptr i8, ptr %work, i32 -4
  %54 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %55, i32 48
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %57 = and i32 %56, -7405568
  %58 = or i32 %57, 7346430
  %59 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i135 = getelementptr i8, ptr %60, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %58) #12, !srcloc !206
  %61 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dma_regs.i, align 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %64 = and i32 %63, -7405568
  %65 = or i32 %64, 7346430
  %66 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dma_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #12, !srcloc !206
  %rx_bd_p = getelementptr i8, ptr %work, i32 84
  %68 = ptrtoint ptr %rx_bd_p to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rx_bd_p, align 4
  %70 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %71, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %72 = tail call i32 @llvm.bswap.i32(i32 %69) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %72) #12, !srcloc !206
  %features.i = getelementptr i8, ptr %work, i32 64
  %73 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %features.i, align 4
  %and1.i = and i32 %74, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i138 = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i138, label %for.end23.axienet_dma_out_addr.exit_crit_edge, label %if.then.i139

for.end23.axienet_dma_out_addr.exit_crit_edge:    ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %axienet_dma_out_addr.exit

if.then.i139:                                     ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %76, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 0) #12, !srcloc !206
  br label %axienet_dma_out_addr.exit

axienet_dma_out_addr.exit:                        ; preds = %if.then.i139, %for.end23.axienet_dma_out_addr.exit_crit_edge
  %77 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i141 = getelementptr i8, ptr %78, i32 48
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %80 = or i32 %79, 16777216
  %81 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i143 = getelementptr i8, ptr %82, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 %80) #12, !srcloc !206
  %83 = ptrtoint ptr %rx_bd_p to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rx_bd_p, align 4
  %85 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rx_bd_num, align 4
  %sub = shl i32 %86, 6
  %mul = add i32 %84, -64
  %add = add i32 %mul, %sub
  %87 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i.i145 = getelementptr i8, ptr %88, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %89 = tail call i32 @llvm.bswap.i32(i32 %add) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i145, i32 %89) #12, !srcloc !206
  %90 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %features.i, align 4
  %and1.i147 = and i32 %91, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i147)
  %tobool.not.i148 = icmp eq i32 %and1.i147, 0
  br i1 %tobool.not.i148, label %axienet_dma_out_addr.exit.axienet_dma_out_addr.exit151_crit_edge, label %if.then.i150

axienet_dma_out_addr.exit.axienet_dma_out_addr.exit151_crit_edge: ; preds = %axienet_dma_out_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %axienet_dma_out_addr.exit151

if.then.i150:                                     ; preds = %axienet_dma_out_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i8.i149 = getelementptr i8, ptr %93, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i149, i32 0) #12, !srcloc !206
  br label %axienet_dma_out_addr.exit151

axienet_dma_out_addr.exit151:                     ; preds = %if.then.i150, %axienet_dma_out_addr.exit.axienet_dma_out_addr.exit151_crit_edge
  %tx_bd_p = getelementptr i8, ptr %work, i32 72
  %94 = ptrtoint ptr %tx_bd_p to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tx_bd_p, align 4
  %96 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i.i153 = getelementptr i8, ptr %97, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %98 = tail call i32 @llvm.bswap.i32(i32 %95) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i153, i32 %98) #12, !srcloc !206
  %99 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %features.i, align 4
  %and1.i155 = and i32 %100, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i155)
  %tobool.not.i156 = icmp eq i32 %and1.i155, 0
  br i1 %tobool.not.i156, label %axienet_dma_out_addr.exit151.axienet_dma_out_addr.exit159_crit_edge, label %if.then.i158

axienet_dma_out_addr.exit151.axienet_dma_out_addr.exit159_crit_edge: ; preds = %axienet_dma_out_addr.exit151
  call void @__sanitizer_cov_trace_pc() #14
  br label %axienet_dma_out_addr.exit159

if.then.i158:                                     ; preds = %axienet_dma_out_addr.exit151
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i8.i157 = getelementptr i8, ptr %102, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i157, i32 0) #12, !srcloc !206
  br label %axienet_dma_out_addr.exit159

axienet_dma_out_addr.exit159:                     ; preds = %if.then.i158, %axienet_dma_out_addr.exit151.axienet_dma_out_addr.exit159_crit_edge
  %103 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dma_regs.i, align 4
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %106 = or i32 %105, 16777216
  %107 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dma_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %106) #12, !srcloc !206
  %regs.i = getelementptr i8, ptr %work, i32 -8
  %109 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs.i, align 4
  %add.ptr.i162 = getelementptr i8, ptr %110, i32 1028
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i162) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %112 = and i32 %111, -17
  %113 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs.i, align 4
  %add.ptr.i164 = getelementptr i8, ptr %114, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164, i32 %112) #12, !srcloc !206
  %115 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs.i, align 4
  %add.ptr.i166 = getelementptr i8, ptr %116, i32 16
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i166) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %118 = and i32 %117, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool45.not = icmp eq i32 %118, 0
  br i1 %tobool45.not, label %axienet_dma_out_addr.exit159.if.end47_crit_edge, label %if.then46

axienet_dma_out_addr.exit159.if.end47_crit_edge:  ; preds = %axienet_dma_out_addr.exit159
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then46:                                        ; preds = %axienet_dma_out_addr.exit159
  call void @__sanitizer_cov_trace_pc() #14
  %119 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs.i, align 4
  %add.ptr.i168 = getelementptr i8, ptr %120, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168, i32 134217728) #12, !srcloc !206
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %axienet_dma_out_addr.exit159.if.end47_crit_edge
  %eth_irq = getelementptr i8, ptr %work, i32 52
  %121 = ptrtoint ptr %eth_irq to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %eth_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp48 = icmp sgt i32 %122, 0
  %cond = select i1 %cmp48, i32 402653184, i32 0
  %123 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs.i, align 4
  %add.ptr.i170 = getelementptr i8, ptr %124, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 %cond) #12, !srcloc !206
  %125 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regs.i, align 4
  %add.ptr.i172 = getelementptr i8, ptr %126, i32 1036
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 32) #12, !srcloc !206
  %127 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %options, align 4
  %and50 = and i32 %128, -6145
  br label %while.body.i187

while.body.i187:                                  ; preds = %while.body.i187.while.body.i187_crit_edge, %if.end47
  %tp.023.i174 = phi ptr [ @axienet_options, %if.end47 ], [ %incdec.ptr.i185, %while.body.i187.while.body.i187_crit_edge ]
  %reg1.i175 = getelementptr inbounds %struct.axienet_option, ptr %tp.023.i174, i32 0, i32 1
  %129 = ptrtoint ptr %reg1.i175 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %reg1.i175, align 4
  %131 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i20.i176 = getelementptr i8, ptr %132, i32 %130
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i176) #12, !srcloc !203
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %m_or.i177 = getelementptr inbounds %struct.axienet_option, ptr %tp.023.i174, i32 0, i32 2
  %135 = ptrtoint ptr %m_or.i177 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %m_or.i177, align 4
  %neg.i178 = xor i32 %136, -1
  %and.i179 = and i32 %134, %neg.i178
  %137 = ptrtoint ptr %tp.023.i174 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %tp.023.i174, align 4
  %and4.i180 = and i32 %138, %and50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i180)
  %tobool5.not.i181 = icmp eq i32 %and4.i180, 0
  %or.i182 = or i32 %136, %134
  %spec.select.i183 = select i1 %tobool5.not.i181, i32 %and.i179, i32 %or.i182
  %139 = ptrtoint ptr %reg1.i175 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %reg1.i175, align 4
  %141 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i22.i184 = getelementptr i8, ptr %142, i32 %140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %143 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i183) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i184, i32 %143) #12, !srcloc !206
  %incdec.ptr.i185 = getelementptr %struct.axienet_option, ptr %tp.023.i174, i32 1
  %144 = ptrtoint ptr %incdec.ptr.i185 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %incdec.ptr.i185, align 4
  %tobool.not.i186 = icmp eq i32 %145, 0
  br i1 %tobool.not.i186, label %axienet_setoptions.exit190, label %while.body.i187.while.body.i187_crit_edge

while.body.i187.while.body.i187_crit_edge:        ; preds = %while.body.i187
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i187

axienet_setoptions.exit190:                       ; preds = %while.body.i187
  %146 = ptrtoint ptr %options8.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %options8.i, align 4
  %or9.i189 = or i32 %147, %and50
  store i32 %or9.i189, ptr %options8.i, align 4
  tail call fastcc void @axienet_set_mac_address(ptr noundef %1, ptr noundef null)
  tail call void @axienet_set_multicast_list(ptr noundef %1)
  %148 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %options, align 4
  br label %while.body.i205

while.body.i205:                                  ; preds = %while.body.i205.while.body.i205_crit_edge, %axienet_setoptions.exit190
  %tp.023.i192 = phi ptr [ @axienet_options, %axienet_setoptions.exit190 ], [ %incdec.ptr.i203, %while.body.i205.while.body.i205_crit_edge ]
  %reg1.i193 = getelementptr inbounds %struct.axienet_option, ptr %tp.023.i192, i32 0, i32 1
  %150 = ptrtoint ptr %reg1.i193 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %reg1.i193, align 4
  %152 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i20.i194 = getelementptr i8, ptr %153, i32 %151
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i194) #12, !srcloc !203
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %m_or.i195 = getelementptr inbounds %struct.axienet_option, ptr %tp.023.i192, i32 0, i32 2
  %156 = ptrtoint ptr %m_or.i195 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %m_or.i195, align 4
  %neg.i196 = xor i32 %157, -1
  %and.i197 = and i32 %155, %neg.i196
  %158 = ptrtoint ptr %tp.023.i192 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %tp.023.i192, align 4
  %and4.i198 = and i32 %159, %149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i198)
  %tobool5.not.i199 = icmp eq i32 %and4.i198, 0
  %or.i200 = or i32 %157, %155
  %spec.select.i201 = select i1 %tobool5.not.i199, i32 %and.i197, i32 %or.i200
  %160 = ptrtoint ptr %reg1.i193 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %reg1.i193, align 4
  %162 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i22.i202 = getelementptr i8, ptr %163, i32 %161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %164 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i201) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i202, i32 %164) #12, !srcloc !206
  %incdec.ptr.i203 = getelementptr %struct.axienet_option, ptr %tp.023.i192, i32 1
  %165 = ptrtoint ptr %incdec.ptr.i203 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %incdec.ptr.i203, align 4
  %tobool.not.i204 = icmp eq i32 %166, 0
  br i1 %tobool.not.i204, label %axienet_setoptions.exit208, label %while.body.i205.while.body.i205_crit_edge

while.body.i205.while.body.i205_crit_edge:        ; preds = %while.body.i205
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i205

axienet_setoptions.exit208:                       ; preds = %while.body.i205
  call void @__sanitizer_cov_trace_pc() #14
  %167 = ptrtoint ptr %options8.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %options8.i, align 4
  %or9.i207 = or i32 %168, %149
  store i32 %or9.i207, ptr %options8.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axienet_tx_irq(i32 noundef %irq, ptr noundef %_ndev) #2 align 64 {
entry:
  %size.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_regs.i = getelementptr i8, ptr %_ndev, i32 2396
  %0 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #12, !srcloc !203
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %and = and i32 %3, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %_ndev, i32 2304
  %4 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %2) #12, !srcloc !206
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #12
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %size.i, align 4
  %tx_bd_ci.i = getelementptr i8, ptr %7, i32 2492
  %9 = ptrtoint ptr %tx_bd_ci.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_bd_ci.i, align 4
  %call1.i = call fastcc i32 @axienet_free_tx_chain(ptr noundef %7, i32 noundef %10, i32 noundef -1, ptr noundef nonnull %size.i) #12
  %11 = ptrtoint ptr %tx_bd_ci.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_bd_ci.i, align 4
  %add.i = add i32 %12, %call1.i
  store i32 %add.i, ptr %tx_bd_ci.i, align 4
  %tx_bd_num.i = getelementptr i8, ptr %7, i32 2476
  %13 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_bd_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %14)
  %cmp.not.i = icmp ult i32 %add.i, %14
  br i1 %cmp.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = sub i32 %add.i, %14
  %15 = ptrtoint ptr %tx_bd_ci.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub.i, ptr %tx_bd_ci.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 36, i32 1
  %16 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_packets.i, align 4
  %add6.i = add i32 %17, %call1.i
  store i32 %add6.i, ptr %tx_packets.i, align 4
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 4
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 36, i32 3
  %20 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_bytes.i, align 4
  %add8.i = add i32 %21, %19
  store i32 %add8.i, ptr %tx_bytes.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !209
  %tx_bd_v.i.i = getelementptr i8, ptr %7, i32 2468
  %22 = ptrtoint ptr %tx_bd_v.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_bd_v.i.i, align 4
  %tx_bd_tail.i.i = getelementptr i8, ptr %7, i32 2496
  %24 = ptrtoint ptr %tx_bd_tail.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_bd_tail.i.i, align 4
  %add.i.i = add i32 %25, 18
  %26 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_bd_num.i, align 4
  %rem.i.i = urem i32 %add.i.i, %27
  %cntrl.i.i = getelementptr %struct.axidma_bd, ptr %23, i32 %rem.i.i, i32 6
  %28 = ptrtoint ptr %cntrl.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cntrl.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %if.then13.i, label %if.end.i.axienet_start_xmit_done.exit_crit_edge

if.end.i.axienet_start_xmit_done.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %axienet_start_xmit_done.exit

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %30 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_tx.i.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %31) #12
  br label %axienet_start_xmit_done.exit

axienet_start_xmit_done.exit:                     ; preds = %if.then13.i, %if.end.i.axienet_start_xmit_done.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %3, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %and7 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %do.end

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.net_device, ptr %_ndev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68, i32 noundef %3) #15
  %tx_bd_v = getelementptr i8, ptr %_ndev, i32 2468
  %32 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_bd_v, align 4
  %tx_bd_ci = getelementptr i8, ptr %_ndev, i32 2492
  %34 = ptrtoint ptr %tx_bd_ci to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_bd_ci, align 4
  %phys_msb = getelementptr %struct.axidma_bd, ptr %33, i32 %35, i32 3
  %36 = ptrtoint ptr %phys_msb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phys_msb, align 4
  %phys = getelementptr %struct.axidma_bd, ptr %33, i32 %35, i32 2
  %38 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %phys, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71, i32 noundef %37, i32 noundef %39) #15
  %40 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dma_regs.i, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %43 = and i32 %42, -7340033
  %44 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dma_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #12, !srcloc !206
  %46 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %47, i32 48
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %49 = and i32 %48, -7340033
  %50 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %51, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %49) #12, !srcloc !206
  %dma_err_task = getelementptr i8, ptr %_ndev, i32 2400
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %52 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %52, ptr noundef %dma_err_task) #12
  %53 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %2) #12, !srcloc !206
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %axienet_start_xmit_done.exit
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end6.cleanup_crit_edge ], [ 1, %do.end ], [ 1, %axienet_start_xmit_done.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axienet_rx_irq(i32 noundef %irq, ptr noundef %_ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_regs.i = getelementptr i8, ptr %_ndev, i32 2396
  %0 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #12, !srcloc !203
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %and = and i32 %3, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %_ndev, i32 2304
  %4 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %5, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %2) #12, !srcloc !206
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %rx_bd_v.i = getelementptr i8, ptr %7, i32 2480
  %8 = ptrtoint ptr %rx_bd_v.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_bd_v.i, align 4
  %rx_bd_ci.i = getelementptr i8, ptr %7, i32 2500
  %10 = ptrtoint ptr %rx_bd_ci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_bd_ci.i, align 4
  %status173.i = getelementptr %struct.axidma_bd, ptr %9, i32 %11, i32 7
  %12 = ptrtoint ptr %status173.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status173.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool.not174.i = icmp sgt i32 %13, -1
  br i1 %tobool.not174.i, label %if.then.while.end.i_crit_edge, label %while.body.lr.ph.i

if.then.while.end.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then
  %arrayidx.i = getelementptr %struct.axidma_bd, ptr %9, i32 %11
  %rx_bd_p.i = getelementptr i8, ptr %7, i32 2484
  %parent.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 133, i32 1
  %max_frm_size.i = getelementptr i8, ptr %7, i32 2504
  %features.i = getelementptr i8, ptr %7, i32 2464
  %rx_bd_num.i = getelementptr i8, ptr %7, i32 2488
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %status179.i = phi ptr [ %status173.i, %while.body.lr.ph.i ], [ %status.i, %cleanup.i.while.body.i_crit_edge ]
  %cur_p.0177.i = phi ptr [ %arrayidx.i, %while.body.lr.ph.i ], [ %arrayidx69.i, %cleanup.i.while.body.i_crit_edge ]
  %packets.0176.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %cleanup.i.while.body.i_crit_edge ]
  %size.0175.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add35.i, %cleanup.i.while.body.i_crit_edge ]
  %14 = ptrtoint ptr %rx_bd_p.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_bd_p.i, align 4
  %16 = ptrtoint ptr %rx_bd_ci.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_bd_ci.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !212
  %phys.i.i = getelementptr inbounds %struct.axidma_bd, ptr %cur_p.0177.i, i32 0, i32 2
  %18 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phys.i.i, align 8
  %20 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent.i, align 8
  %22 = ptrtoint ptr %max_frm_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_frm_size.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %21, i32 noundef %19, i32 noundef %23, i32 noundef 2, i32 noundef 0) #12
  %skb3.i = getelementptr inbounds %struct.axidma_bd, ptr %cur_p.0177.i, i32 0, i32 13
  %24 = ptrtoint ptr %skb3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skb3.i, align 4
  store ptr null, ptr %skb3.i, align 4
  %app4.i = getelementptr inbounds %struct.axidma_bd, ptr %cur_p.0177.i, i32 0, i32 12
  %26 = ptrtoint ptr %app4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %app4.i, align 16
  %and5.i = and i32 %27, 65535
  %call6.i = tail call ptr @skb_put(ptr noundef %25, i32 noundef %and5.i) #12
  %call7.i = tail call zeroext i16 @eth_type_trans(ptr noundef %25, ptr noundef %7) #12
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 15, i32 0, i32 18
  %28 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %call7.i, ptr %protocol.i, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 15
  %29 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  store i16 %bf.clear.i, ptr %ip_summed.i, align 8
  %30 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %features.i, align 4
  %and8.i = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  %app2.i = getelementptr inbounds %struct.axidma_bd, ptr %cur_p.0177.i, i32 0, i32 10
  %32 = ptrtoint ptr %app2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %app2.i, align 8
  %34 = and i32 %33, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %34)
  %switch.i = icmp eq i32 %34, 16
  br i1 %switch.i, label %if.then.i.if.end33.sink.split.i_crit_edge, label %if.then.i.if.end33.i_crit_edge

if.then.i.if.end33.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

if.then.i.if.end33.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.sink.split.i

if.else.i:                                        ; preds = %while.body.i
  %and18.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %cmp19.not.i = icmp ne i32 %and18.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %call7.i)
  %cmp21.i = icmp eq i16 %call7.i, 2048
  %or.cond.i = select i1 %cmp19.not.i, i1 %cmp21.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true23.i, label %if.else.i.if.end33.i_crit_edge

if.else.i.if.end33.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

land.lhs.true23.i:                                ; preds = %if.else.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 6
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %36)
  %cmp24.i = icmp ugt i32 %36, 64
  br i1 %cmp24.i, label %if.then26.i, label %land.lhs.true23.i.if.end33.i_crit_edge

land.lhs.true23.i.if.end33.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

if.then26.i:                                      ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #14
  %app3.i = getelementptr inbounds %struct.axidma_bd, ptr %cur_p.0177.i, i32 0, i32 11
  %37 = ptrtoint ptr %app3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %app3.i, align 4
  %and27.i = and i32 %38, 65535
  %39 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 15, i32 0, i32 5
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and27.i, ptr %39, align 8
  br label %if.end33.sink.split.i

if.end33.sink.split.i:                            ; preds = %if.then26.i, %if.then.i.if.end33.sink.split.i_crit_edge
  %.sink.i = phi i16 [ 1024, %if.then26.i ], [ 512, %if.then.i.if.end33.sink.split.i_crit_edge ]
  %bf.set31.i = or i16 %.sink.i, %bf.clear.i
  %41 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %bf.set31.i, ptr %ip_summed.i, align 8
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end33.sink.split.i, %land.lhs.true23.i.if.end33.i_crit_edge, %if.else.i.if.end33.i_crit_edge, %if.then.i.if.end33.i_crit_edge
  %call34.i = tail call i32 @netif_rx(ptr noundef %25) #12
  %add35.i = add i32 %and5.i, %size.0175.i
  %inc.i = add i32 %packets.0176.i, 1
  %42 = ptrtoint ptr %max_frm_size.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_frm_size.i, align 4
  %add.i.i.i = add i32 %43, 2
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %7, i32 noundef %add.i.i.i, i32 noundef 2592) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end33.i.cleanup_crit_edge, label %if.end40.i

if.end33.i.cleanup_crit_edge:                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40.i:                                       ; preds = %if.end33.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %44 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %45, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %46 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %47, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %48 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parent.i, align 8
  %50 = ptrtoint ptr %max_frm_size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_frm_size.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i.i.i) #12
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end40.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !208

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %49) #12
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 3
  %52 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i141.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i141.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %49, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %55, %if.end.i.i.i ], [ %53, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.67, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #12
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %56 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parent.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %57, i32 noundef -1) #12
  br label %if.then51.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end40.i
  tail call void @debug_dma_map_single(ptr noundef %49, ptr noundef %add.ptr.i.i.i.i, i32 noundef %51) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %58 = load ptr, ptr @mem_map, align 4
  %59 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.i.i = add i32 %59, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i142.i = getelementptr %struct.page, ptr %58, i32 %shr.i.i
  %and.i.i = and i32 %59, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %49, ptr noundef %add.ptr.i142.i, i32 noundef %and.i.i, i32 noundef %51, i32 noundef 2, i32 noundef 0) #12
  %60 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %parent.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %61, i32 noundef %call41.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.then51.i_crit_edge, label %if.end56.i

dma_map_single_attrs.exit.i.if.then51.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51.i

if.then51.i:                                      ; preds = %dma_map_single_attrs.exit.i.if.then51.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  %call52.i = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.then51.i.if.end55.i_crit_edge, label %if.then54.i

if.then51.i.if.end55.i_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.i

if.then54.i:                                      ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.77) #15
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then54.i, %if.then51.i.if.end55.i_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i) #12
  br label %cleanup

if.end56.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %62 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call41.i.i, ptr %phys.i.i, align 8
  %63 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %features.i, align 4
  %and1.i.i = and i32 %64, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end56.i.cleanup.i_crit_edge, label %if.then.i144.i

if.end56.i.cleanup.i_crit_edge:                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.then.i144.i:                                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  %phys_msb.i.i = getelementptr inbounds %struct.axidma_bd, ptr %cur_p.0177.i, i32 0, i32 3
  %65 = ptrtoint ptr %phys_msb.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %phys_msb.i.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then.i144.i, %if.end56.i.cleanup.i_crit_edge
  %66 = ptrtoint ptr %max_frm_size.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_frm_size.i, align 4
  %cntrl.i = getelementptr inbounds %struct.axidma_bd, ptr %cur_p.0177.i, i32 0, i32 6
  %68 = ptrtoint ptr %cntrl.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %cntrl.i, align 8
  %69 = ptrtoint ptr %status179.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %status179.i, align 4
  %70 = ptrtoint ptr %skb3.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i.i.i, ptr %skb3.i, align 4
  %71 = ptrtoint ptr %rx_bd_ci.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_bd_ci.i, align 4
  %inc61.i = add i32 %72, 1
  %73 = ptrtoint ptr %rx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rx_bd_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc61.i, i32 %74)
  %cmp62.not.i = icmp ult i32 %inc61.i, %74
  %spec.store.select.i = select i1 %cmp62.not.i, i32 %inc61.i, i32 0
  %75 = ptrtoint ptr %rx_bd_ci.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %spec.store.select.i, ptr %rx_bd_ci.i, align 4
  %76 = ptrtoint ptr %rx_bd_v.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rx_bd_v.i, align 4
  %arrayidx69.i = getelementptr %struct.axidma_bd, ptr %77, i32 %spec.store.select.i
  %status.i = getelementptr %struct.axidma_bd, ptr %77, i32 %spec.store.select.i, i32 7
  %78 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %status.i, align 4
  %tobool.not.i = icmp sgt i32 %79, -1
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul.le.i = shl i32 %17, 6
  %add.le.i = add i32 %mul.le.i, %15
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %if.then.while.end.i_crit_edge
  %size.0.lcssa.i = phi i32 [ %add35.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.then.while.end.i_crit_edge ]
  %packets.0.lcssa.i = phi i32 [ %inc.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.then.while.end.i_crit_edge ]
  %tail_p.0.lcssa.i = phi i32 [ %add.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.then.while.end.i_crit_edge ]
  %stats.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 36
  %80 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %stats.i, align 8
  %add70.i = add i32 %81, %packets.0.lcssa.i
  store i32 %add70.i, ptr %stats.i, align 8
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 36, i32 2
  %82 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rx_bytes.i, align 8
  %add72.i = add i32 %83, %size.0.lcssa.i
  store i32 %add72.i, ptr %rx_bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tail_p.0.lcssa.i)
  %tobool73.not.i = icmp eq i32 %tail_p.0.lcssa.i, 0
  br i1 %tobool73.not.i, label %while.end.i.cleanup_crit_edge, label %if.then74.i

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then74.i:                                      ; preds = %while.end.i
  %dma_regs.i.i.i = getelementptr i8, ptr %7, i32 2396
  %84 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dma_regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %85, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %86 = tail call i32 @llvm.bswap.i32(i32 %tail_p.0.lcssa.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %86) #12, !srcloc !206
  %features.i145.i = getelementptr i8, ptr %7, i32 2464
  %87 = ptrtoint ptr %features.i145.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %features.i145.i, align 4
  %and1.i146.i = and i32 %88, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i146.i)
  %tobool.not.i147.i = icmp eq i32 %and1.i146.i, 0
  br i1 %tobool.not.i147.i, label %if.then74.i.cleanup_crit_edge, label %if.then.i148.i

if.then74.i.cleanup_crit_edge:                    ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i148.i:                                   ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %dma_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dma_regs.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %90, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 0) #12, !srcloc !206
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %3, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %and7 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %do.end

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.net_device, ptr %_ndev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.73, i32 noundef %3) #15
  %rx_bd_v = getelementptr i8, ptr %_ndev, i32 2480
  %91 = ptrtoint ptr %rx_bd_v to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rx_bd_v, align 4
  %rx_bd_ci = getelementptr i8, ptr %_ndev, i32 2500
  %93 = ptrtoint ptr %rx_bd_ci to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rx_bd_ci, align 4
  %phys_msb = getelementptr %struct.axidma_bd, ptr %92, i32 %94, i32 3
  %95 = ptrtoint ptr %phys_msb to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %phys_msb, align 4
  %phys = getelementptr %struct.axidma_bd, ptr %92, i32 %94, i32 2
  %97 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %phys, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71, i32 noundef %96, i32 noundef %98) #15
  %99 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dma_regs.i, align 4
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %102 = and i32 %101, -7340033
  %103 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dma_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #12, !srcloc !206
  %105 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %106, i32 48
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %108 = and i32 %107, -7340033
  %109 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %110, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %108) #12, !srcloc !206
  %dma_err_task = getelementptr i8, ptr %_ndev, i32 2400
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %111 = load ptr, ptr @system_wq, align 4
  %call.i.i57 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %111, ptr noundef %dma_err_task) #12
  %112 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %113, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %2) #12, !srcloc !206
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.i148.i, %if.then74.i.cleanup_crit_edge, %while.end.i.cleanup_crit_edge, %if.end55.i, %if.end33.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end6.cleanup_crit_edge ], [ 1, %do.end ], [ 1, %if.end55.i ], [ 1, %while.end.i.cleanup_crit_edge ], [ 1, %if.then74.i.cleanup_crit_edge ], [ 1, %if.then.i148.i ], [ 1, %if.end33.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axienet_eth_irq(i32 noundef %irq, ptr nocapture noundef %_ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr i8, ptr %_ndev, i32 2392
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #12, !srcloc !203
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %_ndev, i32 0, i32 36, i32 15
  %4 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_missed_errors, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %rx_missed_errors, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %and5 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end10_crit_edge, label %if.then7

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %_ndev, i32 0, i32 36, i32 13
  %6 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_frame_errors, align 4
  %inc9 = add i32 %7, 1
  store i32 %inc9, ptr %rx_frame_errors, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end4.if.end10_crit_edge
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %2) #12, !srcloc !206
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_disconnect_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @axienet_dma_bd_release(ptr nocapture noundef readonly %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %tx_bd_num = getelementptr i8, ptr %ndev, i32 2476
  %2 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_bd_num, align 4
  %mul = shl i32 %3, 6
  %tx_bd_v = getelementptr i8, ptr %ndev, i32 2468
  %4 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_bd_v, align 4
  %tx_bd_p = getelementptr i8, ptr %ndev, i32 2472
  %6 = ptrtoint ptr %tx_bd_p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_bd_p, align 4
  tail call void @dma_free_attrs(ptr noundef %1, i32 noundef %mul, ptr noundef %5, i32 noundef %7, i32 noundef 0) #12
  %rx_bd_v = getelementptr i8, ptr %ndev, i32 2480
  %8 = ptrtoint ptr %rx_bd_v to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_bd_v, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup23_crit_edge, label %for.cond.preheader

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup23

for.cond.preheader:                               ; preds = %entry
  %rx_bd_num = getelementptr i8, ptr %ndev, i32 2488
  %10 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_bd_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp50.not = icmp eq i32 %11, 0
  br i1 %cmp50.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %max_frm_size = getelementptr i8, ptr %ndev, i32 2504
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %rx_bd_v to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_bd_v, align 4
  %skb = getelementptr %struct.axidma_bd, ptr %13, i32 %i.051, i32 13
  %14 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb, align 4
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %if.end4

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end4:                                          ; preds = %for.body
  tail call void @consume_skb(ptr noundef nonnull %15) #12
  %16 = ptrtoint ptr %rx_bd_v to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_bd_v, align 4
  %cntrl = getelementptr %struct.axidma_bd, ptr %17, i32 %i.051, i32 6
  %18 = ptrtoint ptr %cntrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cntrl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool10.not = icmp eq i32 %19, 0
  br i1 %tobool10.not, label %if.end4.for.inc_crit_edge, label %if.then11

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %phys.i = getelementptr %struct.axidma_bd, ptr %17, i32 %i.051, i32 2
  %20 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phys.i, align 8
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent, align 8
  %24 = ptrtoint ptr %max_frm_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_frm_size, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %21, i32 noundef %25, i32 noundef 2, i32 noundef 0) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.end4.for.inc_crit_edge
  %inc = add nuw i32 %i.051, 1
  %26 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_bd_num, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent, align 8
  %30 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_bd_num, align 4
  %mul21 = shl i32 %31, 6
  %32 = ptrtoint ptr %rx_bd_v to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_bd_v, align 4
  %rx_bd_p = getelementptr i8, ptr %ndev, i32 2484
  %34 = ptrtoint ptr %rx_bd_p to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_bd_p, align 4
  tail call void @dma_free_attrs(ptr noundef %29, i32 noundef %mul21, ptr noundef %33, i32 noundef %35, i32 noundef 0) #12
  br label %cleanup23

cleanup23:                                        ; preds = %for.end, %entry.cleanup23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @axienet_free_tx_chain(ptr nocapture noundef readonly %ndev, i32 noundef %first_bd, i32 noundef %nr_bds, ptr noundef %sizep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %nr_bds)
  %cmp = icmp eq i32 %nr_bds, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tx_bd_num = getelementptr i8, ptr %ndev, i32 2476
  %0 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_bd_num, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %max_bds.0 = phi i32 [ %1, %if.then ], [ %nr_bds, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_bds.0)
  %cmp148 = icmp sgt i32 %max_bds.0, 0
  br i1 %cmp148, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %tx_bd_v = getelementptr i8, ptr %ndev, i32 2468
  %tx_bd_num2 = getelementptr i8, ptr %ndev, i32 2476
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %tobool19.not = icmp eq ptr %sizep, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_bd_v, align 4
  %add = add i32 %i.049, %first_bd
  %4 = ptrtoint ptr %tx_bd_num2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_bd_num2, align 4
  %rem = urem i32 %add, %5
  %status3 = getelementptr %struct.axidma_bd, ptr %3, i32 %rem, i32 7
  %6 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool.not = icmp sgt i32 %7, -1
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %for.body.for.end_crit_edge, label %if.end6

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end6:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !213
  %phys.i = getelementptr %struct.axidma_bd, ptr %3, i32 %rem, i32 2
  %8 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phys.i, align 8
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %cntrl = getelementptr %struct.axidma_bd, ptr %3, i32 %rem, i32 6
  %12 = ptrtoint ptr %cntrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cntrl, align 8
  %and8 = and i32 %13, 8388607
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %9, i32 noundef %and8, i32 noundef 1, i32 noundef 0) #12
  %skb = getelementptr %struct.axidma_bd, ptr %3, i32 %rem, i32 13
  %14 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb, align 4
  %tobool9.not = icmp eq ptr %15, null
  %or.cond47 = select i1 %tobool9.not, i1 true, i1 %tobool.not
  br i1 %or.cond47, label %if.end6.if.end15_crit_edge, label %if.then13

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %15, i32 noundef 0) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end6.if.end15_crit_edge
  %app0 = getelementptr %struct.axidma_bd, ptr %3, i32 %rem, i32 8
  %16 = ptrtoint ptr %app0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %app0, align 32
  %app1 = getelementptr %struct.axidma_bd, ptr %3, i32 %rem, i32 9
  %17 = ptrtoint ptr %app1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %app1, align 4
  %app2 = getelementptr %struct.axidma_bd, ptr %3, i32 %rem, i32 10
  %18 = ptrtoint ptr %app2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %app2, align 8
  %app4 = getelementptr %struct.axidma_bd, ptr %3, i32 %rem, i32 12
  %19 = ptrtoint ptr %app4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %app4, align 16
  %20 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %skb, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !214
  tail call void @arm_heavy_mb() #12
  %21 = ptrtoint ptr %cntrl to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %cntrl, align 8
  %22 = ptrtoint ptr %status3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %status3, align 4
  br i1 %tobool19.not, label %if.end15.for.inc_crit_edge, label %if.then20

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %and21 = and i32 %7, 8388607
  %23 = ptrtoint ptr %sizep to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sizep, align 4
  %add22 = add i32 %24, %and21
  store i32 %add22, ptr %sizep, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %if.end15.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, %max_bds.0
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %i.049, %for.body.for.end_crit_edge ], [ %max_bds.0, %for.inc.for.end_crit_edge ]
  ret i32 %i.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axienet_ethtools_get_drvinfo(ptr nocapture noundef readnone %ndev, ptr noundef %ed) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %ed, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.87, i32 noundef 32) #12
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %ed, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.88, i32 noundef 32) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @axienet_ethtools_get_regs_len(ptr nocapture noundef readnone %ndev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 160
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axienet_ethtools_get_regs(ptr noundef readonly %ndev, ptr nocapture noundef writeonly %regs, ptr noundef writeonly %ret) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %version, align 4
  %len1 = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 2
  %1 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 160, ptr %len1, align 4
  %2 = call ptr @memset(ptr %ret, i32 0, i32 160)
  %regs.i = getelementptr i8, ptr %ndev, i32 2392
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #12, !srcloc !203
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %7 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ret, align 4
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i147 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i147) #12, !srcloc !203
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx4 = getelementptr i32, ptr %ret, i32 1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx4, align 4
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i149 = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i149) #12, !srcloc !203
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx6 = getelementptr i32, ptr %ret, i32 2
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx6, align 4
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i151 = getelementptr i8, ptr %19, i32 12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151) #12, !srcloc !203
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx8 = getelementptr i32, ptr %ret, i32 3
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx8, align 4
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.i153 = getelementptr i8, ptr %24, i32 16
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i153) #12, !srcloc !203
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx10 = getelementptr i32, ptr %ret, i32 4
  %27 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx10, align 4
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i155 = getelementptr i8, ptr %29, i32 20
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i155) #12, !srcloc !203
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx12 = getelementptr i32, ptr %ret, i32 5
  %32 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx12, align 4
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr.i157 = getelementptr i8, ptr %34, i32 24
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i157) #12, !srcloc !203
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx14 = getelementptr i32, ptr %ret, i32 6
  %37 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx14, align 4
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %add.ptr.i159 = getelementptr i8, ptr %39, i32 28
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i159) #12, !srcloc !203
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx16 = getelementptr i32, ptr %ret, i32 7
  %42 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx16, align 4
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr.i161 = getelementptr i8, ptr %44, i32 32
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i161) #12, !srcloc !203
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx18 = getelementptr i32, ptr %ret, i32 8
  %47 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx18, align 4
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %add.ptr.i163 = getelementptr i8, ptr %49, i32 36
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i163) #12, !srcloc !203
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx20 = getelementptr i32, ptr %ret, i32 9
  %52 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx20, align 4
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 4
  %add.ptr.i165 = getelementptr i8, ptr %54, i32 40
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i165) #12, !srcloc !203
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx22 = getelementptr i32, ptr %ret, i32 10
  %57 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx22, align 4
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 4
  %add.ptr.i167 = getelementptr i8, ptr %59, i32 44
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i167) #12, !srcloc !203
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx24 = getelementptr i32, ptr %ret, i32 11
  %62 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx24, align 4
  %63 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i, align 4
  %add.ptr.i169 = getelementptr i8, ptr %64, i32 48
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i169) #12, !srcloc !203
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx26 = getelementptr i32, ptr %ret, i32 12
  %67 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx26, align 4
  %68 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i, align 4
  %add.ptr.i171 = getelementptr i8, ptr %69, i32 1024
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i171) #12, !srcloc !203
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx28 = getelementptr i32, ptr %ret, i32 13
  %72 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx28, align 4
  %73 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i, align 4
  %add.ptr.i173 = getelementptr i8, ptr %74, i32 1028
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i173) #12, !srcloc !203
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx30 = getelementptr i32, ptr %ret, i32 14
  %77 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arrayidx30, align 4
  %78 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i, align 4
  %add.ptr.i175 = getelementptr i8, ptr %79, i32 1032
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i175) #12, !srcloc !203
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx32 = getelementptr i32, ptr %ret, i32 15
  %82 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %arrayidx32, align 4
  %83 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i, align 4
  %add.ptr.i177 = getelementptr i8, ptr %84, i32 1036
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i177) #12, !srcloc !203
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx34 = getelementptr i32, ptr %ret, i32 16
  %87 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %arrayidx34, align 4
  %88 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs.i, align 4
  %add.ptr.i179 = getelementptr i8, ptr %89, i32 1040
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i179) #12, !srcloc !203
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx36 = getelementptr i32, ptr %ret, i32 17
  %92 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %arrayidx36, align 4
  %93 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs.i, align 4
  %add.ptr.i181 = getelementptr i8, ptr %94, i32 1044
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i181) #12, !srcloc !203
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx38 = getelementptr i32, ptr %ret, i32 18
  %97 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %arrayidx38, align 4
  %98 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs.i, align 4
  %add.ptr.i183 = getelementptr i8, ptr %99, i32 1280
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i183) #12, !srcloc !203
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx40 = getelementptr i32, ptr %ret, i32 19
  %102 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %arrayidx40, align 4
  %103 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs.i, align 4
  %add.ptr.i185 = getelementptr i8, ptr %104, i32 1284
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i185) #12, !srcloc !203
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx42 = getelementptr i32, ptr %ret, i32 20
  %107 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %arrayidx42, align 4
  %108 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs.i, align 4
  %add.ptr.i187 = getelementptr i8, ptr %109, i32 1288
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #12, !srcloc !203
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx44 = getelementptr i32, ptr %ret, i32 21
  %112 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %arrayidx44, align 4
  %113 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs.i, align 4
  %add.ptr.i189 = getelementptr i8, ptr %114, i32 1292
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i189) #12, !srcloc !203
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx46 = getelementptr i32, ptr %ret, i32 22
  %117 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %arrayidx46, align 4
  %118 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i, align 4
  %add.ptr.i191 = getelementptr i8, ptr %119, i32 1792
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i191) #12, !srcloc !203
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx48 = getelementptr i32, ptr %ret, i32 27
  %122 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %arrayidx48, align 4
  %123 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs.i, align 4
  %add.ptr.i193 = getelementptr i8, ptr %124, i32 1796
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i193) #12, !srcloc !203
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx50 = getelementptr i32, ptr %ret, i32 28
  %127 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %arrayidx50, align 4
  %128 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs.i, align 4
  %add.ptr.i195 = getelementptr i8, ptr %129, i32 1800
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i195) #12, !srcloc !203
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx52 = getelementptr i32, ptr %ret, i32 29
  %132 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %arrayidx52, align 4
  %133 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regs.i, align 4
  %add.ptr.i197 = getelementptr i8, ptr %134, i32 1808
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197) #12, !srcloc !203
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx54 = getelementptr i32, ptr %ret, i32 30
  %137 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %arrayidx54, align 4
  %138 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs.i, align 4
  %add.ptr.i199 = getelementptr i8, ptr %139, i32 1812
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i199) #12, !srcloc !203
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx56 = getelementptr i32, ptr %ret, i32 31
  %142 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %arrayidx56, align 4
  %dma_regs.i = getelementptr i8, ptr %ndev, i32 2396
  %143 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dma_regs.i, align 4
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #12, !srcloc !203
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx58 = getelementptr i32, ptr %ret, i32 32
  %147 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %arrayidx58, align 4
  %148 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i201 = getelementptr i8, ptr %149, i32 4
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i201) #12, !srcloc !203
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx60 = getelementptr i32, ptr %ret, i32 33
  %152 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %arrayidx60, align 4
  %153 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i203 = getelementptr i8, ptr %154, i32 8
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i203) #12, !srcloc !203
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx62 = getelementptr i32, ptr %ret, i32 34
  %157 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %arrayidx62, align 4
  %158 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i205 = getelementptr i8, ptr %159, i32 16
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i205) #12, !srcloc !203
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx64 = getelementptr i32, ptr %ret, i32 35
  %162 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %arrayidx64, align 4
  %163 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i207 = getelementptr i8, ptr %164, i32 48
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i207) #12, !srcloc !203
  %166 = tail call i32 @llvm.bswap.i32(i32 %165) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx66 = getelementptr i32, ptr %ret, i32 36
  %167 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %arrayidx66, align 4
  %168 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i209 = getelementptr i8, ptr %169, i32 52
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i209) #12, !srcloc !203
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx68 = getelementptr i32, ptr %ret, i32 37
  %172 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %arrayidx68, align 4
  %173 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i211 = getelementptr i8, ptr %174, i32 56
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i211) #12, !srcloc !203
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx70 = getelementptr i32, ptr %ret, i32 38
  %177 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %arrayidx70, align 4
  %178 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i213 = getelementptr i8, ptr %179, i32 64
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i213) #12, !srcloc !203
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %arrayidx72 = getelementptr i32, ptr %ret, i32 39
  %182 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %arrayidx72, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axienet_ethtools_nway_reset(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phylink = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 4
  %call1 = tail call i32 @phylink_ethtool_nway_reset(ptr noundef %1) #12
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axienet_ethtools_get_coalesce(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %ecoalesce, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_regs.i = getelementptr i8, ptr %ndev, i32 2396
  %0 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_regs.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %3 = lshr i32 %2, 8
  %shr = and i32 %3, 255
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecoalesce, i32 0, i32 2
  %4 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr, ptr %rx_max_coalesced_frames, align 4
  %5 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma_regs.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %8 = lshr i32 %7, 8
  %shr4 = and i32 %8, 255
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecoalesce, i32 0, i32 6
  %9 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr4, ptr %tx_max_coalesced_frames, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axienet_ethtools_set_coalesce(ptr noundef %ndev, ptr nocapture noundef readonly %ecoalesce, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.89) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecoalesce, i32 0, i32 2
  %2 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %coalesce_count_rx = getelementptr i8, ptr %ndev, i32 2520
  %4 = ptrtoint ptr %coalesce_count_rx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %coalesce_count_rx, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecoalesce, i32 0, i32 6
  %5 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.then6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %coalesce_count_tx = getelementptr i8, ptr %ndev, i32 2524
  %7 = ptrtoint ptr %coalesce_count_tx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %coalesce_count_tx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end4.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -14, %if.then ], [ 0, %if.then6 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @axienet_ethtools_get_ringparam(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %ering, ptr nocapture noundef readnone %kernel_ering, ptr nocapture noundef readnone %extack) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %rx_max_pending, align 4
  %rx_mini_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 2
  %1 = ptrtoint ptr %rx_mini_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %rx_mini_max_pending, align 4
  %rx_jumbo_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 3
  %2 = ptrtoint ptr %rx_jumbo_max_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rx_jumbo_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 4
  %3 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4096, ptr %tx_max_pending, align 4
  %rx_bd_num = getelementptr i8, ptr %ndev, i32 2488
  %4 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_bd_num, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 5
  %6 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %rx_pending, align 4
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 6
  %7 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rx_mini_pending, align 4
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 7
  %8 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rx_jumbo_pending, align 4
  %tx_bd_num = getelementptr i8, ptr %ndev, i32 2476
  %9 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_bd_num, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 8
  %11 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @axienet_ethtools_set_ringparam(ptr noundef %ndev, ptr nocapture noundef readonly %ering, ptr nocapture noundef readnone %kernel_ering, ptr nocapture noundef readnone %extack) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 5
  %0 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp ugt i32 %1, 4096
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 6
  %2 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false1, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 7
  %4 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false1.cleanup_crit_edge

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false1
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 8
  %6 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_pending, align 4
  %8 = add i32 %7, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4079, i32 %8)
  %9 = icmp ult i32 %8, -4079
  br i1 %9, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %rx_bd_num = getelementptr i8, ptr %ndev, i32 2488
  %12 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %1, ptr %rx_bd_num, align 4
  %13 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_pending, align 4
  %tx_bd_num = getelementptr i8, ptr %ndev, i32 2476
  %15 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tx_bd_num, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false1.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axienet_ethtools_get_pauseparam(ptr nocapture noundef readonly %ndev, ptr noundef %epauseparm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phylink = getelementptr i8, ptr %ndev, i32 2316
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 4
  tail call void @phylink_ethtool_get_pauseparam(ptr noundef %1, ptr noundef %epauseparm) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axienet_ethtools_set_pauseparam(ptr nocapture noundef readonly %ndev, ptr noundef %epauseparm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phylink = getelementptr i8, ptr %ndev, i32 2316
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 4
  %call1 = tail call i32 @phylink_ethtool_set_pauseparam(ptr noundef %1, ptr noundef %epauseparm) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axienet_ethtools_get_link_ksettings(ptr nocapture noundef readonly %ndev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phylink = getelementptr i8, ptr %ndev, i32 2316
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 4
  %call1 = tail call i32 @phylink_ethtool_ksettings_get(ptr noundef %1, ptr noundef %cmd) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axienet_ethtools_set_link_ksettings(ptr nocapture noundef readonly %ndev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phylink = getelementptr i8, ptr %ndev, i32 2316
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 4
  %call1 = tail call i32 @phylink_ethtool_ksettings_set(ptr noundef %1, ptr noundef %cmd) #12
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_nway_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_ethtool_get_pauseparam(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_set_pauseparam(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_generic_validate(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axienet_mac_pcs_get_state(ptr nocapture noundef readonly %config, ptr noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interface, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 4, label %entry.sw.bb_crit_edge
    i32 21, label %entry.sw.bb_crit_edge2
  ]

entry.sw.bb_crit_edge2:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge2
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %pcs_phy = getelementptr i8, ptr %4, i32 1240
  %5 = ptrtoint ptr %pcs_phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcs_phy, align 4
  tail call void @phylink_mii_c22_pcs_get_state(ptr noundef %6, ptr noundef %state) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axienet_mac_prepare(ptr nocapture noundef readonly %config, i32 noundef %mode, i32 noundef %iface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -1104
  %2 = zext i32 %iface to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %iface, label %entry.cleanup_crit_edge [
    i32 4, label %entry.sw.bb_crit_edge
    i32 21, label %entry.sw.bb_crit_edge15
  ]

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge15
  %switch_x_sgmii = getelementptr i8, ptr %1, i32 1244
  %3 = ptrtoint ptr %switch_x_sgmii to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %switch_x_sgmii, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %pcs_phy = getelementptr i8, ptr %1, i32 1240
  %5 = ptrtoint ptr %pcs_phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcs_phy, align 4
  %bus = getelementptr inbounds %struct.mdio_device, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 8
  %addr = getelementptr inbounds %struct.mdio_device, ptr %6, i32 0, i32 6
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %iface)
  %cmp = icmp eq i32 %iface, 4
  %conv = zext i1 %cmp to i16
  %call2 = tail call i32 @mdiobus_write(ptr noundef %8, i32 noundef %10, i32 noundef 17, i16 noundef zeroext %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %add.ptr, ptr noundef nonnull @.str.95, i32 noundef %call2) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb.cleanup_crit_edge ], [ %call2, %if.then5 ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axienet_mac_config(ptr nocapture noundef readonly %config, i32 noundef %mode, ptr noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -1104
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interface, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 4, label %entry.sw.bb_crit_edge
    i32 21, label %entry.sw.bb_crit_edge7
  ]

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge7
  %pcs_phy = getelementptr i8, ptr %1, i32 1240
  %5 = ptrtoint ptr %pcs_phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcs_phy, align 4
  %call2 = tail call i32 @phylink_mii_c22_pcs_config(ptr noundef %6, i32 noundef %mode, i32 noundef %3, ptr noundef %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %add.ptr, ptr noundef nonnull @.str.96, i32 noundef %call2) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axienet_mac_an_restart(ptr nocapture noundef readonly %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %pcs_phy = getelementptr i8, ptr %1, i32 1240
  %2 = ptrtoint ptr %pcs_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcs_phy, align 4
  tail call void @phylink_mii_c22_pcs_an_restart(ptr noundef %3) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @axienet_mac_link_down(ptr nocapture noundef %config, i32 noundef %mode, i32 noundef %interface) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axienet_mac_link_up(ptr nocapture noundef readonly %config, ptr nocapture noundef readnone %phy, i32 noundef %mode, i32 noundef %interface, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %regs.i = getelementptr i8, ptr %1, i32 1288
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %3, i32 1040
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %5 = and i32 %4, -193
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %speed, label %do.end [
    i32 1000, label %sw.bb
    i32 100, label %sw.bb3
    i32 10, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %6, -2147483648
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or4 = or i32 %6, 1073741824
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.97) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %emmc_reg.0 = phi i32 [ %6, %do.end ], [ %or4, %sw.bb3 ], [ %or, %sw.bb ], [ %6, %entry.sw.epilog_crit_edge ]
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %9, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %10 = tail call i32 @llvm.bswap.i32(i32 %emmc_reg.0) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %10) #12, !srcloc !206
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %12, i32 1036
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #12, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %masksel = select i1 %tx_pause, i32 1073741824, i32 0
  %14 = and i32 %13, -97
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %masksel36 = select i1 %rx_pause, i32 536870912, i32 0
  %and15 = or i32 %masksel36, %masksel
  %fcc_reg.1 = or i32 %and15, %15
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %17, i32 1036
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %18 = tail call i32 @llvm.bswap.i32(i32 %fcc_reg.1) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %18) #12, !srcloc !206
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_mii_c22_pcs_get_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_mii_c22_pcs_config(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_mii_c22_pcs_an_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !114, !116, !118, !120, !122, !123, !124, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !145, !147, !148, !149, !151, !153, !155, !156, !157, !158, !160, !161, !162, !164, !166, !168, !170, !172, !173, !174, !175, !177, !178, !179, !181, !183, !185, !187, !188, !189, !190}
!llvm.module.flags = !{!192, !193, !194, !195, !196, !197, !198, !199}
!llvm.ident = !{!200}

!0 = !{ptr @__initcall__kmod_xilinx_emac__353_2185_axienet_driver_init6, !1, !"__initcall__kmod_xilinx_emac__353_2185_axienet_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 2185, i32 1}
!2 = !{ptr @__exitcall_axienet_driver_exit, !1, !"__exitcall_axienet_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description354, !4, !"__UNIQUE_ID_description354", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 2187, i32 1}
!5 = !{ptr @__UNIQUE_ID_author355, !6, !"__UNIQUE_ID_author355", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 2188, i32 1}
!7 = !{ptr @__UNIQUE_ID_file356, !8, !"__UNIQUE_ID_file356", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 2189, i32 1}
!9 = !{ptr @__UNIQUE_ID_license357, !8, !"__UNIQUE_ID_license357", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 2180, i32 12}
!12 = !{ptr @axienet_driver, !13, !"axienet_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 2175, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1850, i32 50}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1863, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @axienet_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @axienet_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1867, i32 24}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1868, i32 24}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1869, i32 24}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1890, i32 48}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1911, i32 48}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1934, i32 42}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1937, i32 10}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1940, i32 48}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1942, i32 21}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1970, i32 3}
!44 = !{ptr @axienet_probe._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @axienet_probe._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1976, i32 43}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1982, i32 4}
!50 = !{ptr @axienet_probe._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @axienet_probe._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 2001, i32 3}
!54 = !{ptr @axienet_probe._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @axienet_probe._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 2006, i32 3}
!58 = !{ptr @axienet_probe._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @axienet_probe._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 2028, i32 5}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @axienet_probe._entry.29, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @axienet_probe._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 2037, i32 3}
!67 = !{ptr @axienet_probe._entry.33, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @axienet_probe._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 2043, i32 3}
!71 = !{ptr @axienet_probe._entry.36, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @axienet_probe._entry_ptr.38, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 2050, i32 3}
!75 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @axienet_probe._entry.39, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @axienet_probe._entry_ptr.42, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 2063, i32 53}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 2067, i32 4}
!82 = !{ptr @axienet_probe._entry.44, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @axienet_probe._entry_ptr.46, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 2073, i32 4}
!86 = !{ptr @axienet_probe._entry.47, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @axienet_probe._entry_ptr.49, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 2104, i32 3}
!90 = !{ptr @axienet_probe._entry.50, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @axienet_probe._entry_ptr.52, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.54, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 2110, i32 3}
!94 = !{ptr @axienet_probe._entry.53, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @axienet_probe._entry_ptr.55, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @axienet_netdev_ops, !97, !"axienet_netdev_ops", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1250, i32 36}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1077, i32 2}
!100 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.58, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @axienet_open.__UNIQUE_ID_ddebug351, !99, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!103 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1089, i32 3}
!105 = !{ptr @axienet_open._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @axienet_open._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @axienet_open.__key, !108, !"__key", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1096, i32 2}
!109 = !{ptr @.str.60, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1126, i32 2}
!112 = !{ptr @axienet_open._entry.61, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @axienet_open._entry_ptr.63, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 570, i32 20}
!116 = !{ptr @__func__.axienet_device_reset, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 571, i32 7}
!118 = !{ptr @.str.65, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 291, i32 21}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!122 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.67, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @axienet_options, !125, !"axienet_options", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 68, i32 30}
!126 = !{ptr @.str.68, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 954, i32 3}
!128 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @axienet_tx_irq._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @axienet_tx_irq._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.71, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 955, i32 3}
!133 = !{ptr @axienet_tx_irq._entry.70, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @axienet_tx_irq._entry_ptr.72, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.73, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1004, i32 3}
!137 = !{ptr @.str.74, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @axienet_rx_irq._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @axienet_rx_irq._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @axienet_rx_irq._entry.75, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1005, i32 3}
!142 = !{ptr @axienet_rx_irq._entry_ptr.76, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.77, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 906, i32 22}
!145 = !{ptr @.str.78, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1146, i32 2}
!147 = !{ptr @.str.79, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @axienet_stop.__UNIQUE_ID_ddebug352, !146, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!149 = !{ptr @.str.80, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 758, i32 22}
!151 = !{ptr @.str.81, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 781, i32 21}
!153 = !{ptr @.str.82, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 426, i32 3}
!155 = !{ptr @.str.83, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @axienet_set_multicast_list._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @axienet_set_multicast_list._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.85, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 466, i32 3}
!160 = !{ptr @axienet_set_multicast_list._entry.84, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @axienet_set_multicast_list._entry_ptr.86, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @axienet_ethtool_ops, !163, !"axienet_ethtool_ops", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1523, i32 33}
!164 = !{ptr @.str.87, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1275, i32 22}
!166 = !{ptr @.str.88, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1276, i32 23}
!168 = !{ptr @.str.89, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1486, i32 7}
!170 = !{ptr @.str.90, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 516, i32 3}
!172 = !{ptr @.str.91, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @__axienet_device_reset._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @__axienet_device_reset._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.93, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 526, i32 3}
!177 = !{ptr @__axienet_device_reset._entry.92, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @__axienet_device_reset._entry_ptr.94, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @axienet_phylink_ops, !180, !"axienet_phylink_ops", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1664, i32 37}
!181 = !{ptr @.str.95, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1583, i32 22}
!183 = !{ptr @.str.96, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1605, i32 22}
!185 = !{ptr @.str.97, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 1645, i32 3}
!187 = !{ptr @.str.98, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @axienet_mac_link_up._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @axienet_mac_link_up._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @axienet_of_match, !191, !"axienet_of_match", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/xilinx/xilinx_axienet_main.c", i32 58, i32 34}
!192 = !{i32 1, !"wchar_size", i32 2}
!193 = !{i32 1, !"min_enum_size", i32 4}
!194 = !{i32 8, !"branch-target-enforcement", i32 0}
!195 = !{i32 8, !"sign-return-address", i32 0}
!196 = !{i32 8, !"sign-return-address-all", i32 0}
!197 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!198 = !{i32 7, !"uwtable", i32 1}
!199 = !{i32 7, !"frame-pointer", i32 2}
!200 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!201 = !{!"auto-init"}
!202 = !{i8 0, i8 2}
!203 = !{i64 6146058}
!204 = !{i64 2153686407}
!205 = !{i64 2153687762}
!206 = !{i64 6145640}
!207 = !{i64 2148785238, i64 2148785243, i64 2148785256, i64 2148785300, i64 2148785334, i64 2148785355}
!208 = !{!"branch_weights", i32 2000, i32 1}
!209 = !{i64 2156839647}
!210 = !{i64 2156840634}
!211 = !{i64 2156839799}
!212 = !{i64 2156840821}
!213 = !{i64 2156839091}
!214 = !{i64 2156839376}
