; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/xilinx/ll_temac_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/xilinx/ll_temac_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.temac_option = type { i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.temac_local = type { ptr, ptr, ptr, [64 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.spinlock, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, %struct.delayed_work }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ll_temac_platform_data = type { i8, i8, [6 x i8], i32, i64, i32, i32, i8, i8, ptr, i8, i8, i8, i8 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cdmac_bd = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.anon.116 = type { i16, i16 }
%struct.page = type { i32, %union.anon.10, %union.anon.95, %struct.atomic_t, i32 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.95 = type { %struct.atomic_t }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/xilinx/ll_temac_main.c\00", [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_ll_temac__493_1657_temac_driver_init6 = internal global ptr @temac_driver_init, section ".initcall6.init", align 4
@temac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @temac_probe, ptr @temac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @temac_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_temac_driver_exit = internal global ptr @temac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description494 = internal constant [53 x i8] c"ll_temac.description=Xilinx LL_TEMAC Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author495 = internal constant [33 x i8] c"ll_temac.author=Yoshio Kashiwagi\00", section ".modinfo", align 1
@__UNIQUE_ID_file496 = internal constant [51 x i8] c"ll_temac.file=drivers/net/ethernet/xilinx/ll_temac\00", section ".modinfo", align 1
@__UNIQUE_ID_license497 = internal constant [21 x i8] c"ll_temac.license=GPL\00", section ".modinfo", align 1
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xilinx_temac\00", [19 x i8] zeroinitializer }, align 32
@temac_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-ll-temac-1.01.b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-ll-temac-2.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-ll-temac-2.02.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-ll-temac-2.03.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@temac_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @temac_open, ptr @temac_stop, ptr @temac_start_xmit, ptr null, ptr null, ptr null, ptr @temac_set_multicast_list, ptr @temac_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @temac_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@temac_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 51, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @ll_temac_ethtools_get_coalesce, ptr @ll_temac_ethtools_set_coalesce, ptr @ll_temac_ethtools_get_ringparam, ptr @ll_temac_ethtools_set_ringparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@temac_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&lp->rx_lock\00", [19 x i8] zeroinitializer }, align 32
@temac_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&lp->restart_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@temac_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&lp->restart_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@temac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 1428, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"indirect_lock missing in platform_data\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temac_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@temac_probe._entry_ptr = internal global ptr @temac_probe._entry, section ".printk_index", align 4
@temac_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lp->indirect_lock\00", [46 x i8] zeroinitializer }, align 32
@temac_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str, i32 1444, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not map TEMAC registers\0A\00", [33 x i8] zeroinitializer }, align 32
@temac_probe._entry_ptr.15 = internal global ptr @temac_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"little-endian\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xlnx,txcsum\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xlnx,rxcsum\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"llink-connected\00", [16 x i8] zeroinitializer }, align 32
@temac_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.8, ptr @.str, i32 1500, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not find DMA node\0A\00", [39 x i8] zeroinitializer }, align 32
@temac_probe._entry_ptr.22 = internal global ptr @temac_probe._entry.20, section ".printk_index", align 4
@temac_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.8, ptr @.str, i32 1513, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to map DMA registers\0A\00", [35 x i8] zeroinitializer }, align 32
@temac_probe._entry_ptr.25 = internal global ptr @temac_probe._entry.23, section ".printk_index", align 4
@temac_probe.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.8, ptr @.str, ptr @.str.27, i8 1, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ll_temac\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MEM base: %p\0A\00", [18 x i8] zeroinitializer }, align 32
@temac_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.8, ptr @.str, i32 1538, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not map DMA registers\0A\00", [35 x i8] zeroinitializer }, align 32
@temac_probe._entry_ptr.30 = internal global ptr @temac_probe._entry.28, section ".printk_index", align 4
@temac_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.8, ptr @.str, i32 1567, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not get DMA RX irq\0A\00", [38 x i8] zeroinitializer }, align 32
@temac_probe._entry_ptr.33 = internal global ptr @temac_probe._entry.31, section ".printk_index", align 4
@temac_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.8, ptr @.str, i32 1572, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not get DMA TX irq\0A\00", [38 x i8] zeroinitializer }, align 32
@temac_probe._entry_ptr.36 = internal global ptr @temac_probe._entry.34, section ".printk_index", align 4
@temac_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.8, ptr @.str, i32 1580, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not find MAC address\0A\00", [36 x i8] zeroinitializer }, align 32
@temac_probe._entry_ptr.39 = internal global ptr @temac_probe._entry.37, section ".printk_index", align 4
@temac_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.8, ptr @.str, i32 1590, ptr @.str.42, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error registering MDIO bus\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@temac_probe._entry_ptr.43 = internal global ptr @temac_probe._entry.40, section ".printk_index", align 4
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@temac_probe.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.8, ptr @.str, ptr @.str.45, i8 1, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"using PHY node %pOF\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s:%02x\00", [24 x i8] zeroinitializer }, align 32
@temac_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @temac_device_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@temac_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.8, ptr @.str, i32 1605, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error creating sysfs files\0A\00", [36 x i8] zeroinitializer }, align 32
@temac_probe._entry_ptr.49 = internal global ptr @temac_probe._entry.47, section ".printk_index", align 4
@temac_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.8, ptr @.str, i32 1611, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"register_netdev() error (%i)\0A\00", [34 x i8] zeroinitializer }, align 32
@temac_probe._entry_ptr.52 = internal global ptr @temac_probe._entry.50, section ".printk_index", align 4
@temac_open.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.53, ptr @.str, ptr @.str.54, i8 1, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temac_open\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"temac_open()\0A\00", [18 x i8] zeroinitializer }, align 32
@temac_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str, i32 1162, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"of_phy_connect() failed\0A\00", [39 x i8] zeroinitializer }, align 32
@temac_open._entry_ptr = internal global ptr @temac_open._entry, section ".printk_index", align 4
@temac_open._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.53, ptr @.str, i32 1170, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"phy_connect() failed\0A\00", [42 x i8] zeroinitializer }, align 32
@temac_open._entry_ptr.58 = internal global ptr @temac_open._entry.56, section ".printk_index", align 4
@temac_open._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.53, ptr @.str, i32 1192, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request_irq() failed\0A\00", [42 x i8] zeroinitializer }, align 32
@temac_open._entry_ptr.61 = internal global ptr @temac_open._entry.59, section ".printk_index", align 4
@temac_device_reset.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.62, ptr @.str, ptr @.str.63, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"temac_device_reset\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@temac_device_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str, i32 643, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"temac_device_reset RX reset timeout!!\0A\00", [57 x i8] zeroinitializer }, align 32
@temac_device_reset._entry_ptr = internal global ptr @temac_device_reset._entry, section ".printk_index", align 4
@temac_device_reset._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.62, ptr @.str, i32 655, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"temac_device_reset TX reset timeout!!\0A\00", [57 x i8] zeroinitializer }, align 32
@temac_device_reset._entry_ptr.67 = internal global ptr @temac_device_reset._entry.65, section ".printk_index", align 4
@temac_device_reset._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.62, ptr @.str, i32 674, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"temac_device_reset DMA reset timeout!!\0A\00", [56 x i8] zeroinitializer }, align 32
@temac_device_reset._entry_ptr.70 = internal global ptr @temac_device_reset._entry.68, section ".printk_index", align 4
@temac_device_reset._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.62, ptr @.str, i32 682, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"temac_device_reset descriptor allocation failed\0A\00", [47 x i8] zeroinitializer }, align 32
@temac_device_reset._entry_ptr.73 = internal global ptr @temac_device_reset._entry.71, section ".printk_index", align 4
@temac_device_reset._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.62, ptr @.str, i32 702, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error setting TEMAC options\0A\00", [35 x i8] zeroinitializer }, align 32
@temac_device_reset._entry_ptr.76 = internal global ptr @temac_device_reset._entry.74, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@temac_options = internal constant { [13 x %struct.temac_option], [92 x i8] } { [13 x %struct.temac_option] [%struct.temac_option { i32 0, i32 2, i32 640, i32 1073741824, i32 0 }, %struct.temac_option { i32 0, i32 2, i32 576, i32 1073741824, i32 0 }, %struct.temac_option { i32 0, i32 4, i32 640, i32 134217728, i32 0 }, %struct.temac_option { i32 0, i32 4, i32 576, i32 134217728, i32 0 }, %struct.temac_option { i32 0, i32 32, i32 576, i32 536870912, i32 0 }, %struct.temac_option { i32 0, i32 64, i32 640, i32 536870912, i32 0 }, %struct.temac_option { i32 0, i32 128, i32 576, i32 33554432, i32 0 }, %struct.temac_option { i32 0, i32 16, i32 704, i32 536870912, i32 0 }, %struct.temac_option { i32 0, i32 16, i32 704, i32 1073741824, i32 0 }, %struct.temac_option { i32 0, i32 1, i32 912, i32 -2147483648, i32 0 }, %struct.temac_option { i32 0, i32 2048, i32 640, i32 268435456, i32 0 }, %struct.temac_option { i32 0, i32 4096, i32 576, i32 268435456, i32 0 }, %struct.temac_option zeroinitializer], [92 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ll_temac_tx_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.79, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ll_temac_tx_irq = private unnamed_addr constant [16 x i8] c"ll_temac_tx_irq\00", align 1
@ll_temac_tx_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @__func__.ll_temac_tx_irq, ptr @.str, i32 1125, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TX error 0x%x TX_CHNL_STS=0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@ll_temac_tx_irq._entry_ptr = internal global ptr @ll_temac_tx_irq._entry, section ".printk_index", align 4
@ll_temac_rx_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.79, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ll_temac_rx_irq = private unnamed_addr constant [16 x i8] c"ll_temac_rx_irq\00", align 1
@ll_temac_rx_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @__func__.ll_temac_rx_irq, ptr @.str, i32 1145, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"RX error 0x%x RX_CHNL_STS=0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@ll_temac_rx_irq._entry_ptr = internal global ptr @ll_temac_rx_irq._entry, section ".printk_index", align 4
@ll_temac_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str, i32 1068, ptr @.str.42, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"skb alloc failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ll_temac_recv\00", [18 x i8] zeroinitializer }, align 32
@ll_temac_recv._entry_ptr = internal global ptr @ll_temac_recv._entry, section ".printk_index", align 4
@ll_temac_recv.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@temac_stop.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.84, ptr @.str, ptr @.str.85, i8 1, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temac_stop\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temac_close()\0A\00", [17 x i8] zeroinitializer }, align 32
@temac_start_xmit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@temac_set_multicast_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str, i32 470, ptr @.str.88, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Promiscuous mode enabled.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"temac_set_multicast_list\00", [39 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@temac_set_multicast_list._entry_ptr = internal global ptr @temac_set_multicast_list._entry, section ".printk_index", align 4
@temac_set_multicast_list._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.87, ptr @.str, i32 513, ptr @.str.88, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Promiscuous mode disabled.\0A\00", [36 x i8] zeroinitializer }, align 32
@temac_set_multicast_list._entry_ptr.91 = internal global ptr @temac_set_multicast_list._entry.89, section ".printk_index", align 4
@.str.92 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Please stop netif before applying configuration\0A\00", [47 x i8] zeroinitializer }, align 32
@temac_device_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_llink_regs, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_llink_regs = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 288, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temac_show_llink_regs, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"llink_regs\00", [21 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%.8x%s\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 1000]
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 118, i32 6 }
@___asan_gen_.100 = private unnamed_addr constant [13 x i8] c"temac_driver\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1648, i32 31 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1652, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant [15 x i8] c"temac_of_match\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1639, i32 34 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"temac_netdev_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1233, i32 36 }
@___asan_gen_.112 = private unnamed_addr constant [18 x i8] c"temac_ethtool_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1365, i32 33 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1421, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1422, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1427, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1438, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1444, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1453, i32 33 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1469, i32 43 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1472, i32 43 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1498, i32 39 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1500, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1512, i32 5 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1524, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1537, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1567, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1572, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1580, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1590, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1593, i32 45 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1595, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1598, i32 5 }
@___asan_gen_.232 = private unnamed_addr constant [17 x i8] c"temac_attr_group\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1271, i32 37 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1605, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1611, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1156, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1162, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1170, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1192, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 634, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 642, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 654, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 673, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 681, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 702, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 326, i32 6 }
@___asan_gen_.313 = private unnamed_addr constant [14 x i8] c"temac_options\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 522, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1123, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1143, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1068, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1201, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 470, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 513, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1344, i32 7 }
@___asan_gen_.373 = private unnamed_addr constant [19 x i8] c"temac_device_attrs\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1266, i32 26 }
@___asan_gen_.376 = private unnamed_addr constant [20 x i8] c"dev_attr_llink_regs\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1264, i32 8 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1257, i32 29 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1258, i32 26 }
@___asan_gen_.388 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.389 = private constant [47 x i8] c"../drivers/net/ethernet/xilinx/ll_temac_main.c\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1258, i32 33 }
@llvm.compiler.used = appending global [129 x ptr] [ptr @__UNIQUE_ID_author495, ptr @__UNIQUE_ID_description494, ptr @__UNIQUE_ID_file496, ptr @__UNIQUE_ID_license497, ptr @__exitcall_temac_driver_exit, ptr @__initcall__kmod_ll_temac__493_1657_temac_driver_init6, ptr @ll_temac_recv._entry, ptr @ll_temac_recv._entry_ptr, ptr @ll_temac_rx_irq._entry, ptr @ll_temac_rx_irq._entry_ptr, ptr @ll_temac_tx_irq._entry, ptr @ll_temac_tx_irq._entry_ptr, ptr @temac_device_reset._entry, ptr @temac_device_reset._entry.65, ptr @temac_device_reset._entry.68, ptr @temac_device_reset._entry.71, ptr @temac_device_reset._entry.74, ptr @temac_device_reset._entry_ptr, ptr @temac_device_reset._entry_ptr.67, ptr @temac_device_reset._entry_ptr.70, ptr @temac_device_reset._entry_ptr.73, ptr @temac_device_reset._entry_ptr.76, ptr @temac_driver_exit, ptr @temac_open._entry, ptr @temac_open._entry.56, ptr @temac_open._entry.59, ptr @temac_open._entry_ptr, ptr @temac_open._entry_ptr.58, ptr @temac_open._entry_ptr.61, ptr @temac_probe._entry, ptr @temac_probe._entry.13, ptr @temac_probe._entry.20, ptr @temac_probe._entry.23, ptr @temac_probe._entry.28, ptr @temac_probe._entry.31, ptr @temac_probe._entry.34, ptr @temac_probe._entry.37, ptr @temac_probe._entry.40, ptr @temac_probe._entry.47, ptr @temac_probe._entry.50, ptr @temac_probe._entry_ptr, ptr @temac_probe._entry_ptr.15, ptr @temac_probe._entry_ptr.22, ptr @temac_probe._entry_ptr.25, ptr @temac_probe._entry_ptr.30, ptr @temac_probe._entry_ptr.33, ptr @temac_probe._entry_ptr.36, ptr @temac_probe._entry_ptr.39, ptr @temac_probe._entry_ptr.43, ptr @temac_probe._entry_ptr.49, ptr @temac_probe._entry_ptr.52, ptr @temac_set_multicast_list._entry, ptr @temac_set_multicast_list._entry.89, ptr @temac_set_multicast_list._entry_ptr, ptr @temac_set_multicast_list._entry_ptr.91, ptr @.str, ptr @temac_driver, ptr @.str.1, ptr @temac_of_match, ptr @temac_netdev_ops, ptr @temac_ethtool_ops, ptr @temac_probe.__key, ptr @.str.2, ptr @temac_probe.__key.3, ptr @.str.4, ptr @temac_probe.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @temac_probe.__key.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @temac_attr_group, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @temac_options, ptr @ll_temac_tx_irq._rs, ptr @.str.79, ptr @.str.80, ptr @ll_temac_rx_irq._rs, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @temac_device_attrs, ptr @dev_attr_llink_regs, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_open._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_open._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_device_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_device_reset._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_device_reset._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_device_reset._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_device_reset._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_options to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ll_temac_tx_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ll_temac_tx_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ll_temac_rx_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ll_temac_rx_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ll_temac_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_set_multicast_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_set_multicast_list._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temac_device_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_llink_regs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @temac_indirect_busywait(ptr noundef %lp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #9
  %add = add i64 %call, 20000000
  %call.i = tail call i64 @ktime_get() #9
  %temac_ior.i.i = getelementptr inbounds %struct.temac_local, ptr %lp, i32 0, i32 8
  %0 = ptrtoint ptr %temac_ior.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %temac_ior.i.i, align 4
  %call.i.i = tail call i32 %1(ptr noundef %lp, i32 noundef 44) #9
  %and.i.i = and i32 %call.i.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %add)
  %cmp3.i.i.i = icmp sgt i64 %call.i, %add
  %spec.select.i = select i1 %tobool.i.i, i1 true, i1 %cmp3.i.i.i
  br i1 %spec.select.i, label %entry.do.end18_crit_edge, label %entry.do.body4_crit_edge, !prof !206

entry.do.body4_crit_edge:                         ; preds = %entry
  br label %do.body4

entry.do.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

do.body4:                                         ; preds = %do.body4.do.body4_crit_edge, %entry.do.body4_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !207
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !208
  %call.i56 = tail call i64 @ktime_get() #9
  %2 = ptrtoint ptr %temac_ior.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %temac_ior.i.i, align 4
  %call.i.i58 = tail call i32 %3(ptr noundef %lp, i32 noundef 44) #9
  %and.i.i59 = and i32 %call.i.i58, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i59)
  %tobool.i.i60 = icmp ne i32 %and.i.i59, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i56, i64 %add)
  %cmp3.i.i.i61 = icmp sgt i64 %call.i56, %add
  %spec.select.i62 = select i1 %tobool.i.i60, i1 true, i1 %cmp3.i.i.i61
  br i1 %spec.select.i62, label %do.body4.do.end18_crit_edge, label %do.body4.do.body4_crit_edge

do.body4.do.body4_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4

do.body4.do.end18_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

do.end18:                                         ; preds = %do.body4.do.end18_crit_edge, %entry.do.end18_crit_edge
  %4 = ptrtoint ptr %temac_ior.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %temac_ior.i.i, align 4
  %call.i63 = tail call i32 %5(ptr noundef %lp, i32 noundef 44) #9
  %and.i = and i32 %call.i63, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end37, label %do.end18.if.end43_crit_edge, !prof !209

do.end18.if.end43_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

do.end37:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef null) #9
  br label %if.end43

if.end43:                                         ; preds = %do.end37, %do.end18.if.end43_crit_edge
  %. = phi i32 [ -110, %do.end37 ], [ 0, %do.end18.if.end43_crit_edge ]
  ret i32 %.
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @temac_indirect_in32(ptr noundef %lp, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %indirect_lock = getelementptr inbounds %struct.temac_local, ptr %lp, i32 0, i32 17
  %0 = ptrtoint ptr %indirect_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %indirect_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %call.i = tail call i32 @temac_indirect_busywait(ptr noundef %lp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end22.i, label %do.end.i, !prof !206

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 152, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_in32_locked.exit

if.end22.i:                                       ; preds = %entry
  %temac_iow.i = getelementptr inbounds %struct.temac_local, ptr %lp, i32 0, i32 9
  %2 = ptrtoint ptr %temac_iow.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %temac_iow.i, align 4
  tail call void %3(ptr noundef %lp, i32 noundef 40, i32 noundef %reg) #9
  %call24.i = tail call i32 @temac_indirect_busywait(ptr noundef %lp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end57.i, label %do.end41.i, !prof !206

do.end41.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 161, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_in32_locked.exit

if.end57.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %temac_ior.i = getelementptr inbounds %struct.temac_local, ptr %lp, i32 0, i32 8
  %4 = ptrtoint ptr %temac_ior.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %temac_ior.i, align 4
  %call58.i = tail call i32 %5(ptr noundef %lp, i32 noundef 36) #9
  br label %temac_indirect_in32_locked.exit

temac_indirect_in32_locked.exit:                  ; preds = %if.end57.i, %do.end41.i, %do.end.i
  %retval.0.i = phi i32 [ -110, %do.end.i ], [ -110, %do.end41.i ], [ %call58.i, %if.end57.i ]
  %6 = ptrtoint ptr %indirect_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %indirect_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %call2) #9
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @temac_indirect_in32_locked(ptr noundef %lp, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @temac_indirect_busywait(ptr noundef %lp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !206

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 152, i32 noundef 9, ptr noundef null) #9
  br label %return

if.end22:                                         ; preds = %entry
  %temac_iow = getelementptr inbounds %struct.temac_local, ptr %lp, i32 0, i32 9
  %0 = ptrtoint ptr %temac_iow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %temac_iow, align 4
  tail call void %1(ptr noundef %lp, i32 noundef 40, i32 noundef %reg) #9
  %call24 = tail call i32 @temac_indirect_busywait(ptr noundef %lp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end57, label %do.end41, !prof !206

do.end41:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 161, i32 noundef 9, ptr noundef null) #9
  br label %return

if.end57:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %temac_ior = getelementptr inbounds %struct.temac_local, ptr %lp, i32 0, i32 8
  %2 = ptrtoint ptr %temac_ior to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %temac_ior, align 4
  %call58 = tail call i32 %3(ptr noundef %lp, i32 noundef 36) #9
  br label %return

return:                                           ; preds = %if.end57, %do.end41, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ -110, %do.end41 ], [ %call58, %if.end57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @temac_indirect_out32(ptr noundef %lp, i32 noundef %reg, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %indirect_lock = getelementptr inbounds %struct.temac_local, ptr %lp, i32 0, i32 17
  %0 = ptrtoint ptr %indirect_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %indirect_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %call.i = tail call i32 @temac_indirect_busywait(ptr noundef %lp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end22.critedge.i, label %entry.return.sink.split.i_crit_edge, !prof !206

entry.return.sink.split.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

if.end22.critedge.i:                              ; preds = %entry
  %temac_iow.i = getelementptr inbounds %struct.temac_local, ptr %lp, i32 0, i32 9
  %2 = ptrtoint ptr %temac_iow.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %temac_iow.i, align 4
  tail call void %3(ptr noundef %lp, i32 noundef 36, i32 noundef %value) #9
  %4 = ptrtoint ptr %temac_iow.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %temac_iow.i, align 4
  %or.i = or i32 %reg, 32768
  tail call void %5(ptr noundef %lp, i32 noundef 40, i32 noundef %or.i) #9
  %call25.i = tail call i32 @temac_indirect_busywait(ptr noundef %lp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end22.critedge.i.temac_indirect_out32_locked.exit_crit_edge, label %if.end22.critedge.i.return.sink.split.i_crit_edge, !prof !206

if.end22.critedge.i.return.sink.split.i_crit_edge: ; preds = %if.end22.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

if.end22.critedge.i.temac_indirect_out32_locked.exit_crit_edge: ; preds = %if.end22.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %temac_indirect_out32_locked.exit

return.sink.split.i:                              ; preds = %if.end22.critedge.i.return.sink.split.i_crit_edge, %entry.return.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 193, %entry.return.sink.split.i_crit_edge ], [ 202, %if.end22.critedge.i.return.sink.split.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_out32_locked.exit

temac_indirect_out32_locked.exit:                 ; preds = %return.sink.split.i, %if.end22.critedge.i.temac_indirect_out32_locked.exit_crit_edge
  %6 = ptrtoint ptr %indirect_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %indirect_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %call2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @temac_indirect_out32_locked(ptr noundef %lp, i32 noundef %reg, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @temac_indirect_busywait(ptr noundef %lp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end22.critedge, label %entry.return.sink.split_crit_edge, !prof !206

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

if.end22.critedge:                                ; preds = %entry
  %temac_iow = getelementptr inbounds %struct.temac_local, ptr %lp, i32 0, i32 9
  %0 = ptrtoint ptr %temac_iow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %temac_iow, align 4
  tail call void %1(ptr noundef %lp, i32 noundef 36, i32 noundef %value) #9
  %2 = ptrtoint ptr %temac_iow to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %temac_iow, align 4
  %or = or i32 %reg, 32768
  tail call void %3(ptr noundef %lp, i32 noundef 40, i32 noundef %or) #9
  %call25 = tail call i32 @temac_indirect_busywait(ptr noundef %lp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end22.critedge.return_crit_edge, label %if.end22.critedge.return.sink.split_crit_edge, !prof !206

if.end22.critedge.return.sink.split_crit_edge:    ; preds = %if.end22.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

if.end22.critedge.return_crit_edge:               ; preds = %if.end22.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return.sink.split:                                ; preds = %if.end22.critedge.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ 193, %entry.return.sink.split_crit_edge ], [ 202, %if.end22.critedge.return.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #9
  br label %return

return:                                           ; preds = %return.sink.split, %if.end22.critedge.return_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @temac_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @temac_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @temac_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @temac_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temac_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %args.i519 = alloca %struct.of_phandle_args, align 4
  %addr.i.i507 = alloca [6 x i8], align 1
  %addr.i.i = alloca [6 x i8], align 1
  %args.i = alloca %struct.of_phandle_args, align 4
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.dev_of_node.exit_crit_edge, label %if.end.i

entry.dev_of_node.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %entry.dev_of_node.exit_crit_edge
  %retval.0.i500 = phi ptr [ %3, %if.end.i ], [ null, %entry.dev_of_node.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #9
  %4 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %call4 = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %dev, i32 noundef 328, i32 noundef 1, i32 noundef 1) #9
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %dev_of_node.exit.cleanup_crit_edge, label %if.end

dev_of_node.exit.cleanup_crit_edge:               ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dev_of_node.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 133, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %parent, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 23
  %7 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1, ptr %features, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @temac_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 44
  %9 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @temac_ethtool_ops, ptr %ethtool_ops, align 16
  %add.ptr.i = getelementptr i8, ptr %call4, i32 2304
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call4, ptr %add.ptr.i, align 4
  %dev10 = getelementptr i8, ptr %call4, i32 2308
  %11 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %dev10, align 4
  %options = getelementptr i8, ptr %call4, i32 2476
  %12 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 6160, ptr %options, align 4
  %rx_bd_num = getelementptr i8, ptr %call4, i32 2508
  %13 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1024, ptr %rx_bd_num, align 4
  %tx_bd_num = getelementptr i8, ptr %call4, i32 2496
  %14 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 64, ptr %tx_bd_num, align 4
  %rx_lock = getelementptr i8, ptr %call4, i32 2428
  tail call void @__raw_spin_lock_init(ptr noundef %rx_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @temac_probe.__key, i16 noundef signext 3) #9
  %restart_work = getelementptr i8, ptr %call4, i32 2532
  tail call void @__init_work(ptr noundef %restart_work, i32 noundef 0) #9
  %15 = ptrtoint ptr %restart_work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %restart_work, align 4
  %lockdep_map = getelementptr i8, ptr %call4, i32 2548
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @temac_probe.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry20 = getelementptr i8, ptr %call4, i32 2536
  %16 = ptrtoint ptr %entry20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry20, ptr %entry20, align 4
  %prev.i = getelementptr i8, ptr %call4, i32 2540
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry20, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call4, i32 2544
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ll_temac_restart_work_func, ptr %func, align 4
  %timer = getelementptr i8, ptr %call4, i32 2576
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @temac_probe.__key.5) #9
  %tobool31.not = icmp eq ptr %1, null
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end
  %indirect_lock = getelementptr inbounds %struct.ll_temac_platform_data, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %indirect_lock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %indirect_lock, align 4
  %tobool33.not = icmp eq ptr %20, null
  br i1 %tobool33.not, label %do.end37, label %if.end39

do.end37:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end39:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %indirect_lock41 = getelementptr i8, ptr %call4, i32 2472
  %21 = ptrtoint ptr %indirect_lock41 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %indirect_lock41, align 4
  br label %if.end54

if.else:                                          ; preds = %if.end
  %call43 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3264) #9
  %indirect_lock44 = getelementptr i8, ptr %call4, i32 2472
  %22 = ptrtoint ptr %indirect_lock44 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call43, ptr %indirect_lock44, align 4
  %tobool46.not = icmp eq ptr %call43, null
  br i1 %tobool46.not, label %if.else.cleanup_crit_edge, label %do.body49

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body49:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call43, ptr noundef nonnull @.str.12, ptr noundef nonnull @temac_probe.__key.11, i16 noundef signext 3) #9
  br label %if.end54

if.end54:                                         ; preds = %do.body49, %if.end39
  %call55 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef null) #9
  %regs = getelementptr i8, ptr %call4, i32 2388
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call55, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end61, label %if.end63

do.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #12
  br label %cleanup

if.end63:                                         ; preds = %if.end54
  %tobool64.not = icmp eq ptr %retval.0.i500, null
  br i1 %tobool64.not, label %if.else70, label %if.end75

if.else70:                                        ; preds = %if.end63
  br i1 %tobool31.not, label %if.else70.if.else78_crit_edge, label %if.then72

if.else70.if.else78_crit_edge:                    ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else78

if.then72:                                        ; preds = %if.else70
  %reg_little_endian = getelementptr inbounds %struct.ll_temac_platform_data, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %reg_little_endian to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reg_little_endian, align 8, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool73.not = icmp eq i8 %25, 0
  br i1 %tobool73.not, label %if.then72.if.else78_crit_edge, label %if.then72.if.end81_crit_edge

if.then72.if.end81_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then72.if.else78_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else78

if.end75:                                         ; preds = %if.end63
  %call66 = tail call ptr @of_get_property(ptr noundef nonnull %retval.0.i500, ptr noundef nonnull @.str.16, ptr noundef null) #9
  %tobool67.not.not = icmp eq ptr %call66, null
  br i1 %tobool67.not.not, label %if.end75.if.else78_crit_edge, label %if.end75.if.end81_crit_edge

if.end75.if.end81_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.end75.if.else78_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else78

if.else78:                                        ; preds = %if.end75.if.else78_crit_edge, %if.then72.if.else78_crit_edge, %if.else70.if.else78_crit_edge
  br label %if.end81

if.end81:                                         ; preds = %if.else78, %if.end75.if.end81_crit_edge, %if.then72.if.end81_crit_edge
  %_temac_ior_be.sink = phi ptr [ @_temac_ior_be, %if.else78 ], [ @_temac_ior_le, %if.then72.if.end81_crit_edge ], [ @_temac_ior_le, %if.end75.if.end81_crit_edge ]
  %_temac_iow_be.sink = phi ptr [ @_temac_iow_be, %if.else78 ], [ @_temac_iow_le, %if.then72.if.end81_crit_edge ], [ @_temac_iow_le, %if.end75.if.end81_crit_edge ]
  %temac_ior79 = getelementptr i8, ptr %call4, i32 2396
  %26 = ptrtoint ptr %temac_ior79 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %_temac_ior_be.sink, ptr %temac_ior79, align 4
  %temac_iow80 = getelementptr i8, ptr %call4, i32 2400
  %27 = ptrtoint ptr %temac_iow80 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %_temac_iow_be.sink, ptr %temac_iow80, align 4
  %temac_features = getelementptr i8, ptr %call4, i32 2484
  %28 = ptrtoint ptr %temac_features to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %temac_features, align 4
  br i1 %tobool64.not, label %if.else98, label %if.then83

if.then83:                                        ; preds = %if.end81
  %call84 = tail call ptr @of_get_property(ptr noundef nonnull %retval.0.i500, ptr noundef nonnull @.str.17, ptr noundef null) #9
  %tobool85.not = icmp eq ptr %call84, null
  br i1 %tobool85.not, label %if.then83.if.end89_crit_edge, label %land.lhs.true

if.then83.if.end89_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

land.lhs.true:                                    ; preds = %if.then83
  %29 = ptrtoint ptr %call84 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool86.not = icmp eq i32 %30, 0
  br i1 %tobool86.not, label %land.lhs.true.if.end89_crit_edge, label %if.then87

land.lhs.true.if.end89_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then87:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %temac_features to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %temac_features, align 4
  %or = or i32 %32, 2
  store i32 %or, ptr %temac_features, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %land.lhs.true.if.end89_crit_edge, %if.then83.if.end89_crit_edge
  %call90 = tail call ptr @of_get_property(ptr noundef nonnull %retval.0.i500, ptr noundef nonnull @.str.18, ptr noundef null) #9
  %tobool91.not = icmp eq ptr %call90, null
  br i1 %tobool91.not, label %if.end89.if.end112_crit_edge, label %land.lhs.true92

if.end89.if.end112_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

land.lhs.true92:                                  ; preds = %if.end89
  %33 = ptrtoint ptr %call90 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool93.not = icmp eq i32 %34, 0
  br i1 %tobool93.not, label %land.lhs.true92.if.end112_crit_edge, label %land.lhs.true92.if.end112.sink.split_crit_edge

land.lhs.true92.if.end112.sink.split_crit_edge:   ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112.sink.split

land.lhs.true92.if.end112_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.else98:                                        ; preds = %if.end81
  br i1 %tobool31.not, label %if.else98.if.end112_crit_edge, label %if.then100

if.else98.if.end112_crit_edge:                    ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then100:                                       ; preds = %if.else98
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %1, align 8, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool101.not = icmp eq i8 %36, 0
  br i1 %tobool101.not, label %if.then100.if.end105_crit_edge, label %if.then102

if.then100.if.end105_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then102:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %temac_features to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %temac_features, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %if.then100.if.end105_crit_edge
  %rxcsum = getelementptr inbounds %struct.ll_temac_platform_data, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %rxcsum to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rxcsum, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool106.not = icmp eq i8 %39, 0
  br i1 %tobool106.not, label %if.end105.if.end112_crit_edge, label %if.end105.if.end112.sink.split_crit_edge

if.end105.if.end112.sink.split_crit_edge:         ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112.sink.split

if.end105.if.end112_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.end112.sink.split:                             ; preds = %if.end105.if.end112.sink.split_crit_edge, %land.lhs.true92.if.end112.sink.split_crit_edge
  %40 = ptrtoint ptr %temac_features to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %temac_features, align 4
  %or109 = or i32 %41, 1
  store i32 %or109, ptr %temac_features, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.end112.sink.split, %if.end105.if.end112_crit_edge, %if.else98.if.end112_crit_edge, %land.lhs.true92.if.end112_crit_edge, %if.end89.if.end112_crit_edge
  %42 = ptrtoint ptr %temac_features to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %temac_features, align 4
  %and = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool114.not = icmp eq i32 %and, 0
  br i1 %tobool114.not, label %if.end112.if.end118_crit_edge, label %if.then115

if.end112.if.end118_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then115:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %features, align 16
  %or117 = or i64 %45, 2
  store i64 %or117, ptr %features, align 16
  br label %if.end118

if.end118:                                        ; preds = %if.then115, %if.end112.if.end118_crit_edge
  %coalesce_delay_tx = getelementptr i8, ptr %call4, i32 2529
  %46 = ptrtoint ptr %coalesce_delay_tx to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 16, ptr %coalesce_delay_tx, align 1
  %coalesce_count_tx = getelementptr i8, ptr %call4, i32 2528
  %47 = ptrtoint ptr %coalesce_count_tx to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 34, ptr %coalesce_count_tx, align 4
  %coalesce_delay_rx = getelementptr i8, ptr %call4, i32 2531
  %48 = ptrtoint ptr %coalesce_delay_rx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %coalesce_delay_rx, align 1
  %coalesce_count_rx = getelementptr i8, ptr %call4, i32 2530
  %49 = ptrtoint ptr %coalesce_count_rx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 7, ptr %coalesce_count_rx, align 2
  br i1 %tobool64.not, label %if.else166, label %if.then120

if.then120:                                       ; preds = %if.end118
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #9
  %50 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %retval.0.i500, ptr noundef nonnull @.str.19, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i501 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i501, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  br label %do.end126

of_parse_phandle.exit:                            ; preds = %if.then120
  %51 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  %tobool122.not = icmp eq ptr %52, null
  br i1 %tobool122.not, label %of_parse_phandle.exit.do.end126_crit_edge, label %if.end128

of_parse_phandle.exit.do.end126_crit_edge:        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end126

do.end126:                                        ; preds = %of_parse_phandle.exit.do.end126_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #12
  br label %cleanup

if.end128:                                        ; preds = %of_parse_phandle.exit
  %call133 = call ptr @devm_of_iomap(ptr noundef %dev, ptr noundef nonnull %52, i32 noundef 0, ptr noundef null) #9
  %sdma_regs = getelementptr i8, ptr %call4, i32 2392
  %53 = ptrtoint ptr %sdma_regs to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call133, ptr %sdma_regs, align 4
  %cmp.i504 = icmp ugt ptr %call133, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i504, label %do.end139, label %if.end143

do.end139:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #12
  call void @of_node_put(ptr noundef nonnull %52) #9
  %54 = ptrtoint ptr %sdma_regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sdma_regs, align 4
  %56 = ptrtoint ptr %55 to i32
  br label %cleanup

if.end143:                                        ; preds = %if.end128
  %call144 = call ptr @of_get_property(ptr noundef nonnull %52, ptr noundef nonnull @.str.16, ptr noundef null) #9
  %tobool145.not = icmp eq ptr %call144, null
  %spec.select = select i1 %tobool145.not, ptr @temac_dma_in32_be, ptr @temac_dma_in32_le
  %spec.select534 = select i1 %tobool145.not, ptr @temac_dma_out32_be, ptr @temac_dma_out32_le
  %57 = getelementptr i8, ptr %call4, i32 2404
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %spec.select, ptr %57, align 4
  %59 = getelementptr i8, ptr %call4, i32 2408
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %spec.select534, ptr %59, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @temac_probe.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@temac_probe, %if.then157)) #9
          to label %if.end163 [label %if.then157], !srcloc !211

if.then157:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %sdma_regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sdma_regs, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @temac_probe.__UNIQUE_ID_ddebug491, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef %62) #9
  br label %if.end163

if.end163:                                        ; preds = %if.then157, %if.end143
  %call164 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %52, i32 noundef 0) #9
  %rx_irq = getelementptr i8, ptr %call4, i32 2416
  %63 = ptrtoint ptr %rx_irq to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call164, ptr %rx_irq, align 4
  %call165 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %52, i32 noundef 1) #9
  %tx_irq = getelementptr i8, ptr %call4, i32 2412
  %64 = ptrtoint ptr %tx_irq to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call165, ptr %tx_irq, align 4
  call void @of_node_put(ptr noundef nonnull %52) #9
  br label %if.end214

if.else166:                                       ; preds = %if.end118
  br i1 %tobool31.not, label %if.else166.if.end214_crit_edge, label %if.then168

if.else166.if.end214_crit_edge:                   ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end214

if.then168:                                       ; preds = %if.else166
  %call169 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #9
  %sdma_regs170 = getelementptr i8, ptr %call4, i32 2392
  %65 = ptrtoint ptr %sdma_regs170 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call169, ptr %sdma_regs170, align 4
  %cmp.i505 = icmp ugt ptr %call169, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i505, label %do.end176, label %if.end180

do.end176:                                        ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #12
  %66 = ptrtoint ptr %sdma_regs170 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sdma_regs170, align 4
  %68 = ptrtoint ptr %67 to i32
  br label %cleanup

if.end180:                                        ; preds = %if.then168
  %dma_little_endian = getelementptr inbounds %struct.ll_temac_platform_data, ptr %1, i32 0, i32 8
  %69 = ptrtoint ptr %dma_little_endian to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %dma_little_endian, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool181.not = icmp eq i8 %70, 0
  %spec.select535 = select i1 %tobool181.not, ptr @temac_dma_in32_be, ptr @temac_dma_in32_le
  %spec.select536 = select i1 %tobool181.not, ptr @temac_dma_out32_be, ptr @temac_dma_out32_le
  %71 = getelementptr i8, ptr %call4, i32 2404
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %spec.select535, ptr %71, align 4
  %73 = getelementptr i8, ptr %call4, i32 2408
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %spec.select536, ptr %73, align 4
  %call189 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %rx_irq190 = getelementptr i8, ptr %call4, i32 2416
  %75 = ptrtoint ptr %rx_irq190 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call189, ptr %rx_irq190, align 4
  %call191 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #9
  %tx_irq192 = getelementptr i8, ptr %call4, i32 2412
  %76 = ptrtoint ptr %tx_irq192 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call191, ptr %tx_irq192, align 4
  %tx_irq_timeout = getelementptr inbounds %struct.ll_temac_platform_data, ptr %1, i32 0, i32 10
  %77 = ptrtoint ptr %tx_irq_timeout to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %tx_irq_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool193.not = icmp eq i8 %78, 0
  br i1 %tobool193.not, label %lor.lhs.false, label %if.end180.if.then196_crit_edge

if.end180.if.then196_crit_edge:                   ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then196

lor.lhs.false:                                    ; preds = %if.end180
  %tx_irq_count = getelementptr inbounds %struct.ll_temac_platform_data, ptr %1, i32 0, i32 11
  %79 = ptrtoint ptr %tx_irq_count to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %tx_irq_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool195.not = icmp eq i8 %80, 0
  br i1 %tobool195.not, label %lor.lhs.false.if.end201_crit_edge, label %lor.lhs.false.if.then196_crit_edge

lor.lhs.false.if.then196_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then196

lor.lhs.false.if.end201_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end201

if.then196:                                       ; preds = %lor.lhs.false.if.then196_crit_edge, %if.end180.if.then196_crit_edge
  %81 = ptrtoint ptr %coalesce_delay_tx to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %78, ptr %coalesce_delay_tx, align 1
  %tx_irq_count199 = getelementptr inbounds %struct.ll_temac_platform_data, ptr %1, i32 0, i32 11
  %82 = ptrtoint ptr %tx_irq_count199 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %tx_irq_count199, align 1
  %84 = ptrtoint ptr %coalesce_count_tx to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %coalesce_count_tx, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.then196, %lor.lhs.false.if.end201_crit_edge
  %rx_irq_timeout = getelementptr inbounds %struct.ll_temac_platform_data, ptr %1, i32 0, i32 12
  %85 = ptrtoint ptr %rx_irq_timeout to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %rx_irq_timeout, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool203.not = icmp eq i8 %86, 0
  br i1 %tobool203.not, label %lor.lhs.false204, label %if.end201.if.then207_crit_edge

if.end201.if.then207_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then207

lor.lhs.false204:                                 ; preds = %if.end201
  %rx_irq_count = getelementptr inbounds %struct.ll_temac_platform_data, ptr %1, i32 0, i32 13
  %87 = ptrtoint ptr %rx_irq_count to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %rx_irq_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool206.not = icmp eq i8 %88, 0
  br i1 %tobool206.not, label %lor.lhs.false204.if.end214_crit_edge, label %lor.lhs.false204.if.then207_crit_edge

lor.lhs.false204.if.then207_crit_edge:            ; preds = %lor.lhs.false204
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then207

lor.lhs.false204.if.end214_crit_edge:             ; preds = %lor.lhs.false204
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end214

if.then207:                                       ; preds = %lor.lhs.false204.if.then207_crit_edge, %if.end201.if.then207_crit_edge
  %89 = ptrtoint ptr %coalesce_delay_rx to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %86, ptr %coalesce_delay_rx, align 1
  %rx_irq_count210 = getelementptr inbounds %struct.ll_temac_platform_data, ptr %1, i32 0, i32 13
  %90 = ptrtoint ptr %rx_irq_count210 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %rx_irq_count210, align 1
  %92 = ptrtoint ptr %coalesce_count_rx to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %coalesce_count_rx, align 2
  br label %if.end214

if.end214:                                        ; preds = %if.then207, %lor.lhs.false204.if.end214_crit_edge, %if.else166.if.end214_crit_edge, %if.end163
  %rx_irq215 = getelementptr i8, ptr %call4, i32 2416
  %93 = ptrtoint ptr %rx_irq215 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rx_irq215, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp = icmp slt i32 %94, 0
  br i1 %cmp, label %if.then217, label %if.end228

if.then217:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %94)
  %cmp219.not = icmp eq i32 %94, -517
  br i1 %cmp219.not, label %if.then217.if.end226_crit_edge, label %do.end224

if.then217.if.end226_crit_edge:                   ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end226

do.end224:                                        ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #12
  br label %if.end226

if.end226:                                        ; preds = %do.end224, %if.then217.if.end226_crit_edge
  %95 = ptrtoint ptr %rx_irq215 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_irq215, align 4
  br label %cleanup

if.end228:                                        ; preds = %if.end214
  %tx_irq229 = getelementptr i8, ptr %call4, i32 2412
  %97 = ptrtoint ptr %tx_irq229 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tx_irq229, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp230 = icmp slt i32 %98, 0
  br i1 %cmp230, label %if.then232, label %if.end243

if.then232:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %98)
  %cmp234.not = icmp eq i32 %98, -517
  br i1 %cmp234.not, label %if.then232.if.end241_crit_edge, label %do.end239

if.then232.if.end241_crit_edge:                   ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end241

do.end239:                                        ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #12
  br label %if.end241

if.end241:                                        ; preds = %do.end239, %if.then232.if.end241_crit_edge
  %99 = ptrtoint ptr %tx_irq229 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tx_irq229, align 4
  br label %cleanup

if.end243:                                        ; preds = %if.end228
  br i1 %tobool64.not, label %if.else256, label %if.then245

if.then245:                                       ; preds = %if.end243
  %call246 = call i32 @of_get_mac_address(ptr noundef nonnull %retval.0.i500, ptr noundef nonnull %addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246)
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %if.end253, label %do.end251

do.end251:                                        ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #12
  br label %cleanup

if.end253:                                        ; preds = %if.then245
  call void @dev_addr_mod(ptr noundef nonnull %call4, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #9
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 86
  %101 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev_addr.i, align 64
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 4
  %105 = and i32 %104, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.i.not.i.i = icmp eq i32 %105, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.end253.if.then.i_crit_edge

if.end253.if.then.i_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_valid_ether_addr.exit.i:                       ; preds = %if.end253
  %add.ptr.i.i.i = getelementptr i8, ptr %102, i32 4
  %106 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %107 to i32
  %or.i.i.i = or i32 %104, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.if.then.i_crit_edge, label %is_valid_ether_addr.exit.i.if.end262.sink.split_crit_edge

is_valid_ether_addr.exit.i.if.end262.sink.split_crit_edge: ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end262.sink.split

is_valid_ether_addr.exit.i.if.then.i_crit_edge:   ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %is_valid_ether_addr.exit.i.if.then.i_crit_edge, %if.end253.if.then.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i) #9
  %108 = call ptr @memset(ptr %addr.i.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i.i, i32 noundef 6) #9
  %109 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %addr.i.i, align 1
  %111 = and i8 %110, -4
  %112 = or i8 %111, 2
  store i8 %112, ptr %addr.i.i, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call4, i32 noundef 0, ptr noundef nonnull %addr.i.i, i32 noundef 6) #9
  %addr_assign_type.i.i = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 55
  %113 = ptrtoint ptr %addr_assign_type.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %addr_assign_type.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i) #9
  br label %if.end262.sink.split

if.else256:                                       ; preds = %if.end243
  br i1 %tobool31.not, label %if.else256.if.end262_crit_edge, label %if.then258

if.else256.if.end262_crit_edge:                   ; preds = %if.else256
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end262

if.then258:                                       ; preds = %if.else256
  %mac_addr = getelementptr inbounds %struct.ll_temac_platform_data, ptr %1, i32 0, i32 2
  call void @dev_addr_mod(ptr noundef nonnull %call4, i32 noundef 0, ptr noundef %mac_addr, i32 noundef 6) #9
  %dev_addr.i508 = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 86
  %114 = ptrtoint ptr %dev_addr.i508 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev_addr.i508, align 64
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 4
  %118 = and i32 %117, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.i.not.i.i509 = icmp eq i32 %118, 0
  br i1 %tobool.i.not.i.i509, label %is_valid_ether_addr.exit.i514, label %if.then258.if.then.i516_crit_edge

if.then258.if.then.i516_crit_edge:                ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i516

is_valid_ether_addr.exit.i514:                    ; preds = %if.then258
  %add.ptr.i.i.i510 = getelementptr i8, ptr %115, i32 4
  %119 = ptrtoint ptr %add.ptr.i.i.i510 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %add.ptr.i.i.i510, align 2
  %conv.i.i.i511 = zext i16 %120 to i32
  %or.i.i.i512 = or i32 %117, %conv.i.i.i511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i512)
  %cmp.i.i.not.i513 = icmp eq i32 %or.i.i.i512, 0
  br i1 %cmp.i.i.not.i513, label %is_valid_ether_addr.exit.i514.if.then.i516_crit_edge, label %is_valid_ether_addr.exit.i514.if.end262.sink.split_crit_edge

is_valid_ether_addr.exit.i514.if.end262.sink.split_crit_edge: ; preds = %is_valid_ether_addr.exit.i514
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end262.sink.split

is_valid_ether_addr.exit.i514.if.then.i516_crit_edge: ; preds = %is_valid_ether_addr.exit.i514
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i516

if.then.i516:                                     ; preds = %is_valid_ether_addr.exit.i514.if.then.i516_crit_edge, %if.then258.if.then.i516_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i507) #9
  %121 = call ptr @memset(ptr %addr.i.i507, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i.i507, i32 noundef 6) #9
  %122 = ptrtoint ptr %addr.i.i507 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %addr.i.i507, align 1
  %124 = and i8 %123, -4
  %125 = or i8 %124, 2
  store i8 %125, ptr %addr.i.i507, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call4, i32 noundef 0, ptr noundef nonnull %addr.i.i507, i32 noundef 6) #9
  %addr_assign_type.i.i515 = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 55
  %126 = ptrtoint ptr %addr_assign_type.i.i515 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %addr_assign_type.i.i515, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i507) #9
  br label %if.end262.sink.split

if.end262.sink.split:                             ; preds = %if.then.i516, %is_valid_ether_addr.exit.i514.if.end262.sink.split_crit_edge, %if.then.i, %is_valid_ether_addr.exit.i.if.end262.sink.split_crit_edge
  call fastcc void @temac_do_set_mac_address(ptr noundef nonnull %call4) #9
  br label %if.end262

if.end262:                                        ; preds = %if.end262.sink.split, %if.else256.if.end262_crit_edge
  %call263 = call i32 @temac_mdio_setup(ptr noundef %add.ptr.i, ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263)
  %tobool264.not = icmp eq i32 %call263, 0
  br i1 %tobool264.not, label %if.end262.if.end270_crit_edge, label %do.end268

if.end262.if.end270_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end270

do.end268:                                        ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.41) #12
  br label %if.end270

if.end270:                                        ; preds = %do.end268, %if.end262.if.end270_crit_edge
  br i1 %tobool64.not, label %if.else295, label %if.then272

if.then272:                                       ; preds = %if.end270
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i519) #9
  %127 = call ptr @memset(ptr %args.i519, i32 255, i32 72)
  %call.i520 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %retval.0.i500, ptr noundef nonnull @.str.44, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i519) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i520)
  %tobool.not.i521 = icmp eq i32 %call.i520, 0
  br i1 %tobool.not.i521, label %of_parse_phandle.exit524, label %of_parse_phandle.exit524.thread

of_parse_phandle.exit524.thread:                  ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i519) #9
  %phy_node529 = getelementptr i8, ptr %call4, i32 2312
  %128 = ptrtoint ptr %phy_node529 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %phy_node529, align 4
  br label %if.end303

of_parse_phandle.exit524:                         ; preds = %if.then272
  %129 = ptrtoint ptr %args.i519 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %args.i519, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i519) #9
  %phy_node = getelementptr i8, ptr %call4, i32 2312
  %131 = ptrtoint ptr %phy_node to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %130, ptr %phy_node, align 4
  %tobool275.not = icmp eq ptr %130, null
  br i1 %tobool275.not, label %of_parse_phandle.exit524.if.end303_crit_edge, label %do.body277

of_parse_phandle.exit524.if.end303_crit_edge:     ; preds = %of_parse_phandle.exit524
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end303

do.body277:                                       ; preds = %of_parse_phandle.exit524
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @temac_probe.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@temac_probe, %if.then289)) #9
          to label %if.end303 [label %if.then289], !srcloc !211

if.then289:                                       ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @temac_probe.__UNIQUE_ID_ddebug492, ptr noundef %133, ptr noundef nonnull @.str.45, ptr noundef nonnull %retval.0.i500) #9
  br label %if.end303

if.else295:                                       ; preds = %if.end270
  br i1 %tobool31.not, label %if.else295.if.end303_crit_edge, label %if.then297

if.else295.if.end303_crit_edge:                   ; preds = %if.else295
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end303

if.then297:                                       ; preds = %if.else295
  call void @__sanitizer_cov_trace_pc() #11
  %phy_name = getelementptr i8, ptr %call4, i32 2316
  %mii_bus = getelementptr i8, ptr %call4, i32 2384
  %134 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mii_bus, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %135, i32 0, i32 2
  %phy_addr = getelementptr inbounds %struct.ll_temac_platform_data, ptr %1, i32 0, i32 5
  %136 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %phy_addr, align 8
  %call300 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phy_name, i32 noundef 64, ptr noundef nonnull @.str.46, ptr noundef %id, i32 noundef %137)
  %phy_interface = getelementptr inbounds %struct.ll_temac_platform_data, ptr %1, i32 0, i32 6
  %138 = ptrtoint ptr %phy_interface to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %phy_interface, align 4
  %phy_interface301 = getelementptr i8, ptr %call4, i32 2380
  %140 = ptrtoint ptr %phy_interface301 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %phy_interface301, align 4
  br label %if.end303

if.end303:                                        ; preds = %if.then297, %if.else295.if.end303_crit_edge, %if.then289, %do.body277, %of_parse_phandle.exit524.if.end303_crit_edge, %of_parse_phandle.exit524.thread
  %141 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev10, align 4
  %call305 = call i32 @sysfs_create_group(ptr noundef %142, ptr noundef nonnull @temac_attr_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call305)
  %tobool306.not = icmp eq i32 %call305, 0
  br i1 %tobool306.not, label %if.end312, label %do.end310

do.end310:                                        ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #11
  %143 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.48) #12
  br label %err_sysfs_create

if.end312:                                        ; preds = %if.end303
  %145 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %add.ptr.i, align 4
  %call314 = call i32 @register_netdev(ptr noundef %146) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call314)
  %tobool315.not = icmp eq i32 %call314, 0
  br i1 %tobool315.not, label %if.end312.cleanup_crit_edge, label %do.end319

if.end312.cleanup_crit_edge:                      ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end319:                                        ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #11
  %147 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.51, i32 noundef %call314) #12
  %149 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev10, align 4
  call void @sysfs_remove_group(ptr noundef %150, ptr noundef nonnull @temac_attr_group) #9
  br label %err_sysfs_create

err_sysfs_create:                                 ; preds = %do.end319, %do.end310
  %rc.0 = phi i32 [ %call305, %do.end310 ], [ %call314, %do.end319 ]
  %phy_node324 = getelementptr i8, ptr %call4, i32 2312
  %151 = ptrtoint ptr %phy_node324 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %phy_node324, align 4
  %tobool325.not = icmp eq ptr %152, null
  br i1 %tobool325.not, label %err_sysfs_create.if.end328_crit_edge, label %if.then326

err_sysfs_create.if.end328_crit_edge:             ; preds = %err_sysfs_create
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end328

if.then326:                                       ; preds = %err_sysfs_create
  call void @__sanitizer_cov_trace_pc() #11
  call void @of_node_put(ptr noundef nonnull %152) #9
  br label %if.end328

if.end328:                                        ; preds = %if.then326, %err_sysfs_create.if.end328_crit_edge
  call void @temac_mdio_teardown(ptr noundef %add.ptr.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end328, %if.end312.cleanup_crit_edge, %do.end251, %if.end241, %if.end226, %do.end176, %do.end139, %do.end126, %do.end61, %if.else.cleanup_crit_edge, %do.end37, %dev_of_node.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end61 ], [ %56, %do.end139 ], [ %96, %if.end226 ], [ %100, %if.end241 ], [ -19, %do.end251 ], [ %rc.0, %if.end328 ], [ -19, %do.end126 ], [ %68, %do.end176 ], [ -22, %do.end37 ], [ -12, %dev_of_node.exit.cleanup_crit_edge ], [ -12, %if.else.cleanup_crit_edge ], [ 0, %if.end312.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temac_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #9
  %dev = getelementptr i8, ptr %1, i32 2308
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @sysfs_remove_group(ptr noundef %3, ptr noundef nonnull @temac_attr_group) #9
  %phy_node = getelementptr i8, ptr %1, i32 2312
  %4 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_node, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @of_node_put(ptr noundef nonnull %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @temac_mdio_teardown(ptr noundef %add.ptr.i) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ll_temac_restart_work_func(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -228
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call fastcc void @ll_temac_recv(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_temac_ior_le(ptr nocapture noundef readonly %lp, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.temac_local, ptr %lp, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !212
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !213
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_temac_iow_le(ptr nocapture noundef readonly %lp, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.temac_local, ptr %lp, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !214
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %value) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !215
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_temac_ior_be(ptr nocapture noundef readonly %lp, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.temac_local, ptr %lp, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_temac_iow_be(ptr nocapture noundef readonly %lp, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !217
  tail call void @arm_heavy_mb() #9
  %regs = getelementptr inbounds %struct.temac_local, ptr %lp, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %value) #9, !srcloc !215
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_iomap(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temac_dma_in32_le(ptr nocapture noundef readonly %lp, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sdma_regs = getelementptr inbounds %struct.temac_local, ptr %lp, i32 0, i32 7
  %0 = ptrtoint ptr %sdma_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdma_regs, align 4
  %shl = shl i32 %reg, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !212
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !213
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @temac_dma_out32_le(ptr nocapture noundef readonly %lp, i32 noundef %reg, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sdma_regs = getelementptr inbounds %struct.temac_local, ptr %lp, i32 0, i32 7
  %0 = ptrtoint ptr %sdma_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdma_regs, align 4
  %shl = shl i32 %reg, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !214
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %value) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !215
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temac_dma_in32_be(ptr nocapture noundef readonly %lp, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sdma_regs = getelementptr inbounds %struct.temac_local, ptr %lp, i32 0, i32 7
  %0 = ptrtoint ptr %sdma_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdma_regs, align 4
  %shl = shl i32 %reg, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @temac_dma_out32_be(ptr nocapture noundef readonly %lp, i32 noundef %reg, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  tail call void @arm_heavy_mb() #9
  %sdma_regs = getelementptr inbounds %struct.temac_local, ptr %lp, i32 0, i32 7
  %0 = ptrtoint ptr %sdma_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdma_regs, align 4
  %shl = shl i32 %reg, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %value) #9, !srcloc !215
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @temac_mdio_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @temac_mdio_teardown(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temac_open(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @temac_open.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@temac_open, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @temac_open.__UNIQUE_ID_ddebug485, ptr noundef %dev, ptr noundef nonnull @.str.54) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %phy_node = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_node, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %call8 = tail call ptr @of_phy_connect(ptr noundef %3, ptr noundef nonnull %1, ptr noundef nonnull @temac_adjust_link, i32 noundef 0, i32 noundef 0) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %dev14 = getelementptr i8, ptr %ndev, i32 2308
  %4 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.55) #12
  br label %cleanup

if.end15:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phy_start(ptr noundef nonnull %call8) #9
  br label %if.end31

if.else:                                          ; preds = %do.end
  %phy_name = getelementptr i8, ptr %ndev, i32 2316
  %6 = ptrtoint ptr %phy_name to i32
  call void @__asan_load1_noabort(i32 %6)
  %char0 = load i8, ptr %phy_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp.not = icmp eq i8 %char0, 0
  br i1 %cmp.not, label %if.else.if.end31_crit_edge, label %if.then17

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then17:                                        ; preds = %if.else
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  %phy_interface = getelementptr i8, ptr %ndev, i32 2380
  %9 = ptrtoint ptr %phy_interface to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phy_interface, align 4
  %call21 = tail call ptr @phy_connect(ptr noundef %8, ptr noundef %phy_name, ptr noundef nonnull @temac_adjust_link, i32 noundef %10) #9
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end26, label %if.end29

do.end26:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %dev27 = getelementptr i8, ptr %ndev, i32 2308
  %11 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.57) #12
  %13 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phy_start(ptr noundef %call21) #9
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %if.else.if.end31_crit_edge, %if.end15
  %phydev.0 = phi ptr [ %call8, %if.end15 ], [ %call21, %if.end29 ], [ null, %if.else.if.end31_crit_edge ]
  tail call fastcc void @temac_device_reset(ptr noundef %ndev)
  %tx_irq = getelementptr i8, ptr %ndev, i32 2412
  %14 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %15, ptr noundef nonnull @ll_temac_tx_irq, ptr noundef null, i32 noundef 0, ptr noundef %ndev, ptr noundef %ndev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool34.not = icmp eq i32 %call.i, 0
  br i1 %tobool34.not, label %if.end36, label %if.end31.err_tx_irq_crit_edge

if.end31.err_tx_irq_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_tx_irq

if.end36:                                         ; preds = %if.end31
  %rx_irq = getelementptr i8, ptr %ndev, i32 2416
  %16 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_irq, align 4
  %call.i81 = tail call i32 @request_threaded_irq(i32 noundef %17, ptr noundef nonnull @ll_temac_rx_irq, ptr noundef null, i32 noundef 0, ptr noundef %ndev, ptr noundef %ndev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool40.not = icmp eq i32 %call.i81, 0
  br i1 %tobool40.not, label %if.end36.cleanup_crit_edge, label %err_rx_irq

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_rx_irq:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_irq, align 4
  %call44 = tail call ptr @free_irq(i32 noundef %19, ptr noundef %ndev) #9
  br label %err_tx_irq

err_tx_irq:                                       ; preds = %err_rx_irq, %if.end31.err_tx_irq_crit_edge
  %rc.0 = phi i32 [ %call.i, %if.end31.err_tx_irq_crit_edge ], [ %call.i81, %err_rx_irq ]
  %tobool45.not = icmp eq ptr %phydev.0, null
  br i1 %tobool45.not, label %err_tx_irq.do.end50_crit_edge, label %if.then46

err_tx_irq.do.end50_crit_edge:                    ; preds = %err_tx_irq
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

if.then46:                                        ; preds = %err_tx_irq
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phy_disconnect(ptr noundef nonnull %phydev.0) #9
  br label %do.end50

do.end50:                                         ; preds = %if.then46, %err_tx_irq.do.end50_crit_edge
  %dev51 = getelementptr i8, ptr %ndev, i32 2308
  %20 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev51, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.60) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %if.end36.cleanup_crit_edge, %do.end26, %do.end13
  %retval.0 = phi i32 [ %rc.0, %do.end50 ], [ -19, %do.end13 ], [ %13, %do.end26 ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temac_stop(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @temac_stop.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@temac_stop, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @temac_stop.__UNIQUE_ID_ddebug486, ptr noundef %dev, ptr noundef nonnull @.str.85) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %restart_work = getelementptr i8, ptr %ndev, i32 2532
  %call5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %restart_work) #9
  %tx_irq = getelementptr i8, ptr %ndev, i32 2412
  %2 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_irq, align 4
  %call6 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %ndev) #9
  %rx_irq = getelementptr i8, ptr %ndev, i32 2416
  %4 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_irq, align 4
  %call7 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %ndev) #9
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %do.end.if.end10_crit_edge, label %if.then9

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phy_disconnect(ptr noundef nonnull %1) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %do.end.if.end10_crit_edge
  tail call fastcc void @temac_dma_bd_release(ptr noundef %ndev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temac_start_xmit(ptr noundef %skb, ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %3 to i32
  %frags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 12
  %tx_bd_v = getelementptr i8, ptr %ndev, i32 2488
  %4 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_bd_v, align 4
  %tx_bd_tail = getelementptr i8, ptr %ndev, i32 2516
  %6 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_bd_tail, align 4
  %arrayidx3 = getelementptr %struct.cdmac_bd, ptr %5, i32 %7
  %add = add nuw nsw i32 %conv, 1
  %tx_bd_num.i = getelementptr i8, ptr %ndev, i32 2496
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %num_frag.addr.0.i = phi i32 [ %add, %entry ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %cur_p.0.i = phi ptr [ %arrayidx3, %entry ], [ %arrayidx4.i, %if.end.i.do.body.i_crit_edge ]
  %tail.0.i = phi i32 [ %7, %entry ], [ %spec.store.select.i, %if.end.i.do.body.i_crit_edge ]
  %app0.i = getelementptr inbounds %struct.cdmac_bd, ptr %cur_p.0.i, i32 0, i32 3
  %8 = ptrtoint ptr %app0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %app0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then

if.end.i:                                         ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !220
  %inc.i = add i32 %tail.0.i, 1
  %10 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_bd_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %11)
  %cmp.not.i = icmp ult i32 %inc.i, %11
  %spec.store.select.i = select i1 %cmp.not.i, i32 %inc.i, i32 0
  %12 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_bd_v, align 4
  %arrayidx4.i = getelementptr %struct.cdmac_bd, ptr %13, i32 %spec.store.select.i
  %dec.i = add nsw i32 %num_frag.addr.0.i, -1
  %cmp5.i = icmp sgt i32 %num_frag.addr.0.i, 0
  br i1 %cmp5.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.if.end15_crit_edge

if.end.i.if.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.then:                                          ; preds = %do.body.i
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %14 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !221
  %18 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_bd_tail, align 4
  %20 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_bd_v, align 4
  %arrayidx.i256 = getelementptr %struct.cdmac_bd, ptr %21, i32 %19
  br label %do.body.i263

do.body.i263:                                     ; preds = %if.end.i270.do.body.i263_crit_edge, %if.end
  %num_frag.addr.0.i258 = phi i32 [ %add, %if.end ], [ %dec.i268, %if.end.i270.do.body.i263_crit_edge ]
  %cur_p.0.i259 = phi ptr [ %arrayidx.i256, %if.end ], [ %arrayidx4.i267, %if.end.i270.do.body.i263_crit_edge ]
  %tail.0.i260 = phi i32 [ %19, %if.end ], [ %spec.store.select.i266, %if.end.i270.do.body.i263_crit_edge ]
  %app0.i261 = getelementptr inbounds %struct.cdmac_bd, ptr %cur_p.0.i259, i32 0, i32 3
  %22 = ptrtoint ptr %app0.i261 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %app0.i261, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i262 = icmp eq i32 %23, 0
  br i1 %tobool.not.i262, label %if.end.i270, label %do.body.i263.cleanup_crit_edge

do.body.i263.cleanup_crit_edge:                   ; preds = %do.body.i263
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i270:                                      ; preds = %do.body.i263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !220
  %inc.i264 = add i32 %tail.0.i260, 1
  %24 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_bd_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i264, i32 %25)
  %cmp.not.i265 = icmp ult i32 %inc.i264, %25
  %spec.store.select.i266 = select i1 %cmp.not.i265, i32 %inc.i264, i32 0
  %26 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_bd_v, align 4
  %arrayidx4.i267 = getelementptr %struct.cdmac_bd, ptr %27, i32 %spec.store.select.i266
  %dec.i268 = add nsw i32 %num_frag.addr.0.i258, -1
  %cmp5.i269 = icmp sgt i32 %num_frag.addr.0.i258, 0
  br i1 %cmp5.i269, label %if.end.i270.do.body.i263_crit_edge, label %if.end14

if.end.i270.do.body.i263_crit_edge:               ; preds = %if.end.i270
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i263

if.end14:                                         ; preds = %if.end.i270
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %29) #9
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end.i.if.end15_crit_edge
  %app0 = getelementptr %struct.cdmac_bd, ptr %5, i32 %7, i32 3
  %30 = ptrtoint ptr %app0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %app0, align 4
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %31 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load = load i16, ptr %ip_summed, align 8
  %32 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %32)
  %cmp = icmp eq i16 %32, 1536
  br i1 %cmp, label %if.then18, label %if.end15.if.end24_crit_edge

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %33 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %33, align 8
  %conv.i = zext i16 %35 to i32
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %36 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %38 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %conv.i, %sub.ptr.lhs.cast.i.i
  %sub.i = add i32 %sub.ptr.sub.i.neg.i, %sub.ptr.rhs.cast.i.i
  %csum_offset = getelementptr inbounds %struct.anon.116, ptr %33, i32 0, i32 1
  %40 = ptrtoint ptr %csum_offset to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %csum_offset, align 2
  %conv20 = zext i16 %41 to i32
  %add21 = add i32 %sub.i, %conv20
  %42 = ptrtoint ptr %app0 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %app0, align 4
  %shl = shl i32 %sub.i, 16
  %or23 = or i32 %shl, %add21
  %app1 = getelementptr %struct.cdmac_bd, ptr %5, i32 %7, i32 4
  %43 = ptrtoint ptr %app1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or23, ptr %app1, align 4
  %app2 = getelementptr %struct.cdmac_bd, ptr %5, i32 %7, i32 5
  %44 = ptrtoint ptr %app2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %app2, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.end15.if.end24_crit_edge
  %45 = ptrtoint ptr %app0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %app0, align 4
  %or26 = or i32 %46, 134217728
  store i32 %or26, ptr %app0, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %47 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %parent, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %51 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %53 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data_len.i, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %50) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end24
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !206

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %48) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 3
  %55 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %48, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %58, %if.end.i.i ], [ %56, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.77, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.78, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i274 = sub i32 %52, %54
  tail call void @debug_dma_map_single(ptr noundef %48, ptr noundef %50, i32 noundef %sub.i274) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %59 = load ptr, ptr @mem_map, align 4
  %60 = ptrtoint ptr %50 to i32
  %sub.i275 = add i32 %60, 1073741824
  %shr.i = lshr i32 %sub.i275, 12
  %add.ptr.i276 = getelementptr %struct.page, ptr %59, i32 %shr.i
  %and.i = and i32 %60, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %48, ptr noundef %add.ptr.i276, i32 noundef %and.i, i32 noundef %sub.i274, i32 noundef 1, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i277 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %61 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len.i, align 4
  %63 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %data_len.i, align 8
  %sub.i280 = sub i32 %62, %64
  %len = getelementptr %struct.cdmac_bd, ptr %5, i32 %7, i32 2
  %65 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %sub.i280, ptr %len, align 4
  %66 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %67, i32 noundef %retval.0.i277) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i277)
  %cmp.i = icmp eq i32 %retval.0.i277, -1
  br i1 %cmp.i, label %land.rhs, label %if.end77

land.rhs:                                         ; preds = %dma_map_single_attrs.exit
  %.b248 = load i1, ptr @temac_start_xmit.__already_done, align 1
  br i1 %.b248, label %land.rhs.if.then76_crit_edge, label %if.then42, !prof !206

land.rhs.if.then76_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

if.then42:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @temac_start_xmit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 885, i32 noundef 9, ptr noundef null) #9
  br label %if.then76

if.then76:                                        ; preds = %if.then42, %land.rhs.if.then76_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %68 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %69, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

if.end77:                                         ; preds = %dma_map_single_attrs.exit
  %phys = getelementptr %struct.cdmac_bd, ptr %5, i32 %7, i32 1
  %70 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %retval.0.i277, ptr %phys, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp78356.not = icmp eq i8 %3, 0
  br i1 %cmp78356.not, label %if.end77.for.end_crit_edge, label %if.end77.for.body_crit_edge

if.end77.for.body_crit_edge:                      ; preds = %if.end77
  br label %for.body

if.end77.for.end_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end136.for.body_crit_edge, %if.end77.for.body_crit_edge
  %frag.0358 = phi ptr [ %incdec.ptr141, %if.end136.for.body_crit_edge ], [ %frags, %if.end77.for.body_crit_edge ]
  %ii.0357 = phi i32 [ %inc142, %if.end136.for.body_crit_edge ], [ 0, %if.end77.for.body_crit_edge ]
  %71 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tx_bd_tail, align 4
  %inc81 = add i32 %72, 1
  %73 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_bd_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc81, i32 %74)
  %cmp82.not = icmp ult i32 %inc81, %74
  %spec.store.select = select i1 %cmp82.not, i32 %inc81, i32 0
  %75 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %spec.store.select, ptr %tx_bd_tail, align 4
  %76 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tx_bd_v, align 4
  %78 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %parent, align 8
  %80 = ptrtoint ptr %frag.0358 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %frag.0358, align 4
  %call1.i = tail call ptr @page_address(ptr noundef %81) #9
  %bv_offset.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag.0358, i32 0, i32 2
  %82 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bv_offset.i.i, align 4
  %add.ptr.i281 = getelementptr i8, ptr %call1.i, i32 %83
  %bv_len.i = getelementptr inbounds %struct.bio_vec, ptr %frag.0358, i32 0, i32 1
  %84 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bv_len.i, align 4
  %call.i282 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i281) #9
  br i1 %call.i282, label %land.rhs.i284, label %dma_map_single_attrs.exit299

land.rhs.i284:                                    ; preds = %for.body
  %.b1.i283 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i283, label %land.rhs.i284.dma_map_single_attrs.exit299.thread_crit_edge, label %if.then.i288, !prof !206

land.rhs.i284.dma_map_single_attrs.exit299.thread_crit_edge: ; preds = %land.rhs.i284
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit299.thread

if.then.i288:                                     ; preds = %land.rhs.i284
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i285 = tail call ptr @dev_driver_string(ptr noundef %79) #9
  %init_name.i.i286 = getelementptr inbounds %struct.device, ptr %79, i32 0, i32 3
  %86 = ptrtoint ptr %init_name.i.i286 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %init_name.i.i286, align 8
  %tobool.not.i.i287 = icmp eq ptr %87, null
  br i1 %tobool.not.i.i287, label %if.end.i.i289, label %if.then.i288.dev_name.exit.i291_crit_edge

if.then.i288.dev_name.exit.i291_crit_edge:        ; preds = %if.then.i288
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i291

if.end.i.i289:                                    ; preds = %if.then.i288
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %79, align 4
  br label %dev_name.exit.i291

dev_name.exit.i291:                               ; preds = %if.end.i.i289, %if.then.i288.dev_name.exit.i291_crit_edge
  %retval.0.i.i290 = phi ptr [ %89, %if.end.i.i289 ], [ %87, %if.then.i288.dev_name.exit.i291_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.77, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.78, ptr noundef %call16.i285, ptr noundef %retval.0.i.i290) #9
  br label %dma_map_single_attrs.exit299.thread

dma_map_single_attrs.exit299.thread:              ; preds = %dev_name.exit.i291, %land.rhs.i284.dma_map_single_attrs.exit299.thread_crit_edge
  %90 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %91, i32 noundef -1) #9
  br label %if.then99

dma_map_single_attrs.exit299:                     ; preds = %for.body
  tail call void @debug_dma_map_single(ptr noundef %79, ptr noundef %add.ptr.i281, i32 noundef %85) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %92 = load ptr, ptr @mem_map, align 4
  %93 = ptrtoint ptr %add.ptr.i281 to i32
  %sub.i292 = add i32 %93, 1073741824
  %shr.i293 = lshr i32 %sub.i292, 12
  %add.ptr.i294 = getelementptr %struct.page, ptr %92, i32 %shr.i293
  %and.i295 = and i32 %93, 4095
  %call41.i296 = tail call i32 @dma_map_page_attrs(ptr noundef %79, ptr noundef %add.ptr.i294, i32 noundef %and.i295, i32 noundef %85, i32 noundef 1, i32 noundef 0) #9
  %94 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %95, i32 noundef %call41.i296) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i296)
  %cmp.i300 = icmp eq i32 %call41.i296, -1
  br i1 %cmp.i300, label %dma_map_single_attrs.exit299.if.then99_crit_edge, label %if.end136

dma_map_single_attrs.exit299.if.then99_crit_edge: ; preds = %dma_map_single_attrs.exit299
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then99

if.then99:                                        ; preds = %dma_map_single_attrs.exit299.if.then99_crit_edge, %dma_map_single_attrs.exit299.thread
  %96 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tx_bd_tail, align 4
  %dec = add i32 %97, -1
  store i32 %dec, ptr %tx_bd_tail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp101 = icmp slt i32 %dec, 0
  br i1 %cmp101, label %if.then103, label %if.then99.if.end106_crit_edge

if.then99.if.end106_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

if.then103:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_bd_num.i, align 4
  %sub = add i32 %99, -1
  %100 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %sub, ptr %tx_bd_tail, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %if.then99.if.end106_crit_edge
  %101 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %tx_bd_v, align 4
  %103 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tx_bd_tail, align 4
  %arrayidx109 = getelementptr %struct.cdmac_bd, ptr %102, i32 %104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ii.0357)
  %cmp111361.not = icmp eq i32 %ii.0357, 0
  br i1 %cmp111361.not, label %if.end106.while.end_crit_edge, label %if.end106.while.body_crit_edge

if.end106.while.body_crit_edge:                   ; preds = %if.end106
  br label %while.body

if.end106.while.end_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end125.while.body_crit_edge, %if.end106.while.body_crit_edge
  %dec110364.in = phi i32 [ %dec110364, %if.end125.while.body_crit_edge ], [ %ii.0357, %if.end106.while.body_crit_edge ]
  %cur_p.1363 = phi ptr [ %arrayidx128, %if.end125.while.body_crit_edge ], [ %arrayidx109, %if.end106.while.body_crit_edge ]
  %frag.1362 = phi ptr [ %incdec.ptr, %if.end125.while.body_crit_edge ], [ %frag.0358, %if.end106.while.body_crit_edge ]
  %dec110364 = add nsw i32 %dec110364.in, -1
  %incdec.ptr = getelementptr %struct.bio_vec, ptr %frag.1362, i32 -1
  %105 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %parent, align 8
  %phys115 = getelementptr inbounds %struct.cdmac_bd, ptr %cur_p.1363, i32 0, i32 1
  %107 = ptrtoint ptr %phys115 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %phys115, align 4
  %bv_len.i302 = getelementptr %struct.bio_vec, ptr %frag.1362, i32 -1, i32 1
  %109 = ptrtoint ptr %bv_len.i302 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %bv_len.i302, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %106, i32 noundef %108, i32 noundef %110, i32 noundef 1, i32 noundef 0) #9
  %111 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %tx_bd_tail, align 4
  %dec118 = add i32 %112, -1
  store i32 %dec118, ptr %tx_bd_tail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec118)
  %cmp119 = icmp slt i32 %dec118, 0
  br i1 %cmp119, label %if.then121, label %while.body.if.end125_crit_edge

while.body.if.end125_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

if.then121:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %113 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tx_bd_num.i, align 4
  %sub123 = add i32 %114, -1
  %115 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %sub123, ptr %tx_bd_tail, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then121, %while.body.if.end125_crit_edge
  %116 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %tx_bd_v, align 4
  %118 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tx_bd_tail, align 4
  %arrayidx128 = getelementptr %struct.cdmac_bd, ptr %117, i32 %119
  %cmp111 = icmp sgt i32 %dec110364.in, 1
  br i1 %cmp111, label %if.end125.while.body_crit_edge, label %if.end125.while.end_crit_edge

if.end125.while.end_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end125.while.body_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end125.while.end_crit_edge, %if.end106.while.end_crit_edge
  %cur_p.1.lcssa = phi ptr [ %arrayidx109, %if.end106.while.end_crit_edge ], [ %arrayidx128, %if.end125.while.end_crit_edge ]
  %120 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %parent, align 8
  %phys131 = getelementptr inbounds %struct.cdmac_bd, ptr %cur_p.1.lcssa, i32 0, i32 1
  %122 = ptrtoint ptr %phys131 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %phys131, align 4
  %124 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %len.i, align 4
  %126 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %data_len.i, align 8
  %sub.i305 = sub i32 %125, %127
  tail call void @dma_unmap_page_attrs(ptr noundef %121, i32 noundef %123, i32 noundef %sub.i305, i32 noundef 1, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  %tx_dropped134 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %128 = ptrtoint ptr %tx_dropped134 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tx_dropped134, align 4
  %inc135 = add i32 %129, 1
  store i32 %inc135, ptr %tx_dropped134, align 4
  br label %cleanup

if.end136:                                        ; preds = %dma_map_single_attrs.exit299
  %phys137 = getelementptr %struct.cdmac_bd, ptr %77, i32 %spec.store.select, i32 1
  %130 = ptrtoint ptr %phys137 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %call41.i296, ptr %phys137, align 4
  %131 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %bv_len.i, align 4
  %len139 = getelementptr %struct.cdmac_bd, ptr %77, i32 %spec.store.select, i32 2
  %133 = ptrtoint ptr %len139 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %len139, align 4
  %app0140 = getelementptr %struct.cdmac_bd, ptr %77, i32 %spec.store.select, i32 3
  %134 = ptrtoint ptr %app0140 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %app0140, align 4
  %incdec.ptr141 = getelementptr %struct.bio_vec, ptr %frag.0358, i32 1
  %inc142 = add nuw nsw i32 %ii.0357, 1
  %exitcond.not = icmp eq i32 %inc142, %conv
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %if.end136.for.body_crit_edge

if.end136.for.body_crit_edge:                     ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx89.le = getelementptr %struct.cdmac_bd, ptr %77, i32 %spec.store.select
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end77.for.end_crit_edge
  %cur_p.0.lcssa = phi ptr [ %arrayidx89.le, %for.cond.for.end_crit_edge ], [ %arrayidx3, %if.end77.for.end_crit_edge ]
  %app0143 = getelementptr inbounds %struct.cdmac_bd, ptr %cur_p.0.lcssa, i32 0, i32 3
  %135 = ptrtoint ptr %app0143 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %app0143, align 4
  %or144 = or i32 %136, 67108864
  store i32 %or144, ptr %app0143, align 4
  %137 = ptrtoint ptr %skb to i32
  %app4.i = getelementptr inbounds %struct.cdmac_bd, ptr %cur_p.0.lcssa, i32 0, i32 7
  %138 = ptrtoint ptr %app4.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %app4.i, align 4
  %tx_bd_p = getelementptr i8, ptr %ndev, i32 2492
  %139 = ptrtoint ptr %tx_bd_p to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %tx_bd_p, align 4
  %141 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %tx_bd_tail, align 4
  %mul = shl i32 %142, 5
  %add146 = add i32 %mul, %140
  %inc148 = add i32 %142, 1
  %143 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %tx_bd_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc148, i32 %144)
  %cmp151.not = icmp ult i32 %inc148, %144
  %spec.store.select250 = select i1 %cmp151.not, i32 %inc148, i32 0
  %145 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %spec.store.select250, ptr %tx_bd_tail, align 4
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #9
  %146 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %end.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %147, i32 0, i32 3
  %148 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %tx_flags.i, align 1
  %150 = and i8 %149, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.i307 = icmp eq i8 %150, 0
  br i1 %tobool.not.i307, label %for.end.skb_tx_timestamp.exit_crit_edge, label %if.then.i308

for.end.skb_tx_timestamp.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_tx_timestamp.exit

if.then.i308:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #9
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i308, %for.end.skb_tx_timestamp.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !222
  tail call void @arm_heavy_mb() #9
  %dma_out = getelementptr i8, ptr %ndev, i32 2408
  %151 = ptrtoint ptr %dma_out to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dma_out, align 4
  tail call void %152(ptr noundef %add.ptr.i, i32 noundef 4, i32 noundef %add146) #9
  %153 = ptrtoint ptr %tx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %tx_bd_tail, align 4
  %155 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %tx_bd_v, align 4
  %arrayidx.i312 = getelementptr %struct.cdmac_bd, ptr %156, i32 %154
  br label %do.body.i319

do.body.i319:                                     ; preds = %if.end.i326.do.body.i319_crit_edge, %skb_tx_timestamp.exit
  %num_frag.addr.0.i314 = phi i32 [ 18, %skb_tx_timestamp.exit ], [ %dec.i324, %if.end.i326.do.body.i319_crit_edge ]
  %cur_p.0.i315 = phi ptr [ %arrayidx.i312, %skb_tx_timestamp.exit ], [ %arrayidx4.i323, %if.end.i326.do.body.i319_crit_edge ]
  %tail.0.i316 = phi i32 [ %154, %skb_tx_timestamp.exit ], [ %spec.store.select.i322, %if.end.i326.do.body.i319_crit_edge ]
  %app0.i317 = getelementptr inbounds %struct.cdmac_bd, ptr %cur_p.0.i315, i32 0, i32 3
  %157 = ptrtoint ptr %app0.i317 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %app0.i317, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.not.i318 = icmp eq i32 %158, 0
  br i1 %tobool.not.i318, label %if.end.i326, label %if.then161

if.end.i326:                                      ; preds = %do.body.i319
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !220
  %inc.i320 = add i32 %tail.0.i316, 1
  %159 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %tx_bd_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i320, i32 %160)
  %cmp.not.i321 = icmp ult i32 %inc.i320, %160
  %spec.store.select.i322 = select i1 %cmp.not.i321, i32 %inc.i320, i32 0
  %161 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %tx_bd_v, align 4
  %arrayidx4.i323 = getelementptr %struct.cdmac_bd, ptr %162, i32 %spec.store.select.i322
  %dec.i324 = add nsw i32 %num_frag.addr.0.i314, -1
  %cmp5.i325 = icmp sgt i32 %num_frag.addr.0.i314, 0
  br i1 %cmp5.i325, label %if.end.i326.do.body.i319_crit_edge, label %if.end.i326.cleanup_crit_edge

if.end.i326.cleanup_crit_edge:                    ; preds = %if.end.i326
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i326.do.body.i319_crit_edge:               ; preds = %if.end.i326
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i319

if.then161:                                       ; preds = %do.body.i319
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i329 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %163 = ptrtoint ptr %_tx.i.i329 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %_tx.i.i329, align 128
  %state.i.i330 = getelementptr inbounds %struct.netdev_queue, ptr %164, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i330) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then161, %if.end.i326.cleanup_crit_edge, %while.end, %if.then76, %do.body.i263.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then76 ], [ 0, %while.end ], [ 16, %if.then.cleanup_crit_edge ], [ 0, %if.then161 ], [ 0, %if.end.i326.cleanup_crit_edge ], [ 16, %do.body.i263.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @temac_set_multicast_list(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %flags1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 8
  %and = and i32 %1, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp sgt i32 %3, 4
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %do.body3

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @temac_indirect_out32(ptr noundef %add.ptr.i, i32 noundef 912, i32 noundef -2147483648)
  %dev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.86) #12
  br label %cleanup

do.body3:                                         ; preds = %lor.lhs.false
  %indirect_lock = getelementptr i8, ptr %ndev, i32 2472
  %4 = ptrtoint ptr %indirect_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %indirect_lock, align 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13 = icmp eq i32 %7, 0
  br i1 %cmp13, label %do.body3.while.body.lr.ph_crit_edge, label %for.cond.preheader

do.body3.while.body.lr.ph_crit_edge:              ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

for.cond.preheader:                               ; preds = %do.body3
  %8 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %8)
  %ha.0176 = load ptr, ptr %mc, align 4
  %cmp21.not177 = icmp eq ptr %ha.0176, %mc
  br i1 %cmp21.not177, label %for.cond.preheader.while.body.lr.ph_crit_edge, label %for.body.lr.ph

for.cond.preheader.while.body.lr.ph_crit_edge:    ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %temac_iow.i = getelementptr i8, ptr %ndev, i32 2400
  br label %for.body

for.body:                                         ; preds = %temac_indirect_out32_locked.exit142.for.body_crit_edge, %for.body.lr.ph
  %ha.0181 = phi ptr [ %ha.0176, %for.body.lr.ph ], [ %ha.0, %temac_indirect_out32_locked.exit142.for.body_crit_edge ]
  %i.0178 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %temac_indirect_out32_locked.exit142.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0178)
  %exitcond = icmp eq i32 %i.0178, 4
  br i1 %exitcond, label %if.end83.thread191, label %if.end53.critedge, !prof !209

if.end83.thread191:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 480, i32 noundef 9, ptr noundef null) #9
  br label %while.end

if.end53.critedge:                                ; preds = %for.body
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0181, i32 0, i32 2
  %arrayidx = getelementptr %struct.netdev_hw_addr, ptr %ha.0181, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %arrayidx56 = getelementptr %struct.netdev_hw_addr, ptr %ha.0181, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx56, align 2
  %arrayidx60 = getelementptr %struct.netdev_hw_addr, ptr %ha.0181, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx60, align 1
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %addr, align 4
  %call.i = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end22.critedge.i, label %if.end53.critedge.return.sink.split.i_crit_edge, !prof !206

if.end53.critedge.return.sink.split.i_crit_edge:  ; preds = %if.end53.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

if.end22.critedge.i:                              ; preds = %if.end53.critedge
  %conv54 = zext i8 %10 to i32
  %shl = shl nuw i32 %conv54, 24
  %conv57 = zext i8 %12 to i32
  %shl58 = shl nuw nsw i32 %conv57, 16
  %or = or i32 %shl58, %shl
  %conv61 = zext i8 %14 to i32
  %shl62 = shl nuw nsw i32 %conv61, 8
  %or63 = or i32 %or, %shl62
  %conv66 = zext i8 %16 to i32
  %or67 = or i32 %or63, %conv66
  %17 = ptrtoint ptr %temac_iow.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %temac_iow.i, align 4
  tail call void %18(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef %or67) #9
  %19 = ptrtoint ptr %temac_iow.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %temac_iow.i, align 4
  tail call void %20(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef 33672) #9
  %call25.i = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end22.critedge.i.temac_indirect_out32_locked.exit_crit_edge, label %if.end22.critedge.i.return.sink.split.i_crit_edge, !prof !206

if.end22.critedge.i.return.sink.split.i_crit_edge: ; preds = %if.end22.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

if.end22.critedge.i.temac_indirect_out32_locked.exit_crit_edge: ; preds = %if.end22.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %temac_indirect_out32_locked.exit

return.sink.split.i:                              ; preds = %if.end22.critedge.i.return.sink.split.i_crit_edge, %if.end53.critedge.return.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 193, %if.end53.critedge.return.sink.split.i_crit_edge ], [ 202, %if.end22.critedge.i.return.sink.split.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_out32_locked.exit

temac_indirect_out32_locked.exit:                 ; preds = %return.sink.split.i, %if.end22.critedge.i.temac_indirect_out32_locked.exit_crit_edge
  %arrayidx69 = getelementptr %struct.netdev_hw_addr, ptr %ha.0181, i32 0, i32 2, i32 5
  %21 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx69, align 1
  %arrayidx73 = getelementptr %struct.netdev_hw_addr, ptr %ha.0181, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx73, align 4
  %call.i134 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool.not.i135 = icmp eq i32 %call.i134, 0
  br i1 %tobool.not.i135, label %if.end22.critedge.i139, label %temac_indirect_out32_locked.exit.return.sink.split.i141_crit_edge, !prof !206

temac_indirect_out32_locked.exit.return.sink.split.i141_crit_edge: ; preds = %temac_indirect_out32_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i141

if.end22.critedge.i139:                           ; preds = %temac_indirect_out32_locked.exit
  %conv70 = zext i8 %22 to i32
  %shl71 = shl nuw nsw i32 %conv70, 8
  %conv74 = zext i8 %24 to i32
  %or75 = or i32 %shl71, %conv74
  %shl76 = shl i32 %i.0178, 16
  %or77 = or i32 %or75, %shl76
  %25 = ptrtoint ptr %temac_iow.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %temac_iow.i, align 4
  tail call void %26(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef %or77) #9
  %27 = ptrtoint ptr %temac_iow.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %temac_iow.i, align 4
  tail call void %28(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef 33676) #9
  %call25.i137 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i137)
  %tobool26.not.i138 = icmp eq i32 %call25.i137, 0
  br i1 %tobool26.not.i138, label %if.end22.critedge.i139.temac_indirect_out32_locked.exit142_crit_edge, label %if.end22.critedge.i139.return.sink.split.i141_crit_edge, !prof !206

if.end22.critedge.i139.return.sink.split.i141_crit_edge: ; preds = %if.end22.critedge.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i141

if.end22.critedge.i139.temac_indirect_out32_locked.exit142_crit_edge: ; preds = %if.end22.critedge.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %temac_indirect_out32_locked.exit142

return.sink.split.i141:                           ; preds = %if.end22.critedge.i139.return.sink.split.i141_crit_edge, %temac_indirect_out32_locked.exit.return.sink.split.i141_crit_edge
  %.sink.i140 = phi i32 [ 193, %temac_indirect_out32_locked.exit.return.sink.split.i141_crit_edge ], [ 202, %if.end22.critedge.i139.return.sink.split.i141_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i140, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_out32_locked.exit142

temac_indirect_out32_locked.exit142:              ; preds = %return.sink.split.i141, %if.end22.critedge.i139.temac_indirect_out32_locked.exit142_crit_edge
  %inc = add nuw nsw i32 %i.0178, 1
  %29 = ptrtoint ptr %ha.0181 to i32
  call void @__asan_load4_noabort(i32 %29)
  %ha.0 = load ptr, ptr %ha.0181, align 4
  %cmp21.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp21.not, label %if.end83, label %temac_indirect_out32_locked.exit142.for.body_crit_edge

temac_indirect_out32_locked.exit142.for.body_crit_edge: ; preds = %temac_indirect_out32_locked.exit142
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end83:                                         ; preds = %temac_indirect_out32_locked.exit142
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0178)
  %cmp84182 = icmp ult i32 %i.0178, 3
  br i1 %cmp84182, label %if.end83.while.body.lr.ph_crit_edge, label %if.end83.while.end_crit_edge

if.end83.while.end_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end83.while.body.lr.ph_crit_edge:              ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end83.while.body.lr.ph_crit_edge, %for.cond.preheader.while.body.lr.ph_crit_edge, %do.body3.while.body.lr.ph_crit_edge
  %i.1190 = phi i32 [ %inc, %if.end83.while.body.lr.ph_crit_edge ], [ 0, %do.body3.while.body.lr.ph_crit_edge ], [ 0, %for.cond.preheader.while.body.lr.ph_crit_edge ]
  %temac_iow.i145 = getelementptr i8, ptr %ndev, i32 2400
  br label %while.body

while.body:                                       ; preds = %temac_indirect_out32_locked.exit160.while.body_crit_edge, %while.body.lr.ph
  %i.2183 = phi i32 [ %i.1190, %while.body.lr.ph ], [ %inc87, %temac_indirect_out32_locked.exit160.while.body_crit_edge ]
  %call.i143 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143)
  %tobool.not.i144 = icmp eq i32 %call.i143, 0
  br i1 %tobool.not.i144, label %if.end22.critedge.i148, label %while.body.return.sink.split.i150_crit_edge, !prof !206

while.body.return.sink.split.i150_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i150

if.end22.critedge.i148:                           ; preds = %while.body
  %30 = ptrtoint ptr %temac_iow.i145 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %temac_iow.i145, align 4
  tail call void %31(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef 0) #9
  %32 = ptrtoint ptr %temac_iow.i145 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %temac_iow.i145, align 4
  tail call void %33(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef 33672) #9
  %call25.i146 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i146)
  %tobool26.not.i147 = icmp eq i32 %call25.i146, 0
  br i1 %tobool26.not.i147, label %if.end22.critedge.i148.temac_indirect_out32_locked.exit151_crit_edge, label %if.end22.critedge.i148.return.sink.split.i150_crit_edge, !prof !206

if.end22.critedge.i148.return.sink.split.i150_crit_edge: ; preds = %if.end22.critedge.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i150

if.end22.critedge.i148.temac_indirect_out32_locked.exit151_crit_edge: ; preds = %if.end22.critedge.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %temac_indirect_out32_locked.exit151

return.sink.split.i150:                           ; preds = %if.end22.critedge.i148.return.sink.split.i150_crit_edge, %while.body.return.sink.split.i150_crit_edge
  %.sink.i149 = phi i32 [ 193, %while.body.return.sink.split.i150_crit_edge ], [ 202, %if.end22.critedge.i148.return.sink.split.i150_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i149, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_out32_locked.exit151

temac_indirect_out32_locked.exit151:              ; preds = %return.sink.split.i150, %if.end22.critedge.i148.temac_indirect_out32_locked.exit151_crit_edge
  %call.i152 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool.not.i153 = icmp eq i32 %call.i152, 0
  br i1 %tobool.not.i153, label %if.end22.critedge.i157, label %temac_indirect_out32_locked.exit151.return.sink.split.i159_crit_edge, !prof !206

temac_indirect_out32_locked.exit151.return.sink.split.i159_crit_edge: ; preds = %temac_indirect_out32_locked.exit151
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i159

if.end22.critedge.i157:                           ; preds = %temac_indirect_out32_locked.exit151
  %shl86 = shl i32 %i.2183, 16
  %34 = ptrtoint ptr %temac_iow.i145 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %temac_iow.i145, align 4
  tail call void %35(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef %shl86) #9
  %36 = ptrtoint ptr %temac_iow.i145 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %temac_iow.i145, align 4
  tail call void %37(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef 33676) #9
  %call25.i155 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i155)
  %tobool26.not.i156 = icmp eq i32 %call25.i155, 0
  br i1 %tobool26.not.i156, label %if.end22.critedge.i157.temac_indirect_out32_locked.exit160_crit_edge, label %if.end22.critedge.i157.return.sink.split.i159_crit_edge, !prof !206

if.end22.critedge.i157.return.sink.split.i159_crit_edge: ; preds = %if.end22.critedge.i157
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i159

if.end22.critedge.i157.temac_indirect_out32_locked.exit160_crit_edge: ; preds = %if.end22.critedge.i157
  call void @__sanitizer_cov_trace_pc() #11
  br label %temac_indirect_out32_locked.exit160

return.sink.split.i159:                           ; preds = %if.end22.critedge.i157.return.sink.split.i159_crit_edge, %temac_indirect_out32_locked.exit151.return.sink.split.i159_crit_edge
  %.sink.i158 = phi i32 [ 193, %temac_indirect_out32_locked.exit151.return.sink.split.i159_crit_edge ], [ 202, %if.end22.critedge.i157.return.sink.split.i159_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i158, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_out32_locked.exit160

temac_indirect_out32_locked.exit160:              ; preds = %return.sink.split.i159, %if.end22.critedge.i157.temac_indirect_out32_locked.exit160_crit_edge
  %inc87 = add nuw nsw i32 %i.2183, 1
  %exitcond187.not = icmp eq i32 %inc87, 4
  br i1 %exitcond187.not, label %temac_indirect_out32_locked.exit160.while.end_crit_edge, label %temac_indirect_out32_locked.exit160.while.body_crit_edge

temac_indirect_out32_locked.exit160.while.body_crit_edge: ; preds = %temac_indirect_out32_locked.exit160
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

temac_indirect_out32_locked.exit160.while.end_crit_edge: ; preds = %temac_indirect_out32_locked.exit160
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %temac_indirect_out32_locked.exit160.while.end_crit_edge, %if.end83.while.end_crit_edge, %if.end83.thread191
  %call.i161 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool.not.i162 = icmp eq i32 %call.i161, 0
  br i1 %tobool.not.i162, label %if.end22.i, label %while.end.if.then91.sink.split_crit_edge, !prof !206

while.end.if.then91.sink.split_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91.sink.split

if.end22.i:                                       ; preds = %while.end
  %temac_iow.i163 = getelementptr i8, ptr %ndev, i32 2400
  %38 = ptrtoint ptr %temac_iow.i163 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %temac_iow.i163, align 4
  tail call void %39(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef 912) #9
  %call24.i = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %temac_indirect_in32_locked.exit, label %if.end22.i.if.then91.sink.split_crit_edge, !prof !206

if.end22.i.if.then91.sink.split_crit_edge:        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91.sink.split

temac_indirect_in32_locked.exit:                  ; preds = %if.end22.i
  %temac_ior.i = getelementptr i8, ptr %ndev, i32 2396
  %40 = ptrtoint ptr %temac_ior.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %temac_ior.i, align 4
  %call58.i = tail call i32 %41(ptr noundef %add.ptr.i, i32 noundef 36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call58.i)
  %tobool90.not = icmp sgt i32 %call58.i, -1
  br i1 %tobool90.not, label %if.end100.critedge, label %temac_indirect_in32_locked.exit.if.then91_crit_edge

temac_indirect_in32_locked.exit.if.then91_crit_edge: ; preds = %temac_indirect_in32_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then91

if.then91.sink.split:                             ; preds = %if.end22.i.if.then91.sink.split_crit_edge, %while.end.if.then91.sink.split_crit_edge
  %.sink = phi i32 [ 152, %while.end.if.then91.sink.split_crit_edge ], [ 161, %if.end22.i.if.then91.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #9
  br label %if.then91

if.then91:                                        ; preds = %if.then91.sink.split, %temac_indirect_in32_locked.exit.if.then91_crit_edge
  %call.i164 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool.not.i165 = icmp eq i32 %call.i164, 0
  br i1 %tobool.not.i165, label %if.end22.critedge.i169, label %if.then91.return.sink.split.i171_crit_edge, !prof !206

if.then91.return.sink.split.i171_crit_edge:       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i171

if.end22.critedge.i169:                           ; preds = %if.then91
  %temac_iow.i166 = getelementptr i8, ptr %ndev, i32 2400
  %42 = ptrtoint ptr %temac_iow.i166 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %temac_iow.i166, align 4
  tail call void %43(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef 0) #9
  %44 = ptrtoint ptr %temac_iow.i166 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %temac_iow.i166, align 4
  tail call void %45(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef 33680) #9
  %call25.i167 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i167)
  %tobool26.not.i168 = icmp eq i32 %call25.i167, 0
  br i1 %tobool26.not.i168, label %if.end22.critedge.i169.temac_indirect_out32_locked.exit172_crit_edge, label %if.end22.critedge.i169.return.sink.split.i171_crit_edge, !prof !206

if.end22.critedge.i169.return.sink.split.i171_crit_edge: ; preds = %if.end22.critedge.i169
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i171

if.end22.critedge.i169.temac_indirect_out32_locked.exit172_crit_edge: ; preds = %if.end22.critedge.i169
  call void @__sanitizer_cov_trace_pc() #11
  br label %temac_indirect_out32_locked.exit172

return.sink.split.i171:                           ; preds = %if.end22.critedge.i169.return.sink.split.i171_crit_edge, %if.then91.return.sink.split.i171_crit_edge
  %.sink.i170 = phi i32 [ 193, %if.then91.return.sink.split.i171_crit_edge ], [ 202, %if.end22.critedge.i169.return.sink.split.i171_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i170, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_out32_locked.exit172

temac_indirect_out32_locked.exit172:              ; preds = %return.sink.split.i171, %if.end22.critedge.i169.temac_indirect_out32_locked.exit172_crit_edge
  %46 = ptrtoint ptr %indirect_lock to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %indirect_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %47, i32 noundef %call6) #9
  %dev99 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev99, ptr noundef nonnull @.str.90) #12
  br label %cleanup

if.end100.critedge:                               ; preds = %temac_indirect_in32_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %indirect_lock to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %indirect_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %49, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end100.critedge, %temac_indirect_out32_locked.exit172, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temac_set_mac_address(ptr noundef %ndev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #9
  tail call fastcc void @temac_do_set_mac_address(ptr noundef %ndev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @temac_poll_controller(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %tx_irq = getelementptr i8, ptr %ndev, i32 2412
  %0 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_irq, align 4
  tail call void @disable_irq(i32 noundef %1) #9
  %rx_irq = getelementptr i8, ptr %ndev, i32 2416
  %2 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_irq, align 4
  tail call void @disable_irq(i32 noundef %3) #9
  %dma_in.i = getelementptr i8, ptr %ndev, i32 2404
  %4 = ptrtoint ptr %dma_in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_in.i, align 4
  %call1.i = tail call i32 %5(ptr noundef %add.ptr.i, i32 noundef 14) #9
  %dma_out.i = getelementptr i8, ptr %ndev, i32 2408
  %6 = ptrtoint ptr %dma_out.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_out.i, align 4
  tail call void %7(ptr noundef %add.ptr.i, i32 noundef 14, i32 noundef %call1.i) #9
  %and.i = and i32 %call1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  tail call fastcc void @ll_temac_recv(ptr noundef %9) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %and3.i = and i32 %call1.i, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.ll_temac_rx_irq.exit_crit_edge, label %do.body.i

if.end.i.ll_temac_rx_irq.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ll_temac_rx_irq.exit

do.body.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @ll_temac_rx_irq._rs, ptr noundef nonnull @__func__.ll_temac_rx_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.body.i.ll_temac_rx_irq.exit_crit_edge, label %do.end.i

do.body.i.ll_temac_rx_irq.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ll_temac_rx_irq.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  %10 = ptrtoint ptr %dma_in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_in.i, align 4
  %call11.i = tail call i32 %11(ptr noundef %add.ptr.i, i32 noundef 15) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.81, i32 noundef %call1.i, i32 noundef %call11.i) #12
  br label %ll_temac_rx_irq.exit

ll_temac_rx_irq.exit:                             ; preds = %do.end.i, %do.body.i.ll_temac_rx_irq.exit_crit_edge, %if.end.i.ll_temac_rx_irq.exit_crit_edge
  %12 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_irq, align 4
  %call4 = tail call i32 @ll_temac_tx_irq(i32 noundef %13, ptr noundef %ndev)
  %14 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_irq, align 4
  tail call void @enable_irq(i32 noundef %15) #9
  %16 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_irq, align 4
  tail call void @enable_irq(i32 noundef %17) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @temac_adjust_link(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
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
  %last_link = getelementptr i8, ptr %ndev, i32 2480
  %7 = ptrtoint ptr %last_link to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_link, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %or1)
  %cmp.not = icmp eq i32 %8, %or1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body2:                                         ; preds = %entry
  %indirect_lock = getelementptr i8, ptr %ndev, i32 2472
  %9 = ptrtoint ptr %indirect_lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %indirect_lock, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #9
  %call.i = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end22.i, label %do.end.i, !prof !206

do.end.i:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 152, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_in32_locked.exit

if.end22.i:                                       ; preds = %do.body2
  %temac_iow.i = getelementptr i8, ptr %ndev, i32 2400
  %11 = ptrtoint ptr %temac_iow.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %temac_iow.i, align 4
  tail call void %12(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef 768) #9
  %call24.i = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end57.i, label %do.end41.i, !prof !206

do.end41.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 161, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_in32_locked.exit

if.end57.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %temac_ior.i = getelementptr i8, ptr %ndev, i32 2396
  %13 = ptrtoint ptr %temac_ior.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %temac_ior.i, align 4
  %call58.i = tail call i32 %14(ptr noundef %add.ptr.i, i32 noundef 36) #9
  %phi.bo = and i32 %call58.i, 1073741823
  br label %temac_indirect_in32_locked.exit

temac_indirect_in32_locked.exit:                  ; preds = %if.end57.i, %do.end41.i, %do.end.i
  %retval.0.i = phi i32 [ 1073741714, %do.end.i ], [ 1073741714, %do.end41.i ], [ %phi.bo, %if.end57.i ]
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %speed, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %temac_indirect_in32_locked.exit.sw.epilog_crit_edge [
    i32 1000, label %sw.bb
    i32 100, label %sw.bb11
  ]

temac_indirect_in32_locked.exit.sw.epilog_crit_edge: ; preds = %temac_indirect_in32_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %temac_indirect_in32_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  %or10 = or i32 %retval.0.i, -2147483648
  br label %sw.epilog

sw.bb11:                                          ; preds = %temac_indirect_in32_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  %or12 = or i32 %retval.0.i, 1073741824
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb, %temac_indirect_in32_locked.exit.sw.epilog_crit_edge
  %mii_speed.0 = phi i32 [ %or12, %sw.bb11 ], [ %or10, %sw.bb ], [ %retval.0.i, %temac_indirect_in32_locked.exit.sw.epilog_crit_edge ]
  %call.i32 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool.not.i33 = icmp eq i32 %call.i32, 0
  br i1 %tobool.not.i33, label %if.end22.critedge.i, label %sw.epilog.return.sink.split.i_crit_edge, !prof !206

sw.epilog.return.sink.split.i_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

if.end22.critedge.i:                              ; preds = %sw.epilog
  %temac_iow.i34 = getelementptr i8, ptr %ndev, i32 2400
  %18 = ptrtoint ptr %temac_iow.i34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %temac_iow.i34, align 4
  tail call void %19(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef %mii_speed.0) #9
  %20 = ptrtoint ptr %temac_iow.i34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %temac_iow.i34, align 4
  tail call void %21(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef 33536) #9
  %call25.i = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end22.critedge.i.temac_indirect_out32_locked.exit_crit_edge, label %if.end22.critedge.i.return.sink.split.i_crit_edge, !prof !206

if.end22.critedge.i.return.sink.split.i_crit_edge: ; preds = %if.end22.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

if.end22.critedge.i.temac_indirect_out32_locked.exit_crit_edge: ; preds = %if.end22.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %temac_indirect_out32_locked.exit

return.sink.split.i:                              ; preds = %if.end22.critedge.i.return.sink.split.i_crit_edge, %sw.epilog.return.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 193, %sw.epilog.return.sink.split.i_crit_edge ], [ 202, %if.end22.critedge.i.return.sink.split.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_out32_locked.exit

temac_indirect_out32_locked.exit:                 ; preds = %return.sink.split.i, %if.end22.critedge.i.temac_indirect_out32_locked.exit_crit_edge
  %22 = ptrtoint ptr %indirect_lock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %indirect_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %call5) #9
  %24 = ptrtoint ptr %last_link to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or1, ptr %last_link, align 4
  tail call void @phy_print_status(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %temac_indirect_out32_locked.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @temac_device_reset(ptr noundef %ndev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @temac_device_reset.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@temac_device_reset, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @temac_device_reset.__UNIQUE_ID_ddebug484, ptr noundef %dev, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.62) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @temac_indirect_out32(ptr noundef %add.ptr.i, i32 noundef 576, i32 noundef -2147483648)
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %do.end
  %timeout.0 = phi i32 [ 1000, %do.end ], [ %dec, %while.body.while.cond_crit_edge ]
  %call4 = tail call i32 @temac_indirect_in32(ptr noundef %add.ptr.i, i32 noundef 576)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %tobool5.not = icmp sgt i32 %call4, -1
  br i1 %tobool5.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #9
  %dec = add nsw i32 %timeout.0, -1
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %do.end9, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

do.end9:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev10 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.64) #12
  br label %while.end

while.end:                                        ; preds = %do.end9, %while.cond.while.end_crit_edge
  tail call void @temac_indirect_out32(ptr noundef %add.ptr.i, i32 noundef 640, i32 noundef -2147483648)
  br label %while.cond12

while.cond12:                                     ; preds = %while.body16.while.cond12_crit_edge, %while.end
  %timeout.1 = phi i32 [ 1000, %while.end ], [ %dec17, %while.body16.while.cond12_crit_edge ]
  %call13 = tail call i32 @temac_indirect_in32(ptr noundef %add.ptr.i, i32 noundef 640)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call13)
  %tobool15.not = icmp sgt i32 %call13, -1
  br i1 %tobool15.not, label %while.cond12.do.body27_crit_edge, label %while.body16

while.cond12.do.body27_crit_edge:                 ; preds = %while.cond12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

while.body16:                                     ; preds = %while.cond12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748) #9
  %dec17 = add nsw i32 %timeout.1, -1
  %cmp18 = icmp eq i32 %dec17, 0
  br i1 %cmp18, label %do.end22, label %while.body16.while.cond12_crit_edge

while.body16.while.cond12_crit_edge:              ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond12

do.end22:                                         ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #11
  %dev23 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.66) #12
  br label %do.body27

do.body27:                                        ; preds = %do.end22, %while.cond12.do.body27_crit_edge
  %indirect_lock = getelementptr i8, ptr %ndev, i32 2472
  %2 = ptrtoint ptr %indirect_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %indirect_lock, align 4
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %call.i = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end22.i, label %do.end.i, !prof !206

do.end.i:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 152, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_in32_locked.exit

if.end22.i:                                       ; preds = %do.body27
  %temac_iow.i = getelementptr i8, ptr %ndev, i32 2400
  %4 = ptrtoint ptr %temac_iow.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %temac_iow.i, align 4
  tail call void %5(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef 576) #9
  %call24.i = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end57.i, label %do.end41.i, !prof !206

do.end41.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 161, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_in32_locked.exit

if.end57.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %temac_ior.i = getelementptr i8, ptr %ndev, i32 2396
  %6 = ptrtoint ptr %temac_ior.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %temac_ior.i, align 4
  %call58.i = tail call i32 %7(ptr noundef %add.ptr.i, i32 noundef 36) #9
  br label %temac_indirect_in32_locked.exit

temac_indirect_in32_locked.exit:                  ; preds = %if.end57.i, %do.end41.i, %do.end.i
  %retval.0.i125 = phi i32 [ -110, %do.end.i ], [ -110, %do.end41.i ], [ %call58.i, %if.end57.i ]
  %call.i126 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool.not.i127 = icmp eq i32 %call.i126, 0
  br i1 %tobool.not.i127, label %if.end22.critedge.i, label %temac_indirect_in32_locked.exit.return.sink.split.i_crit_edge, !prof !206

temac_indirect_in32_locked.exit.return.sink.split.i_crit_edge: ; preds = %temac_indirect_in32_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

if.end22.critedge.i:                              ; preds = %temac_indirect_in32_locked.exit
  %and37 = and i32 %retval.0.i125, -268435457
  %temac_iow.i128 = getelementptr i8, ptr %ndev, i32 2400
  %8 = ptrtoint ptr %temac_iow.i128 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %temac_iow.i128, align 4
  tail call void %9(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef %and37) #9
  %10 = ptrtoint ptr %temac_iow.i128 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %temac_iow.i128, align 4
  tail call void %11(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef 33344) #9
  %call25.i = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end22.critedge.i.temac_indirect_out32_locked.exit_crit_edge, label %if.end22.critedge.i.return.sink.split.i_crit_edge, !prof !206

if.end22.critedge.i.return.sink.split.i_crit_edge: ; preds = %if.end22.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

if.end22.critedge.i.temac_indirect_out32_locked.exit_crit_edge: ; preds = %if.end22.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %temac_indirect_out32_locked.exit

return.sink.split.i:                              ; preds = %if.end22.critedge.i.return.sink.split.i_crit_edge, %temac_indirect_in32_locked.exit.return.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 193, %temac_indirect_in32_locked.exit.return.sink.split.i_crit_edge ], [ 202, %if.end22.critedge.i.return.sink.split.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_out32_locked.exit

temac_indirect_out32_locked.exit:                 ; preds = %return.sink.split.i, %if.end22.critedge.i.temac_indirect_out32_locked.exit_crit_edge
  %12 = ptrtoint ptr %indirect_lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %indirect_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %call31) #9
  %dma_out = getelementptr i8, ptr %ndev, i32 2408
  %14 = ptrtoint ptr %dma_out to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_out, align 4
  tail call void %15(ptr noundef %add.ptr.i, i32 noundef 16, i32 noundef 1) #9
  %dma_in = getelementptr i8, ptr %ndev, i32 2404
  br label %while.cond39

while.cond39:                                     ; preds = %while.body43.while.cond39_crit_edge, %temac_indirect_out32_locked.exit
  %timeout.2 = phi i32 [ 1000, %temac_indirect_out32_locked.exit ], [ %dec44, %while.body43.while.cond39_crit_edge ]
  %16 = ptrtoint ptr %dma_in to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_in, align 4
  %call40 = tail call i32 %17(ptr noundef %add.ptr.i, i32 noundef 16) #9
  %and41 = and i32 %call40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %while.cond39.while.end53_crit_edge, label %while.body43

while.cond39.while.end53_crit_edge:               ; preds = %while.cond39
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end53

while.body43:                                     ; preds = %while.cond39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #9
  %dec44 = add nsw i32 %timeout.2, -1
  %cmp45 = icmp eq i32 %dec44, 0
  br i1 %cmp45, label %do.end50, label %while.body43.while.cond39_crit_edge

while.body43.while.cond39_crit_edge:              ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond39

do.end50:                                         ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #11
  %dev51 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.69) #12
  br label %while.end53

while.end53:                                      ; preds = %do.end50, %while.cond39.while.end53_crit_edge
  %19 = ptrtoint ptr %dma_out to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_out, align 4
  tail call void %20(ptr noundef %add.ptr.i, i32 noundef 16, i32 noundef 4) #9
  %rx_bd_num.i = getelementptr i8, ptr %ndev, i32 2508
  %21 = ptrtoint ptr %rx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_bd_num.i, align 4
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 4) #9
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !209

devm_kcalloc.exit.thread.i:                       ; preds = %while.end53
  call void @__sanitizer_cov_trace_pc() #11
  %rx_skb166.i = getelementptr i8, ptr %ndev, i32 2424
  %25 = ptrtoint ptr %rx_skb166.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rx_skb166.i, align 4
  br label %do.end60

devm_kcalloc.exit.i:                              ; preds = %while.end53
  %dev.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  %26 = extractvalue { i32, i1 } %23, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef %26, i32 noundef 3520) #9
  %rx_skb.i = getelementptr i8, ptr %ndev, i32 2424
  %27 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call5.i.i.i, ptr %rx_skb.i, align 4
  %tobool.not.i129 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i129, label %devm_kcalloc.exit.i.do.end60_crit_edge, label %if.end.i

devm_kcalloc.exit.i.do.end60_crit_edge:           ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60

if.end.i:                                         ; preds = %devm_kcalloc.exit.i
  %parent.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %28 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent.i, align 8
  %tx_bd_num.i = getelementptr i8, ptr %ndev, i32 2496
  %30 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_bd_num.i, align 4
  %mul.i = shl i32 %31, 5
  %tx_bd_p.i = getelementptr i8, ptr %ndev, i32 2492
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %29, i32 noundef %mul.i, ptr noundef %tx_bd_p.i, i32 noundef 3264, i32 noundef 0) #9
  %tx_bd_v.i = getelementptr i8, ptr %ndev, i32 2488
  %32 = ptrtoint ptr %tx_bd_v.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i, ptr %tx_bd_v.i, align 4
  %tobool6.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.i, label %if.end.i.do.end60_crit_edge, label %if.end8.i

if.end.i.do.end60_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60

if.end8.i:                                        ; preds = %if.end.i
  %33 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent.i, align 8
  %35 = ptrtoint ptr %rx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_bd_num.i, align 4
  %mul12.i = shl i32 %36, 5
  %rx_bd_p.i = getelementptr i8, ptr %ndev, i32 2504
  %call.i159.i = tail call ptr @dma_alloc_attrs(ptr noundef %34, i32 noundef %mul12.i, ptr noundef %rx_bd_p.i, i32 noundef 3264, i32 noundef 0) #9
  %rx_bd_v.i = getelementptr i8, ptr %ndev, i32 2500
  %37 = ptrtoint ptr %rx_bd_v.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i159.i, ptr %rx_bd_v.i, align 4
  %tobool15.not.i = icmp eq ptr %call.i159.i, null
  br i1 %tobool15.not.i, label %if.end8.i.do.end60_crit_edge, label %for.cond.preheader.i

if.end8.i.do.end60_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60

for.cond.preheader.i:                             ; preds = %if.end8.i
  %38 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_bd_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp175.not.i = icmp eq i32 %39, 0
  br i1 %cmp175.not.i, label %for.cond.preheader.i.for.cond24.preheader.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.cond24.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond24.preheader.i

for.cond24.preheader.i:                           ; preds = %for.body.i.for.cond24.preheader.i_crit_edge, %for.cond.preheader.i.for.cond24.preheader.i_crit_edge
  %40 = ptrtoint ptr %rx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_bd_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp26177.not.i = icmp eq i32 %41, 0
  br i1 %cmp26177.not.i, label %for.cond24.preheader.i.temac_dma_bd_init.exit.thread_crit_edge, label %for.cond24.preheader.i.for.body27.i_crit_edge

for.cond24.preheader.i.for.body27.i_crit_edge:    ; preds = %for.cond24.preheader.i
  br label %for.body27.i

for.cond24.preheader.i.temac_dma_bd_init.exit.thread_crit_edge: ; preds = %for.cond24.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %temac_dma_bd_init.exit.thread

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %42 = phi i32 [ %49, %for.body.i.for.body.i_crit_edge ], [ %39, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.0176.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %43 = ptrtoint ptr %tx_bd_p.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_bd_p.i, align 4
  %add.i = add nuw i32 %i.0176.i, 1
  %rem.i = urem i32 %add.i, %42
  %mul21.i = shl i32 %rem.i, 5
  %add22.i = add i32 %mul21.i, %44
  %45 = ptrtoint ptr %tx_bd_v.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx_bd_v.i, align 4
  %arrayidx.i = getelementptr %struct.cdmac_bd, ptr %46, i32 %i.0176.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add22.i, ptr %arrayidx.i, align 4
  %48 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_bd_num.i, align 4
  %cmp.i = icmp ult i32 %add.i, %49
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond24.preheader.i_crit_edge

for.body.i.for.cond24.preheader.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond24.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body27.i:                                     ; preds = %if.end51.i.for.body27.i_crit_edge, %for.cond24.preheader.i.for.body27.i_crit_edge
  %50 = phi i32 [ %84, %if.end51.i.for.body27.i_crit_edge ], [ %41, %for.cond24.preheader.i.for.body27.i_crit_edge ]
  %i.1178.i = phi i32 [ %add29.i, %if.end51.i.for.body27.i_crit_edge ], [ 0, %for.cond24.preheader.i.for.body27.i_crit_edge ]
  %51 = ptrtoint ptr %rx_bd_p.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_bd_p.i, align 4
  %add29.i = add nuw i32 %i.1178.i, 1
  %rem31.i = urem i32 %add29.i, %50
  %mul32.i = shl i32 %rem31.i, 5
  %add33.i = add i32 %mul32.i, %52
  %53 = ptrtoint ptr %rx_bd_v.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rx_bd_v.i, align 4
  %arrayidx35.i = getelementptr %struct.cdmac_bd, ptr %54, i32 %i.1178.i
  %55 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add33.i, ptr %arrayidx35.i, align 4
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %ndev, i32 noundef 9020, i32 noundef 2592) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.body27.i.do.end60_crit_edge, label %if.end40.i

for.body27.i.do.end60_crit_edge:                  ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60

if.end40.i:                                       ; preds = %for.body27.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %56 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %57, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %58 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %59, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %60 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rx_skb.i, align 4
  %arrayidx42.i = getelementptr ptr, ptr %61, i32 %i.1178.i
  %62 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i.i.i, ptr %arrayidx42.i, align 4
  %63 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %parent.i, align 8
  %65 = load ptr, ptr %data.i.i.i.i, align 4
  %call.i160.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %65) #9
  br i1 %call.i160.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end40.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !206

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %64) #9
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 3
  %66 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i161.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.i161.i, label %if.end.i.i162.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i162.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %64, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i162.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i163.i = phi ptr [ %69, %if.end.i.i162.i ], [ %67, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.77, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.78, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i163.i) #9
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %70 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %parent.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %71, i32 noundef -1) #9
  br label %do.end60

dma_map_single_attrs.exit.i:                      ; preds = %if.end40.i
  tail call void @debug_dma_map_single(ptr noundef %64, ptr noundef %65, i32 noundef 9018) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %72 = load ptr, ptr @mem_map, align 4
  %73 = ptrtoint ptr %65 to i32
  %sub.i.i = add i32 %73, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i164.i = getelementptr %struct.page, ptr %72, i32 %shr.i.i
  %and.i.i = and i32 %73, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %64, ptr noundef %add.ptr.i164.i, i32 noundef %and.i.i, i32 noundef 9018, i32 noundef 2, i32 noundef 0) #9
  %74 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %parent.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %75, i32 noundef %call41.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.do.end60_crit_edge, label %if.end51.i

dma_map_single_attrs.exit.i.do.end60_crit_edge:   ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60

if.end51.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %76 = ptrtoint ptr %rx_bd_v.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rx_bd_v.i, align 4
  %phys.i = getelementptr %struct.cdmac_bd, ptr %77, i32 %i.1178.i, i32 1
  %78 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call41.i.i, ptr %phys.i, align 4
  %79 = load ptr, ptr %rx_bd_v.i, align 4
  %len.i = getelementptr %struct.cdmac_bd, ptr %79, i32 %i.1178.i, i32 2
  %80 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 9018, ptr %len.i, align 4
  %81 = load ptr, ptr %rx_bd_v.i, align 4
  %app0.i = getelementptr %struct.cdmac_bd, ptr %81, i32 %i.1178.i, i32 3
  %82 = ptrtoint ptr %app0.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1073741824, ptr %app0.i, align 4
  %83 = ptrtoint ptr %rx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rx_bd_num.i, align 4
  %cmp26.i = icmp ult i32 %add29.i, %84
  br i1 %cmp26.i, label %if.end51.i.for.body27.i_crit_edge, label %if.end51.i.temac_dma_bd_init.exit.thread_crit_edge

if.end51.i.temac_dma_bd_init.exit.thread_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %temac_dma_bd_init.exit.thread

if.end51.i.for.body27.i_crit_edge:                ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body27.i

temac_dma_bd_init.exit.thread:                    ; preds = %if.end51.i.temac_dma_bd_init.exit.thread_crit_edge, %for.cond24.preheader.i.temac_dma_bd_init.exit.thread_crit_edge
  %85 = ptrtoint ptr %dma_out to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dma_out, align 4
  %coalesce_delay_tx.i = getelementptr i8, ptr %ndev, i32 2529
  %87 = ptrtoint ptr %coalesce_delay_tx.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %coalesce_delay_tx.i, align 1
  %conv.i = zext i8 %88 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %coalesce_count_tx.i = getelementptr i8, ptr %ndev, i32 2528
  %89 = ptrtoint ptr %coalesce_count_tx.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %coalesce_count_tx.i, align 4
  %conv61.i = zext i8 %90 to i32
  %shl62.i = shl nuw nsw i32 %conv61.i, 16
  %or.i = or i32 %shl.i, %shl62.i
  %or67.i = or i32 %or.i, 1159
  tail call void %86(ptr noundef %add.ptr.i, i32 noundef 5, i32 noundef %or67.i) #9
  %91 = ptrtoint ptr %dma_out to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dma_out, align 4
  %coalesce_delay_rx.i = getelementptr i8, ptr %ndev, i32 2531
  %93 = ptrtoint ptr %coalesce_delay_rx.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %coalesce_delay_rx.i, align 1
  %conv69.i = zext i8 %94 to i32
  %shl70.i = shl nuw i32 %conv69.i, 24
  %coalesce_count_rx.i = getelementptr i8, ptr %ndev, i32 2530
  %95 = ptrtoint ptr %coalesce_count_rx.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %coalesce_count_rx.i, align 2
  %conv71.i = zext i8 %96 to i32
  %shl72.i = shl nuw nsw i32 %conv71.i, 16
  %or73.i = or i32 %shl70.i, %shl72.i
  %or78.i = or i32 %or73.i, 647
  tail call void %92(ptr noundef %add.ptr.i, i32 noundef 13, i32 noundef %or78.i) #9
  %tx_bd_ci.i = getelementptr i8, ptr %ndev, i32 2512
  %97 = ptrtoint ptr %tx_bd_ci.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %tx_bd_ci.i, align 4
  %tx_bd_tail.i = getelementptr i8, ptr %ndev, i32 2516
  %98 = ptrtoint ptr %tx_bd_tail.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %tx_bd_tail.i, align 4
  %rx_bd_ci.i = getelementptr i8, ptr %ndev, i32 2520
  %99 = ptrtoint ptr %rx_bd_ci.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %rx_bd_ci.i, align 4
  %100 = ptrtoint ptr %rx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rx_bd_num.i, align 4
  %sub.i = add i32 %101, -1
  %rx_bd_tail.i = getelementptr i8, ptr %ndev, i32 2524
  %102 = ptrtoint ptr %rx_bd_tail.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %sub.i, ptr %rx_bd_tail.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  tail call void @arm_heavy_mb() #9
  %103 = ptrtoint ptr %dma_out to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dma_out, align 4
  %105 = ptrtoint ptr %rx_bd_p.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rx_bd_p.i, align 4
  tail call void %104(ptr noundef %add.ptr.i, i32 noundef 11, i32 noundef %106) #9
  %107 = ptrtoint ptr %dma_out to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dma_out, align 4
  %109 = ptrtoint ptr %rx_bd_p.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rx_bd_p.i, align 4
  %111 = ptrtoint ptr %rx_bd_tail.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rx_bd_tail.i, align 4
  %mul85.i = shl i32 %112, 5
  %add86.i = add i32 %mul85.i, %110
  tail call void %108(ptr noundef %add.ptr.i, i32 noundef 12, i32 noundef %add86.i) #9
  %113 = ptrtoint ptr %dma_out to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dma_out, align 4
  %115 = ptrtoint ptr %tx_bd_p.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tx_bd_p.i, align 4
  tail call void %114(ptr noundef %add.ptr.i, i32 noundef 3, i32 noundef %116) #9
  br label %do.body64

do.end60:                                         ; preds = %dma_map_single_attrs.exit.i.do.end60_crit_edge, %dma_map_single_attrs.exit.thread.i, %for.body27.i.do.end60_crit_edge, %if.end8.i.do.end60_crit_edge, %if.end.i.do.end60_crit_edge, %devm_kcalloc.exit.i.do.end60_crit_edge, %devm_kcalloc.exit.thread.i
  tail call fastcc void @temac_dma_bd_release(ptr noundef %ndev) #9
  %dev61 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61, ptr noundef nonnull @.str.72) #12
  br label %do.body64

do.body64:                                        ; preds = %do.end60, %temac_dma_bd_init.exit.thread
  %117 = ptrtoint ptr %indirect_lock to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %indirect_lock, align 4
  %call72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %118) #9
  %call.i131 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool.not.i132 = icmp eq i32 %call.i131, 0
  br i1 %tobool.not.i132, label %if.end22.critedge.i136, label %do.body64.return.sink.split.i138_crit_edge, !prof !206

do.body64.return.sink.split.i138_crit_edge:       ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i138

if.end22.critedge.i136:                           ; preds = %do.body64
  %temac_iow.i133 = getelementptr i8, ptr %ndev, i32 2400
  %119 = ptrtoint ptr %temac_iow.i133 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %temac_iow.i133, align 4
  tail call void %120(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef 0) #9
  %121 = ptrtoint ptr %temac_iow.i133 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %temac_iow.i133, align 4
  tail call void %122(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef 33280) #9
  %call25.i134 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i134)
  %tobool26.not.i135 = icmp eq i32 %call25.i134, 0
  br i1 %tobool26.not.i135, label %if.end22.critedge.i136.temac_indirect_out32_locked.exit139_crit_edge, label %if.end22.critedge.i136.return.sink.split.i138_crit_edge, !prof !206

if.end22.critedge.i136.return.sink.split.i138_crit_edge: ; preds = %if.end22.critedge.i136
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i138

if.end22.critedge.i136.temac_indirect_out32_locked.exit139_crit_edge: ; preds = %if.end22.critedge.i136
  call void @__sanitizer_cov_trace_pc() #11
  br label %temac_indirect_out32_locked.exit139

return.sink.split.i138:                           ; preds = %if.end22.critedge.i136.return.sink.split.i138_crit_edge, %do.body64.return.sink.split.i138_crit_edge
  %.sink.i137 = phi i32 [ 193, %do.body64.return.sink.split.i138_crit_edge ], [ 202, %if.end22.critedge.i136.return.sink.split.i138_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i137, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_out32_locked.exit139

temac_indirect_out32_locked.exit139:              ; preds = %return.sink.split.i138, %if.end22.critedge.i136.temac_indirect_out32_locked.exit139_crit_edge
  %call.i140 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool.not.i141 = icmp eq i32 %call.i140, 0
  br i1 %tobool.not.i141, label %if.end22.critedge.i145, label %temac_indirect_out32_locked.exit139.return.sink.split.i147_crit_edge, !prof !206

temac_indirect_out32_locked.exit139.return.sink.split.i147_crit_edge: ; preds = %temac_indirect_out32_locked.exit139
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i147

if.end22.critedge.i145:                           ; preds = %temac_indirect_out32_locked.exit139
  %temac_iow.i142 = getelementptr i8, ptr %ndev, i32 2400
  %123 = ptrtoint ptr %temac_iow.i142 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %temac_iow.i142, align 4
  tail call void %124(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef 0) #9
  %125 = ptrtoint ptr %temac_iow.i142 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %temac_iow.i142, align 4
  tail call void %126(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef 33344) #9
  %call25.i143 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i143)
  %tobool26.not.i144 = icmp eq i32 %call25.i143, 0
  br i1 %tobool26.not.i144, label %if.end22.critedge.i145.temac_indirect_out32_locked.exit148_crit_edge, label %if.end22.critedge.i145.return.sink.split.i147_crit_edge, !prof !206

if.end22.critedge.i145.return.sink.split.i147_crit_edge: ; preds = %if.end22.critedge.i145
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i147

if.end22.critedge.i145.temac_indirect_out32_locked.exit148_crit_edge: ; preds = %if.end22.critedge.i145
  call void @__sanitizer_cov_trace_pc() #11
  br label %temac_indirect_out32_locked.exit148

return.sink.split.i147:                           ; preds = %if.end22.critedge.i145.return.sink.split.i147_crit_edge, %temac_indirect_out32_locked.exit139.return.sink.split.i147_crit_edge
  %.sink.i146 = phi i32 [ 193, %temac_indirect_out32_locked.exit139.return.sink.split.i147_crit_edge ], [ 202, %if.end22.critedge.i145.return.sink.split.i147_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i146, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_out32_locked.exit148

temac_indirect_out32_locked.exit148:              ; preds = %return.sink.split.i147, %if.end22.critedge.i145.temac_indirect_out32_locked.exit148_crit_edge
  %call.i149 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %tobool.not.i150 = icmp eq i32 %call.i149, 0
  br i1 %tobool.not.i150, label %if.end22.critedge.i154, label %temac_indirect_out32_locked.exit148.return.sink.split.i156_crit_edge, !prof !206

temac_indirect_out32_locked.exit148.return.sink.split.i156_crit_edge: ; preds = %temac_indirect_out32_locked.exit148
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i156

if.end22.critedge.i154:                           ; preds = %temac_indirect_out32_locked.exit148
  %temac_iow.i151 = getelementptr i8, ptr %ndev, i32 2400
  %127 = ptrtoint ptr %temac_iow.i151 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %temac_iow.i151, align 4
  tail call void %128(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef 0) #9
  %129 = ptrtoint ptr %temac_iow.i151 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %temac_iow.i151, align 4
  tail call void %130(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef 33408) #9
  %call25.i152 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i152)
  %tobool26.not.i153 = icmp eq i32 %call25.i152, 0
  br i1 %tobool26.not.i153, label %if.end22.critedge.i154.temac_indirect_out32_locked.exit157_crit_edge, label %if.end22.critedge.i154.return.sink.split.i156_crit_edge, !prof !206

if.end22.critedge.i154.return.sink.split.i156_crit_edge: ; preds = %if.end22.critedge.i154
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i156

if.end22.critedge.i154.temac_indirect_out32_locked.exit157_crit_edge: ; preds = %if.end22.critedge.i154
  call void @__sanitizer_cov_trace_pc() #11
  br label %temac_indirect_out32_locked.exit157

return.sink.split.i156:                           ; preds = %if.end22.critedge.i154.return.sink.split.i156_crit_edge, %temac_indirect_out32_locked.exit148.return.sink.split.i156_crit_edge
  %.sink.i155 = phi i32 [ 193, %temac_indirect_out32_locked.exit148.return.sink.split.i156_crit_edge ], [ 202, %if.end22.critedge.i154.return.sink.split.i156_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i155, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_out32_locked.exit157

temac_indirect_out32_locked.exit157:              ; preds = %return.sink.split.i156, %if.end22.critedge.i154.temac_indirect_out32_locked.exit157_crit_edge
  %call.i158 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool.not.i159 = icmp eq i32 %call.i158, 0
  br i1 %tobool.not.i159, label %if.end22.critedge.i163, label %temac_indirect_out32_locked.exit157.return.sink.split.i165_crit_edge, !prof !206

temac_indirect_out32_locked.exit157.return.sink.split.i165_crit_edge: ; preds = %temac_indirect_out32_locked.exit157
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i165

if.end22.critedge.i163:                           ; preds = %temac_indirect_out32_locked.exit157
  %temac_iow.i160 = getelementptr i8, ptr %ndev, i32 2400
  %131 = ptrtoint ptr %temac_iow.i160 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %temac_iow.i160, align 4
  tail call void %132(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef 536870912) #9
  %133 = ptrtoint ptr %temac_iow.i160 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %temac_iow.i160, align 4
  tail call void %134(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef 33472) #9
  %call25.i161 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i161)
  %tobool26.not.i162 = icmp eq i32 %call25.i161, 0
  br i1 %tobool26.not.i162, label %if.end22.critedge.i163.temac_indirect_out32_locked.exit166_crit_edge, label %if.end22.critedge.i163.return.sink.split.i165_crit_edge, !prof !206

if.end22.critedge.i163.return.sink.split.i165_crit_edge: ; preds = %if.end22.critedge.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i165

if.end22.critedge.i163.temac_indirect_out32_locked.exit166_crit_edge: ; preds = %if.end22.critedge.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %temac_indirect_out32_locked.exit166

return.sink.split.i165:                           ; preds = %if.end22.critedge.i163.return.sink.split.i165_crit_edge, %temac_indirect_out32_locked.exit157.return.sink.split.i165_crit_edge
  %.sink.i164 = phi i32 [ 193, %temac_indirect_out32_locked.exit157.return.sink.split.i165_crit_edge ], [ 202, %if.end22.critedge.i163.return.sink.split.i165_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i164, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_out32_locked.exit166

temac_indirect_out32_locked.exit166:              ; preds = %return.sink.split.i165, %if.end22.critedge.i163.temac_indirect_out32_locked.exit166_crit_edge
  %135 = ptrtoint ptr %indirect_lock to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %indirect_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %136, i32 noundef %call72) #9
  %options = getelementptr i8, ptr %ndev, i32 2476
  %137 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %options, align 4
  %and78 = and i32 %138, -6145
  tail call fastcc void @temac_setoptions(ptr noundef %ndev, i32 noundef %and78)
  tail call fastcc void @temac_do_set_mac_address(ptr noundef %ndev)
  tail call void @temac_set_multicast_list(ptr noundef %ndev)
  %139 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %options, align 4
  tail call fastcc void @temac_setoptions(ptr noundef %ndev, i32 noundef %140)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %141 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %143 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %142, i32 0, i32 12
  %144 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %143)
  %cmp.not.i.i = icmp eq i32 %145, %143
  br i1 %cmp.not.i.i, label %temac_indirect_out32_locked.exit166.netif_trans_update.exit_crit_edge, label %do.body5.i.i

temac_indirect_out32_locked.exit166.netif_trans_update.exit_crit_edge: ; preds = %temac_indirect_out32_locked.exit166
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %temac_indirect_out32_locked.exit166
  call void @__sanitizer_cov_trace_pc() #11
  %146 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile i32 %143, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %temac_indirect_out32_locked.exit166.netif_trans_update.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ll_temac_tx_irq(i32 noundef %irq, ptr noundef %_ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %_ndev, i32 2304
  %dma_in = getelementptr i8, ptr %_ndev, i32 2404
  %0 = ptrtoint ptr %dma_in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_in, align 4
  %call1 = tail call i32 %1(ptr noundef %add.ptr.i, i32 noundef 6) #9
  %dma_out = getelementptr i8, ptr %_ndev, i32 2408
  %2 = ptrtoint ptr %dma_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_out, align 4
  tail call void %3(ptr noundef %add.ptr.i, i32 noundef 6, i32 noundef %call1) #9
  %and = and i32 %call1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %tx_bd_v.i = getelementptr i8, ptr %5, i32 2488
  %6 = ptrtoint ptr %tx_bd_v.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_bd_v.i, align 4
  %tx_bd_ci.i = getelementptr i8, ptr %5, i32 2512
  %8 = ptrtoint ptr %tx_bd_ci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_bd_ci.i, align 4
  %app0.i = getelementptr %struct.cdmac_bd, ptr %7, i32 %9, i32 3
  %10 = ptrtoint ptr %app0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %stat.047.i = load i32, ptr %app0.i, align 4
  %and48.i = and i32 %stat.047.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool.not49.i = icmp eq i32 %and48.i, 0
  br i1 %tobool.not49.i, label %if.then.temac_start_xmit_done.exit_crit_edge, label %while.body.lr.ph.i

if.then.temac_start_xmit_done.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %temac_start_xmit_done.exit

while.body.lr.ph.i:                               ; preds = %if.then
  %arrayidx.i = getelementptr %struct.cdmac_bd, ptr %7, i32 %9
  %parent.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 133, i32 1
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 1
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 3
  %tx_bd_num.i = getelementptr i8, ptr %5, i32 2496
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %cur_p.050.i = phi ptr [ %arrayidx.i, %while.body.lr.ph.i ], [ %arrayidx17.i, %if.end.i.while.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 8
  %phys.i = getelementptr inbounds %struct.cdmac_bd, ptr %cur_p.050.i, i32 0, i32 1
  %13 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phys.i, align 4
  %len.i = getelementptr inbounds %struct.cdmac_bd, ptr %cur_p.050.i, i32 0, i32 2
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef 1, i32 noundef 0) #9
  %app4.i.i = getelementptr inbounds %struct.cdmac_bd, ptr %cur_p.050.i, i32 0, i32 7
  %17 = ptrtoint ptr %app4.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %app4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not.i = icmp eq i32 %18, 0
  br i1 %tobool2.not.i, label %while.body.i.if.end.i_crit_edge, label %if.then.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = inttoptr i32 %18 to ptr
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %19, i32 noundef 0) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %app1.i = getelementptr inbounds %struct.cdmac_bd, ptr %cur_p.050.i, i32 0, i32 4
  %20 = call ptr @memset(ptr %app1.i, i32 0, i32 16)
  %21 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_packets.i, align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %tx_packets.i, align 4
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i, align 4
  %25 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %26, %24
  store i32 %add.i, ptr %tx_bytes.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !225
  %app08.i = getelementptr inbounds %struct.cdmac_bd, ptr %cur_p.050.i, i32 0, i32 3
  %27 = ptrtoint ptr %app08.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %app08.i, align 4
  %28 = ptrtoint ptr %tx_bd_ci.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_bd_ci.i, align 4
  %inc10.i = add i32 %29, 1
  %30 = ptrtoint ptr %tx_bd_num.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_bd_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc10.i, i32 %31)
  %cmp.not.i = icmp ult i32 %inc10.i, %31
  %spec.store.select.i = select i1 %cmp.not.i, i32 %inc10.i, i32 0
  %32 = ptrtoint ptr %tx_bd_ci.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.store.select.i, ptr %tx_bd_ci.i, align 4
  %33 = ptrtoint ptr %tx_bd_v.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_bd_v.i, align 4
  %arrayidx17.i = getelementptr %struct.cdmac_bd, ptr %34, i32 %spec.store.select.i
  %app018.i = getelementptr %struct.cdmac_bd, ptr %34, i32 %spec.store.select.i, i32 3
  %35 = ptrtoint ptr %app018.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %stat.0.i = load i32, ptr %app018.i, align 4
  %and.i = and i32 %stat.0.i, 268435456
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.temac_start_xmit_done.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.temac_start_xmit_done.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %temac_start_xmit_done.exit

temac_start_xmit_done.exit:                       ; preds = %if.end.i.temac_start_xmit_done.exit_crit_edge, %if.then.temac_start_xmit_done.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !226
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %36 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %37) #9
  br label %if.end

if.end:                                           ; preds = %temac_start_xmit_done.exit, %entry.if.end_crit_edge
  %and3 = and i32 %call1, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end15_crit_edge, label %do.body

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.body:                                          ; preds = %if.end
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @ll_temac_tx_irq._rs, ptr noundef nonnull @__func__.ll_temac_tx_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body.if.end15_crit_edge, label %do.end

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.net_device, ptr %_ndev, i32 0, i32 133
  %38 = ptrtoint ptr %dma_in to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dma_in, align 4
  %call11 = tail call i32 %39(ptr noundef %add.ptr.i, i32 noundef 7) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80, i32 noundef %call1, i32 noundef %call11) #12
  br label %if.end15

if.end15:                                         ; preds = %do.end, %do.body.if.end15_crit_edge, %if.end.if.end15_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ll_temac_rx_irq(i32 noundef %irq, ptr noundef %_ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %_ndev, i32 2304
  %dma_in = getelementptr i8, ptr %_ndev, i32 2404
  %0 = ptrtoint ptr %dma_in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_in, align 4
  %call1 = tail call i32 %1(ptr noundef %add.ptr.i, i32 noundef 14) #9
  %dma_out = getelementptr i8, ptr %_ndev, i32 2408
  %2 = ptrtoint ptr %dma_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_out, align 4
  tail call void %3(ptr noundef %add.ptr.i, i32 noundef 14, i32 noundef %call1) #9
  %and = and i32 %call1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call fastcc void @ll_temac_recv(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and3 = and i32 %call1, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end15_crit_edge, label %do.body

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.body:                                          ; preds = %if.end
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @ll_temac_rx_irq._rs, ptr noundef nonnull @__func__.ll_temac_rx_irq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body.if.end15_crit_edge, label %do.end

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.net_device, ptr %_ndev, i32 0, i32 133
  %6 = ptrtoint ptr %dma_in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_in, align 4
  %call11 = tail call i32 %7(ptr noundef %add.ptr.i, i32 noundef 15) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.81, i32 noundef %call1, i32 noundef %call11) #12
  br label %if.end15

if.end15:                                         ; preds = %do.end, %do.body.if.end15_crit_edge, %if.end.if.end15_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @temac_setoptions(ptr noundef %ndev, i32 noundef %options) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %indirect_lock = getelementptr i8, ptr %ndev, i32 2472
  %0 = ptrtoint ptr %indirect_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %indirect_lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %temac_iow.i = getelementptr i8, ptr %ndev, i32 2400
  %temac_ior.i = getelementptr i8, ptr %ndev, i32 2396
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %opt5 = phi ptr [ getelementptr inbounds ([13 x %struct.temac_option], ptr @temac_options, i32 0, i32 0, i32 1), %entry ], [ %opt, %if.end.while.body_crit_edge ]
  %tp.04 = phi ptr [ @temac_options, %entry ], [ %incdec.ptr, %if.end.while.body_crit_edge ]
  %reg6 = getelementptr inbounds %struct.temac_option, ptr %tp.04, i32 0, i32 2
  %2 = ptrtoint ptr %reg6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg6, align 4
  %call.i = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end22.i, label %do.end.i, !prof !206

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 152, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_in32_locked.exit

if.end22.i:                                       ; preds = %while.body
  %4 = ptrtoint ptr %temac_iow.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %temac_iow.i, align 4
  tail call void %5(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef %3) #9
  %call24.i = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end57.i, label %do.end41.i, !prof !206

do.end41.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 161, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_in32_locked.exit

if.end57.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %temac_ior.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %temac_ior.i, align 4
  %call58.i = tail call i32 %7(ptr noundef %add.ptr.i, i32 noundef 36) #9
  br label %temac_indirect_in32_locked.exit

temac_indirect_in32_locked.exit:                  ; preds = %if.end57.i, %do.end41.i, %do.end.i
  %retval.0.i = phi i32 [ -110, %do.end.i ], [ -110, %do.end41.i ], [ %call58.i, %if.end57.i ]
  %8 = ptrtoint ptr %opt5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %opt5, align 4
  %and9 = and i32 %9, %options
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %temac_indirect_in32_locked.exit.if.end_crit_edge, label %if.then

temac_indirect_in32_locked.exit.if.end_crit_edge: ; preds = %temac_indirect_in32_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %temac_indirect_in32_locked.exit
  %m_or = getelementptr inbounds %struct.temac_option, ptr %tp.04, i32 0, i32 3
  %10 = ptrtoint ptr %m_or to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_or, align 4
  %12 = ptrtoint ptr %reg6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg6, align 4
  %call.i1 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool.not.i2 = icmp eq i32 %call.i1, 0
  br i1 %tobool.not.i2, label %if.end22.critedge.i, label %if.then.return.sink.split.i_crit_edge, !prof !206

if.then.return.sink.split.i_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

if.end22.critedge.i:                              ; preds = %if.then
  %or = or i32 %11, %retval.0.i
  %14 = ptrtoint ptr %temac_iow.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %temac_iow.i, align 4
  tail call void %15(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef %or) #9
  %16 = ptrtoint ptr %temac_iow.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %temac_iow.i, align 4
  %or.i = or i32 %13, 32768
  tail call void %17(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef %or.i) #9
  %call25.i = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end22.critedge.i.if.end_crit_edge, label %if.end22.critedge.i.return.sink.split.i_crit_edge, !prof !206

if.end22.critedge.i.return.sink.split.i_crit_edge: ; preds = %if.end22.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

if.end22.critedge.i.if.end_crit_edge:             ; preds = %if.end22.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

return.sink.split.i:                              ; preds = %if.end22.critedge.i.return.sink.split.i_crit_edge, %if.then.return.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 193, %if.then.return.sink.split.i_crit_edge ], [ 202, %if.end22.critedge.i.return.sink.split.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %return.sink.split.i, %if.end22.critedge.i.if.end_crit_edge, %temac_indirect_in32_locked.exit.if.end_crit_edge
  %incdec.ptr = getelementptr %struct.temac_option, ptr %tp.04, i32 1
  %opt = getelementptr %struct.temac_option, ptr %tp.04, i32 1, i32 1
  %18 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %opt, align 4
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %while.end, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %indirect_lock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %indirect_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %call3) #9
  %options14 = getelementptr i8, ptr %ndev, i32 2476
  %22 = ptrtoint ptr %options14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %options14, align 4
  %or15 = or i32 %23, %options
  store i32 %or15, ptr %options14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @temac_do_set_mac_address(ptr noundef %ndev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %indirect_lock = getelementptr i8, ptr %ndev, i32 2472
  %0 = ptrtoint ptr %indirect_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %indirect_lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %arrayidx8 = getelementptr i8, ptr %3, i32 1
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  %arrayidx11 = getelementptr i8, ptr %3, i32 2
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx11, align 1
  %arrayidx16 = getelementptr i8, ptr %3, i32 3
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx16, align 1
  %call.i = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end22.critedge.i, label %entry.return.sink.split.i_crit_edge, !prof !206

entry.return.sink.split.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

if.end22.critedge.i:                              ; preds = %entry
  %conv9 = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv9, 8
  %conv6 = zext i8 %5 to i32
  %or = or i32 %shl, %conv6
  %conv12 = zext i8 %9 to i32
  %shl13 = shl nuw nsw i32 %conv12, 16
  %or14 = or i32 %or, %shl13
  %conv17 = zext i8 %11 to i32
  %shl18 = shl nuw i32 %conv17, 24
  %or19 = or i32 %or14, %shl18
  %temac_iow.i = getelementptr i8, ptr %ndev, i32 2400
  %12 = ptrtoint ptr %temac_iow.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %temac_iow.i, align 4
  tail call void %13(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef %or19) #9
  %14 = ptrtoint ptr %temac_iow.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %temac_iow.i, align 4
  tail call void %15(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef 33664) #9
  %call25.i = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end22.critedge.i.temac_indirect_out32_locked.exit_crit_edge, label %if.end22.critedge.i.return.sink.split.i_crit_edge, !prof !206

if.end22.critedge.i.return.sink.split.i_crit_edge: ; preds = %if.end22.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

if.end22.critedge.i.temac_indirect_out32_locked.exit_crit_edge: ; preds = %if.end22.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %temac_indirect_out32_locked.exit

return.sink.split.i:                              ; preds = %if.end22.critedge.i.return.sink.split.i_crit_edge, %entry.return.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 193, %entry.return.sink.split.i_crit_edge ], [ 202, %if.end22.critedge.i.return.sink.split.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_out32_locked.exit

temac_indirect_out32_locked.exit:                 ; preds = %return.sink.split.i, %if.end22.critedge.i.temac_indirect_out32_locked.exit_crit_edge
  %16 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_addr, align 64
  %arrayidx21 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx21, align 1
  %arrayidx24 = getelementptr i8, ptr %17, i32 5
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx24, align 1
  %call.i38 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool.not.i39 = icmp eq i32 %call.i38, 0
  br i1 %tobool.not.i39, label %if.end22.critedge.i43, label %temac_indirect_out32_locked.exit.return.sink.split.i45_crit_edge, !prof !206

temac_indirect_out32_locked.exit.return.sink.split.i45_crit_edge: ; preds = %temac_indirect_out32_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i45

if.end22.critedge.i43:                            ; preds = %temac_indirect_out32_locked.exit
  %conv25 = zext i8 %21 to i32
  %shl26 = shl nuw nsw i32 %conv25, 8
  %conv22 = zext i8 %19 to i32
  %or27 = or i32 %shl26, %conv22
  %temac_iow.i40 = getelementptr i8, ptr %ndev, i32 2400
  %22 = ptrtoint ptr %temac_iow.i40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %temac_iow.i40, align 4
  tail call void %23(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef %or27) #9
  %24 = ptrtoint ptr %temac_iow.i40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %temac_iow.i40, align 4
  tail call void %25(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef 33668) #9
  %call25.i41 = tail call i32 @temac_indirect_busywait(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i41)
  %tobool26.not.i42 = icmp eq i32 %call25.i41, 0
  br i1 %tobool26.not.i42, label %if.end22.critedge.i43.temac_indirect_out32_locked.exit46_crit_edge, label %if.end22.critedge.i43.return.sink.split.i45_crit_edge, !prof !206

if.end22.critedge.i43.return.sink.split.i45_crit_edge: ; preds = %if.end22.critedge.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i45

if.end22.critedge.i43.temac_indirect_out32_locked.exit46_crit_edge: ; preds = %if.end22.critedge.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %temac_indirect_out32_locked.exit46

return.sink.split.i45:                            ; preds = %if.end22.critedge.i43.return.sink.split.i45_crit_edge, %temac_indirect_out32_locked.exit.return.sink.split.i45_crit_edge
  %.sink.i44 = phi i32 [ 193, %temac_indirect_out32_locked.exit.return.sink.split.i45_crit_edge ], [ 202, %if.end22.critedge.i43.return.sink.split.i45_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i44, i32 noundef 9, ptr noundef null) #9
  br label %temac_indirect_out32_locked.exit46

temac_indirect_out32_locked.exit46:               ; preds = %return.sink.split.i45, %if.end22.critedge.i43.temac_indirect_out32_locked.exit46_crit_edge
  %26 = ptrtoint ptr %indirect_lock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %indirect_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %call3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @temac_dma_bd_release(ptr noundef %ndev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %dma_out = getelementptr i8, ptr %ndev, i32 2408
  %0 = ptrtoint ptr %dma_out to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_out, align 4
  tail call void %1(ptr noundef %add.ptr.i, i32 noundef 16, i32 noundef 1) #9
  %rx_skb = getelementptr i8, ptr %ndev, i32 2424
  %rx_bd_num = getelementptr i8, ptr %ndev, i32 2508
  %2 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_bd_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp40.not = icmp eq i32 %3, 0
  br i1 %cmp40.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %rx_bd_v = getelementptr i8, ptr %ndev, i32 2500
  %4 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_skb, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not43 = icmp eq ptr %7, null
  br i1 %tobool.not43, label %for.body.lr.ph.for.end_crit_edge, label %for.body.lr.ph.if.else_crit_edge

for.body.lr.ph.if.else_crit_edge:                 ; preds = %for.body.lr.ph
  br label %if.else

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.else
  %8 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_skb, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %inc
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.else:                                          ; preds = %for.body.if.else_crit_edge, %for.body.lr.ph.if.else_crit_edge
  %i.04144 = phi i32 [ %inc, %for.body.if.else_crit_edge ], [ 0, %for.body.lr.ph.if.else_crit_edge ]
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  %14 = ptrtoint ptr %rx_bd_v to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_bd_v, align 4
  %phys = getelementptr %struct.cdmac_bd, ptr %15, i32 %i.04144, i32 1
  %16 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phys, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %13, i32 noundef %17, i32 noundef 9018, i32 noundef 2, i32 noundef 0) #9
  %18 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_skb, align 4
  %arrayidx3 = getelementptr ptr, ptr %19, i32 %i.04144
  %20 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx3, align 4
  tail call void @consume_skb(ptr noundef %21) #9
  %inc = add nuw i32 %i.04144, 1
  %22 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_bd_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %23)
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.body, label %if.else.for.end_crit_edge

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.else.for.end_crit_edge, %for.body.for.end_crit_edge, %for.body.lr.ph.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %3, %for.body.lr.ph.for.end_crit_edge ], [ %23, %if.else.for.end_crit_edge ], [ %23, %for.body.for.end_crit_edge ]
  %rx_bd_v4 = getelementptr i8, ptr %ndev, i32 2500
  %24 = ptrtoint ptr %rx_bd_v4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_bd_v4, align 4
  %tobool5.not = icmp eq ptr %25, null
  br i1 %tobool5.not, label %for.end.if.end11_crit_edge, label %if.then6

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then6:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %parent8 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %26 = ptrtoint ptr %parent8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent8, align 8
  %mul = shl i32 %.lcssa, 5
  %rx_bd_p = getelementptr i8, ptr %ndev, i32 2504
  %28 = ptrtoint ptr %rx_bd_p to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_bd_p, align 4
  tail call void @dma_free_attrs(ptr noundef %27, i32 noundef %mul, ptr noundef nonnull %25, i32 noundef %29, i32 noundef 0) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %for.end.if.end11_crit_edge
  %tx_bd_v = getelementptr i8, ptr %ndev, i32 2488
  %30 = ptrtoint ptr %tx_bd_v to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_bd_v, align 4
  %tobool12.not = icmp eq ptr %31, null
  br i1 %tobool12.not, label %if.end11.if.end18_crit_edge, label %if.then13

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %parent15 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %32 = ptrtoint ptr %parent15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent15, align 8
  %tx_bd_num = getelementptr i8, ptr %ndev, i32 2496
  %34 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_bd_num, align 4
  %mul16 = shl i32 %35, 5
  %tx_bd_p = getelementptr i8, ptr %ndev, i32 2492
  %36 = ptrtoint ptr %tx_bd_p to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_bd_p, align 4
  tail call void @dma_free_attrs(ptr noundef %33, i32 noundef %mul16, ptr noundef nonnull %31, i32 noundef %37, i32 noundef 0) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end11.if.end18_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ll_temac_recv(ptr noundef %ndev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %rx_lock = getelementptr i8, ptr %ndev, i32 2428
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock) #9
  %rx_bd_v = getelementptr i8, ptr %ndev, i32 2500
  %rx_bd_ci = getelementptr i8, ptr %ndev, i32 2520
  %rx_skb = getelementptr i8, ptr %ndev, i32 2424
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %temac_features = getelementptr i8, ptr %ndev, i32 2484
  %stats = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 2
  %rx_bd_num = getelementptr i8, ptr %ndev, i32 2508
  %rx_bd_tail = getelementptr i8, ptr %ndev, i32 2524
  br label %do.body6

do.body6:                                         ; preds = %do.cond51.do.body6_crit_edge, %entry
  %0 = ptrtoint ptr %rx_bd_v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_bd_v, align 4
  %2 = ptrtoint ptr %rx_bd_ci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_bd_ci, align 4
  %4 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_skb, align 4
  %arrayidx8 = getelementptr ptr, ptr %5, i32 %3
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx8, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.body6.do.end54_crit_edge, label %if.end

do.body6.do.end54_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

if.end:                                           ; preds = %do.body6
  %app0 = getelementptr %struct.cdmac_bd, ptr %1, i32 %3, i32 3
  %8 = ptrtoint ptr %app0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %app0, align 4
  %and = and i32 %9, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end.do.end54_crit_edge, label %if.end11

if.end.do.end54_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

if.end11:                                         ; preds = %if.end
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %phys = getelementptr %struct.cdmac_bd, ptr %1, i32 %3, i32 1
  %12 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phys, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %13, i32 noundef 9018, i32 noundef 2, i32 noundef 0) #9
  %14 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %phys, align 4
  %len = getelementptr %struct.cdmac_bd, ptr %1, i32 %3, i32 2
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %len, align 4
  %app4 = getelementptr %struct.cdmac_bd, ptr %1, i32 %3, i32 7
  %16 = ptrtoint ptr %app4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %app4, align 4
  %and13 = and i32 %17, 16383
  %call14 = tail call ptr @skb_put(ptr noundef nonnull %7, i32 noundef %and13) #9
  %call15 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %7, ptr noundef %ndev) #9
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 15, i32 0, i32 18
  %18 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %call15, ptr %protocol, align 8
  %19 = ptrtoint ptr %temac_features to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %temac_features, align 4
  %and16 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %cmp17.not = icmp ne i32 %and16, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %call15)
  %cmp21 = icmp eq i16 %call15, 2048
  %or.cond = select i1 %cmp17.not, i1 %cmp21, i1 false
  br i1 %or.cond, label %land.lhs.true23, label %if.end11.if.end31_crit_edge

if.end11.if.end31_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

land.lhs.true23:                                  ; preds = %if.end11
  %len24 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %21 = ptrtoint ptr %len24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %22)
  %cmp25 = icmp ugt i32 %22, 64
  br i1 %cmp25, label %if.then27, label %land.lhs.true23.if.end31_crit_edge

land.lhs.true23.if.end31_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then27:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  %app3 = getelementptr %struct.cdmac_bd, ptr %1, i32 %3, i32 6
  %23 = ptrtoint ptr %app3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %app3, align 4
  %conv30 = and i32 %24, 65535
  %25 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 15, i32 0, i32 5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv30, ptr %25, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 15
  %27 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 1024
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %land.lhs.true23.if.end31_crit_edge, %if.end11.if.end31_crit_edge
  %call32 = tail call zeroext i1 @skb_defer_rx_timestamp(ptr noundef nonnull %7) #9
  br i1 %call32, label %if.end31.do.cond51_crit_edge, label %if.then33

if.end31.do.cond51_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond51

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %call34 = tail call i32 @netif_rx(ptr noundef nonnull %7) #9
  br label %do.cond51

do.cond51:                                        ; preds = %if.then33, %if.end31.do.cond51_crit_edge
  %28 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_skb, align 4
  %30 = ptrtoint ptr %rx_bd_ci to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_bd_ci, align 4
  %arrayidx38 = getelementptr ptr, ptr %29, i32 %31
  %32 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx38, align 4
  %33 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stats, align 8
  %inc = add i32 %34, 1
  store i32 %inc, ptr %stats, align 8
  %35 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %36, %and13
  store i32 %add, ptr %rx_bytes, align 8
  %37 = load i32, ptr %rx_bd_ci, align 4
  %inc42 = add i32 %37, 1
  %38 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_bd_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc42, i32 %39)
  %cmp43.not = icmp ult i32 %inc42, %39
  %spec.store.select221 = select i1 %cmp43.not, i32 %inc42, i32 0
  %40 = ptrtoint ptr %rx_bd_ci to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.store.select221, ptr %rx_bd_ci, align 4
  %41 = ptrtoint ptr %rx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_bd_tail, align 4
  %cmp52.not = icmp eq i32 %37, %42
  br i1 %cmp52.not, label %do.cond51.do.end54_crit_edge, label %do.cond51.do.body6_crit_edge

do.cond51.do.body6_crit_edge:                     ; preds = %do.cond51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body6

do.cond51.do.end54_crit_edge:                     ; preds = %do.cond51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

do.end54:                                         ; preds = %do.cond51.do.end54_crit_edge, %if.end.do.end54_crit_edge, %do.body6.do.end54_crit_edge
  %43 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_skb, align 4
  %45 = ptrtoint ptr %rx_bd_ci to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_bd_ci, align 4
  %arrayidx.i = getelementptr ptr, ptr %44, i32 %46
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %do.end54.ll_temac_recv_buffers_available.exit_crit_edge, label %if.end.i

do.end54.ll_temac_recv_buffers_available.exit_crit_edge: ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %ll_temac_recv_buffers_available.exit

if.end.i:                                         ; preds = %do.end54
  %49 = ptrtoint ptr %rx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_bd_tail, align 4
  %add.i = sub i32 1, %46
  %sub.i = add i32 %50, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 1
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.ll_temac_recv_buffers_available.exit_crit_edge

if.end.i.ll_temac_recv_buffers_available.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ll_temac_recv_buffers_available.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_bd_num, align 4
  %add3.i = add i32 %52, %sub.i
  br label %ll_temac_recv_buffers_available.exit

ll_temac_recv_buffers_available.exit:             ; preds = %if.then2.i, %if.end.i.ll_temac_recv_buffers_available.exit_crit_edge, %do.end54.ll_temac_recv_buffers_available.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end54.ll_temac_recv_buffers_available.exit_crit_edge ], [ %add3.i, %if.then2.i ], [ %sub.i, %if.end.i.ll_temac_recv_buffers_available.exit_crit_edge ]
  %coalesce_count_rx = getelementptr i8, ptr %ndev, i32 2530
  %53 = ptrtoint ptr %coalesce_count_rx to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %coalesce_count_rx, align 2
  %conv56 = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %conv56)
  %cmp57 = icmp slt i32 %retval.0.i, %conv56
  br i1 %cmp57, label %if.then59, label %ll_temac_recv_buffers_available.exit.if.end61_crit_edge

ll_temac_recv_buffers_available.exit.if.end61_crit_edge: ; preds = %ll_temac_recv_buffers_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then59:                                        ; preds = %ll_temac_recv_buffers_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  %restart_work = getelementptr i8, ptr %ndev, i32 2532
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %55 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %55, ptr noundef %restart_work, i32 noundef 0) #9
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %ll_temac_recv_buffers_available.exit.if.end61_crit_edge
  %56 = ptrtoint ptr %rx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_bd_tail, align 4
  %add65259 = add i32 %57, 1
  %58 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_bd_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add65259, i32 %59)
  %cmp67.not260 = icmp ult i32 %add65259, %59
  %spec.store.select261 = select i1 %cmp67.not260, i32 %add65259, i32 0
  %60 = ptrtoint ptr %rx_bd_v to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rx_bd_v, align 4
  %phys73262 = getelementptr %struct.cdmac_bd, ptr %61, i32 %spec.store.select261, i32 1
  %62 = ptrtoint ptr %phys73262 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %phys73262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool74.not263 = icmp eq i32 %63, 0
  br i1 %tobool74.not263, label %if.end61.if.end76_crit_edge, label %if.end61.if.end152_crit_edge

if.end61.if.end152_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

if.end61.if.end76_crit_edge:                      ; preds = %if.end61
  br label %if.end76

if.end76:                                         ; preds = %cleanup143.if.end76_crit_edge, %if.end61.if.end76_crit_edge
  %phys73266 = phi ptr [ %phys73, %cleanup143.if.end76_crit_edge ], [ %phys73262, %if.end61.if.end76_crit_edge ]
  %64 = phi ptr [ %91, %cleanup143.if.end76_crit_edge ], [ %61, %if.end61.if.end76_crit_edge ]
  %spec.store.select265 = phi i32 [ %spec.store.select, %cleanup143.if.end76_crit_edge ], [ %spec.store.select261, %if.end61.if.end76_crit_edge ]
  %update_tail.0.off0264 = phi i1 [ true, %cleanup143.if.end76_crit_edge ], [ false, %if.end61.if.end76_crit_edge ]
  %call.i.i224 = tail call ptr @__netdev_alloc_skb(ptr noundef %ndev, i32 noundef 9020, i32 noundef 2592) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i224, null
  br i1 %tobool.not.i.i, label %while.end, label %if.end84

if.end84:                                         ; preds = %if.end76
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i224, i32 0, i32 19
  %65 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %66, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i224, i32 0, i32 16
  %67 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %68, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %69 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %parent, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i.i) #9
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end84
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !206

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %70) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i225 = icmp eq ptr %72, null
  br i1 %tobool.not.i.i225, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %70, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %74, %if.end.i.i ], [ %72, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.77, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.78, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %75 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %76, i32 noundef -1) #9
  br label %land.rhs

dma_map_single_attrs.exit:                        ; preds = %if.end84
  tail call void @debug_dma_map_single(ptr noundef %70, ptr noundef %add.ptr.i.i.i, i32 noundef 9018) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %77 = load ptr, ptr @mem_map, align 4
  %78 = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.i226 = add i32 %78, 1073741824
  %shr.i = lshr i32 %sub.i226, 12
  %add.ptr.i227 = getelementptr %struct.page, ptr %77, i32 %shr.i
  %and.i = and i32 %78, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %70, ptr noundef %add.ptr.i227, i32 noundef %and.i, i32 noundef 9018, i32 noundef 2, i32 noundef 0) #9
  %79 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %parent, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %80, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i229 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i229, label %dma_map_single_attrs.exit.land.rhs_crit_edge, label %cleanup143

dma_map_single_attrs.exit.land.rhs_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

land.rhs:                                         ; preds = %dma_map_single_attrs.exit.land.rhs_crit_edge, %dma_map_single_attrs.exit.thread
  %.b220 = load i1, ptr @ll_temac_recv.__already_done, align 1
  br i1 %.b220, label %land.rhs.if.then135_crit_edge, label %if.then100, !prof !206

land.rhs.if.then135_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then135

if.then100:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ll_temac_recv.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1076, i32 noundef 9, ptr noundef null) #9
  br label %if.then135

if.then135:                                       ; preds = %if.then100, %land.rhs.if.then135_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i224, i32 noundef 1) #9
  br i1 %update_tail.0.off0264, label %if.then135.if.then149_crit_edge, label %if.then135.if.end152_crit_edge

if.then135.if.end152_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

if.then135.if.then149_crit_edge:                  ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then149

cleanup143:                                       ; preds = %dma_map_single_attrs.exit
  %81 = ptrtoint ptr %phys73266 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call41.i, ptr %phys73266, align 4
  %len138 = getelementptr %struct.cdmac_bd, ptr %64, i32 %spec.store.select265, i32 2
  %82 = ptrtoint ptr %len138 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 9018, ptr %len138, align 4
  %app0139 = getelementptr %struct.cdmac_bd, ptr %64, i32 %spec.store.select265, i32 3
  %83 = ptrtoint ptr %app0139 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1073741824, ptr %app0139, align 4
  %84 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rx_skb, align 4
  %arrayidx141 = getelementptr ptr, ptr %85, i32 %spec.store.select265
  %86 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call.i.i224, ptr %arrayidx141, align 4
  %87 = ptrtoint ptr %rx_bd_tail to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %spec.store.select265, ptr %rx_bd_tail, align 4
  %add65 = add i32 %spec.store.select265, 1
  %88 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rx_bd_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add65, i32 %89)
  %cmp67.not = icmp ult i32 %add65, %89
  %spec.store.select = select i1 %cmp67.not, i32 %add65, i32 0
  %90 = ptrtoint ptr %rx_bd_v to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rx_bd_v, align 4
  %phys73 = getelementptr %struct.cdmac_bd, ptr %91, i32 %spec.store.select, i32 1
  %92 = ptrtoint ptr %phys73 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %phys73, align 4
  %tobool74.not = icmp eq i32 %93, 0
  br i1 %tobool74.not, label %cleanup143.if.end76_crit_edge, label %cleanup143.if.then149_crit_edge

cleanup143.if.then149_crit_edge:                  ; preds = %cleanup143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then149

cleanup143.if.end76_crit_edge:                    ; preds = %cleanup143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

while.end:                                        ; preds = %if.end76
  %dev83 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev83, ptr noundef nonnull @.str.82) #12
  br i1 %update_tail.0.off0264, label %while.end.if.then149_crit_edge, label %while.end.if.end152_crit_edge

while.end.if.end152_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

while.end.if.then149_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then149

if.then149:                                       ; preds = %while.end.if.then149_crit_edge, %cleanup143.if.then149_crit_edge, %if.then135.if.then149_crit_edge
  %dma_out = getelementptr i8, ptr %ndev, i32 2408
  %94 = ptrtoint ptr %dma_out to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dma_out, align 4
  %rx_bd_p = getelementptr i8, ptr %ndev, i32 2504
  %96 = ptrtoint ptr %rx_bd_p to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rx_bd_p, align 4
  %98 = ptrtoint ptr %rx_bd_tail to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rx_bd_tail, align 4
  %mul = shl i32 %99, 5
  %add151 = add i32 %mul, %97
  tail call void %95(ptr noundef %add.ptr.i, i32 noundef 12, i32 noundef %add151) #9
  br label %if.end152

if.end152:                                        ; preds = %if.then149, %while.end.if.end152_crit_edge, %if.then135.if.end152_crit_edge, %if.end61.if.end152_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_defer_rx_timestamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ll_temac_ethtools_get_coalesce(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %coalesce_count_rx = getelementptr i8, ptr %ndev, i32 2530
  %0 = ptrtoint ptr %coalesce_count_rx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %coalesce_count_rx, align 2
  %conv = zext i8 %1 to i32
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %2 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %rx_max_coalesced_frames, align 4
  %coalesce_count_tx = getelementptr i8, ptr %ndev, i32 2528
  %3 = ptrtoint ptr %coalesce_count_tx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %coalesce_count_tx, align 4
  %conv1 = zext i8 %4 to i32
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %5 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv1, ptr %tx_max_coalesced_frames, align 4
  %coalesce_delay_rx = getelementptr i8, ptr %ndev, i32 2531
  %6 = ptrtoint ptr %coalesce_delay_rx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %coalesce_delay_rx, align 1
  %conv2 = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv2, 9
  %div = udiv i32 %mul, 100
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %8 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div, ptr %rx_coalesce_usecs, align 4
  %coalesce_delay_tx = getelementptr i8, ptr %ndev, i32 2529
  %9 = ptrtoint ptr %coalesce_delay_tx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %coalesce_delay_tx, align 1
  %conv3 = zext i8 %10 to i32
  %mul4 = shl nuw nsw i32 %conv3, 9
  %div5 = udiv i32 %mul4, 100
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %11 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div5, ptr %tx_coalesce_usecs, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ll_temac_ethtools_set_coalesce(ptr noundef %ndev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.92) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %2 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %3 to i8
  %coalesce_count_rx = getelementptr i8, ptr %ndev, i32 2530
  %4 = ptrtoint ptr %coalesce_count_rx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %coalesce_count_rx, align 2
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %5 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %conv8 = trunc i32 %6 to i8
  %coalesce_count_tx = getelementptr i8, ptr %ndev, i32 2528
  %7 = ptrtoint ptr %coalesce_count_tx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv8, ptr %coalesce_count_tx, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %8 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.end9.if.end15_crit_edge, label %if.then11

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %9, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %mul)
  %cmp = icmp ugt i32 %mul, 131071
  %div50 = lshr i32 %mul, 9
  %phi.cast51 = trunc i32 %div50 to i8
  %cond = select i1 %cmp, i8 -1, i8 %phi.cast51
  %coalesce_delay_rx = getelementptr i8, ptr %ndev, i32 2531
  %10 = ptrtoint ptr %coalesce_delay_rx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %cond, ptr %coalesce_delay_rx, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end9.if.end15_crit_edge
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %11 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not = icmp eq i32 %12, 0
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %if.then17

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %mul19 = mul i32 %12, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %mul19)
  %cmp22 = icmp ugt i32 %mul19, 131071
  %div2049 = lshr i32 %mul19, 9
  %phi.cast = trunc i32 %div2049 to i8
  %cond27 = select i1 %cmp22, i8 -1, i8 %phi.cast
  %coalesce_delay_tx = getelementptr i8, ptr %ndev, i32 2529
  %13 = ptrtoint ptr %coalesce_delay_tx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %cond27, ptr %coalesce_delay_tx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end15.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -14, %if.then ], [ 0, %if.then17 ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ll_temac_ethtools_get_ringparam(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %ering, ptr nocapture noundef readnone %kernel_ering, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %rx_bd_num = getelementptr i8, ptr %ndev, i32 2508
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
  %tx_bd_num = getelementptr i8, ptr %ndev, i32 2496
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
define internal i32 @ll_temac_ethtools_set_ringparam(ptr noundef %ndev, ptr nocapture noundef readonly %ering, ptr nocapture noundef readnone %kernel_ering, ptr nocapture noundef readnone %extack) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 5
  %0 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp = icmp ugt i32 %1, 4096
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 7
  %4 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false1.cleanup_crit_edge

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rx_bd_num = getelementptr i8, ptr %ndev, i32 2508
  %8 = ptrtoint ptr %rx_bd_num to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %rx_bd_num, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 8
  %9 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_pending, align 4
  %tx_bd_num = getelementptr i8, ptr %ndev, i32 2496
  %11 = ptrtoint ptr %tx_bd_num to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tx_bd_num, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %lor.lhs.false1.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temac_show_llink_regs(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %dma_in = getelementptr i8, ptr %1, i32 2404
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %len.018 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.018
  %2 = ptrtoint ptr %dma_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_in, align 4
  %call2 = tail call i32 %3(ptr noundef %add.ptr.i, i32 noundef %i.017) #9
  %4 = and i32 %i.017, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp3 = icmp eq i32 %4, 7
  %cond = select i1 %cmp3, ptr @.str.95, ptr @.str.96
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.94, i32 noundef %call2, ptr noundef nonnull %cond)
  %add = add i32 %call4, %len.018
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr5 = getelementptr i8, ptr %buf, i32 %add
  %5 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 2560, ptr %add.ptr5, align 1
  %add7 = add i32 %add, 1
  ret i32 %add7
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !30, !31, !33, !34, !36, !37, !38, !40, !42, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !83, !84, !86, !88, !89, !90, !92, !93, !94, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !144, !145, !146, !147, !148, !149, !151, !152, !153, !154, !155, !157, !158, !159, !160, !162, !164, !165, !166, !168, !170, !171, !172, !173, !174, !176, !177, !178, !180, !182, !184, !186, !188, !189, !191, !193, !195}
!llvm.module.flags = !{!197, !198, !199, !200, !201, !202, !203, !204}
!llvm.ident = !{!205}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 118, i32 6}
!2 = !{ptr @__initcall__kmod_ll_temac__493_1657_temac_driver_init6, !3, !"__initcall__kmod_ll_temac__493_1657_temac_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1657, i32 1}
!4 = !{ptr @__exitcall_temac_driver_exit, !3, !"__exitcall_temac_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description494, !6, !"__UNIQUE_ID_description494", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1659, i32 1}
!7 = !{ptr @__UNIQUE_ID_author495, !8, !"__UNIQUE_ID_author495", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1660, i32 1}
!9 = !{ptr @__UNIQUE_ID_file496, !10, !"__UNIQUE_ID_file496", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1661, i32 1}
!11 = !{ptr @__UNIQUE_ID_license497, !10, !"__UNIQUE_ID_license497", i1 false, i1 false}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1652, i32 11}
!14 = !{ptr @temac_driver, !15, !"temac_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1648, i32 31}
!16 = !{ptr @temac_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1421, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @temac_probe.__key.3, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1422, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @temac_probe.__key.5, !20, !"__key", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1427, i32 4}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @temac_probe._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @temac_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @temac_probe.__key.11, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1438, i32 3}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1444, i32 3}
!36 = !{ptr @temac_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @temac_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1453, i32 33}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1469, i32 43}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1472, i32 43}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1498, i32 39}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1500, i32 4}
!48 = !{ptr @temac_probe._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @temac_probe._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1512, i32 5}
!52 = !{ptr @temac_probe._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @temac_probe._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1524, i32 4}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @temac_probe.__UNIQUE_ID_ddebug491, !55, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1537, i32 4}
!60 = !{ptr @temac_probe._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @temac_probe._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1567, i32 4}
!64 = !{ptr @temac_probe._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @temac_probe._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1572, i32 4}
!68 = !{ptr @temac_probe._entry.34, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @temac_probe._entry_ptr.36, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1580, i32 4}
!72 = !{ptr @temac_probe._entry.37, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @temac_probe._entry_ptr.39, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1590, i32 3}
!76 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @temac_probe._entry.40, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @temac_probe._entry_ptr.43, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1593, i32 45}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1595, i32 4}
!83 = !{ptr @temac_probe.__UNIQUE_ID_ddebug492, !82, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1598, i32 5}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1605, i32 3}
!88 = !{ptr @temac_probe._entry.47, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @temac_probe._entry_ptr.49, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1611, i32 3}
!92 = !{ptr @temac_probe._entry.50, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @temac_probe._entry_ptr.52, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @temac_netdev_ops, !95, !"temac_netdev_ops", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1233, i32 36}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1156, i32 2}
!98 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @temac_open.__UNIQUE_ID_ddebug485, !97, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!100 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1162, i32 4}
!102 = !{ptr @temac_open._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @temac_open._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1170, i32 4}
!106 = !{ptr @temac_open._entry.56, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @temac_open._entry_ptr.58, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1192, i32 2}
!110 = !{ptr @temac_open._entry.59, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @temac_open._entry_ptr.61, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.62, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 634, i32 2}
!114 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @temac_device_reset.__UNIQUE_ID_ddebug484, !113, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!116 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 642, i32 4}
!118 = !{ptr @temac_device_reset._entry, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @temac_device_reset._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 654, i32 4}
!122 = !{ptr @temac_device_reset._entry.65, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @temac_device_reset._entry_ptr.67, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.69, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 673, i32 4}
!126 = !{ptr @temac_device_reset._entry.68, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @temac_device_reset._entry_ptr.70, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.72, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 681, i32 3}
!130 = !{ptr @temac_device_reset._entry.71, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @temac_device_reset._entry_ptr.73, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.75, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 702, i32 3}
!134 = !{ptr @temac_device_reset._entry.74, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @temac_device_reset._entry_ptr.76, !133, !"_entry_ptr", i1 false, i1 false}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!138 = !{ptr @.str.77, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.78, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @temac_options, !141, !"temac_options", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 522, i32 3}
!142 = !{ptr @.str.79, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1123, i32 3}
!144 = !{ptr @ll_temac_tx_irq._rs, !143, !"_rs", i1 false, i1 false}
!145 = !{ptr @__func__.ll_temac_tx_irq, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.80, !143, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @ll_temac_tx_irq._entry, !143, !"_entry", i1 false, i1 false}
!148 = !{ptr @ll_temac_tx_irq._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @ll_temac_rx_irq._rs, !150, !"_rs", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1143, i32 3}
!151 = !{ptr @__func__.ll_temac_rx_irq, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.81, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @ll_temac_rx_irq._entry, !150, !"_entry", i1 false, i1 false}
!154 = !{ptr @ll_temac_rx_irq._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.82, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1068, i32 4}
!157 = !{ptr @.str.83, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @ll_temac_recv._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @ll_temac_recv._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = distinct !{null, !161, !"__already_done", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1075, i32 7}
!162 = !{ptr @.str.84, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1201, i32 2}
!164 = !{ptr @.str.85, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @temac_stop.__UNIQUE_ID_ddebug486, !163, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!166 = distinct !{null, !167, !"__already_done", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 885, i32 6}
!168 = !{ptr @.str.86, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 470, i32 3}
!170 = !{ptr @.str.87, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.88, !169, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @temac_set_multicast_list._entry, !169, !"_entry", i1 false, i1 false}
!173 = !{ptr @temac_set_multicast_list._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.90, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 513, i32 3}
!176 = !{ptr @temac_set_multicast_list._entry.89, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @temac_set_multicast_list._entry_ptr.91, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @temac_ethtool_ops, !179, !"temac_ethtool_ops", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1365, i32 33}
!180 = !{ptr @.str.92, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1344, i32 7}
!182 = !{ptr @temac_attr_group, !183, !"temac_attr_group", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1271, i32 37}
!184 = !{ptr @temac_device_attrs, !185, !"temac_device_attrs", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1266, i32 26}
!186 = !{ptr @.str.93, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1264, i32 8}
!188 = !{ptr @dev_attr_llink_regs, !187, !"dev_attr_llink_regs", i1 false, i1 false}
!189 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1257, i32 29}
!191 = !{ptr @.str.95, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1258, i32 26}
!193 = !{ptr @.str.96, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1258, i32 33}
!195 = !{ptr @temac_of_match, !196, !"temac_of_match", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/xilinx/ll_temac_main.c", i32 1639, i32 34}
!197 = !{i32 1, !"wchar_size", i32 2}
!198 = !{i32 1, !"min_enum_size", i32 4}
!199 = !{i32 8, !"branch-target-enforcement", i32 0}
!200 = !{i32 8, !"sign-return-address", i32 0}
!201 = !{i32 8, !"sign-return-address-all", i32 0}
!202 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!203 = !{i32 7, !"uwtable", i32 1}
!204 = !{i32 7, !"frame-pointer", i32 2}
!205 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!206 = !{!"branch_weights", i32 2000, i32 1}
!207 = !{i64 2157739408}
!208 = !{i64 2157739250}
!209 = !{!"branch_weights", i32 1, i32 2000}
!210 = !{i8 0, i8 2}
!211 = !{i64 2148800590, i64 2148800595, i64 2148800608, i64 2148800652, i64 2148800686, i64 2148800707}
!212 = !{i64 6095058}
!213 = !{i64 2153635407}
!214 = !{i64 2153636762}
!215 = !{i64 6094640}
!216 = !{i64 2157738350}
!217 = !{i64 2157738593}
!218 = !{i64 2157743333}
!219 = !{i64 2157743594}
!220 = !{i64 2157773439}
!221 = !{i64 2157773701}
!222 = !{i64 2157776015}
!223 = !{i64 2157745319}
!224 = !{i64 2157772507}
!225 = !{i64 2157772972}
!226 = !{i64 2157773179}
