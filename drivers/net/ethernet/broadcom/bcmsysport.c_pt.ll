; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/bcmsysport.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bcmsysport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bcm_sysport_stats = type { [32 x i8], i32, i32, i32, i16 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.bcm_sysport_hw_params = type { i8, i32 }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.165, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.165 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.bcm_sysport_priv = type { ptr, i32, i32, i32, i32, i8, i32, [100 x i8], %struct.napi_struct, ptr, ptr, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, %struct.bcm_sysport_net_dim, i32, i32, ptr, i32, i32, i32, i32, i8, i16, i32, [6 x i8], i8, ptr, ptr, %struct.bcm_sysport_mib, i32, [1 x i32], [8 x i32], %struct.bcm_sysport_stats64, %struct.u64_stats_sync, %struct.notifier_block, i32, [96 x ptr], [112 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.bcm_sysport_net_dim = type { i16, i16, i32, i32, %struct.dim }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.bcm_sysport_mib = type { %struct.bcm_sysport_rx_counters, %struct.bcm_sysport_tx_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcm_sysport_rx_counters = type { %struct.bcm_sysport_pkt_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcm_sysport_pkt_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcm_sysport_tx_counters = type { %struct.bcm_sysport_pkt_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcm_sysport_stats64 = type { i64, i64, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.dsa_port = type { %union.anon.151, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.151 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.140 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.140 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.bcm_sysport_tx_ring = type { %struct.spinlock, %struct.napi_struct, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i8 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.149, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.149 = type { i32 }
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.anon.60 = type { i16, i16 }
%struct.bcm_tsb = type { i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.bcm_sysport_cb = type { ptr, ptr, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_bcmsysport__520_2899_bcm_sysport_driver_init6 = internal global ptr @bcm_sysport_driver_init, section ".initcall6.init", align 4
@bcm_sysport_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm_sysport_probe, ptr @bcm_sysport_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_sysport_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_sysport_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm_sysport_driver_exit = internal global ptr @bcm_sysport_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author521 = internal constant [39 x i8] c"bcmsysport.author=Broadcom Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description522 = internal constant [64 x i8] c"bcmsysport.description=Broadcom System Port Ethernet MAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias523 = internal constant [42 x i8] c"bcmsysport.alias=platform:brcm-systemport\00", section ".modinfo", align 1
@__UNIQUE_ID_file524 = internal constant [57 x i8] c"bcmsysport.file=drivers/net/ethernet/broadcom/bcmsysport\00", section ".modinfo", align 1
@__UNIQUE_ID_license525 = internal constant [23 x i8] c"bcmsysport.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcm-systemport\00", [16 x i8] zeroinitializer }, align 32
@bcm_sysport_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,systemportlite-v1.00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @bcm_sysport_params, i64 8) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,systemport-v1.00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_sysport_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,systemport\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_sysport_params }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@bcm_sysport_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bcm_sysport_suspend, ptr @bcm_sysport_resume, ptr @bcm_sysport_suspend, ptr @bcm_sysport_resume, ptr @bcm_sysport_suspend, ptr @bcm_sysport_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bcm_sysport_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2479, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to set DMA mask: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm_sysport_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/broadcom/bcmsysport.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm_sysport_probe._entry_ptr = internal global ptr @bcm_sysport_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"systemport,num-txq\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"systemport,num-rxq\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sw_sysport\00", [21 x i8] zeroinitializer }, align 32
@bcm_sysport_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 2553, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register fixed PHY\0A\00", [34 x i8] zeroinitializer }, align 32
@bcm_sysport_probe._entry_ptr.11 = internal global ptr @bcm_sysport_probe._entry.9, section ".printk_index", align 4
@bcm_sysport_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 2563, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"using random Ethernet MAC\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcm_sysport_probe._entry_ptr.15 = internal global ptr @bcm_sysport_probe._entry.12, section ".printk_index", align 4
@bcm_sysport_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 563, i32 0, ptr @bcm_sysport_get_drvinfo, ptr null, ptr null, ptr @bcm_sysport_get_wol, ptr @bcm_sysport_set_wol, ptr @bcm_sysport_get_msglvl, ptr @bcm_sysport_set_msglvl, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @bcm_sysport_get_coalesce, ptr @bcm_sysport_set_coalesce, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_sysport_get_strings, ptr null, ptr @bcm_sysport_get_stats, ptr null, ptr null, ptr null, ptr null, ptr @bcm_sysport_get_sset_count, ptr @bcm_sysport_get_rxnfc, ptr @bcm_sysport_set_rxnfc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@bcm_sysport_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @bcm_sysport_open, ptr @bcm_sysport_stop, ptr @bcm_sysport_xmit, ptr null, ptr @bcm_sysport_select_queue, ptr null, ptr @bcm_sysport_set_rx_mode, ptr @bcm_sysport_change_mac, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_sysport_tx_timeout, ptr @bcm_sysport_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_sysport_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_sysport_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sw_sysportwol\00", [18 x i8] zeroinitializer }, align 32
@bcm_sysport_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&priv->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@bcm_sysport_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 2605, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register DSA notifier\0A\00", [63 x i8] zeroinitializer }, align 32
@bcm_sysport_probe._entry_ptr.20 = internal global ptr @bcm_sysport_probe._entry.18, section ".printk_index", align 4
@bcm_sysport_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 2611, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register net_device\0A\00", [33 x i8] zeroinitializer }, align 32
@bcm_sysport_probe._entry_ptr.23 = internal global ptr @bcm_sysport_probe._entry.21, section ".printk_index", align 4
@bcm_sysport_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 2623, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Broadcom SYSTEMPORT%s v%2x.%02x (irqs: %d, %d, TXQs: %d, RXQs: %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bcm_sysport_probe._entry_ptr.27 = internal global ptr @bcm_sysport_probe._entry.24, section ".printk_index", align 4
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" Lite\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bcmsysport\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"platform\00", [23 x i8] zeroinitializer }, align 32
@bcm_sysport_gstrings_stats = internal constant { [80 x %struct.bcm_sysport_stats], [960 x i8] } { [80 x %struct.bcm_sysport_stats] [%struct.bcm_sysport_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 0, i32 0, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 16, i32 0, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 8, i32 0, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 24, i32 0, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16, i32 -1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 20, i32 -1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 24, i32 -1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 28, i32 -1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 32, i32 -1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_64_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 636, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_65_127_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 640, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_128_255_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 644, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_256_511_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 648, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_512_1023_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 652, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_1024_1518_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 656, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_vlan_1519_1522_oct\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 660, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_1522_2047_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 664, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_2048_4095_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 668, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_4096_9216_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 672, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 676, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 680, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 684, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 688, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_fcs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 692, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 696, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 700, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_unknown\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 704, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_align\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 708, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_outrange\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 712, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_code\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 716, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_carrier\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 720, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_oversize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 724, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 728, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_mtu_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 732, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_good_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 736, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 740, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_ppp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 744, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_crc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 748, i32 1, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_64_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 752, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_65_127_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 756, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_128_255_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 760, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_256_511_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 764, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_512_1023_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 768, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_1024_1518_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 772, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_vlan_1519_1522_oct\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 776, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_1522_2047_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 780, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_2048_4095_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 784, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_4096_9216_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 788, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 792, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 796, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 800, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 804, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 808, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_fcs_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 812, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_oversize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 816, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_defer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 820, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_excess_defer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 824, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_single_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 828, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_multi_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 832, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_late_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 836, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_excess_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 840, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_frags\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 844, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_total_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 848, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 852, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 856, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_good_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 860, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 864, i32 2, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_runt_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 868, i32 3, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_runt_valid_fcs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 872, i32 3, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_runt_inval_fcs_align\00\00\00\00\00\00\00\00\00", i32 4, i32 876, i32 3, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_runt_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 880, i32 3, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rxchk_bad_csum\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 884, i32 4, i16 76 }, %struct.bcm_sysport_stats { [32 x i8] c"rxchk_other_pkt_disc\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 888, i32 4, i16 80 }, %struct.bcm_sysport_stats { [32 x i8] c"rbuf_ovflow_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 892, i32 5, i16 12 }, %struct.bcm_sysport_stats { [32 x i8] c"rbuf_err_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 896, i32 5, i16 16 }, %struct.bcm_sysport_stats { [32 x i8] c"alloc_rx_buff_failed\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 900, i32 6, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"rx_dma_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 904, i32 6, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_dma_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 908, i32 6, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_realloc_tsb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 912, i32 6, i16 0 }, %struct.bcm_sysport_stats { [32 x i8] c"tx_realloc_tsb_failed\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 916, i32 6, i16 0 }], [960 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"txq%d_packets\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"txq%d_bytes\00", [20 x i8] zeroinitializer }, align 32
@bcm_sysport_update_mib_counters.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bcm_sysport_update_mib_counters\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"updated MIB counters\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not attach to PHY\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to request RX interrupt\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to request TX interrupt\0A\00", [32 x i8] zeroinitializer }, align 32
@bcm_sysport_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&priv->desc_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize TX ring %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to initialize RX ring\0A\00", [34 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spurious RX interrupt\0A\00", [41 x i8] zeroinitializer }, align 32
@__bcm_sysport_tx_reclaim.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 -25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__bcm_sysport_tx_reclaim\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ring=%d old_c_index=%u c_index=%u txbds_ready=%u\0A\00", [46 x i8] zeroinitializer }, align 32
@__bcm_sysport_tx_reclaim.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.43, ptr @.str.3, ptr @.str.45, i8 0, i8 -19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ring=%d c_index=%d pkts_compl=%d, bytes_compl=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spurious TX interrupt\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CB allocation failed\0A\00", [42 x i8] zeroinitializer }, align 32
@bcm_sysport_init_tx_ring.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ring->lock\00", [20 x i8] zeroinitializer }, align 32
@bcm_sysport_init_tx_ring.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 1, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcm_sysport_init_tx_ring\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"TDMA cfg, size=%d, switch q=%d,port=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SKB allocation failed\0A\00", [41 x i8] zeroinitializer }, align 32
@bcm_sysport_init_rx_ring.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 1, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcm_sysport_init_rx_ring\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"RDMA cfg, num_rx_bds=%d, rx_bds=%p\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SKB alloc failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DMA mapping failure\0A\00", [43 x i8] zeroinitializer }, align 32
@bcm_sysport_rx_refill.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 0, i8 -76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bcm_sysport_rx_refill\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RX refill\0A\00", [21 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"timeout waiting for RDMA to finish\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"timeout waiting for TDMA to finish\0A\00", [60 x i8] zeroinitializer }, align 32
@bcm_sysport_init_dim.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&dim->dim.work)\00", [62 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RDMA not stopped!\0A\00", [45 x i8] zeroinitializer }, align 32
@bcm_sysport_fini_rx_ring.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 1, i8 -74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcm_sysport_fini_rx_ring\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RDMA fini done\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TDMA not stopped!\0A\00", [45 x i8] zeroinitializer }, align 32
@bcm_sysport_fini_tx_ring.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.68, ptr @.str.3, ptr @.str.69, i8 1, i8 -107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcm_sysport_fini_tx_ring\00", [39 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TDMA fini done\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"timeout disabling RDMA\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"timeout disabling TDMA\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"queue %d awake and ring full!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DMA map failed at %p (len=%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@bcm_sysport_xmit.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.74, ptr @.str.3, ptr @.str.75, i8 1, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcm_sysport_xmit\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ring=%d desc_count=%d, curr_desc=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"transmit timeout!\0A\00", [45 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bcm_sysport_desc_rx.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.77, ptr @.str.3, ptr @.str.78, i8 0, i8 -63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcm_sysport_desc_rx\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"p_index=%d rx_c_index=%d to_process=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"out of memory!\0A\00", [16 x i8] zeroinitializer }, align 32
@bcm_sysport_desc_rx.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.77, ptr @.str.3, ptr @.str.80, i8 0, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"p=%d, c=%d, rd_ptr=%d, len=%d, flag=0x%04x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"oversized packet\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fragmented packet!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"error packet\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"asymmetric number of per-port queues\0A\00", [58 x i8] zeroinitializer }, align 32
@bcm_sysport_params = internal constant { [2 x %struct.bcm_sysport_hw_params], [16 x i8] } { [2 x %struct.bcm_sysport_hw_params] [%struct.bcm_sysport_hw_params { i8 0, i32 1024 }, %struct.bcm_sysport_hw_params { i8 1, i32 256 }], [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RDMA timeout!\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TDMA timeout!\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to enter WOL mode\0A\00", [38 x i8] zeroinitializer }, align 32
@bcm_sysport_suspend_to_wol.__UNIQUE_ID_ddebug519 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.88, ptr @.str.3, ptr @.str.89, i8 2, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bcm_sysport_suspend_to_wol\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"entered WOL mode\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to enable RDMA\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Wake-on-LAN (MPD) interrupt!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Wake-on-LAN (filters 0x%02x) interrupt!\0A\00", [55 x i8] zeroinitializer }, align 32
@bcm_sysport_resume_from_wol.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.93, ptr @.str.3, ptr @.str.94, i8 1, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bcm_sysport_resume_from_wol\00", [36 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"resumed from WOL\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4, i64 5, i64 6, i64 4294967295]
@__sancov_gen_cov_switch_values.95 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4, i64 5, i64 6, i64 4294967295]
@__sancov_gen_cov_switch_values.96 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4, i64 5, i64 6, i64 4294967295]
@__sancov_gen_cov_switch_values.97 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4, i64 5, i64 6, i64 4294967295]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 49, i64 50]
@__sancov_gen_cov_switch_values.99 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 4294967295]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 32, i64 100, i64 1000, i64 2500]
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"bcm_sysport_driver\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2890, i32 31 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2894, i32 11 }
@___asan_gen_.109 = private unnamed_addr constant [21 x i8] c"bcm_sysport_of_match\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2449, i32 34 }
@___asan_gen_.112 = private unnamed_addr constant [19 x i8] c"bcm_sysport_pm_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2887, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2479, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2487, i32 31 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2489, i32 31 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2503, i32 48 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2553, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2563, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [24 x i8] c"bcm_sysport_ethtool_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2263, i32 33 }
@___asan_gen_.160 = private unnamed_addr constant [23 x i8] c"bcm_sysport_netdev_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2306, i32 36 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2587, i32 52 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2599, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2605, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2611, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2618, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 311, i32 24 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 312, i32 26 }
@___asan_gen_.205 = private unnamed_addr constant [27 x i8] c"bcm_sysport_gstrings_stats\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 215, i32 39 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 387, i32 31 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 392, i32 31 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 446, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1989, i32 19 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2004, i32 19 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2012, i32 20 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2018, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2022, i32 20 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2034, i32 19 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1139, i32 29 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 922, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 946, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 271, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1190, i32 29 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1513, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1518, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1584, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1704, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1725, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 697, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 706, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 721, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 326, i32 6 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1645, i32 27 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1673, i32 27 }
@___asan_gen_.307 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1475, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1741, i32 29 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1755, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1601, i32 29 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1620, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2102, i32 19 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2111, i32 19 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1329, i32 19 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1348, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1385, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1396, i32 19 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 773, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 788, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 800, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 806, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 814, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 822, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2352, i32 26 }
@___asan_gen_.376 = private unnamed_addr constant [19 x i8] c"bcm_sysport_params\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2438, i32 43 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2746, i32 19 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2763, i32 19 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2712, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2719, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 2839, i32 19 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1100, i32 29 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1106, i32 8 }
@___asan_gen_.406 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.407 = private constant [46 x i8] c"../drivers/net/ethernet/broadcom/bcmsysport.c\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1109, i32 2 }
@llvm.compiler.used = appending global [116 x ptr] [ptr @__UNIQUE_ID_alias523, ptr @__UNIQUE_ID_author521, ptr @__UNIQUE_ID_description522, ptr @__UNIQUE_ID_file524, ptr @__UNIQUE_ID_license525, ptr @__exitcall_bcm_sysport_driver_exit, ptr @__initcall__kmod_bcmsysport__520_2899_bcm_sysport_driver_init6, ptr @bcm_sysport_driver_exit, ptr @bcm_sysport_probe._entry, ptr @bcm_sysport_probe._entry.12, ptr @bcm_sysport_probe._entry.18, ptr @bcm_sysport_probe._entry.21, ptr @bcm_sysport_probe._entry.24, ptr @bcm_sysport_probe._entry.9, ptr @bcm_sysport_probe._entry_ptr, ptr @bcm_sysport_probe._entry_ptr.11, ptr @bcm_sysport_probe._entry_ptr.15, ptr @bcm_sysport_probe._entry_ptr.20, ptr @bcm_sysport_probe._entry_ptr.23, ptr @bcm_sysport_probe._entry_ptr.27, ptr @bcm_sysport_driver, ptr @.str, ptr @bcm_sysport_of_match, ptr @bcm_sysport_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @bcm_sysport_ethtool_ops, ptr @bcm_sysport_netdev_ops, ptr @.str.16, ptr @bcm_sysport_probe.__key, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @bcm_sysport_gstrings_stats, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @bcm_sysport_open.__key, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @bcm_sysport_init_tx_ring.__key, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @bcm_sysport_init_dim.__key, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @bcm_sysport_params, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sysport_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sysport_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sysport_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sysport_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sysport_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sysport_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sysport_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sysport_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sysport_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sysport_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sysport_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sysport_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sysport_gstrings_stats to i32), i32 3840, i32 4800, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sysport_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sysport_init_tx_ring.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sysport_init_dim.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sysport_params to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_sysport_driver, ptr noundef null) #18
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sysport_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_sysport_driver) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %txq = alloca i32, align 4
  %rxq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txq) #18
  %0 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %txq, align 4, !annotation !217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rxq) #18
  %1 = ptrtoint ptr %rxq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rxq, align 4, !annotation !217
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @bcm_sysport_of_match, ptr noundef %3) #18
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 1099511627775) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end.if.end13_crit_edge, label %if.then6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

if.then6:                                         ; preds = %if.end
  %call.i283 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i283)
  %cmp.i284 = icmp eq i32 %call.i283, 0
  br i1 %cmp.i284, label %if.then6.if.end13_crit_edge, label %do.end

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %call.i283) #21
  br label %cleanup

if.end13:                                         ; preds = %if.then6.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %.sink = phi i64 [ 1099511627775, %if.end.if.end13_crit_edge ], [ 4294967295, %if.then6.if.end13_crit_edge ]
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef %.sink) #18
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull %txq, i32 noundef 1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool16.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool16.not, label %if.end13.if.end18_crit_edge, label %if.then17

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  %8 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %txq, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13.if.end18_crit_edge
  %call.i.i288 = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef nonnull %rxq, i32 noundef 1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i288)
  %tobool20.not = icmp sgt i32 %call.i.i288, -1
  br i1 %tobool20.not, label %if.end18.if.end22_crit_edge, label %if.then21

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %rxq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %rxq, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18.if.end22_crit_edge
  %10 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %txq, align 4
  %12 = add i32 %11, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %12)
  %13 = icmp ult i32 %12, -32
  br i1 %13, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %14 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rxq, align 4
  %call27 = call ptr @alloc_etherdev_mqs(i32 noundef 1536, i32 noundef %11, i32 noundef %15) #18
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %if.end30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %add.ptr.i = getelementptr i8, ptr %call27, i32 2304
  %call33 = call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.8) #18
  %clk = getelementptr i8, ptr %call27, i32 2932
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call33, ptr %clk, align 4
  %cmp.i289 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i289, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  %17 = ptrtoint ptr %call33 to i32
  br label %err_free_netdev

if.end39:                                         ; preds = %if.end30
  %18 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %txq, align 4
  %20 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %19, i32 328) #18
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !218

devm_kcalloc.exit.thread:                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #20
  %tx_rings296 = getelementptr i8, ptr %call27, i32 2720
  %22 = ptrtoint ptr %tx_rings296 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %tx_rings296, align 32
  br label %err_free_netdev

devm_kcalloc.exit:                                ; preds = %if.end39
  %23 = extractvalue { i32, i1 } %20, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %23, i32 noundef 3520) #18
  %tx_rings = getelementptr i8, ptr %call27, i32 2720
  %24 = ptrtoint ptr %tx_rings to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i.i, ptr %tx_rings, align 32
  %tobool43.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool43.not, label %devm_kcalloc.exit.err_free_netdev_crit_edge, label %if.end45

devm_kcalloc.exit.err_free_netdev_crit_edge:      ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_free_netdev

if.end45:                                         ; preds = %devm_kcalloc.exit
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %7, align 4, !range !219
  %is_lite47 = getelementptr i8, ptr %call27, i32 2324
  %27 = ptrtoint ptr %is_lite47 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %is_lite47, align 4
  %num_rx_desc_words = getelementptr inbounds %struct.bcm_sysport_hw_params, ptr %7, i32 0, i32 1
  %28 = ptrtoint ptr %num_rx_desc_words to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_rx_desc_words, align 4
  %num_rx_desc_words48 = getelementptr i8, ptr %call27, i32 2328
  %30 = ptrtoint ptr %num_rx_desc_words48 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %num_rx_desc_words48, align 8
  %call49 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #18
  %irq0 = getelementptr i8, ptr %call27, i32 2664
  %31 = ptrtoint ptr %irq0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call49, ptr %irq0, align 8
  %32 = ptrtoint ptr %is_lite47 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_lite47, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool51.not = icmp eq i8 %33, 0
  %call53 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #18
  br i1 %tobool51.not, label %if.then52, label %if.end45.if.end57_crit_edge

if.end45.if.end57_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end57

if.then52:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #20
  %irq1 = getelementptr i8, ptr %call27, i32 2668
  %34 = ptrtoint ptr %irq1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call53, ptr %irq1, align 4
  %call54 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 2) #18
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %if.end45.if.end57_crit_edge
  %call55.sink = phi i32 [ %call54, %if.then52 ], [ %call53, %if.end45.if.end57_crit_edge ]
  %35 = getelementptr i8, ptr %call27, i32 2672
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call55.sink, ptr %35, align 16
  %37 = ptrtoint ptr %irq0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp59 = icmp slt i32 %38, 1
  br i1 %cmp59, label %if.end57.err_free_netdev_crit_edge, label %lor.lhs.false60

if.end57.err_free_netdev_crit_edge:               ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_free_netdev

lor.lhs.false60:                                  ; preds = %if.end57
  %irq161 = getelementptr i8, ptr %call27, i32 2668
  %39 = ptrtoint ptr %irq161 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp62 = icmp slt i32 %40, 1
  br i1 %cmp62, label %land.lhs.true, label %lor.lhs.false60.if.end66_crit_edge

lor.lhs.false60.if.end66_crit_edge:               ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end66

land.lhs.true:                                    ; preds = %lor.lhs.false60
  %41 = ptrtoint ptr %is_lite47 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_lite47, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool64.not = icmp eq i8 %42, 0
  br i1 %tobool64.not, label %land.lhs.true.err_free_netdev_crit_edge, label %land.lhs.true.if.end66_crit_edge

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end66

land.lhs.true.err_free_netdev_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_free_netdev

if.end66:                                         ; preds = %land.lhs.true.if.end66_crit_edge, %lor.lhs.false60.if.end66_crit_edge
  %call67 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #18
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call67, ptr %add.ptr.i, align 128
  %cmp.i290 = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i290, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #20
  %44 = ptrtoint ptr %call67 to i32
  br label %err_free_netdev

if.end73:                                         ; preds = %if.end66
  %netdev = getelementptr i8, ptr %call27, i32 2656
  %45 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call27, ptr %netdev, align 32
  %pdev74 = getelementptr i8, ptr %call27, i32 2660
  %46 = ptrtoint ptr %pdev74 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %pdev, ptr %pdev74, align 4
  %phy_interface = getelementptr i8, ptr %call27, i32 2900
  %call75 = call i32 @of_get_phy_mode(ptr noundef %3, ptr noundef %phy_interface) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end73.if.end79_crit_edge, label %if.then77

if.end73.if.end79_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end79

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #20
  %47 = ptrtoint ptr %phy_interface to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3, ptr %phy_interface, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end73.if.end79_crit_edge
  %call80 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %3) #18
  br i1 %call80, label %if.then81, label %if.end79.if.end90_crit_edge

if.end79.if.end90_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end90

if.then81:                                        ; preds = %if.end79
  %call82 = call i32 @of_phy_register_fixed_link(ptr noundef %3) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end89, label %do.end87

do.end87:                                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #21
  br label %err_free_netdev

if.end89:                                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #20
  %phy_dn = getelementptr i8, ptr %call27, i32 2896
  %48 = ptrtoint ptr %phy_dn to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %3, ptr %phy_dn, align 16
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.end79.if.end90_crit_edge
  %call91 = call i32 @of_get_ethdev_address(ptr noundef %3, ptr noundef nonnull %call27) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end90.if.end98_crit_edge, label %do.end96

if.end90.if.end98_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end98

do.end96:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.13) #21
  call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call27)
  br label %if.end98

if.end98:                                         ; preds = %do.end96, %if.end90.if.end98_crit_edge
  %parent = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 133, i32 1
  %49 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dev1, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %50 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call27, ptr %driver_data.i, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 44
  %51 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @bcm_sysport_ethtool_ops, ptr %ethtool_ops, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 16
  %52 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @bcm_sysport_netdev_ops, ptr %netdev_ops, align 8
  %napi = getelementptr i8, ptr %call27, i32 2432
  call void @netif_napi_add(ptr noundef nonnull %call27, ptr noundef %napi, ptr noundef nonnull @bcm_sysport_poll, i32 noundef 64) #18
  %features = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 23
  %53 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %features, align 16
  %or = or i64 %54, 1099511627954
  store i64 %or, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 24
  %55 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %hw_features, align 8
  %or103 = or i64 %56, %or
  store i64 %or103, ptr %hw_features, align 8
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 26
  %57 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %vlan_features, align 8
  %or105 = or i64 %58, %or
  store i64 %or105, ptr %vlan_features, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 31
  %59 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1536, ptr %max_mtu, align 4
  %wol_irq_disabled = getelementptr i8, ptr %call27, i32 2930
  %60 = ptrtoint ptr %wol_irq_disabled to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load = load i8, ptr %wol_irq_disabled, align 2
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %wol_irq_disabled, align 2
  %61 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %35, align 16
  %call.i291 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %62, ptr noundef nonnull @bcm_sysport_wol_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call27, ptr noundef %add.ptr.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i291)
  %tobool109.not = icmp eq i32 %call.i291, 0
  br i1 %tobool109.not, label %if.then110, label %if.end98.if.end112_crit_edge

if.end98.if.end112_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end112

if.then110:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #20
  call void @device_set_wakeup_capable(ptr noundef %dev1, i1 noundef zeroext true) #18
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.end98.if.end112_crit_edge
  %call114 = call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.16) #18
  %wol_clk = getelementptr i8, ptr %call27, i32 2936
  %63 = ptrtoint ptr %wol_clk to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call114, ptr %wol_clk, align 8
  %cmp.i292 = icmp ugt ptr %call114, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i292, label %if.then117, label %do.end123

if.then117:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #20
  %64 = ptrtoint ptr %call114 to i32
  br label %cleanup

do.end123:                                        ; preds = %if.end112
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 21
  %65 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %needed_headroom, align 8
  %add = add i16 %66, 8
  store i16 %add, ptr %needed_headroom, align 8
  call void @netif_carrier_off(ptr noundef nonnull %call27) #18
  %rx_max_coalesced_frames = getelementptr i8, ptr %call27, i32 2888
  %67 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %rx_max_coalesced_frames, align 8
  %syncp = getelementptr i8, ptr %call27, i32 3296
  %dep_map.i = getelementptr i8, ptr %call27, i32 3300
  call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @bcm_sysport_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %68 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %syncp, align 4
  %netdev_notifier = getelementptr i8, ptr %call27, i32 3328
  %69 = ptrtoint ptr %netdev_notifier to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @bcm_sysport_netdevice_event, ptr %netdev_notifier, align 128
  %call129 = call i32 @register_netdevice_notifier(ptr noundef %netdev_notifier) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end136, label %do.end134

do.end134:                                        ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #21
  br label %err_deregister_fixed_link

if.end136:                                        ; preds = %do.end123
  %call137 = call i32 @register_netdev(ptr noundef nonnull %call27) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end144, label %do.end142

do.end142:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #21
  %call166 = call i32 @unregister_netdevice_notifier(ptr noundef %netdev_notifier) #18
  br label %err_deregister_fixed_link

if.end144:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #20
  %70 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %clk, align 4
  %call146 = call fastcc i32 @clk_prepare_enable(ptr noundef %71)
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.i, align 128
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #18, !srcloc !220
  %75 = call i32 @llvm.bswap.i32(i32 %74) #18
  %conv148 = trunc i32 %75 to i16
  %rev = getelementptr i8, ptr %call27, i32 2918
  %76 = ptrtoint ptr %rev to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv148, ptr %rev, align 2
  %77 = ptrtoint ptr %is_lite47 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %is_lite47, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool154.not = icmp eq i8 %78, 0
  %cond = select i1 %tobool154.not, ptr @.str.29, ptr @.str.28
  %79 = lshr i32 %75, 8
  %and158 = and i32 %79, 255
  %and161 = and i32 %75, 255
  %80 = ptrtoint ptr %irq0 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %irq0, align 8
  %82 = ptrtoint ptr %irq161 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %irq161, align 4
  %84 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %txq, align 4
  %86 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rxq, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond, i32 noundef %and158, i32 noundef %and161, i32 noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef %87) #21
  %88 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %89) #18
  call void @clk_unprepare(ptr noundef %89) #18
  br label %cleanup

err_deregister_fixed_link:                        ; preds = %do.end142, %do.end134
  %ret.1 = phi i32 [ %call129, %do.end134 ], [ %call137, %do.end142 ]
  %call167 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %3) #18
  br i1 %call167, label %if.then168, label %err_deregister_fixed_link.err_free_netdev_crit_edge

err_deregister_fixed_link.err_free_netdev_crit_edge: ; preds = %err_deregister_fixed_link
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_free_netdev

if.then168:                                       ; preds = %err_deregister_fixed_link
  call void @__sanitizer_cov_trace_pc() #20
  call void @of_phy_deregister_fixed_link(ptr noundef %3) #18
  br label %err_free_netdev

err_free_netdev:                                  ; preds = %if.then168, %err_deregister_fixed_link.err_free_netdev_crit_edge, %do.end87, %if.then70, %land.lhs.true.err_free_netdev_crit_edge, %if.end57.err_free_netdev_crit_edge, %devm_kcalloc.exit.err_free_netdev_crit_edge, %devm_kcalloc.exit.thread, %if.then36
  %ret.2 = phi i32 [ %17, %if.then36 ], [ %44, %if.then70 ], [ %call82, %do.end87 ], [ %ret.1, %if.then168 ], [ %ret.1, %err_deregister_fixed_link.err_free_netdev_crit_edge ], [ -12, %devm_kcalloc.exit.err_free_netdev_crit_edge ], [ -22, %land.lhs.true.err_free_netdev_crit_edge ], [ -22, %if.end57.err_free_netdev_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  call void @free_netdev(ptr noundef nonnull %call27) #18
  br label %cleanup

cleanup:                                          ; preds = %err_free_netdev, %if.end144, %if.then117, %if.end26.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i283, %do.end ], [ %ret.2, %err_free_netdev ], [ %64, %if.then117 ], [ 0, %if.end144 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ -12, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rxq) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txq) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_remove(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %netdev_notifier = getelementptr i8, ptr %1, i32 3328
  %call4 = tail call i32 @unregister_netdevice_notifier(ptr noundef %netdev_notifier) #18
  tail call void @unregister_netdev(ptr noundef %1) #18
  %call5 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %3) #18
  br i1 %call5, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @of_phy_deregister_fixed_link(ptr noundef %3) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @free_netdev(ptr noundef %1) #18
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phy_register_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #18
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #18
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #18
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -128
  %call = tail call fastcc i32 @bcm_sysport_desc_rx(ptr noundef %add.ptr, i32 noundef %budget)
  %rx_c_index = getelementptr i8, ptr %napi, i32 308
  %0 = ptrtoint ptr %rx_c_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_c_index, align 4
  %add = add i32 %1, %call
  %and = and i32 %add, 65535
  store i32 %and, ptr %rx_c_index, align 4
  %is_lite = getelementptr i8, ptr %napi, i32 -108
  %2 = ptrtoint ptr %is_lite to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_lite, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.not = icmp eq i8 %3, 0
  %off.addr.0.i = select i1 %tobool.not.i.not, i32 4124, i32 4128
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %4 = tail call i32 @llvm.bswap.i32(i32 %and) #18
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 128
  %add.ptr.i = getelementptr i8, ptr %6, i32 8192
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %off.addr.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %4) #18, !srcloc !221
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %7 = tail call i32 @llvm.bswap.i32(i32 %add)
  %8 = lshr i32 %7, 16
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 128
  %add.ptr.i37 = getelementptr i8, ptr %10, i32 8192
  %add.ptr1.i38 = getelementptr i8, ptr %add.ptr.i37, i32 %off.addr.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i38, i32 %8) #18, !srcloc !221
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %budget)
  %cmp = icmp ult i32 %call, %budget
  br i1 %cmp, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call5 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %call) #18
  %irq0_mask.i = getelementptr i8, ptr %napi, i32 -120
  %11 = ptrtoint ptr %irq0_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq0_mask.i, align 8
  %and.i = and i32 %12, -33
  store i32 %and.i, ptr %irq0_mask.i, align 8
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 128
  %add.ptr1.i.i = getelementptr i8, ptr %14, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 536870912) #18, !srcloc !221
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %dim = getelementptr i8, ptr %napi, i32 312
  %15 = ptrtoint ptr %dim to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %dim, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool7.not = icmp eq i16 %16, 0
  br i1 %tobool7.not, label %if.end6.if.end15_crit_edge, label %if.then8

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %event_ctr = getelementptr i8, ptr %napi, i32 314
  %17 = ptrtoint ptr %event_ctr to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %event_ctr, align 2
  %packets = getelementptr i8, ptr %napi, i32 316
  %19 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %packets, align 4
  %bytes = getelementptr i8, ptr %napi, i32 320
  %21 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bytes, align 8
  %call.i = tail call i64 @ktime_get() #18
  %dim_sample.sroa.8.16.insert.ext = zext i16 %18 to i64
  %dim_sample.sroa.8.16.insert.shift = shl nuw i64 %dim_sample.sroa.8.16.insert.ext, 48
  %dim14 = getelementptr i8, ptr %napi, i32 328
  %.fca.0.insert = insertvalue [3 x i64] poison, i64 %call.i, 0
  %dim_sample.sroa.5.sroa.5.0.insert.ext = zext i32 %22 to i64
  %dim_sample.sroa.5.sroa.0.0.insert.ext = zext i32 %20 to i64
  %dim_sample.sroa.5.sroa.0.0.insert.shift = shl nuw i64 %dim_sample.sroa.5.sroa.0.0.insert.ext, 32
  %dim_sample.sroa.5.sroa.0.0.insert.insert = or i64 %dim_sample.sroa.5.sroa.0.0.insert.shift, %dim_sample.sroa.5.sroa.5.0.insert.ext
  %.fca.1.insert = insertvalue [3 x i64] %.fca.0.insert, i64 %dim_sample.sroa.5.sroa.0.0.insert.insert, 1
  %.fca.2.insert = insertvalue [3 x i64] %.fca.1.insert, i64 %dim_sample.sroa.8.16.insert.shift, 2
  tail call void @net_dim(ptr noundef %dim14, [3 x i64] %.fca.2.insert) #18
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %if.end6.if.end15_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_wol_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.bcm_sysport_priv, ptr %dev_id, i32 0, i32 10
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void @pm_wakeup_dev_event(ptr noundef %dev, i32 noundef 0, i1 noundef zeroext false) #18
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_netdevice_event(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %netdev = getelementptr i8, ptr %nb, i32 -672
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 32
  %cmp.not = icmp eq ptr %3, %1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %event)
  %cond = icmp eq i32 %event, 21
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev_ops, align 8
  %cmp1.not = icmp eq ptr %5, @bcm_sysport_netdev_ops
  br i1 %cmp1.not, label %if.end3, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %sw.bb
  %upper_dev = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %6 = ptrtoint ptr %upper_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %upper_dev, align 4
  %call4 = tail call zeroext i1 @dsa_slave_dev_check(ptr noundef %7) #18
  br i1 %call4, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %linking = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %8 = ptrtoint ptr %linking to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %linking, align 1, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %10 = ptrtoint ptr %upper_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %upper_dev, align 4
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end6
  %call.i = tail call ptr @dsa_port_from_netdev(ptr noundef %11) #18
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %ds.i = getelementptr inbounds %struct.dsa_port, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ds.i, align 4
  %index.i = getelementptr inbounds %struct.dsa_switch, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i:                                         ; preds = %if.then7
  %index2.i = getelementptr inbounds %struct.dsa_port, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index2.i, align 4
  %is_lite.i = getelementptr i8, ptr %1, i32 2324
  %18 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool3.not.i = icmp eq i8 %19, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %num_tx_queues5.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 104
  %20 = ptrtoint ptr %num_tx_queues5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_tx_queues5.i, align 4
  %div1.i = lshr i32 %21, 1
  %call6.i = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %11, i32 noundef %div1.i) #18
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  %real_num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 105
  %22 = ptrtoint ptr %real_num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %real_num_tx_queues.i, align 8
  %per_port_num_tx_queues.i = getelementptr i8, ptr %1, i32 3340
  %24 = ptrtoint ptr %per_port_num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %per_port_num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool8.not.i = icmp eq i32 %25, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp.not.i = icmp eq i32 %25, %23
  %or.cond.i = select i1 %tobool8.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %if.end7.i.if.end11.i_crit_edge, label %if.then10.i

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.84) #21
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end7.i.if.end11.i_crit_edge
  %26 = ptrtoint ptr %per_port_num_tx_queues.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %per_port_num_tx_queues.i, align 4
  %num_tx_queues13.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %27 = ptrtoint ptr %num_tx_queues13.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_tx_queues13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp143.i = icmp ne i32 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp154.i = icmp ne i32 %23, 0
  %or.cond25.i = select i1 %cmp143.i, i1 %cmp154.i, i1 false
  br i1 %or.cond25.i, label %for.body.lr.ph.i, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end11.i
  %tx_rings.i = getelementptr i8, ptr %1, i32 2720
  %mul.i = mul i32 %23, %17
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %qp.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %qp.1.i, %for.inc.i.for.body.i_crit_edge ]
  %q.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc21.i, %for.inc.i.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %tx_rings.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_rings.i, align 32
  %inspect.i = getelementptr %struct.bcm_sysport_tx_ring, ptr %30, i32 %q.06.i, i32 15
  %31 = ptrtoint ptr %inspect.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %inspect.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool16.not.i = icmp eq i8 %32, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.end18.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.i = getelementptr %struct.bcm_sysport_tx_ring, ptr %30, i32 %q.06.i
  %switch_queue.i = getelementptr %struct.bcm_sysport_tx_ring, ptr %30, i32 %q.06.i, i32 13
  %33 = ptrtoint ptr %switch_queue.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %qp.08.i, ptr %switch_queue.i, align 4
  %switch_port.i = getelementptr %struct.bcm_sysport_tx_ring, ptr %30, i32 %q.06.i, i32 14
  %34 = ptrtoint ptr %switch_port.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %17, ptr %switch_port.i, align 8
  %35 = ptrtoint ptr %inspect.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %inspect.i, align 4
  %add.i = add i32 %qp.08.i, %mul.i
  %arrayidx20.i = getelementptr %struct.bcm_sysport_priv, ptr %add.ptr.i.i, i32 0, i32 44, i32 %add.i
  %36 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx.i, ptr %arrayidx20.i, align 4
  %inc.i = add nuw i32 %qp.08.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end18.i, %for.body.i.for.inc.i_crit_edge
  %qp.1.i = phi i32 [ %qp.08.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.end18.i ]
  %inc21.i = add nuw i32 %q.06.i, 1
  %37 = ptrtoint ptr %num_tx_queues13.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_tx_queues13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21.i, i32 %38)
  %cmp14.i = icmp ult i32 %inc21.i, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %qp.1.i, i32 %23)
  %cmp15.i = icmp ult i32 %qp.1.i, %23
  %or.cond2.i = select i1 %cmp14.i, i1 %cmp15.i, i1 false
  br i1 %or.cond2.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @bcm_sysport_unmap_queues(ptr noundef %1, ptr noundef %11)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %for.inc.i.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 1, %if.end11.i.cleanup_crit_edge ], [ 1, %if.then7.cleanup_crit_edge ], [ 1, %if.else ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @clk_unprepare(ptr noundef %clk) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_phy_deregister_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sysport_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.30, i32 noundef 32) #18
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call2 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef nonnull @.str.31, i32 noundef 32) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bcm_sysport_get_wol(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %wol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 224, ptr %supported, align 4
  %wolopts = getelementptr i8, ptr %dev, i32 2920
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %wolopts, align 8
  %wolopts1 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %3 = ptrtoint ptr %wolopts1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %wolopts1, align 4
  %4 = load i32, ptr %wolopts, align 8
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %sopass = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3
  %sopass3 = getelementptr i8, ptr %dev, i32 2924
  %5 = call ptr @memcpy(ptr %sopass, ptr %sopass3, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_set_wol(ptr nocapture noundef %dev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %dev, i32 2660
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %3 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wolopts, align 4
  %and = and i32 %4, -225
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and6 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end4.if.end11_crit_edge, label %if.then8

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  %sopass = getelementptr i8, ptr %dev, i32 2924
  %sopass9 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3
  %5 = call ptr @memcpy(ptr %sopass, ptr %sopass9, i32 6)
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end4.if.end11_crit_edge
  %6 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wolopts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool13.not = icmp eq i32 %7, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end11
  %call15 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev1, i1 noundef zeroext true) #18
  %wol_irq_disabled = getelementptr i8, ptr %dev, i32 2930
  %8 = ptrtoint ptr %wol_irq_disabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %wol_irq_disabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool16.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool16.not, label %if.then14.if.end19_crit_edge, label %if.then17

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end19

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #20
  %wol_irq = getelementptr i8, ptr %dev, i32 2672
  %9 = ptrtoint ptr %wol_irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wol_irq, align 16
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %10, i32 noundef 1) #18
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then14.if.end19_crit_edge
  %11 = ptrtoint ptr %wol_irq_disabled to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load21 = load i8, ptr %wol_irq_disabled, align 2
  %bf.clear = and i8 %bf.load21, 127
  store i8 %bf.clear, ptr %wol_irq_disabled, align 2
  br label %if.end36

if.else:                                          ; preds = %if.end11
  %call22 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev1, i1 noundef zeroext false) #18
  %wol_irq_disabled23 = getelementptr i8, ptr %dev, i32 2930
  %12 = ptrtoint ptr %wol_irq_disabled23 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load24 = load i8, ptr %wol_irq_disabled23, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load24)
  %tobool27.not = icmp sgt i8 %bf.load24, -1
  br i1 %tobool27.not, label %if.then28, label %if.else.if.end31_crit_edge

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %wol_irq29 = getelementptr i8, ptr %dev, i32 2672
  %13 = ptrtoint ptr %wol_irq29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wol_irq29, align 16
  %call.i55 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #18
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.else.if.end31_crit_edge
  %15 = ptrtoint ptr %wol_irq_disabled23 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load33 = load i8, ptr %wol_irq_disabled23, align 2
  %bf.set35 = or i8 %bf.load33, -128
  store i8 %bf.set35, ptr %wol_irq_disabled23, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.end31, %if.end19
  %16 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wolopts, align 4
  %wolopts38 = getelementptr i8, ptr %dev, i32 2920
  %18 = ptrtoint ptr %wolopts38 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %wolopts38, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -524, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm_sysport_get_msglvl(ptr nocapture noundef readonly %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 3224
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @bcm_sysport_set_msglvl(ptr nocapture noundef writeonly %dev, i32 noundef %enable) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 3224
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %enable, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_get_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i = getelementptr i8, ptr %1, i32 17036
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #18, !srcloc !220
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #18
  %4 = lshr i32 %3, 3
  %mul = and i32 %4, 536862720
  %div = udiv i32 %mul, 1000
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %5 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div, ptr %tx_coalesce_usecs, align 4
  %and = and i32 %3, 2047
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %6 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %tx_max_coalesced_frames, align 4
  %is_lite.i = getelementptr i8, ptr %dev, i32 2324
  %7 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.not = icmp eq i8 %8, 0
  %off.addr.0.i = select i1 %tobool.not.i.not, i32 4144, i32 4148
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i17 = getelementptr i8, ptr %10, i32 8192
  %add.ptr1.i18 = getelementptr i8, ptr %add.ptr.i17, i32 %off.addr.0.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i18) #18, !srcloc !220
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #18
  %13 = lshr i32 %12, 3
  %mul4 = and i32 %13, 536862720
  %div5 = udiv i32 %mul4, 1000
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %14 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div5, ptr %rx_coalesce_usecs, align 4
  %and6 = and i32 %12, 511
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %15 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and6, ptr %rx_max_coalesced_frames, align 4
  %dim = getelementptr i8, ptr %dev, i32 2744
  %16 = ptrtoint ptr %dim to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dim, align 8
  %conv = zext i16 %17 to i32
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %18 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %use_adaptive_rx_coalesce, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_set_coalesce(ptr nocapture noundef %dev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %tmp = alloca %struct.dim_cq_moder, align 2
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %0 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %1)
  %cmp = icmp ugt i32 %1, 2047
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %2 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 524281, i32 %3)
  %cmp1 = icmp ugt i32 %3, 524281
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %4 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %5)
  %cmp3 = icmp ugt i32 %5, 511
  br i1 %cmp3, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %6 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 524281, i32 %7)
  %cmp5 = icmp ugt i32 %7, 524281
  br i1 %cmp5, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7 = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9 = icmp eq i32 %1, 0
  %or.cond = select i1 %cmp7, i1 %cmp9, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %lor.lhs.false10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false10:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12 = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp15 = icmp eq i32 %5, 0
  %or.cond73 = select i1 %cmp12, i1 %cmp15, i1 false
  br i1 %or.cond73, label %lor.lhs.false10.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false10
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %8 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1874.not = icmp eq i32 %9, 0
  br i1 %cmp1874.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tx_rings = getelementptr i8, ptr %dev, i32 2720
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_rings, align 32
  %priv1.i = getelementptr %struct.bcm_sysport_tx_ring, ptr %11, i32 %i.075, i32 10
  %12 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv1.i, align 8
  %index.i = getelementptr %struct.bcm_sysport_tx_ring, ptr %11, i32 %i.075, i32 2
  %14 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i, align 8
  %mul.i = mul i32 %15, 28
  %add2.i = add i32 %mul.i, 652
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 128
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 16384
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %add2.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #18, !srcloc !220
  %19 = lshr i32 %18, 8
  %and.i = and i32 %19, 63488
  %20 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_max_coalesced_frames, align 4
  %or.i = or i32 %and.i, %21
  %22 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_coalesce_usecs, align 4
  %sub.i = mul i32 %23, 8000
  %24 = add i32 %sub.i, 65528
  %shl.i = and i32 %24, -65536
  %or5.i = or i32 %or.i, %shl.i
  %25 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index.i, align 8
  %mul7.i = mul i32 %26, 28
  %add9.i = add i32 %mul7.i, 652
  %27 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #18
  %28 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %13, align 128
  %add.ptr.i18.i = getelementptr i8, ptr %29, i32 16384
  %add.ptr1.i19.i = getelementptr i8, ptr %add.ptr.i18.i, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i19.i, i32 %27) #18, !srcloc !221
  %inc = add nuw i32 %i.075, 1
  %30 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_tx_queues, align 4
  %cmp18 = icmp ult i32 %inc, %31
  br i1 %cmp18, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %32 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_coalesce_usecs, align 4
  %rx_coalesce_usecs20 = getelementptr i8, ptr %dev, i32 2892
  %34 = ptrtoint ptr %rx_coalesce_usecs20 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %rx_coalesce_usecs20, align 4
  %35 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_max_coalesced_frames, align 4
  %rx_max_coalesced_frames22 = getelementptr i8, ptr %dev, i32 2888
  %37 = ptrtoint ptr %rx_max_coalesced_frames22 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %rx_max_coalesced_frames22, align 8
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %38 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not = icmp eq i32 %39, 0
  br i1 %tobool.not, label %for.end.if.end32_crit_edge, label %land.lhs.true25

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

land.lhs.true25:                                  ; preds = %for.end
  %dim = getelementptr i8, ptr %dev, i32 2744
  %40 = ptrtoint ptr %dim to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %dim, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool26.not = icmp eq i16 %41, 0
  br i1 %tobool26.not, label %if.then27, label %land.lhs.true25.if.end32_crit_edge

land.lhs.true25.if.end32_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #18
  %mode = getelementptr i8, ptr %dev, i32 2881
  %42 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %mode, align 1
  call void @net_dim_get_def_rx_moderation(ptr nonnull sret(%struct.dim_cq_moder) align 2 %tmp, i8 noundef zeroext %43) #18
  %44 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %44)
  %moder.sroa.0.0.copyload43 = load i16, ptr %tmp, align 2
  %moder.sroa.5.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 2
  %45 = ptrtoint ptr %moder.sroa.5.0.tmp.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %45)
  %moder.sroa.5.0.copyload44 = load i16, ptr %moder.sroa.5.0.tmp.sroa_idx, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #18
  %conv = zext i16 %moder.sroa.0.0.copyload43 to i32
  %conv31 = zext i16 %moder.sroa.5.0.copyload44 to i32
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %land.lhs.true25.if.end32_crit_edge, %for.end.if.end32_crit_edge
  %usecs.0 = phi i32 [ %33, %land.lhs.true25.if.end32_crit_edge ], [ %conv, %if.then27 ], [ %33, %for.end.if.end32_crit_edge ]
  %pkts.0 = phi i32 [ %36, %land.lhs.true25.if.end32_crit_edge ], [ %conv31, %if.then27 ], [ %36, %for.end.if.end32_crit_edge ]
  %46 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  %conv34 = trunc i32 %47 to i16
  %dim35 = getelementptr i8, ptr %dev, i32 2744
  %48 = ptrtoint ptr %dim35 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv34, ptr %dim35, align 8
  %is_lite.i.i = getelementptr i8, ptr %dev, i32 2324
  %49 = ptrtoint ptr %is_lite.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %is_lite.i.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i.not.i = icmp eq i8 %50, 0
  %off.addr.0.i.i = select i1 %tobool.not.i.not.i, i32 4144, i32 4148
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i.i67 = getelementptr i8, ptr %52, i32 8192
  %add.ptr1.i.i68 = getelementptr i8, ptr %add.ptr.i.i67, i32 %off.addr.0.i.i
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i68) #18, !srcloc !220
  %54 = lshr i32 %53, 8
  %and.i69 = and i32 %54, 65024
  %sub.i70 = mul i32 %usecs.0, 8000
  %55 = add i32 %sub.i70, 65528
  %shl.i71 = and i32 %55, -65536
  %or.i72 = or i32 %shl.i71, %pkts.0
  %or1.i = or i32 %or.i72, %and.i69
  %56 = ptrtoint ptr %is_lite.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %is_lite.i.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i8.not.i = icmp eq i8 %57, 0
  %off.addr.0.i9.i = select i1 %tobool.not.i8.not.i, i32 4144, i32 4148
  %58 = call i32 @llvm.bswap.i32(i32 %or1.i) #18
  %59 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i10.i = getelementptr i8, ptr %60, i32 8192
  %add.ptr1.i11.i = getelementptr i8, ptr %add.ptr.i10.i, i32 %off.addr.0.i9.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i11.i, i32 %58) #18, !srcloc !221
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %lor.lhs.false10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sysport_get_strings(ptr nocapture noundef readonly %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #7 align 64 {
entry:
  %buf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #18
  %0 = call ptr @memset(ptr %buf, i32 255, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %for.cond.preheader, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

for.cond.preheader:                               ; preds = %entry
  %is_lite = getelementptr i8, ptr %dev, i32 2324
  br label %for.body

for.cond3.preheader:                              ; preds = %for.inc
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %1 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp442.not = icmp eq i32 %2, 0
  br i1 %cmp442.not, label %for.cond3.preheader.sw.epilog_crit_edge, label %for.cond3.preheader.for.body5_crit_edge

for.cond3.preheader.for.body5_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body5

for.cond3.preheader.sw.epilog_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %j.040 = phi i32 [ 0, %for.cond.preheader ], [ %j.1, %for.inc.for.body_crit_edge ]
  %i.037 = phi i32 [ 0, %for.cond.preheader ], [ %inc2, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %i.037
  %3 = ptrtoint ptr %is_lite to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_lite, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %type = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %i.037, i32 3
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %land.lhs.true.for.inc_crit_edge [
    i32 -1, label %land.lhs.true.if.end_crit_edge
    i32 0, label %land.lhs.true.if.end_crit_edge45
    i32 4, label %land.lhs.true.if.end_crit_edge46
    i32 5, label %land.lhs.true.if.end_crit_edge47
    i32 6, label %land.lhs.true.if.end_crit_edge48
  ]

land.lhs.true.if.end_crit_edge48:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.if.end_crit_edge47:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.if.end_crit_edge46:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.if.end_crit_edge45:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %land.lhs.true.if.end_crit_edge45, %land.lhs.true.if.end_crit_edge46, %land.lhs.true.if.end_crit_edge47, %land.lhs.true.if.end_crit_edge48, %for.body.if.end_crit_edge
  %mul = shl i32 %j.040, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %arrayidx, i32 32)
  %inc = add i32 %j.040, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %land.lhs.true.for.inc_crit_edge
  %j.1 = phi i32 [ %inc, %if.end ], [ %j.040, %land.lhs.true.for.inc_crit_edge ]
  %inc2 = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc2, 80
  br i1 %exitcond.not, label %for.cond3.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.cond3.preheader.for.body5_crit_edge
  %j.244 = phi i32 [ %inc17, %for.body5.for.body5_crit_edge ], [ %j.1, %for.cond3.preheader.for.body5_crit_edge ]
  %i.143 = phi i32 [ %inc19, %for.body5.for.body5_crit_edge ], [ 0, %for.cond3.preheader.for.body5_crit_edge ]
  %call7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 128, ptr noundef nonnull @.str.32, i32 noundef %i.143)
  %mul8 = shl i32 %j.244, 5
  %add.ptr9 = getelementptr i8, ptr %data, i32 %mul8
  %9 = call ptr @memcpy(ptr %add.ptr9, ptr %buf, i32 32)
  %call13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 128, ptr noundef nonnull @.str.33, i32 noundef %i.143)
  %mul14 = add i32 %mul8, 32
  %add.ptr15 = getelementptr i8, ptr %data, i32 %mul14
  %10 = call ptr @memcpy(ptr %add.ptr15, ptr %buf, i32 32)
  %inc17 = add i32 %j.244, 2
  %inc19 = add nuw i32 %i.143, 1
  %11 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_tx_queues, align 4
  %cmp4 = icmp ult i32 %inc19, %12
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.sw.epilog_crit_edge

for.body5.sw.epilog_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body5

sw.epilog:                                        ; preds = %for.body5.sw.epilog_crit_edge, %for.cond3.preheader.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sysport_get_stats(ptr noundef %dev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %stats641 = getelementptr i8, ptr %dev, i32 3264
  %syncp2 = getelementptr i8, ptr %dev, i32 3296
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @bcm_sysport_update_mib_counters(ptr noundef %add.ptr.i)
  %netdev.i = getelementptr i8, ptr %dev, i32 2656
  %2 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev.i, align 32
  %num_tx_queues14.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 104
  %4 = ptrtoint ptr %num_tx_queues14.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp15.not.i = icmp eq i32 %5, 0
  br i1 %cmp15.not.i, label %if.then.bcm_sysport_update_tx_stats.exit_crit_edge, label %for.body.lr.ph.i

if.then.bcm_sysport_update_tx_stats.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %bcm_sysport_update_tx_stats.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %tx_rings.i = getelementptr i8, ptr %dev, i32 2720
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tx_bytes.0 = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %do.end.i.for.body.i_crit_edge ]
  %tx_packets.0 = phi i64 [ 0, %for.body.lr.ph.i ], [ %add6.i, %do.end.i.for.body.i_crit_edge ]
  %q.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %do.end.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %tx_rings.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_rings.i, align 32
  %bytes1.i = getelementptr %struct.bcm_sysport_tx_ring, ptr %7, i32 %q.016.i, i32 12
  %packets2.i = getelementptr %struct.bcm_sysport_tx_ring, ptr %7, i32 %q.016.i, i32 11
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.body.i
  %call.i = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp2) #18
  %8 = ptrtoint ptr %bytes1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytes1.i, align 8
  %10 = ptrtoint ptr %packets2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %packets2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !222
  %12 = ptrtoint ptr %syncp2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %syncp2, align 4
  %cmp.i.i.i.i.not.i = icmp eq i32 %13, %call.i
  br i1 %cmp.i.i.i.i.not.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %conv3.i = zext i32 %11 to i64
  %conv.i = zext i32 %9 to i64
  %add.i = add i64 %tx_bytes.0, %conv.i
  %add6.i = add i64 %tx_packets.0, %conv3.i
  %inc.i = add nuw i32 %q.016.i, 1
  %14 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev.i, align 32
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 104
  %16 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %do.end.i.for.body.i_crit_edge, label %do.end.i.bcm_sysport_update_tx_stats.exit_crit_edge

do.end.i.bcm_sysport_update_tx_stats.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bcm_sysport_update_tx_stats.exit

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

bcm_sysport_update_tx_stats.exit:                 ; preds = %do.end.i.bcm_sysport_update_tx_stats.exit_crit_edge, %if.then.bcm_sysport_update_tx_stats.exit_crit_edge
  %tx_bytes.1 = phi i64 [ 0, %if.then.bcm_sysport_update_tx_stats.exit_crit_edge ], [ %add.i, %do.end.i.bcm_sysport_update_tx_stats.exit_crit_edge ]
  %tx_packets.1 = phi i64 [ 0, %if.then.bcm_sysport_update_tx_stats.exit_crit_edge ], [ %add6.i, %do.end.i.bcm_sysport_update_tx_stats.exit_crit_edge ]
  %tx_bytes4 = getelementptr i8, ptr %dev, i32 3288
  %18 = ptrtoint ptr %tx_bytes4 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %tx_bytes.1, ptr %tx_bytes4, align 8
  %tx_packets5 = getelementptr i8, ptr %dev, i32 3280
  %19 = ptrtoint ptr %tx_packets5 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %tx_packets.1, ptr %tx_packets5, align 8
  br label %if.end

if.end:                                           ; preds = %bcm_sysport_update_tx_stats.exit, %entry.if.end_crit_edge
  %stats8 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %is_lite = getelementptr i8, ptr %dev, i32 2324
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end
  %i.093 = phi i32 [ 0, %if.end ], [ %inc31, %cleanup.for.body_crit_edge ]
  %20 = add nsw i32 %i.093, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %20)
  %cmp6 = icmp ult i32 %20, 5
  %21 = and i32 %i.093, 268435452
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp10 = icmp eq i32 %21, 0
  %stats641.call = select i1 %cmp10, ptr %stats641, ptr %add.ptr.i
  %p.0 = select i1 %cmp6, ptr %stats8, ptr %stats641.call
  %22 = ptrtoint ptr %is_lite to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_lite, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %for.body.if.end18_crit_edge, label %land.lhs.true

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

land.lhs.true:                                    ; preds = %for.body
  %type = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %i.093, i32 3
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %25, label %land.lhs.true.cleanup_crit_edge [
    i32 -1, label %land.lhs.true.if.end18_crit_edge
    i32 0, label %land.lhs.true.if.end18_crit_edge106
    i32 4, label %land.lhs.true.if.end18_crit_edge107
    i32 5, label %land.lhs.true.if.end18_crit_edge108
    i32 6, label %land.lhs.true.if.end18_crit_edge109
  ]

land.lhs.true.if.end18_crit_edge109:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

land.lhs.true.if.end18_crit_edge108:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

land.lhs.true.if.end18_crit_edge107:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

land.lhs.true.if.end18_crit_edge106:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge106, %land.lhs.true.if.end18_crit_edge107, %land.lhs.true.if.end18_crit_edge108, %land.lhs.true.if.end18_crit_edge109, %for.body.if.end18_crit_edge
  %stat_offset = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %i.093, i32 2
  %27 = ptrtoint ptr %stat_offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stat_offset, align 4
  %add.ptr = getelementptr i8, ptr %p.0, i32 %28
  br i1 %cmp10, label %do.body.preheader, label %if.else27

do.body.preheader:                                ; preds = %if.end18
  %arrayidx25 = getelementptr i64, ptr %data, i32 %i.093
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %call24 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp2)
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %add.ptr, align 8
  %31 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx25, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !222
  %32 = ptrtoint ptr %syncp2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %syncp2, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %33, %call24
  br i1 %cmp.i.i.i.i.not, label %do.body.cleanup_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.else27:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr, align 4
  %conv = zext i32 %35 to i64
  %arrayidx28 = getelementptr i64, ptr %data, i32 %i.093
  %36 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv, ptr %arrayidx28, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else27, %do.body.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %inc31 = add nuw nsw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc31, 80
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %cleanup
  %37 = ptrtoint ptr %is_lite to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %is_lite, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  br label %for.body.i84

for.body.i84:                                     ; preds = %for.inc.i.for.body.i84_crit_edge, %for.end
  %j.014.i = phi i32 [ 0, %for.end ], [ %j.1.i, %for.inc.i.for.body.i84_crit_edge ]
  %i.011.i = phi i32 [ 0, %for.end ], [ %inc2.i, %for.inc.i.for.body.i84_crit_edge ]
  br i1 %tobool.not.i, label %for.body.i84.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i84.if.end.i_crit_edge:                  ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i84
  %type.i = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %i.011.i, i32 3
  %39 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type.i, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %40, label %land.lhs.true.i.for.inc.i_crit_edge [
    i32 -1, label %land.lhs.true.i.if.end.i_crit_edge
    i32 0, label %land.lhs.true.i.if.end.i_crit_edge110
    i32 4, label %land.lhs.true.i.if.end.i_crit_edge111
    i32 5, label %land.lhs.true.i.if.end.i_crit_edge112
    i32 6, label %land.lhs.true.i.if.end.i_crit_edge113
  ]

land.lhs.true.i.if.end.i_crit_edge113:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.lhs.true.i.if.end.i_crit_edge112:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.lhs.true.i.if.end.i_crit_edge111:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.lhs.true.i.if.end.i_crit_edge110:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge110, %land.lhs.true.i.if.end.i_crit_edge111, %land.lhs.true.i.if.end.i_crit_edge112, %land.lhs.true.i.if.end.i_crit_edge113, %for.body.i84.if.end.i_crit_edge
  %inc.i85 = add i32 %j.014.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %land.lhs.true.i.for.inc.i_crit_edge
  %j.1.i = phi i32 [ %inc.i85, %if.end.i ], [ %j.014.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %inc2.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc2.i, 80
  br i1 %exitcond.not.i, label %bcm_sysport_get_sset_count.exit, label %for.inc.i.for.body.i84_crit_edge

for.inc.i.for.body.i84_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i84

bcm_sysport_get_sset_count.exit:                  ; preds = %for.inc.i
  %num_tx_queues.i86 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %42 = ptrtoint ptr %num_tx_queues.i86 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_tx_queues.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp3598.not = icmp eq i32 %43, 0
  br i1 %cmp3598.not, label %bcm_sysport_get_sset_count.exit.for.end47_crit_edge, label %for.body37.lr.ph

bcm_sysport_get_sset_count.exit.for.end47_crit_edge: ; preds = %bcm_sysport_get_sset_count.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end47

for.body37.lr.ph:                                 ; preds = %bcm_sysport_get_sset_count.exit
  %tx_rings = getelementptr i8, ptr %dev, i32 2720
  br label %for.body37

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %for.body37.lr.ph
  %j.2100 = phi i32 [ %j.1.i, %for.body37.lr.ph ], [ %inc44, %for.body37.for.body37_crit_edge ]
  %i.199 = phi i32 [ 0, %for.body37.lr.ph ], [ %inc46, %for.body37.for.body37_crit_edge ]
  %44 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_rings, align 32
  %packets = getelementptr %struct.bcm_sysport_tx_ring, ptr %45, i32 %i.199, i32 11
  %46 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %packets, align 4
  %conv39 = zext i32 %47 to i64
  %arrayidx40 = getelementptr i64, ptr %data, i32 %j.2100
  %48 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv39, ptr %arrayidx40, align 8
  %inc41 = add i32 %j.2100, 1
  %bytes = getelementptr %struct.bcm_sysport_tx_ring, ptr %45, i32 %i.199, i32 12
  %49 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bytes, align 8
  %conv42 = zext i32 %50 to i64
  %arrayidx43 = getelementptr i64, ptr %data, i32 %inc41
  %51 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv42, ptr %arrayidx43, align 8
  %inc44 = add i32 %j.2100, 2
  %inc46 = add nuw i32 %i.199, 1
  %52 = ptrtoint ptr %num_tx_queues.i86 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_tx_queues.i86, align 4
  %cmp35 = icmp ult i32 %inc46, %53
  br i1 %cmp35, label %for.body37.for.body37_crit_edge, label %for.body37.for.end47_crit_edge

for.body37.for.end47_crit_edge:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end47

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body37

for.end47:                                        ; preds = %for.body37.for.end47_crit_edge, %bcm_sysport_get_sset_count.exit.for.end47_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_get_sset_count(ptr nocapture noundef readonly %dev, i32 noundef %string_set) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %string_set)
  %cond = icmp eq i32 %string_set, 1
  br i1 %cond, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %is_lite = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %is_lite to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_lite, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %j.014 = phi i32 [ 0, %for.cond.preheader ], [ %j.1, %for.inc.for.body_crit_edge ]
  %i.011 = phi i32 [ 0, %for.cond.preheader ], [ %inc2, %for.inc.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %type = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %i.011, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %3, label %land.lhs.true.for.inc_crit_edge [
    i32 -1, label %land.lhs.true.if.end_crit_edge
    i32 0, label %land.lhs.true.if.end_crit_edge16
    i32 4, label %land.lhs.true.if.end_crit_edge17
    i32 5, label %land.lhs.true.if.end_crit_edge18
    i32 6, label %land.lhs.true.if.end_crit_edge19
  ]

land.lhs.true.if.end_crit_edge19:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.if.end_crit_edge18:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.if.end_crit_edge17:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.if.end_crit_edge16:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %land.lhs.true.if.end_crit_edge16, %land.lhs.true.if.end_crit_edge17, %land.lhs.true.if.end_crit_edge18, %land.lhs.true.if.end_crit_edge19, %for.body.if.end_crit_edge
  %inc = add i32 %j.014, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %land.lhs.true.for.inc_crit_edge
  %j.1 = phi i32 [ %inc, %if.end ], [ %j.014, %land.lhs.true.for.inc_crit_edge ]
  %inc2 = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc2, 80
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %5 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_tx_queues, align 4
  %mul = shl i32 %6, 1
  %add = add i32 %mul, %j.1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %for.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_get_rxnfc(ptr noundef %dev, ptr nocapture noundef %nfc, ptr nocapture noundef readnone %rule_locs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %nfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nfc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %1)
  %cond = icmp eq i32 %1, 47
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %location.i, align 8
  %filters.i.i = getelementptr i8, ptr %dev, i32 3228
  %call.i.i = tail call i32 @_find_next_bit_be(ptr noundef %filters.i.i, i32 noundef 8, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i.i)
  %cmp16.i.i = icmp ult i32 %call.i.i, 8
  br i1 %cmp16.i.i, label %sw.bb.for.body.i.i_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb.for.body.i.i_crit_edge:                     ; preds = %sw.bb
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.bb.for.body.i.i_crit_edge
  %index.017.i.i = phi i32 [ %call7.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %sw.bb.for.body.i.i_crit_edge ]
  %mul.i.i = shl nuw nsw i32 %index.017.i.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 768
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %add.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #18, !srcloc !220
  %7 = lshr i32 %6, 8
  %and.i.i = and i32 %7, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %3)
  %cmp2.i.i = icmp eq i32 %and.i.i, %3
  br i1 %cmp2.i.i, label %if.end.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %add6.i.i = add nuw nsw i32 %index.017.i.i, 1
  %call7.i.i = tail call i32 @_find_next_bit_be(ptr noundef %filters.i.i, i32 noundef 8, i32 noundef %add6.i.i) #18
  %cmp.i.i = icmp ult i32 %call7.i.i, 8
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.sw.epilog_crit_edge

for.inc.i.i.sw.epilog_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

if.end.i:                                         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %ring_cookie.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3, i32 5
  %8 = ptrtoint ptr %ring_cookie.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -2, ptr %ring_cookie.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i, %for.inc.i.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ 0, %if.end.i ], [ -95, %sw.bb.sw.epilog_crit_edge ], [ -95, %for.inc.i.i.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_set_rxnfc(ptr noundef %dev, ptr nocapture noundef readonly %nfc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %nfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nfc, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 50, label %sw.bb
    i32 49, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3, i32 6
  %3 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %location.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %4)
  %cmp.i = icmp ugt i32 %4, 255
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %ring_cookie.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3, i32 5
  %5 = ptrtoint ptr %ring_cookie.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ring_cookie.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %6)
  %cmp2.not.i = icmp eq i64 %6, -2
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end4.i:                                        ; preds = %if.end.i
  %filters.i = getelementptr i8, ptr %dev, i32 3228
  %7 = ptrtoint ptr %filters.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %filters.i, align 4
  %and3.i.i = and i32 %8, 255
  %call.i.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %and3.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i.i.i.i)
  %cmp5.i = icmp eq i32 %call.i.i.i.i, 8
  br i1 %cmp5.i, label %if.end4.i.sw.epilog_crit_edge, label %if.end7.i

if.end4.i.sw.epilog_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end7.i:                                        ; preds = %if.end4.i
  %call10.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %filters.i, i32 noundef 8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call10.i)
  %cmp11.i = icmp ugt i32 %call10.i, 7
  br i1 %cmp11.i, label %if.end7.i.sw.epilog_crit_edge, label %if.end13.i

if.end7.i.sw.epilog_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #20
  %mul.i = shl nuw nsw i32 %call10.i, 2
  %add.i = add nuw nsw i32 %mul.i, 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 768
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %add.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #18, !srcloc !220
  %12 = and i32 %11, -65281
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #18
  %14 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %location.i, align 8
  %shl.i = shl i32 %15, 16
  %or.i = or i32 %13, %shl.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #18
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i42.i = getelementptr i8, ptr %18, i32 768
  %add.ptr1.i43.i = getelementptr i8, ptr %add.ptr.i42.i, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i43.i, i32 %16) #18, !srcloc !221
  %add20.i = add nuw nsw i32 %mul.i, 36
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i44.i = getelementptr i8, ptr %20, i32 768
  %add.ptr1.i45.i = getelementptr i8, ptr %add.ptr.i44.i, i32 %add20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i45.i, i32 -65281) #18, !srcloc !221
  %21 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %location.i, align 8
  %arrayidx.i = getelementptr %struct.bcm_sysport_priv, ptr %add.ptr.i, i32 0, i32 39, i32 %call10.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx.i, align 4
  tail call void @_set_bit(i32 noundef %call10.i, ptr noundef %filters.i) #18
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3, i32 6
  %24 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %location, align 8
  %filters.i.i = getelementptr i8, ptr %dev, i32 3228
  %call.i.i = tail call i32 @_find_next_bit_be(ptr noundef %filters.i.i, i32 noundef 8, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i.i)
  %cmp16.i.i = icmp ult i32 %call.i.i, 8
  br i1 %cmp16.i.i, label %sw.bb2.for.body.i.i_crit_edge, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb2.for.body.i.i_crit_edge:                    ; preds = %sw.bb2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.bb2.for.body.i.i_crit_edge
  %index.017.i.i = phi i32 [ %call7.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %sw.bb2.for.body.i.i_crit_edge ]
  %mul.i.i = shl nuw nsw i32 %index.017.i.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 768
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %add.i.i
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #18, !srcloc !220
  %29 = lshr i32 %28, 8
  %and.i.i = and i32 %29, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %25)
  %cmp2.i.i = icmp eq i32 %and.i.i, %25
  br i1 %cmp2.i.i, label %if.end.i8, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %add6.i.i = add nuw nsw i32 %index.017.i.i, 1
  %call7.i.i = tail call i32 @_find_next_bit_be(ptr noundef %filters.i.i, i32 noundef 8, i32 noundef %add6.i.i) #18
  %cmp.i.i = icmp ult i32 %call7.i.i, 8
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.sw.epilog_crit_edge

for.inc.i.i.sw.epilog_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

if.end.i8:                                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_clear_bit(i32 noundef %index.017.i.i, ptr noundef %filters.i.i) #18
  %arrayidx.i7 = getelementptr %struct.bcm_sysport_priv, ptr %add.ptr.i, i32 0, i32 39, i32 %index.017.i.i
  %30 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx.i7, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i8, %for.inc.i.i.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %if.end13.i, %if.end7.i.sw.epilog_crit_edge, %if.end4.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ 0, %if.end13.i ], [ -7, %sw.bb.sw.epilog_crit_edge ], [ -95, %if.end.i.sw.epilog_crit_edge ], [ -28, %if.end4.i.sw.epilog_crit_edge ], [ -28, %if.end7.i.sw.epilog_crit_edge ], [ 0, %if.end.i8 ], [ -95, %sw.bb2.sw.epilog_crit_edge ], [ -95, %for.inc.i.i.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dim_get_def_rx_moderation(ptr sret(%struct.dim_cq_moder) align 2, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_sysport_update_mib_counters(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %is_lite = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.073 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %j.071 = phi i32 [ 0, %entry ], [ %j.1, %cleanup.for.body_crit_edge ]
  %type = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %i.073, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %1, label %for.body.sw.epilog_crit_edge [
    i32 -1, label %for.body.cleanup_crit_edge
    i32 0, label %for.body.cleanup_crit_edge76
    i32 6, label %for.body.cleanup_crit_edge77
    i32 1, label %for.body.sw.bb1_crit_edge
    i32 2, label %for.body.sw.bb1_crit_edge78
    i32 3, label %for.body.sw.bb1_crit_edge79
    i32 4, label %sw.bb7
    i32 5, label %sw.bb16
  ]

for.body.sw.bb1_crit_edge79:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb1

for.body.sw.bb1_crit_edge78:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb1

for.body.sw.bb1_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb1

for.body.cleanup_crit_edge77:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.cleanup_crit_edge76:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb1:                                           ; preds = %for.body.sw.bb1_crit_edge, %for.body.sw.bb1_crit_edge78, %for.body.sw.bb1_crit_edge79
  %3 = ptrtoint ptr %is_lite to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_lite, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #20
  %5 = add nsw i32 %i.073, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %5)
  %cmp3.not = icmp ult i32 %5, 29
  %spec.select = select i1 %cmp3.not, i32 0, i32 12
  %add = add i32 %j.071, 1024
  %add6 = add i32 %add, %spec.select
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 128
  %add.ptr.i = getelementptr i8, ptr %7, i32 2048
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %add6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #18, !srcloc !220
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #18
  br label %sw.epilog

sw.bb7:                                           ; preds = %for.body
  %reg_offset = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %i.073, i32 4
  %10 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %reg_offset, align 4
  %conv8 = zext i16 %11 to i32
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 128
  %add.ptr.i62 = getelementptr i8, ptr %13, i32 768
  %add.ptr1.i63 = getelementptr i8, ptr %add.ptr.i62, i32 %conv8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i63) #18, !srcloc !220
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp10 = icmp eq i32 %14, -1
  br i1 %cmp10, label %if.then12, label %sw.bb7.sw.epilog_crit_edge

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then12:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 128
  %add.ptr.i64 = getelementptr i8, ptr %17, i32 768
  %add.ptr1.i65 = getelementptr i8, ptr %add.ptr.i64, i32 %conv8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i65, i32 0) #18, !srcloc !221
  br label %sw.epilog

sw.bb16:                                          ; preds = %for.body
  %reg_offset17 = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %i.073, i32 4
  %18 = ptrtoint ptr %reg_offset17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %reg_offset17, align 4
  %conv18 = zext i16 %19 to i32
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 128
  %add.ptr.i66 = getelementptr i8, ptr %21, i32 1024
  %add.ptr1.i67 = getelementptr i8, ptr %add.ptr.i66, i32 %conv18
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i67) #18, !srcloc !220
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp20 = icmp eq i32 %22, -1
  br i1 %cmp20, label %if.then22, label %sw.bb16.sw.epilog_crit_edge

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then22:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #20
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 128
  %add.ptr.i68 = getelementptr i8, ptr %25, i32 1024
  %add.ptr1.i69 = getelementptr i8, ptr %add.ptr.i68, i32 %conv18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i69, i32 0) #18, !srcloc !221
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then22, %sw.bb16.sw.epilog_crit_edge, %if.then12, %sw.bb7.sw.epilog_crit_edge, %if.end, %for.body.sw.epilog_crit_edge
  %val.0 = phi i32 [ 0, %for.body.sw.epilog_crit_edge ], [ -1, %if.then22 ], [ %23, %sw.bb16.sw.epilog_crit_edge ], [ -1, %if.then12 ], [ %15, %sw.bb7.sw.epilog_crit_edge ], [ %9, %if.end ]
  %stat_sizeof = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %i.073, i32 1
  %26 = ptrtoint ptr %stat_sizeof to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stat_sizeof, align 4
  %add26 = add i32 %27, %j.071
  %stat_offset = getelementptr [80 x %struct.bcm_sysport_stats], ptr @bcm_sysport_gstrings_stats, i32 0, i32 %i.073, i32 2
  %28 = ptrtoint ptr %stat_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stat_offset, align 4
  %add.ptr = getelementptr i8, ptr %priv, i32 %29
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %val.0, ptr %add.ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb1.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.body.cleanup_crit_edge76, %for.body.cleanup_crit_edge77
  %j.1 = phi i32 [ %add26, %sw.epilog ], [ %j.071, %for.body.cleanup_crit_edge ], [ %j.071, %for.body.cleanup_crit_edge76 ], [ %j.071, %for.body.cleanup_crit_edge77 ], [ %j.071, %sw.bb1.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 80
  br i1 %exitcond.not, label %do.body, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

do.body:                                          ; preds = %cleanup
  %msg_enable = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 37
  %31 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable, align 8
  %and = and i32 %32, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %do.body.do.end41_crit_edge, label %do.body32

do.body.do.end41_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end41

do.body32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_sysport_update_mib_counters.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_sysport_update_mib_counters, %if.then37)) #18
          to label %do.end41 [label %if.then37], !srcloc !223

if.then37:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #20
  %netdev = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 9
  %33 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev, align 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcm_sysport_update_mib_counters.__UNIQUE_ID_ddebug506, ptr noundef %34, ptr noundef nonnull @.str.35) #18
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %do.body32, %do.body.do.end41_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !224
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @trace_hardirqs_off() #18
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #18
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #18
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #18
  tail call void @trace_hardirqs_on() #18
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #18
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #18
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #18
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !225
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !218

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #18, !srcloc !226
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %syncp, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !227
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #18, !srcloc !228
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !229
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %clk = getelementptr i8, ptr %dev, i32 2932
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @clk_unprepare(ptr noundef %1) #18
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %is_lite.i = getelementptr i8, ptr %dev, i32 2324
  %2 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i120 = icmp eq i8 %3, 0
  br i1 %tobool.not.i120, label %if.end.i121, label %clk_prepare_enable.exit.umac_reset.exit_crit_edge

clk_prepare_enable.exit.umac_reset.exit_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %umac_reset.exit

if.end.i121:                                      ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i = getelementptr i8, ptr %5, i32 2056
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #18, !srcloc !220
  %7 = or i32 %6, 2097152
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i10.i = getelementptr i8, ptr %9, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i10.i, i32 %7) #18, !srcloc !221
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #18
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i12.i = getelementptr i8, ptr %12, i32 2056
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i12.i) #18, !srcloc !220
  %14 = and i32 %13, -2097153
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i14.i = getelementptr i8, ptr %16, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i14.i, i32 %14) #18, !srcloc !221
  br label %umac_reset.exit

umac_reset.exit:                                  ; preds = %if.end.i121, %clk_prepare_enable.exit.umac_reset.exit_crit_edge
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i122 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i122, i32 16777216) #18, !srcloc !221
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i4.i = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i4.i, i32 16777216) #18, !srcloc !221
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #18
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i5.i = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i5.i, i32 0) #18, !srcloc !221
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i6.i = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i6.i, i32 0) #18, !srcloc !221
  %26 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i124 = icmp eq i8 %27, 0
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 128
  br i1 %tobool.not.i124, label %if.then.i, label %if.else3.i

if.then.i:                                        ; preds = %umac_reset.exit
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr1.i.i125 = getelementptr i8, ptr %29, i32 2056
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i125) #18, !srcloc !220
  %31 = and i32 %30, -50331649
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i30.i = getelementptr i8, ptr %33, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30.i, i32 %31) #18, !srcloc !221
  br label %umac_enable_set.exit

if.else3.i:                                       ; preds = %umac_reset.exit
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i31.i = getelementptr i8, ptr %29, i32 4096
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #18, !srcloc !220
  %35 = and i32 %34, -50331649
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i32.i = getelementptr i8, ptr %37, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %35) #18, !srcloc !221
  br label %umac_enable_set.exit

umac_enable_set.exit:                             ; preds = %if.else3.i, %if.then.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #18
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 1024
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #18, !srcloc !220
  %41 = or i32 %40, 50331648
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #18
  %43 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i127 = icmp eq i8 %44, 0
  %and.i128 = and i32 %42, -12582913
  %spec.select.i = select i1 %tobool.not.i127, i32 %42, i32 %and.i128
  %and1.i = and i32 %spec.select.i, -4194305
  %45 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #18
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i7.i = getelementptr i8, ptr %47, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %45) #18, !srcloc !221
  %48 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not = icmp eq i8 %49, 0
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 128
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %umac_enable_set.exit
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr1.i = getelementptr i8, ptr %51, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 393216) #18, !srcloc !221
  br label %if.end

if.else:                                          ; preds = %umac_enable_set.exit
  %add.ptr.i.i130 = getelementptr i8, ptr %51, i32 4096
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i130) #18, !srcloc !220
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #18
  %netdev.i = getelementptr i8, ptr %dev, i32 2656
  %54 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %netdev.i, align 32
  %dsa_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 75
  %56 = ptrtoint ptr %dsa_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dsa_ptr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i, label %if.else.gib_set_pad_extension.exit_crit_edge, label %netdev_uses_dsa.exit.i

if.else.gib_set_pad_extension.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %gib_set_pad_extension.exit

netdev_uses_dsa.exit.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %rcv.i.i = getelementptr inbounds %struct.dsa_port, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %rcv.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rcv.i.i, align 4
  %tobool2.i.not.i = icmp eq ptr %59, null
  %and.i131 = and i32 %53, -264241153
  %or.i132 = or i32 %and.i131, 16777216
  %spec.select.i133 = select i1 %tobool2.i.not.i, i32 %53, i32 %or.i132
  br label %gib_set_pad_extension.exit

gib_set_pad_extension.exit:                       ; preds = %netdev_uses_dsa.exit.i, %if.else.gib_set_pad_extension.exit_crit_edge
  %60 = phi i32 [ %53, %if.else.gib_set_pad_extension.exit_crit_edge ], [ %spec.select.i133, %netdev_uses_dsa.exit.i ]
  %and2.i = and i32 %60, -4128769
  %or3.i = or i32 %and2.i, 786432
  %61 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #18
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i10.i = getelementptr i8, ptr %63, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %61) #18, !srcloc !221
  br label %if.end

if.end:                                           ; preds = %gib_set_pad_extension.exit, %if.then
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %64 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %features, align 16
  %call2 = tail call i32 @bcm_sysport_set_features(ptr noundef %dev, i64 noundef %65)
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %66 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_addr, align 64
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 1
  %conv.i = zext i8 %69 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %67, i32 1
  %70 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %71 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i134 = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %67, i32 2
  %72 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %73 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i135 = or i32 %or.i134, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %67, i32 3
  %74 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %75 to i32
  %or10.i = or i32 %or7.i135, %conv9.i
  %arrayidx11.i = getelementptr i8, ptr %67, i32 4
  %76 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %77 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 8
  %arrayidx14.i = getelementptr i8, ptr %67, i32 5
  %78 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %79 to i32
  %or16.i = or i32 %shl13.i, %conv15.i
  %80 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i137 = icmp eq i8 %81, 0
  %82 = tail call i32 @llvm.bswap.i32(i32 %or10.i) #18
  %83 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr.i, align 128
  br i1 %tobool.not.i137, label %if.then.i139, label %if.else.i

if.then.i139:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr1.i.i138 = getelementptr i8, ptr %84, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i138, i32 %82) #18, !srcloc !221
  %85 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #18
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i29.i = getelementptr i8, ptr %87, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i29.i, i32 %85) #18, !srcloc !221
  br label %umac_set_hw_addr.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr1.i31.i = getelementptr i8, ptr %84, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i31.i, i32 %82) #18, !srcloc !221
  %88 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #18
  %89 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i33.i = getelementptr i8, ptr %90, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i33.i, i32 %88) #18, !srcloc !221
  br label %umac_set_hw_addr.exit

umac_set_hw_addr.exit:                            ; preds = %if.else.i, %if.then.i139
  %phy_dn = getelementptr i8, ptr %dev, i32 2896
  %91 = ptrtoint ptr %phy_dn to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %phy_dn, align 16
  %phy_interface = getelementptr i8, ptr %dev, i32 2900
  %93 = ptrtoint ptr %phy_interface to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %phy_interface, align 4
  %call3 = tail call ptr @of_phy_connect(ptr noundef %dev, ptr noundef %92, ptr noundef nonnull @bcm_sysport_adj_link, i32 noundef 0, i32 noundef %94) #18
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %umac_set_hw_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #21
  br label %out_clk_disable

if.end6:                                          ; preds = %umac_set_hw_addr.exit
  %old_duplex = getelementptr i8, ptr %dev, i32 2912
  %95 = ptrtoint ptr %old_duplex to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -1, ptr %old_duplex, align 32
  %old_link = getelementptr i8, ptr %dev, i32 2908
  %96 = ptrtoint ptr %old_link to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1, ptr %old_link, align 4
  %old_pause = getelementptr i8, ptr %dev, i32 2904
  %97 = ptrtoint ptr %old_pause to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %old_pause, align 8
  %98 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i.i = getelementptr i8, ptr %99, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i, i32 -1) #18, !srcloc !221
  %irq0_mask.i.i = getelementptr i8, ptr %dev, i32 2312
  %100 = ptrtoint ptr %irq0_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -1, ptr %irq0_mask.i.i, align 8
  %101 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i141 = getelementptr i8, ptr %102, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i141, i32 -1) #18, !srcloc !221
  %103 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not.i143 = icmp eq i8 %104, 0
  br i1 %tobool.not.i143, label %if.then.i144, label %if.end6.bcm_sysport_mask_all_intrs.exit_crit_edge

if.end6.bcm_sysport_mask_all_intrs.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %bcm_sysport_mask_all_intrs.exit

if.then.i144:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %105 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i5.i = getelementptr i8, ptr %106, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i5.i, i32 -1) #18, !srcloc !221
  %irq1_mask.i.i = getelementptr i8, ptr %dev, i32 2320
  %107 = ptrtoint ptr %irq1_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -1, ptr %irq1_mask.i.i, align 16
  %108 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i7.i = getelementptr i8, ptr %109, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i, i32 -1) #18, !srcloc !221
  br label %bcm_sysport_mask_all_intrs.exit

bcm_sysport_mask_all_intrs.exit:                  ; preds = %if.then.i144, %if.end6.bcm_sysport_mask_all_intrs.exit_crit_edge
  %irq0 = getelementptr i8, ptr %dev, i32 2664
  %110 = ptrtoint ptr %irq0 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %irq0, align 8
  %call.i146 = tail call i32 @request_threaded_irq(i32 noundef %111, ptr noundef nonnull @bcm_sysport_rx_isr, ptr noundef null, i32 noundef 0, ptr noundef %dev, ptr noundef %dev) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool8.not = icmp eq i32 %call.i146, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %bcm_sysport_mask_all_intrs.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #21
  br label %out_phy_disconnect

if.end10:                                         ; preds = %bcm_sysport_mask_all_intrs.exit
  %112 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool12.not = icmp eq i8 %113, 0
  br i1 %tobool12.not, label %if.then13, label %if.end10.do.body_crit_edge

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

if.then13:                                        ; preds = %if.end10
  %irq1 = getelementptr i8, ptr %dev, i32 2668
  %114 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %irq1, align 4
  %call.i147 = tail call i32 @request_threaded_irq(i32 noundef %115, ptr noundef nonnull @bcm_sysport_tx_isr, ptr noundef null, i32 noundef 0, ptr noundef %dev, ptr noundef %dev) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %tobool17.not = icmp eq i32 %call.i147, 0
  br i1 %tobool17.not, label %if.then13.do.body_crit_edge, label %if.then18

if.then13.do.body_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

if.then18:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #21
  br label %out_free_irq0

do.body:                                          ; preds = %if.then13.do.body_crit_edge, %if.end10.do.body_crit_edge
  %desc_lock = getelementptr i8, ptr %dev, i32 2676
  tail call void @__raw_spin_lock_init(ptr noundef %desc_lock, ptr noundef nonnull @.str.39, ptr noundef nonnull @bcm_sysport_open.__key, i16 noundef signext 3) #18
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %116 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp186.not = icmp eq i32 %117, 0
  br i1 %cmp186.not, label %do.body.for.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %i.0187 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %call22 = tail call fastcc i32 @bcm_sysport_init_tx_ring(ptr noundef %add.ptr.i, i32 noundef %i.0187)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %for.inc, label %if.then24

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %i.0187) #21
  br label %out_free_tx_ring

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0187, 1
  %118 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %119
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body.for.end_crit_edge
  %120 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i149 = getelementptr i8, ptr %121, i32 17924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i149, i32 33554432) #18, !srcloc !221
  %call26 = tail call fastcc i32 @bcm_sysport_init_rx_ring(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #21
  br label %out_free_rx_ring

if.end29:                                         ; preds = %for.end
  %122 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i150 = getelementptr i8, ptr %123, i32 12288
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i150) #18, !srcloc !220
  %125 = or i32 %124, 16777216
  %126 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i22.i = getelementptr i8, ptr %127, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i22.i, i32 %125) #18, !srcloc !221
  br label %do.body.i

do.body.i:                                        ; preds = %if.end9.i.do.body.i_crit_edge, %if.end29
  %timeout.0.i = phi i32 [ 1000, %if.end29 ], [ %dec.i, %if.end9.i.do.body.i_crit_edge ]
  %128 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i24.not.i = icmp eq i8 %129, 0
  %off.addr.0.i.i = select i1 %tobool.not.i24.not.i, i32 4100, i32 4104
  %130 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i25.i = getelementptr i8, ptr %131, i32 8192
  %add.ptr1.i26.i = getelementptr i8, ptr %add.ptr.i25.i, i32 %off.addr.0.i.i
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i26.i) #18, !srcloc !220
  %133 = and i32 %132, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %if.end33, label %if.end9.i

if.end9.i:                                        ; preds = %do.body.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #18
  %dec.i = add nsw i32 %timeout.0.i, -1
  %cmp10.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %cmp10.not.i, label %rdma_enable_set.exit, label %if.end9.i.do.body.i_crit_edge

if.end9.i.do.body.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

rdma_enable_set.exit:                             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #20
  %netdev.i151 = getelementptr i8, ptr %dev, i32 2656
  %135 = ptrtoint ptr %netdev.i151 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %netdev.i151, align 32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %136, ptr noundef nonnull @.str.61) #21
  br label %out_free_rx_ring

if.end33:                                         ; preds = %do.body.i
  %137 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i153 = getelementptr i8, ptr %138, i32 17920
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i153) #18, !srcloc !220
  %140 = or i32 %139, 16777216
  %141 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i26.i155 = getelementptr i8, ptr %142, i32 17920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i26.i155, i32 %140) #18, !srcloc !221
  br label %do.body.i157

do.body.i157:                                     ; preds = %if.end11.i.do.body.i157_crit_edge, %if.end33
  %timeout.0.i156 = phi i32 [ 1000, %if.end33 ], [ %dec.i158, %if.end11.i.do.body.i157_crit_edge ]
  %143 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i28.i = getelementptr i8, ptr %144, i32 17924
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i28.i) #18, !srcloc !220
  %146 = and i32 %145, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %if.end37, label %if.end11.i

if.end11.i:                                       ; preds = %do.body.i157
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #18
  %dec.i158 = add nsw i32 %timeout.0.i156, -1
  %cmp12.not.i = icmp eq i32 %timeout.0.i156, 0
  br i1 %cmp12.not.i, label %out_clear_rx_int, label %if.end11.i.do.body.i157_crit_edge

if.end11.i.do.body.i157_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i157

if.end37:                                         ; preds = %do.body.i157
  %148 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool.not.i163 = icmp eq i8 %149, 0
  %150 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %add.ptr.i, align 128
  br i1 %tobool.not.i163, label %if.then.i168, label %if.else3.i173

if.then.i168:                                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr1.i.i164 = getelementptr i8, ptr %151, i32 2056
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i164) #18, !srcloc !220
  %153 = or i32 %152, 50331648
  %154 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i30.i167 = getelementptr i8, ptr %155, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30.i167, i32 %153) #18, !srcloc !221
  br label %umac_enable_set.exit174

if.else3.i173:                                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i31.i169 = getelementptr i8, ptr %151, i32 4096
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i169) #18, !srcloc !220
  %157 = or i32 %156, 50331648
  %158 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i32.i172 = getelementptr i8, ptr %159, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i172, i32 %157) #18, !srcloc !221
  br label %umac_enable_set.exit174

umac_enable_set.exit174:                          ; preds = %if.else3.i173, %if.then.i168
  tail call fastcc void @bcm_sysport_netif_start(ptr noundef %dev)
  %160 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %cmp4.not.i = icmp eq i32 %161, 0
  br i1 %cmp4.not.i, label %umac_enable_set.exit174.cleanup_crit_edge, label %for.body.lr.ph.i

umac_enable_set.exit174.cleanup_crit_edge:        ; preds = %umac_enable_set.exit174
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %umac_enable_set.exit174
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %162 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %163, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #18
  %inc.i = add nuw i32 %i.05.i, 1
  %164 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %num_tx_queues, align 4
  %cmp.i = icmp ult i32 %inc.i, %165
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

out_clear_rx_int:                                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  %netdev.i159 = getelementptr i8, ptr %dev, i32 2656
  %166 = ptrtoint ptr %netdev.i159 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %netdev.i159, align 32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %167, ptr noundef nonnull @.str.62) #21
  %168 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i175 = getelementptr i8, ptr %169, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i175, i32 537001984) #18, !srcloc !221
  %170 = ptrtoint ptr %irq0_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %irq0_mask.i.i, align 8
  %or.i176 = or i32 %171, 544
  store i32 %or.i176, ptr %irq0_mask.i.i, align 8
  br label %out_free_rx_ring

out_free_rx_ring:                                 ; preds = %out_clear_rx_int, %rdma_enable_set.exit, %if.then28
  %ret.0 = phi i32 [ %call26, %if.then28 ], [ -110, %rdma_enable_set.exit ], [ -110, %out_clear_rx_int ]
  tail call fastcc void @bcm_sysport_fini_rx_ring(ptr noundef %add.ptr.i)
  br label %out_free_tx_ring

out_free_tx_ring:                                 ; preds = %out_free_rx_ring, %if.then24
  %ret.1 = phi i32 [ %call22, %if.then24 ], [ %ret.0, %out_free_rx_ring ]
  %172 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp40188.not = icmp eq i32 %173, 0
  br i1 %cmp40188.not, label %out_free_tx_ring.for.end44_crit_edge, label %out_free_tx_ring.for.body41_crit_edge

out_free_tx_ring.for.body41_crit_edge:            ; preds = %out_free_tx_ring
  br label %for.body41

out_free_tx_ring.for.end44_crit_edge:             ; preds = %out_free_tx_ring
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end44

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %out_free_tx_ring.for.body41_crit_edge
  %i.1189 = phi i32 [ %inc43, %for.body41.for.body41_crit_edge ], [ 0, %out_free_tx_ring.for.body41_crit_edge ]
  tail call fastcc void @bcm_sysport_fini_tx_ring(ptr noundef %add.ptr.i, i32 noundef %i.1189)
  %inc43 = add nuw i32 %i.1189, 1
  %174 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %num_tx_queues, align 4
  %cmp40 = icmp ult i32 %inc43, %175
  br i1 %cmp40, label %for.body41.for.body41_crit_edge, label %for.body41.for.end44_crit_edge

for.body41.for.end44_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end44

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body41

for.end44:                                        ; preds = %for.body41.for.end44_crit_edge, %out_free_tx_ring.for.end44_crit_edge
  %176 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool46.not = icmp eq i8 %177, 0
  br i1 %tobool46.not, label %if.then47, label %for.end44.out_free_irq0_crit_edge

for.end44.out_free_irq0_crit_edge:                ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free_irq0

if.then47:                                        ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #20
  %irq148 = getelementptr i8, ptr %dev, i32 2668
  %178 = ptrtoint ptr %irq148 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %irq148, align 4
  %call49 = tail call ptr @free_irq(i32 noundef %179, ptr noundef %dev) #18
  br label %out_free_irq0

out_free_irq0:                                    ; preds = %if.then47, %for.end44.out_free_irq0_crit_edge, %if.then18
  %ret.2 = phi i32 [ %ret.1, %for.end44.out_free_irq0_crit_edge ], [ %ret.1, %if.then47 ], [ %call.i147, %if.then18 ]
  %180 = ptrtoint ptr %irq0 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %irq0, align 8
  %call52 = tail call ptr @free_irq(i32 noundef %181, ptr noundef %dev) #18
  br label %out_phy_disconnect

out_phy_disconnect:                               ; preds = %out_free_irq0, %if.then9
  %ret.3 = phi i32 [ %call.i146, %if.then9 ], [ %ret.2, %out_free_irq0 ]
  tail call void @phy_disconnect(ptr noundef nonnull %call3) #18
  br label %out_clk_disable

out_clk_disable:                                  ; preds = %out_phy_disconnect, %if.then5
  %ret.4 = phi i32 [ %ret.3, %out_phy_disconnect ], [ -19, %if.then5 ]
  %182 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %183) #18
  tail call void @clk_unprepare(ptr noundef %183) #18
  br label %cleanup

cleanup:                                          ; preds = %out_clk_disable, %for.body.i.cleanup_crit_edge, %umac_enable_set.exit174.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %out_clk_disable ], [ 0, %umac_enable_set.exit174.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_stop(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call fastcc void @bcm_sysport_netif_stop(ptr noundef %dev)
  %is_lite.i = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  br i1 %tobool.not.i, label %if.then.i, label %if.else3.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 2056
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #18, !srcloc !220
  %5 = and i32 %4, -33554433
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i30.i = getelementptr i8, ptr %7, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30.i, i32 %5) #18, !srcloc !221
  br label %umac_enable_set.exit

if.else3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i31.i = getelementptr i8, ptr %3, i32 4096
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #18, !srcloc !220
  %9 = and i32 %8, -33554433
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i32.i = getelementptr i8, ptr %11, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %9) #18, !srcloc !221
  br label %umac_enable_set.exit

umac_enable_set.exit:                             ; preds = %if.else3.i, %if.then.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #18
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i34 = getelementptr i8, ptr %13, i32 17920
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i34) #18, !srcloc !220
  %15 = and i32 %14, -16777217
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i26.i = getelementptr i8, ptr %17, i32 17920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i26.i, i32 %15) #18, !srcloc !221
  br label %do.body.i

do.body.i:                                        ; preds = %if.end11.i.do.body.i_crit_edge, %umac_enable_set.exit
  %timeout.0.i = phi i32 [ 1000, %umac_enable_set.exit ], [ %dec.i, %if.end11.i.do.body.i_crit_edge ]
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i28.i = getelementptr i8, ptr %19, i32 17924
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i28.i) #18, !srcloc !220
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %.not = icmp eq i32 %21, 0
  br i1 %.not, label %if.end11.i, label %if.end

if.end11.i:                                       ; preds = %do.body.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #18
  %dec.i = add nsw i32 %timeout.0.i, -1
  %cmp12.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %cmp12.not.i, label %if.then, label %if.end11.i.do.body.i_crit_edge

if.end11.i.do.body.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

if.then:                                          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  %netdev.i = getelementptr i8, ptr %dev, i32 2656
  %22 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev.i, align 32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.62) #21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.70) #21
  br label %cleanup

if.end:                                           ; preds = %do.body.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #18
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i35 = getelementptr i8, ptr %25, i32 12288
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i35) #18, !srcloc !220
  %27 = and i32 %26, -16777217
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i22.i = getelementptr i8, ptr %29, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i22.i, i32 %27) #18, !srcloc !221
  br label %do.body.i39

do.body.i39:                                      ; preds = %if.end9.i.do.body.i39_crit_edge, %if.end
  %timeout.0.i36 = phi i32 [ 1000, %if.end ], [ %dec.i40, %if.end9.i.do.body.i39_crit_edge ]
  %30 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i24.not.i = icmp eq i8 %31, 0
  %off.addr.0.i.i = select i1 %tobool.not.i24.not.i, i32 4100, i32 4104
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i25.i = getelementptr i8, ptr %33, i32 8192
  %add.ptr1.i26.i37 = getelementptr i8, ptr %add.ptr.i25.i, i32 %off.addr.0.i.i
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i26.i37) #18, !srcloc !220
  %35 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %.not61 = icmp eq i32 %35, 0
  br i1 %.not61, label %if.end9.i, label %if.end5

if.end9.i:                                        ; preds = %do.body.i39
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #18
  %dec.i40 = add nsw i32 %timeout.0.i36, -1
  %cmp10.not.i = icmp eq i32 %timeout.0.i36, 0
  br i1 %cmp10.not.i, label %if.then4, label %if.end9.i.do.body.i39_crit_edge

if.end9.i.do.body.i39_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i39

if.then4:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #20
  %netdev.i41 = getelementptr i8, ptr %dev, i32 2656
  %36 = ptrtoint ptr %netdev.i41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev.i41, align 32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.61) #21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.71) #21
  br label %cleanup

if.end5:                                          ; preds = %do.body.i39
  %38 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i45 = icmp eq i8 %39, 0
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 128
  br i1 %tobool.not.i45, label %if.then.i50, label %if.else3.i55

if.then.i50:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr1.i.i46 = getelementptr i8, ptr %41, i32 2056
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i46) #18, !srcloc !220
  %43 = and i32 %42, -16777217
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i30.i49 = getelementptr i8, ptr %45, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30.i49, i32 %43) #18, !srcloc !221
  br label %umac_enable_set.exit56

if.else3.i55:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i31.i51 = getelementptr i8, ptr %41, i32 4096
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i51) #18, !srcloc !220
  %47 = and i32 %46, -16777217
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i32.i54 = getelementptr i8, ptr %49, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i54, i32 %47) #18, !srcloc !221
  br label %umac_enable_set.exit56

umac_enable_set.exit56:                           ; preds = %if.else3.i55, %if.then.i50
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #18
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %50 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp62.not = icmp eq i32 %51, 0
  br i1 %cmp62.not, label %umac_enable_set.exit56.for.end_crit_edge, label %umac_enable_set.exit56.for.body_crit_edge

umac_enable_set.exit56.for.body_crit_edge:        ; preds = %umac_enable_set.exit56
  br label %for.body

umac_enable_set.exit56.for.end_crit_edge:         ; preds = %umac_enable_set.exit56
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %umac_enable_set.exit56.for.body_crit_edge
  %i.063 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %umac_enable_set.exit56.for.body_crit_edge ]
  tail call fastcc void @bcm_sysport_fini_tx_ring(ptr noundef %add.ptr.i, i32 noundef %i.063)
  %inc = add nuw i32 %i.063, 1
  %52 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %53
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %umac_enable_set.exit56.for.end_crit_edge
  tail call fastcc void @bcm_sysport_fini_rx_ring(ptr noundef %add.ptr.i)
  %irq0 = getelementptr i8, ptr %dev, i32 2664
  %54 = ptrtoint ptr %irq0 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq0, align 8
  %call6 = tail call ptr @free_irq(i32 noundef %55, ptr noundef %dev) #18
  %56 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool7.not = icmp eq i8 %57, 0
  br i1 %tobool7.not, label %if.then8, label %for.end.if.end10_crit_edge

for.end.if.end10_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

if.then8:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  %irq1 = getelementptr i8, ptr %dev, i32 2668
  %58 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq1, align 4
  %call9 = tail call ptr @free_irq(i32 noundef %59, ptr noundef %dev) #18
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %for.end.if.end10_crit_edge
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %60 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %61) #18
  %clk = getelementptr i8, ptr %dev, i32 2932
  %62 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %63) #18
  tail call void @clk_unprepare(ptr noundef %63) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then4, %if.then
  %retval.0 = phi i32 [ -110, %if.then ], [ -110, %if.then4 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pdev = getelementptr i8, ptr %dev, i32 2660
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %2 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %3 to i32
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i, align 128
  %tx_rings = getelementptr i8, ptr %dev, i32 2720
  %6 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_rings, align 32
  %arrayidx = getelementptr %struct.bcm_sysport_tx_ring, ptr %7, i32 %conv
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx) #18
  %desc_count = getelementptr %struct.bcm_sysport_tx_ring, ptr %7, i32 %conv, i32 5
  %8 = ptrtoint ptr %desc_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp10 = icmp eq i32 %9, 0
  br i1 %cmp10, label %if.then, label %if.end, !prof !218

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %state.i = getelementptr %struct.netdev_queue, ptr %5, i32 %conv, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %conv) #21
  br label %out

if.end:                                           ; preds = %entry
  %tsb_en = getelementptr i8, ptr %dev, i32 2916
  %10 = ptrtoint ptr %tsb_en to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %tsb_en, align 4
  %11 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool14.not = icmp eq i8 %11, 0
  br i1 %tobool14.not, label %if.end.if.end20_crit_edge, label %if.then15

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.then15:                                        ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i.i, 8
  br i1 %cmp.i, label %if.then.i, label %if.then15.if.end11.i_crit_edge, !prof !218

if.then15.if.end11.i_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11.i

if.then.i:                                        ; preds = %if.then15
  %call3.i = tail call ptr @skb_realloc_headroom(ptr noundef %skb, i32 noundef 8) #18
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %bcm_sysport_insert_tsb.exit.thread, label %if.end.i

bcm_sysport_insert_tsb.exit.thread:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #18
  %tx_realloc_tsb_failed.i = getelementptr i8, ptr %dev, i32 3220
  %16 = ptrtoint ptr %tx_realloc_tsb_failed.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_realloc_tsb_failed.i, align 4
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %tx_realloc_tsb_failed.i, align 4
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %18 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_errors.i, align 4
  %inc6.i = add i32 %19, 1
  store i32 %inc6.i, ptr %tx_errors.i, align 4
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %20 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_dropped.i, align 4
  %inc8.i = add i32 %21, 1
  store i32 %inc8.i, ptr %tx_dropped.i, align 4
  br label %out

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #18
  %tx_realloc_tsb.i = getelementptr i8, ptr %dev, i32 3216
  %22 = ptrtoint ptr %tx_realloc_tsb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_realloc_tsb.i, align 4
  %inc10.i = add i32 %23, 1
  store i32 %inc10.i, ptr %tx_realloc_tsb.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i, %if.then15.if.end11.i_crit_edge
  %skb.addr.0.i = phi ptr [ %call3.i, %if.end.i ], [ %skb, %if.then15.if.end11.i_crit_edge ]
  %call12.i = tail call ptr @skb_push(ptr noundef %skb.addr.0.i, i32 noundef 8) #18
  %24 = ptrtoint ptr %call12.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 0, ptr %call12.i, align 4
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 3
  %25 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool13.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool13.not.i, label %if.end11.i.if.end20.i_crit_edge, label %if.then14.i

if.end11.i.if.end20.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 10
  %26 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vlan_tci.i, align 2
  %28 = lshr i16 %27, 13
  %29 = zext i16 %28 to i32
  %30 = ptrtoint ptr %call12.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %call12.i, align 4
  %31 = load i16, ptr %vlan_tci.i, align 2
  %32 = shl i16 %31, 4
  %or107.i = or i16 %32, %28
  %or.i = zext i16 %or107.i to i32
  store i32 %or.i, ptr %call12.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end20.i_crit_edge
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15
  %33 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load21.i = load i16, ptr %ip_summed.i, align 8
  %34 = and i16 %bf.load21.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %34)
  %cmp25.i = icmp eq i16 %34, 1536
  br i1 %cmp25.i, label %if.then27.i, label %if.end20.i.bcm_sysport_insert_tsb.exit_crit_edge

if.end20.i.bcm_sysport_insert_tsb.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bcm_sysport_insert_tsb.exit

if.then27.i:                                      ; preds = %if.end20.i
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 18
  %35 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %protocol.i, align 8
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.100)
  switch i16 %36, label %if.then27.i.bcm_sysport_insert_tsb.exit_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb31.i
  ]

if.then27.i.bcm_sysport_insert_tsb.exit_crit_edge: ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bcm_sysport_insert_tsb.exit

sw.bb.i:                                          ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #20
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 18
  %38 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 20
  %40 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %41 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %39, i32 %conv.i.i.i
  %protocol30.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  br label %sw.epilog.i

sw.bb31.i:                                        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #20
  %head.i.i109.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 18
  %42 = ptrtoint ptr %head.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %head.i.i109.i, align 8
  %network_header.i.i110.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 20
  %44 = ptrtoint ptr %network_header.i.i110.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %network_header.i.i110.i, align 4
  %conv.i.i111.i = zext i16 %45 to i32
  %add.ptr.i.i112.i = getelementptr i8, ptr %43, i32 %conv.i.i111.i
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i112.i, i32 0, i32 3
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb31.i, %sw.bb.i
  %ip_proto.0.in.i = phi ptr [ %nexthdr.i, %sw.bb31.i ], [ %protocol30.i, %sw.bb.i ]
  %46 = ptrtoint ptr %ip_proto.0.in.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %ip_proto.0.i = load i8, ptr %ip_proto.0.in.i, align 1
  %47 = zext i8 %ip_proto.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %ip_proto.0.i, label %sw.epilog.i.if.end68.i_crit_edge [
    i8 6, label %sw.epilog.i.if.then57.i_crit_edge
    i8 17, label %sw.epilog.i.if.then57.i_crit_edge186
  ]

sw.epilog.i.if.then57.i_crit_edge186:             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then57.i

sw.epilog.i.if.then57.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then57.i

sw.epilog.i.if.end68.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end68.i

if.then57.i:                                      ; preds = %sw.epilog.i.if.then57.i_crit_edge, %sw.epilog.i.if.then57.i_crit_edge186
  %48 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 5
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %48, align 8
  %conv.i.i = zext i16 %50 to i32
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 19
  %51 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %52 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %conv.i.i, %sub.ptr.lhs.cast.i.i.i
  %head.i.i113.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 18
  %53 = ptrtoint ptr %head.i.i113.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head.i.i113.i, align 8
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %54 to i32
  %sub.i.i = add i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.rhs.cast.i.i.i
  %55 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %bf.load36.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load36.i)
  %tobool39.not114.i = icmp slt i32 %bf.load36.i, 0
  %spec.select.v.i = select i1 %tobool39.not114.i, i32 65532, i32 65528
  %spec.select.i = add i32 %sub.i.i, %spec.select.v.i
  %csum_offset.i = getelementptr inbounds %struct.anon.60, ptr %48, i32 0, i32 1
  %56 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %csum_offset.i, align 2
  %conv45.i = zext i16 %57 to i32
  %add46.i = add i32 %spec.select.i, %conv45.i
  %and47.i = and i32 %add46.i, 511
  %conv44.i = shl i32 %spec.select.i, 9
  %shl49.i = and i32 %conv44.i, 33029632
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %ip_proto.0.i)
  %cmp60.i = icmp eq i8 %ip_proto.0.i, 17
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %36)
  %cmp63.i = icmp eq i16 %36, 2048
  %or.cond.i = select i1 %cmp60.i, i1 %cmp63.i, i1 false
  %spec.select108.v.i = select i1 %or.cond.i, i32 786432, i32 524288
  %or50.i = or i32 %shl49.i, %spec.select108.v.i
  %spec.select108.i = or i32 %or50.i, %and47.i
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then57.i, %sw.epilog.i.if.end68.i_crit_edge
  %csum_info.0.i = phi i32 [ 0, %sw.epilog.i.if.end68.i_crit_edge ], [ %spec.select108.i, %if.then57.i ]
  %l4_ptr_dest_map.i = getelementptr inbounds %struct.bcm_tsb, ptr %call12.i, i32 0, i32 1
  %58 = ptrtoint ptr %l4_ptr_dest_map.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %csum_info.0.i, ptr %l4_ptr_dest_map.i, align 4
  br label %bcm_sysport_insert_tsb.exit

bcm_sysport_insert_tsb.exit:                      ; preds = %if.end68.i, %if.then27.i.bcm_sysport_insert_tsb.exit_crit_edge, %if.end20.i.bcm_sysport_insert_tsb.exit_crit_edge
  %tobool17.not = icmp eq ptr %skb.addr.0.i, null
  br i1 %tobool17.not, label %bcm_sysport_insert_tsb.exit.out_crit_edge, label %bcm_sysport_insert_tsb.exit.if.end20_crit_edge

bcm_sysport_insert_tsb.exit.if.end20_crit_edge:   ; preds = %bcm_sysport_insert_tsb.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

bcm_sysport_insert_tsb.exit.out_crit_edge:        ; preds = %bcm_sysport_insert_tsb.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end20:                                         ; preds = %bcm_sysport_insert_tsb.exit.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %skb.addr.0 = phi ptr [ %skb.addr.0.i, %bcm_sysport_insert_tsb.exit.if.end20_crit_edge ], [ %skb, %if.end.if.end20_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %59 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %61 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %62) #18
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end20
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i168, !prof !230

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dma_map_single_attrs.exit.thread

if.then.i168:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev1) #18
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 3
  %63 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %64, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i168.dev_name.exit.i_crit_edge

if.then.i168.dev_name.exit.i_crit_edge:           ; preds = %if.then.i168
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i168
  call void @__sanitizer_cov_trace_pc() #20
  %65 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i168.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %66, %if.end.i.i ], [ %64, %if.then.i168.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.60, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #18
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev1, i32 noundef -1) #18
  br label %if.then24

dma_map_single_attrs.exit:                        ; preds = %if.end20
  tail call void @debug_dma_map_single(ptr noundef %dev1, ptr noundef %62, i32 noundef %60) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %67 = load ptr, ptr @mem_map, align 4
  %68 = ptrtoint ptr %62 to i32
  %sub.i = add i32 %68, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i169 = getelementptr %struct.page, ptr %67, i32 %shr.i
  %and.i = and i32 %68, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1, ptr noundef %add.ptr.i169, i32 noundef %and.i, i32 noundef %60, i32 noundef 1, i32 noundef 0) #18
  tail call void @debug_dma_mapping_error(ptr noundef %dev1, i32 noundef %call41.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i171 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i171, label %dma_map_single_attrs.exit.if.then24_crit_edge, label %if.end32

dma_map_single_attrs.exit.if.then24_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then24

if.then24:                                        ; preds = %dma_map_single_attrs.exit.if.then24_crit_edge, %dma_map_single_attrs.exit.thread
  %tx_dma_failed = getelementptr i8, ptr %dev, i32 3212
  %69 = ptrtoint ptr %tx_dma_failed to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tx_dma_failed, align 4
  %inc = add i32 %70, 1
  store i32 %inc, ptr %tx_dma_failed, align 4
  %msg_enable = getelementptr i8, ptr %dev, i32 3224
  %71 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %msg_enable, align 8
  %and = and i32 %72, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.then24.out_crit_edge, label %if.then27

if.then24.out_crit_edge:                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #20
  %73 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.73, ptr noundef %74, i32 noundef %60) #21
  br label %out

if.end32:                                         ; preds = %dma_map_single_attrs.exit
  %cbs = getelementptr %struct.bcm_sysport_tx_ring, ptr %7, i32 %conv, i32 9
  %75 = ptrtoint ptr %cbs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cbs, align 4
  %curr_desc = getelementptr %struct.bcm_sysport_tx_ring, ptr %7, i32 %conv, i32 6
  %77 = ptrtoint ptr %curr_desc to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %curr_desc, align 8
  %arrayidx33 = getelementptr %struct.bcm_sysport_cb, ptr %76, i32 %78
  %79 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %skb.addr.0, ptr %arrayidx33, align 4
  %dma_addr = getelementptr %struct.bcm_sysport_cb, ptr %76, i32 %78, i32 2
  %80 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call41.i, ptr %dma_addr, align 4
  %dma_len = getelementptr %struct.bcm_sysport_cb, ptr %76, i32 %78, i32 3
  %81 = ptrtoint ptr %dma_len to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %60, ptr %dma_len, align 4
  %shl = shl i32 %60, 18
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15
  %82 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %82)
  %bf.load39 = load i16, ptr %ip_summed, align 8
  %83 = and i16 %bf.load39, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %83)
  %cmp44 = icmp eq i16 %83, 1536
  %spec.select.v = select i1 %cmp44, i32 231424, i32 198656
  %spec.select = or i32 %spec.select.v, %shl
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 3
  %84 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %bf.load49 = load i32, ptr %vlan_present, align 2
  %or54 = or i32 %spec.select, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load49)
  %tobool52.not185 = icmp slt i32 %bf.load49, 0
  %len_status.1 = select i1 %tobool52.not185, i32 %or54, i32 %spec.select
  %85 = ptrtoint ptr %curr_desc to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %curr_desc, align 8
  %inc57 = add i32 %86, 1
  %size = getelementptr %struct.bcm_sysport_tx_ring, ptr %7, i32 %conv, i32 3
  %87 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc57, i32 %88)
  %cmp59 = icmp eq i32 %inc57, %88
  %spec.store.select = select i1 %cmp59, i32 0, i32 %inc57
  %89 = ptrtoint ptr %curr_desc to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %spec.store.select, ptr %curr_desc, align 8
  %90 = ptrtoint ptr %desc_count to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %desc_count, align 4
  %dec = add i32 %91, -1
  store i32 %dec, ptr %desc_count, align 4
  %desc_lock = getelementptr i8, ptr %dev, i32 2676
  %call73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %desc_lock) #18
  %index = getelementptr %struct.bcm_sysport_tx_ring, ptr %7, i32 %conv, i32 2
  %92 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %index, align 8
  %mul = shl i32 %93, 3
  %94 = tail call i32 @llvm.bswap.i32(i32 %len_status.1) #18
  %95 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i172 = getelementptr i8, ptr %96, i32 16384
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i172, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %94) #18, !srcloc !221
  %97 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %index, align 8
  %mul79 = shl i32 %98, 3
  %add80 = or i32 %mul79, 4
  %99 = tail call i32 @llvm.bswap.i32(i32 %call41.i) #18
  %100 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i173 = getelementptr i8, ptr %101, i32 16384
  %add.ptr1.i174 = getelementptr i8, ptr %add.ptr.i173, i32 %add80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i174, i32 %99) #18, !srcloc !221
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %desc_lock, i32 noundef %call73) #18
  %102 = ptrtoint ptr %desc_count to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %desc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp83 = icmp eq i32 %103, 0
  br i1 %cmp83, label %if.then85, label %if.end32.do.body87_crit_edge

if.end32.do.body87_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body87

if.then85:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  %state.i166 = getelementptr %struct.netdev_queue, ptr %5, i32 %conv, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i166) #18
  br label %do.body87

do.body87:                                        ; preds = %if.then85, %if.end32.do.body87_crit_edge
  %msg_enable88 = getelementptr i8, ptr %dev, i32 3224
  %104 = ptrtoint ptr %msg_enable88 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %msg_enable88, align 8
  %and89 = and i32 %105, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.body87.out_crit_edge, label %do.body92

do.body87.out_crit_edge:                          ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

do.body92:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_sysport_xmit.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_sysport_xmit, %if.then102)) #18
          to label %out [label %if.then102], !srcloc !223

if.then102:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #20
  %106 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %index, align 8
  %108 = ptrtoint ptr %desc_count to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %desc_count, align 4
  %110 = ptrtoint ptr %curr_desc to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %curr_desc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcm_sysport_xmit.__UNIQUE_ID_ddebug513, ptr noundef %dev, ptr noundef nonnull @.str.75, i32 noundef %107, i32 noundef %109, i32 noundef %111) #18
  br label %out

out:                                              ; preds = %if.then102, %do.body92, %do.body87.out_crit_edge, %if.then27, %if.then24.out_crit_edge, %bcm_sysport_insert_tsb.exit.out_crit_edge, %bcm_sysport_insert_tsb.exit.thread, %if.then
  %ret.0 = phi i32 [ 16, %if.then ], [ 0, %bcm_sysport_insert_tsb.exit.out_crit_edge ], [ 0, %if.then27 ], [ 0, %if.then24.out_crit_edge ], [ 0, %if.then102 ], [ 0, %do.body87.out_crit_edge ], [ 0, %bcm_sysport_insert_tsb.exit.thread ], [ 0, %do.body92 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx, i32 noundef %call7) #18
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @bcm_sysport_select_queue(ptr noundef %dev, ptr noundef %skb, ptr nocapture noundef readnone %sb_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping.i, align 8
  %dsa_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %2 = ptrtoint ptr %dsa_ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsa_ptr.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %netdev_uses_dsa.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

netdev_uses_dsa.exit:                             ; preds = %entry
  %rcv.i = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %rcv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rcv.i, align 4
  %tobool2.i.not = icmp eq ptr %5, null
  br i1 %tobool2.i.not, label %netdev_uses_dsa.exit.if.then_crit_edge, label %if.end

netdev_uses_dsa.exit.if.then_crit_edge:           ; preds = %netdev_uses_dsa.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then:                                          ; preds = %netdev_uses_dsa.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call3 = tail call zeroext i16 @netdev_pick_tx(ptr noundef %dev, ptr noundef %skb, ptr noundef null) #18
  br label %cleanup

if.end:                                           ; preds = %netdev_uses_dsa.exit
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 255
  %6 = lshr i32 %conv, 8
  %per_port_num_tx_queues = getelementptr i8, ptr %dev, i32 3340
  %7 = ptrtoint ptr %per_port_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %per_port_num_tx_queues, align 4
  %mul = mul i32 %8, %6
  %add = add i32 %mul, %and
  %arrayidx = getelementptr %struct.bcm_sysport_priv, ptr %add.ptr.i, i32 0, i32 44, i32 %add
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.then8, label %if.end10, !prof !218

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call9 = tail call zeroext i16 @netdev_pick_tx(ptr noundef %dev, ptr noundef %skb, ptr noundef null) #18
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %index = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 8
  %conv11 = trunc i32 %12 to i16
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then
  %retval.0 = phi i16 [ %call9, %if.then8 ], [ %conv11, %if.end10 ], [ %call3, %if.then ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sysport_set_rx_mode(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %is_lite = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %is_lite to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_lite, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i = getelementptr i8, ptr %3, i32 2056
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #18, !srcloc !220
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %7 = and i32 %4, -268435457
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %and = lshr i32 %6, 4
  %9 = and i32 %and, 16
  %reg.0 = or i32 %9, %8
  %10 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #18
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i20 = getelementptr i8, ptr %12, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i20, i32 %10) #18, !srcloc !221
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_change_mac(ptr noundef %dev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #18
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv.i = zext i8 %10 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %8, i32 1
  %11 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %12 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %8, i32 2
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %14 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %8, i32 3
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %16 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %arrayidx11.i = getelementptr i8, ptr %8, i32 4
  %17 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %18 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 8
  %arrayidx14.i = getelementptr i8, ptr %8, i32 5
  %19 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %20 to i32
  %or16.i = or i32 %shl13.i, %conv15.i
  %is_lite.i = getelementptr i8, ptr %dev, i32 2324
  %21 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  %23 = tail call i32 @llvm.bswap.i32(i32 %or10.i) #18
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 128
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr1.i.i = getelementptr i8, ptr %25, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %23) #18, !srcloc !221
  %26 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #18
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i29.i = getelementptr i8, ptr %28, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i29.i, i32 %26) #18, !srcloc !221
  br label %cleanup

if.else.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr1.i31.i = getelementptr i8, ptr %25, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i31.i, i32 %23) #18, !srcloc !221
  %29 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #18
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i33.i = getelementptr i8, ptr %31, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i33.i, i32 %29) #18, !srcloc !221
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %if.end.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.else.i ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sysport_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.76) #21
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp.not.i.i = icmp eq i32 %4, %2
  br i1 %cmp.not.i.i, label %entry.netif_trans_update.exit_crit_edge, label %do.body5.i.i

entry.netif_trans_update.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %5 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %2, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %entry.netif_trans_update.exit_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %6 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %tx_errors, align 4
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %8 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4.not.i = icmp eq i32 %9, 0
  br i1 %cmp4.not.i, label %netif_trans_update.exit.netif_tx_wake_all_queues.exit_crit_edge, label %netif_trans_update.exit.for.body.i_crit_edge

netif_trans_update.exit.for.body.i_crit_edge:     ; preds = %netif_trans_update.exit
  br label %for.body.i

netif_trans_update.exit.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %netif_tx_wake_all_queues.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %netif_trans_update.exit.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %netif_trans_update.exit.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %11, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #18
  %inc.i = add nuw i32 %i.05.i, 1
  %12 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_wake_all_queues.exit_crit_edge

for.body.i.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netif_tx_wake_all_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

netif_tx_wake_all_queues.exit:                    ; preds = %for.body.i.netif_tx_wake_all_queues.exit_crit_edge, %netif_trans_update.exit.netif_tx_wake_all_queues.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sysport_get_stats64(ptr noundef %dev, ptr noundef %stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %stats641 = getelementptr i8, ptr %dev, i32 3264
  %stats2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  tail call void @netdev_stats_to_stats64(ptr noundef %stats, ptr noundef %stats2) #18
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %netdev.i = getelementptr i8, ptr %dev, i32 2656
  %0 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev.i, align 32
  %num_tx_queues14.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %2 = ptrtoint ptr %num_tx_queues14.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_queues14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp15.not.i = icmp eq i32 %3, 0
  br i1 %cmp15.not.i, label %entry.bcm_sysport_update_tx_stats.exit_crit_edge, label %for.body.lr.ph.i

entry.bcm_sysport_update_tx_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %bcm_sysport_update_tx_stats.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %tx_rings.i = getelementptr i8, ptr %dev, i32 2720
  %syncp.i = getelementptr i8, ptr %dev, i32 3296
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %q.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %do.end.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %tx_rings.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_rings.i, align 32
  %bytes1.i = getelementptr %struct.bcm_sysport_tx_ring, ptr %5, i32 %q.016.i, i32 12
  %packets2.i = getelementptr %struct.bcm_sysport_tx_ring, ptr %5, i32 %q.016.i, i32 11
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.body.i
  %call.i = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp.i) #18
  %6 = ptrtoint ptr %bytes1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bytes1.i, align 8
  %8 = ptrtoint ptr %packets2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %packets2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !222
  %10 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %syncp.i, align 4
  %cmp.i.i.i.i.not.i = icmp eq i32 %11, %call.i
  br i1 %cmp.i.i.i.i.not.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %conv3.i = zext i32 %9 to i64
  %conv.i = zext i32 %7 to i64
  %12 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_bytes, align 8
  %add.i = add i64 %13, %conv.i
  store i64 %add.i, ptr %tx_bytes, align 8
  %14 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_packets, align 8
  %add6.i = add i64 %15, %conv3.i
  store i64 %add6.i, ptr %tx_packets, align 8
  %inc.i = add nuw i32 %q.016.i, 1
  %16 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev.i, align 32
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 104
  %18 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %19
  br i1 %cmp.i, label %do.end.i.for.body.i_crit_edge, label %do.end.i.bcm_sysport_update_tx_stats.exit_crit_edge

do.end.i.bcm_sysport_update_tx_stats.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bcm_sysport_update_tx_stats.exit

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

bcm_sysport_update_tx_stats.exit:                 ; preds = %do.end.i.bcm_sysport_update_tx_stats.exit_crit_edge, %entry.bcm_sysport_update_tx_stats.exit_crit_edge
  %syncp = getelementptr i8, ptr %dev, i32 3296
  %rx_bytes = getelementptr i8, ptr %dev, i32 3272
  %rx_bytes5 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %bcm_sysport_update_tx_stats.exit
  %call3 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %20 = ptrtoint ptr %stats641 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %stats641, align 8
  %22 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %stats, align 8
  %23 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rx_bytes, align 8
  %25 = ptrtoint ptr %rx_bytes5 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %rx_bytes5, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !222
  %26 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %27, %call3
  br i1 %cmp.i.i.i.i.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sysport_poll_controller(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %irq0 = getelementptr i8, ptr %dev, i32 2664
  %0 = ptrtoint ptr %irq0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq0, align 8
  tail call void @disable_irq(i32 noundef %1) #18
  %2 = ptrtoint ptr %irq0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq0, align 8
  %call2 = tail call i32 @bcm_sysport_rx_isr(i32 noundef %3, ptr noundef %add.ptr.i)
  %4 = ptrtoint ptr %irq0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq0, align 8
  tail call void @enable_irq(i32 noundef %5) #18
  %is_lite = getelementptr i8, ptr %dev, i32 2324
  %6 = ptrtoint ptr %is_lite to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_lite, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %irq1 = getelementptr i8, ptr %dev, i32 2668
  %8 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq1, align 4
  tail call void @disable_irq(i32 noundef %9) #18
  %10 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq1, align 4
  %call5 = tail call i32 @bcm_sysport_tx_isr(i32 noundef %11, ptr noundef %add.ptr.i)
  %12 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq1, align 4
  tail call void @enable_irq(i32 noundef %13) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_set_features(ptr nocapture noundef %dev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %clk = getelementptr i8, ptr %dev, i32 2932
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %is_lite = getelementptr i8, ptr %dev, i32 2324
  %2 = ptrtoint ptr %is_lite to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_lite, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 128
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr1.i = getelementptr i8, ptr %5, i32 2056
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #18, !srcloc !220
  %crc_fwd = getelementptr i8, ptr %dev, i32 2916
  %7 = ptrtoint ptr %crc_fwd to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %crc_fwd, align 4
  %sum.shift48 = lshr i32 %6, 25
  %8 = trunc i32 %sum.shift48 to i8
  %bf.shl = and i8 %8, 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %crc_fwd, align 4
  br label %if.end19

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i33 = getelementptr i8, ptr %5, i32 4096
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #18, !srcloc !220
  %crc_fwd12 = getelementptr i8, ptr %dev, i32 2916
  %10 = ptrtoint ptr %crc_fwd12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load13 = load i8, ptr %crc_fwd12, align 4
  %sum.shift = lshr i32 %9, 25
  %11 = trunc i32 %sum.shift to i8
  %12 = and i8 %11, 32
  %bf.clear16 = and i8 %bf.load13, -33
  %13 = or i8 %12, %bf.clear16
  %bf.set17 = xor i8 %13, 32
  store i8 %bf.set17, ptr %crc_fwd12, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then3
  %rx_chk_en.i = getelementptr i8, ptr %dev, i32 2916
  %14 = ptrtoint ptr %rx_chk_en.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %rx_chk_en.i, align 4
  %sh.diff.i = lshr i64 %features, 33
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i8
  %bf.shl.i = and i8 %tr.sh.diff.i, -128
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %rx_chk_en.i, align 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i42.i = getelementptr i8, ptr %16, i32 768
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i) #18, !srcloc !220
  %18 = ptrtoint ptr %rx_chk_en.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load5.i = load i8, ptr %rx_chk_en.i, align 4
  %19 = and i32 %17, -16779265
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #18
  %bf.load5.lobit.i = lshr i8 %bf.load5.i, 7
  %21 = zext i8 %bf.load5.lobit.i to i32
  %reg.0.i = or i32 %20, %21
  %22 = and i8 %bf.load5.i, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %22)
  %.not.i = icmp eq i8 %22, -96
  %or19.i = or i32 %reg.0.i, 2
  %and21.i = and i32 %reg.0.i, -524291
  %reg.1.i = select i1 %.not.i, i32 %or19.i, i32 %and21.i
  %dsa_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %23 = ptrtoint ptr %dsa_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dsa_ptr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %netdev_uses_dsa.exit.thread.i, label %netdev_uses_dsa.exit.i

netdev_uses_dsa.exit.thread.i:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  %and2745.i = and i32 %reg.1.i, -524297
  br label %bcm_sysport_set_rx_csum.exit

netdev_uses_dsa.exit.i:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  %rcv.i.i = getelementptr inbounds %struct.dsa_port, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %rcv.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rcv.i.i, align 4
  %tobool2.i.not.i = icmp eq ptr %26, null
  %or25.i = or i32 %reg.1.i, 8
  %and27.i = and i32 %reg.1.i, -524297
  %spec.select.i = select i1 %tobool2.i.not.i, i32 %and27.i, i32 %or25.i
  br label %bcm_sysport_set_rx_csum.exit

bcm_sysport_set_rx_csum.exit:                     ; preds = %netdev_uses_dsa.exit.i, %netdev_uses_dsa.exit.thread.i
  %27 = phi i32 [ %and2745.i, %netdev_uses_dsa.exit.thread.i ], [ %spec.select.i, %netdev_uses_dsa.exit.i ]
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #18
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i43.i = getelementptr i8, ptr %30, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i, i32 %28) #18, !srcloc !221
  %and.i = and i64 %features, 146
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i35 = icmp eq i64 %and.i, 0
  %31 = ptrtoint ptr %rx_chk_en.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i36 = load i8, ptr %rx_chk_en.i, align 4
  %bf.shl.i37 = select i1 %tobool.not.i35, i8 0, i8 64
  %bf.clear.i38 = and i8 %bf.load.i36, -65
  %bf.set.i39 = or i8 %bf.clear.i38, %bf.shl.i37
  store i8 %bf.set.i39, ptr %rx_chk_en.i, align 4
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i = getelementptr i8, ptr %33, i32 17920
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #18, !srcloc !220
  %35 = ptrtoint ptr %rx_chk_en.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load4.i = load i8, ptr %rx_chk_en.i, align 4
  %36 = and i32 %34, -33554433
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #18
  %38 = lshr i8 %bf.load4.i, 5
  %39 = and i8 %38, 2
  %40 = zext i8 %39 to i32
  %reg.0.i40 = or i32 %37, %40
  %41 = ptrtoint ptr %dsa_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dsa_ptr.i.i, align 4
  %tobool.not.i40.i = icmp eq ptr %42, null
  br i1 %tobool.not.i40.i, label %bcm_sysport_set_rx_csum.exit.if.else14.i_crit_edge, label %netdev_uses_dsa.exit.i44

bcm_sysport_set_rx_csum.exit.if.else14.i_crit_edge: ; preds = %bcm_sysport_set_rx_csum.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else14.i

netdev_uses_dsa.exit.i44:                         ; preds = %bcm_sysport_set_rx_csum.exit
  %rcv.i.i42 = getelementptr inbounds %struct.dsa_port, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %rcv.i.i42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rcv.i.i42, align 4
  %tobool2.i.not.i43 = icmp eq ptr %44, null
  br i1 %tobool2.i.not.i43, label %netdev_uses_dsa.exit.i44.if.else14.i_crit_edge, label %if.then11.i

netdev_uses_dsa.exit.i44.if.else14.i_crit_edge:   ; preds = %netdev_uses_dsa.exit.i44
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else14.i

if.then11.i:                                      ; preds = %netdev_uses_dsa.exit.i44
  call void @__sanitizer_cov_trace_pc() #20
  %45 = ptrtoint ptr %is_lite to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %is_lite, align 4, !range !219
  %narrow52.i = add nuw nsw i8 %46, 15
  %add.pn.i.i = zext i8 %narrow52.i to i32
  %retval.0.i.i = shl nuw nsw i32 1, %add.pn.i.i
  %or13.i = or i32 %retval.0.i.i, %reg.0.i40
  br label %if.end18.i

if.else14.i:                                      ; preds = %netdev_uses_dsa.exit.i44.if.else14.i_crit_edge, %bcm_sysport_set_rx_csum.exit.if.else14.i_crit_edge
  %47 = ptrtoint ptr %is_lite to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %is_lite, align 4, !range !219
  %narrow.i = add nuw nsw i8 %48, 15
  %add.pn.i46.i = zext i8 %narrow.i to i32
  %retval.0.i47.i = shl nuw nsw i32 1, %add.pn.i46.i
  %neg16.i = xor i32 %retval.0.i47.i, -1
  %and17.i = and i32 %reg.0.i40, %neg16.i
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else14.i, %if.then11.i
  %reg.1.i45 = phi i32 [ %or13.i, %if.then11.i ], [ %and17.i, %if.else14.i ]
  %49 = tail call i32 @llvm.bswap.i32(i32 %reg.1.i45) #18
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i49.i = getelementptr i8, ptr %51, i32 17920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i49.i, i32 %49) #18, !srcloc !221
  %and19.i = and i64 %features, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19.i)
  %tobool20.not.i = icmp eq i64 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.bcm_sysport_set_tx_csum.exit_crit_edge, label %if.then21.i

if.end18.i.bcm_sysport_set_tx_csum.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bcm_sysport_set_tx_csum.exit

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #20
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i51.i = getelementptr i8, ptr %53, i32 17940
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i51.i, i32 8454144) #18, !srcloc !221
  br label %bcm_sysport_set_tx_csum.exit

bcm_sysport_set_tx_csum.exit:                     ; preds = %if.then21.i, %if.end18.i.bcm_sysport_set_tx_csum.exit_crit_edge
  %54 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %55) #18
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %bcm_sysport_set_tx_csum.exit, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %55, %bcm_sysport_set_tx_csum.exit ], [ %1, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %bcm_sysport_set_tx_csum.exit ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sysport_adj_link(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %old_link = getelementptr i8, ptr %dev, i32 2908
  %2 = ptrtoint ptr %old_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %old_link, align 4
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %link, align 8
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %bf.cast)
  %cmp.not = icmp eq i32 %3, %bf.cast
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %5 = ptrtoint ptr %old_link to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %bf.cast, ptr %old_link, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %changed.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %old_duplex = getelementptr i8, ptr %dev, i32 2912
  %6 = ptrtoint ptr %old_duplex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old_duplex, align 32
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp8.not = icmp eq i32 %7, %9
  br i1 %cmp8.not, label %if.end12, label %if.end12.thread

if.end12:                                         ; preds = %if.end
  %is_lite = getelementptr i8, ptr %dev, i32 2324
  %10 = ptrtoint ptr %is_lite to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_lite, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end12.if.end14_crit_edge, label %out

if.end12.if.end14_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

if.end12.thread:                                  ; preds = %if.end
  %12 = ptrtoint ptr %old_duplex to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %old_duplex, align 32
  %is_lite91 = getelementptr i8, ptr %dev, i32 2324
  %13 = ptrtoint ptr %is_lite91 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_lite91, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not92 = icmp eq i8 %14, 0
  br i1 %tobool.not92, label %if.end12.thread.if.end14_crit_edge, label %if.end12.thread.if.then46_crit_edge

if.end12.thread.if.then46_crit_edge:              ; preds = %if.end12.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then46

if.end12.thread.if.end14_crit_edge:               ; preds = %if.end12.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

if.end14:                                         ; preds = %if.end12.thread.if.end14_crit_edge, %if.end12.if.end14_crit_edge
  %changed.193 = phi i32 [ 1, %if.end12.thread.if.end14_crit_edge ], [ %changed.0, %if.end12.if.end14_crit_edge ]
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %speed, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %16, label %if.end14.sw.epilog_crit_edge [
    i32 2500, label %sw.bb
    i32 1000, label %sw.bb15
    i32 100, label %sw.bb16
  ]

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb15, %sw.bb, %if.end14.sw.epilog_crit_edge
  %cmd_bits.0 = phi i32 [ 4, %sw.bb16 ], [ 8, %sw.bb15 ], [ 12, %sw.bb ], [ 0, %if.end14.sw.epilog_crit_edge ]
  %18 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp19 = icmp eq i32 %19, 0
  %or = or i32 %cmd_bits.0, 1024
  %spec.select = select i1 %cmp19, i32 %or, i32 %cmd_bits.0
  %old_pause = getelementptr i8, ptr %dev, i32 2904
  %20 = ptrtoint ptr %old_pause to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old_pause, align 8
  %pause = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pause, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp22.not = icmp eq i32 %21, %23
  br i1 %cmp22.not, label %if.end26, label %if.end26.thread

if.end26.thread:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  %24 = ptrtoint ptr %old_pause to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %old_pause, align 8
  %25 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool28.not83 = icmp eq i32 %26, 0
  %or3084 = or i32 %spec.select, 268435712
  %spec.select7885 = select i1 %tobool28.not83, i32 %or3084, i32 %spec.select
  br label %if.end34

if.end26:                                         ; preds = %sw.epilog
  %27 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool28.not = icmp eq i32 %28, 0
  %or30 = or i32 %spec.select, 268435712
  %spec.select78 = select i1 %tobool28.not, i32 %or30, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changed.193)
  %tobool32.not = icmp eq i32 %changed.193, 0
  br i1 %tobool32.not, label %if.end26.cleanup_crit_edge, label %if.end26.if.end34_crit_edge

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end34:                                         ; preds = %if.end26.if.end34_crit_edge, %if.end26.thread
  %spec.select7887 = phi i32 [ %spec.select7885, %if.end26.thread ], [ %spec.select78, %if.end26.if.end34_crit_edge ]
  %29 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load36 = load i16, ptr %link, align 8
  %30 = and i16 %bf.load36, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool40.not = icmp eq i16 %30, 0
  br i1 %tobool40.not, label %if.end34.if.then46_crit_edge, label %if.then41

if.end34.if.then46_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then46

if.then41:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i = getelementptr i8, ptr %32, i32 2056
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #18, !srcloc !220
  %34 = and i32 %33, -201654289
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %or43 = or i32 %35, %spec.select7887
  %36 = tail call i32 @llvm.bswap.i32(i32 %or43) #18
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i81 = getelementptr i8, ptr %38, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i81, i32 %36) #18, !srcloc !221
  br label %if.then46

out:                                              ; preds = %if.end12
  br i1 %cmp.not, label %out.cleanup_crit_edge, label %out.if.then46_crit_edge

out.if.then46_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then46

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then46:                                        ; preds = %out.if.then46_crit_edge, %if.then41, %if.end34.if.then46_crit_edge, %if.end12.thread.if.then46_crit_edge
  tail call void @phy_print_status(ptr noundef %1) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %out.cleanup_crit_edge, %if.end26.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_rx_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i74 = getelementptr i8, ptr %1, i32 512
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #18, !srcloc !220
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i = getelementptr i8, ptr %4, i32 524
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #18, !srcloc !220
  %6 = xor i32 %5, -1
  %7 = and i32 %2, %6
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %irq0_stat = getelementptr i8, ptr %dev_id, i32 2308
  %9 = ptrtoint ptr %irq0_stat to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %irq0_stat, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i77 = getelementptr i8, ptr %11, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i77, i32 %7) #18, !srcloc !221
  %12 = ptrtoint ptr %irq0_stat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq0_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !218

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %netdev = getelementptr i8, ptr %dev_id, i32 2656
  %14 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev, align 32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.42) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %and7 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end20_crit_edge, label %if.then9

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.then9:                                         ; preds = %if.end
  %event_ctr = getelementptr i8, ptr %dev_id, i32 2746
  %16 = ptrtoint ptr %event_ctr to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %event_ctr, align 2
  %inc = add i16 %17, 1
  store i16 %inc, ptr %event_ctr, align 2
  %napi = getelementptr i8, ptr %dev_id, i32 2432
  %call10 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #18
  br i1 %call10, label %if.then17, label %if.then9.if.end20_crit_edge, !prof !230

if.then9.if.end20_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.then17:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i = getelementptr i8, ptr %19, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 536870912) #18, !srcloc !221
  %irq0_mask.i = getelementptr i8, ptr %dev_id, i32 2312
  %20 = ptrtoint ptr %irq0_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq0_mask.i, align 8
  %or.i = or i32 %21, 32
  store i32 %or.i, ptr %irq0_mask.i, align 8
  tail call void @__napi_schedule_irqoff(ptr noundef %napi) #18
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then9.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %22 = ptrtoint ptr %irq0_stat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq0_stat, align 4
  %and22 = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end25_crit_edge, label %if.then24

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

if.then24:                                        ; preds = %if.end20
  %netdev.i = getelementptr i8, ptr %dev_id, i32 2656
  %24 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev.i, align 32
  %num_tx_queues5.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 104
  %26 = ptrtoint ptr %num_tx_queues5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_tx_queues5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp6.not.i = icmp eq i32 %27, 0
  br i1 %cmp6.not.i, label %if.then24.if.end25_crit_edge, label %for.body.lr.ph.i

if.then24.if.end25_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

for.body.lr.ph.i:                                 ; preds = %if.then24
  %tx_rings.i = getelementptr i8, ptr %dev_id, i32 2720
  br label %for.body.i

for.body.i:                                       ; preds = %bcm_sysport_tx_reclaim.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %28 = phi ptr [ %25, %for.body.lr.ph.i ], [ %36, %bcm_sysport_tx_reclaim.exit.i.for.body.i_crit_edge ]
  %q.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %bcm_sysport_tx_reclaim.exit.i.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %tx_rings.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_rings.i, align 32
  %arrayidx.i = getelementptr %struct.bcm_sysport_tx_ring, ptr %30, i32 %q.07.i
  %index.i.i = getelementptr %struct.bcm_sysport_tx_ring, ptr %30, i32 %q.07.i, i32 2
  %31 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index.i.i, align 8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 103
  %33 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_tx.i.i.i, align 128
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i) #18
  %call6.i.i = tail call fastcc i32 @__bcm_sysport_tx_reclaim(ptr noundef %add.ptr.i, ptr noundef %arrayidx.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.bcm_sysport_tx_reclaim.exit.i_crit_edge, label %if.then.i.i

for.body.i.bcm_sysport_tx_reclaim.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bcm_sysport_tx_reclaim.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.i.i.i = getelementptr %struct.netdev_queue, ptr %34, i32 %32
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i.i) #18
  br label %bcm_sysport_tx_reclaim.exit.i

bcm_sysport_tx_reclaim.exit.i:                    ; preds = %if.then.i.i, %for.body.i.bcm_sysport_tx_reclaim.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i, i32 noundef %call3.i.i) #18
  %inc.i = add nuw i32 %q.07.i, 1
  %35 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %netdev.i, align 32
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 104
  %37 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %38
  br i1 %cmp.i, label %bcm_sysport_tx_reclaim.exit.i.for.body.i_crit_edge, label %bcm_sysport_tx_reclaim.exit.i.if.end25_crit_edge

bcm_sysport_tx_reclaim.exit.i.if.end25_crit_edge: ; preds = %bcm_sysport_tx_reclaim.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

bcm_sysport_tx_reclaim.exit.i.for.body.i_crit_edge: ; preds = %bcm_sysport_tx_reclaim.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

if.end25:                                         ; preds = %bcm_sysport_tx_reclaim.exit.i.if.end25_crit_edge, %if.then24.if.end25_crit_edge, %if.end20.if.end25_crit_edge
  %is_lite = getelementptr i8, ptr %dev_id, i32 2324
  %39 = ptrtoint ptr %is_lite to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %is_lite, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool26.not = icmp eq i8 %40, 0
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %for.cond.preheader

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end25
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 104
  %41 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp2981.not = icmp eq i32 %42, 0
  br i1 %cmp2981.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tx_rings = getelementptr i8, ptr %dev_id, i32 2720
  %irq0_mask.i79 = getelementptr i8, ptr %dev_id, i32 2312
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ring.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc46, %for.inc.for.body_crit_edge ]
  %add = add i32 %ring.082, 12
  %shl = shl nuw i32 1, %add
  %43 = ptrtoint ptr %irq0_stat to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq0_stat, align 4
  %and31 = and i32 %44, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %for.body.for.inc_crit_edge, label %if.end34

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end34:                                         ; preds = %for.body
  %45 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx_rings, align 32
  %napi35 = getelementptr %struct.bcm_sysport_tx_ring, ptr %46, i32 %ring.082, i32 1
  %call36 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi35) #18
  br i1 %call36, label %if.then43, label %if.end34.for.inc_crit_edge, !prof !230

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then43:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  %47 = tail call i32 @llvm.bswap.i32(i32 %shl) #18
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i78 = getelementptr i8, ptr %49, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i78, i32 %47) #18, !srcloc !221
  %50 = ptrtoint ptr %irq0_mask.i79 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq0_mask.i79, align 8
  %or.i80 = or i32 %51, %shl
  store i32 %or.i80, ptr %irq0_mask.i79, align 8
  tail call void @__napi_schedule(ptr noundef %napi35) #18
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %if.end34.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc46 = add nuw i32 %ring.082, 1
  %52 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_tx_queues, align 4
  %cmp29 = icmp ult i32 %inc46, %53
  br i1 %cmp29, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end25.cleanup_crit_edge ], [ 1, %for.cond.preheader.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_tx_isr(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i39 = getelementptr i8, ptr %1, i32 576
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #18, !srcloc !220
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i = getelementptr i8, ptr %4, i32 588
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #18, !srcloc !220
  %6 = xor i32 %5, -1
  %7 = and i32 %2, %6
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %irq1_stat = getelementptr i8, ptr %dev_id, i32 2316
  %9 = ptrtoint ptr %irq1_stat to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %irq1_stat, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i42 = getelementptr i8, ptr %11, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i42, i32 -1) #18, !srcloc !221
  %12 = ptrtoint ptr %irq1_stat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq1_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then, label %for.cond.preheader, !prof !218

for.cond.preheader:                               ; preds = %entry
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 104
  %14 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp543.not = icmp eq i32 %15, 0
  br i1 %cmp543.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tx_rings = getelementptr i8, ptr %dev_id, i32 2720
  %irq1_mask.i = getelementptr i8, ptr %dev_id, i32 2320
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %netdev = getelementptr i8, ptr %dev_id, i32 2656
  %16 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev, align 32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str.47) #21
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ring.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %18 = ptrtoint ptr %irq1_stat to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq1_stat, align 4
  %shl = shl nuw i32 1, %ring.044
  %and7 = and i32 %19, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %if.end10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %20 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_rings, align 32
  %napi = getelementptr %struct.bcm_sysport_tx_ring, ptr %21, i32 %ring.044, i32 1
  %call11 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #18
  br i1 %call11, label %if.then18, label %if.end10.for.inc_crit_edge, !prof !230

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  %22 = tail call i32 @llvm.bswap.i32(i32 %shl) #18
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i = getelementptr i8, ptr %24, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %22) #18, !srcloc !221
  %25 = ptrtoint ptr %irq1_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq1_mask.i, align 16
  %or.i = or i32 %26, %shl
  store i32 %or.i, ptr %irq1_mask.i, align 16
  tail call void @__napi_schedule_irqoff(ptr noundef %napi) #18
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %if.end10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %ring.044, 1
  %27 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_tx_queues, align 4
  %cmp5 = icmp ult i32 %inc, %28
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %for.cond.preheader.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sysport_init_tx_ring(ptr noundef %priv, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_rings = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 15
  %0 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_rings, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4096) #22
  %cbs = getelementptr %struct.bcm_sysport_tx_ring, ptr %1, i32 %index, i32 9
  %3 = ptrtoint ptr %cbs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i, ptr %cbs, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %do.body, label %do.body5

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 37
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %netdev = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 9
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.48) #21
  br label %cleanup

do.body5:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.bcm_sysport_tx_ring, ptr %1, i32 %index
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.49, ptr noundef nonnull @bcm_sysport_init_tx_ring.__key, i16 noundef signext 3) #18
  %priv9 = getelementptr %struct.bcm_sysport_tx_ring, ptr %1, i32 %index, i32 10
  %8 = ptrtoint ptr %priv9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %priv, ptr %priv9, align 8
  %netdev10 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 9
  %9 = ptrtoint ptr %netdev10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev10, align 32
  %napi = getelementptr %struct.bcm_sysport_tx_ring, ptr %1, i32 %index, i32 1
  %state.i = getelementptr %struct.bcm_sysport_tx_ring, ptr %1, i32 %index, i32 1, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state.i) #18
  tail call void @netif_napi_add(ptr noundef %10, ptr noundef %napi, ptr noundef nonnull @bcm_sysport_tx_poll, i32 noundef 64) #18
  %index11 = getelementptr %struct.bcm_sysport_tx_ring, ptr %1, i32 %index, i32 2
  %11 = ptrtoint ptr %index11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %index, ptr %index11, align 8
  %size12 = getelementptr %struct.bcm_sysport_tx_ring, ptr %1, i32 %index, i32 3
  %12 = ptrtoint ptr %size12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 256, ptr %size12, align 4
  %clean_index = getelementptr %struct.bcm_sysport_tx_ring, ptr %1, i32 %index, i32 8
  %13 = ptrtoint ptr %clean_index to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %clean_index, align 8
  %alloc_size = getelementptr %struct.bcm_sysport_tx_ring, ptr %1, i32 %index, i32 4
  %14 = ptrtoint ptr %alloc_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 256, ptr %alloc_size, align 8
  %desc_count = getelementptr %struct.bcm_sysport_tx_ring, ptr %1, i32 %index, i32 5
  %15 = ptrtoint ptr %desc_count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 256, ptr %desc_count, align 4
  %curr_desc = getelementptr %struct.bcm_sysport_tx_ring, ptr %1, i32 %index, i32 6
  %16 = ptrtoint ptr %curr_desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %curr_desc, align 8
  %mul = mul i32 %index, 28
  %add = add i32 %mul, 640
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 128
  %add.ptr.i = getelementptr i8, ptr %18, i32 16384
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 2) #18, !srcloc !221
  %add18 = add i32 %mul, 644
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 128
  %add.ptr.i156 = getelementptr i8, ptr %20, i32 16384
  %add.ptr1.i157 = getelementptr i8, ptr %add.ptr.i156, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i157, i32 0) #18, !srcloc !221
  %add21 = add i32 %mul, 652
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 128
  %add.ptr.i158 = getelementptr i8, ptr %22, i32 16384
  %add.ptr1.i159 = getelementptr i8, ptr %add.ptr.i158, i32 %add21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i159, i32 16777216) #18, !srcloc !221
  %add24 = add i32 %mul, 656
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 128
  %add.ptr.i160 = getelementptr i8, ptr %24, i32 16384
  %add.ptr1.i161 = getelementptr i8, ptr %add.ptr.i160, i32 %add24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i161, i32 0) #18, !srcloc !221
  %add27 = add i32 %mul, 660
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 128
  %add.ptr.i162 = getelementptr i8, ptr %26, i32 16384
  %add.ptr1.i163 = getelementptr i8, ptr %add.ptr.i162, i32 %add27
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i163) #18, !srcloc !220
  %28 = and i32 %27, -1056964609
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %inspect = getelementptr %struct.bcm_sysport_tx_ring, ptr %1, i32 %index, i32 15
  %30 = ptrtoint ptr %inspect to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %inspect, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool30.not = icmp eq i8 %31, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #20
  %switch_queue = getelementptr %struct.bcm_sysport_tx_ring, ptr %1, i32 %index, i32 13
  %32 = ptrtoint ptr %switch_queue to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %switch_queue, align 4
  %and32 = and i32 %33, 7
  %or = or i32 %and32, %29
  %switch_port = getelementptr %struct.bcm_sysport_tx_ring, ptr %1, i32 %index, i32 14
  %34 = ptrtoint ptr %switch_port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %switch_port, align 8
  %shl = shl i32 %35, 3
  %or33 = or i32 %or, %shl
  br label %if.end35

if.else:                                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #20
  %or34 = or i32 %29, 64
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then31
  %reg.0 = phi i32 [ %or33, %if.then31 ], [ %or34, %if.else ]
  %36 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #18
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 128
  %add.ptr.i164 = getelementptr i8, ptr %38, i32 16384
  %add.ptr1.i165 = getelementptr i8, ptr %add.ptr.i164, i32 %add27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i165, i32 %36) #18, !srcloc !221
  %39 = ptrtoint ptr %netdev10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %netdev10, align 32
  %features = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 23
  %41 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %features, align 16
  %43 = trunc i64 %42 to i32
  %add46 = add i32 %mul, 664
  %44 = shl i32 %43, 3
  %45 = and i32 %44, 1024
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 128
  %add.ptr.i166 = getelementptr i8, ptr %47, i32 16384
  %add.ptr1.i167 = getelementptr i8, ptr %add.ptr.i166, i32 %add46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i167, i32 %45) #18, !srcloc !221
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv, align 128
  %add.ptr1.i169 = getelementptr i8, ptr %49, i32 17920
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i169) #18, !srcloc !220
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #18
  %is_lite.i = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 5
  %52 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %is_lite.i, align 4, !range !219
  %narrow = add nuw nsw i8 %53, 3
  %add.pn.i = zext i8 %narrow to i32
  %retval.0.i170 = shl nuw nsw i32 1, %add.pn.i
  %or49 = or i32 %retval.0.i170, %51
  %54 = tail call i32 @llvm.bswap.i32(i32 %or49) #18
  %55 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv, align 128
  %add.ptr1.i172 = getelementptr i8, ptr %56, i32 17920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i172, i32 %54) #18, !srcloc !221
  %57 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv, align 128
  %add.ptr1.i174 = getelementptr i8, ptr %58, i32 17920
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i174) #18, !srcloc !220
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #18
  %61 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool51.not = icmp eq i8 %62, 0
  %and53 = and i32 %60, -13
  %spec.select = select i1 %tobool51.not, i32 %60, i32 %and53
  %and56 = and i32 %spec.select, -5
  %63 = tail call i32 @llvm.bswap.i32(i32 %and56) #18
  %64 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv, align 128
  %add.ptr1.i178 = getelementptr i8, ptr %65, i32 17920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i178, i32 %63) #18, !srcloc !221
  %66 = ptrtoint ptr %size12 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size12, align 4
  %or58 = or i32 %67, 2048
  %add61 = add i32 %mul, 648
  %68 = tail call i32 @llvm.bswap.i32(i32 %or58) #18
  %69 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv, align 128
  %add.ptr.i179 = getelementptr i8, ptr %70, i32 16384
  %add.ptr1.i180 = getelementptr i8, ptr %add.ptr.i179, i32 %add61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i180, i32 %68) #18, !srcloc !221
  %71 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %priv, align 128
  %add.ptr1.i182 = getelementptr i8, ptr %72, i32 17960
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i182) #18, !srcloc !220
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #18
  %shl63 = shl nuw i32 1, %index
  %or64 = or i32 %74, %shl63
  %75 = tail call i32 @llvm.bswap.i32(i32 %or64) #18
  %76 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv, align 128
  %add.ptr1.i184 = getelementptr i8, ptr %77, i32 17960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i184, i32 %75) #18, !srcloc !221
  tail call void @napi_enable(ptr noundef %napi) #18
  %msg_enable67 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 37
  %78 = ptrtoint ptr %msg_enable67 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %msg_enable67, align 8
  %and68 = and i32 %79, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end35.cleanup_crit_edge, label %do.body71

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body71:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_sysport_init_tx_ring.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_sysport_init_tx_ring, %if.then76)) #18
          to label %cleanup [label %if.then76], !srcloc !223

if.then76:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #20
  %80 = ptrtoint ptr %netdev10 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %netdev10, align 32
  %82 = ptrtoint ptr %size12 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %size12, align 4
  %switch_queue79 = getelementptr %struct.bcm_sysport_tx_ring, ptr %1, i32 %index, i32 13
  %84 = ptrtoint ptr %switch_queue79 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %switch_queue79, align 4
  %switch_port80 = getelementptr %struct.bcm_sysport_tx_ring, ptr %1, i32 %index, i32 14
  %86 = ptrtoint ptr %switch_port80 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %switch_port80, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcm_sysport_init_tx_ring.__UNIQUE_ID_ddebug514, ptr noundef %81, ptr noundef nonnull @.str.51, i32 noundef %83, i32 noundef %85, i32 noundef %87) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %do.body71, %if.end35.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ -12, %do.body.cleanup_crit_edge ], [ 0, %if.then76 ], [ 0, %if.end35.cleanup_crit_edge ], [ 0, %do.body71 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sysport_init_rx_ring(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rx_desc_words = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %num_rx_desc_words to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rx_desc_words, align 8
  %div92 = lshr i32 %1, 1
  %num_rx_bds = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 18
  %2 = ptrtoint ptr %num_rx_bds to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div92, ptr %num_rx_bds, align 4
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 128
  %add.ptr = getelementptr i8, ptr %4, i32 8192
  %rx_bds = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 16
  %5 = ptrtoint ptr %rx_bds to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %rx_bds, align 4
  %rx_c_index = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 20
  %6 = ptrtoint ptr %rx_c_index to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rx_c_index, align 4
  %rx_read_ptr = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 19
  %7 = ptrtoint ptr %rx_read_ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rx_read_ptr, align 16
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div92, i32 16) #18
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !218

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %rx_cbs143 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 17
  %10 = ptrtoint ptr %rx_cbs143 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rx_cbs143, align 8
  br label %do.body

if.end7.i.i:                                      ; preds = %entry
  %11 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #23
  %rx_cbs = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 17
  %12 = ptrtoint ptr %rx_cbs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i.i, ptr %rx_cbs, align 8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.do.body_crit_edge, label %for.cond.preheader

if.end7.i.i.do.body_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

for.cond.preheader:                               ; preds = %if.end7.i.i
  %13 = ptrtoint ptr %num_rx_bds to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_rx_bds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp148.not = icmp eq i32 %14, 0
  br i1 %cmp148.not, label %for.cond.preheader.if.end23_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end23_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

do.body:                                          ; preds = %if.end7.i.i.do.body_crit_edge, %kcalloc.exit.thread
  %msg_enable = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 37
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 8
  %and = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %netdev = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 9
  %17 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev, align 32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.48) #21
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0149 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %19 = ptrtoint ptr %rx_cbs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_cbs, align 8
  %21 = ptrtoint ptr %rx_bds to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_bds, align 4
  %mul = shl i32 %i.0149, 3
  %add.ptr10 = getelementptr i8, ptr %22, i32 %mul
  %bd_addr = getelementptr %struct.bcm_sysport_cb, ptr %20, i32 %i.0149, i32 1
  %23 = ptrtoint ptr %bd_addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr10, ptr %bd_addr, align 4
  %inc = add nuw i32 %i.0149, 1
  %24 = ptrtoint ptr %num_rx_bds to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_rx_bds, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %phi.cmp = icmp eq i32 %25, 0
  br i1 %phi.cmp, label %for.end.if.end23_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.if.end23_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.010.i, 1
  %26 = ptrtoint ptr %num_rx_bds to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_rx_bds, align 4
  %cmp.i = icmp ult i32 %inc.i, %27
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end23_crit_edge

for.cond.i.if.end23_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %rx_cbs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_cbs, align 8
  %arrayidx.i = getelementptr %struct.bcm_sysport_cb, ptr %29, i32 %i.010.i
  %call.i = tail call fastcc ptr @bcm_sysport_rx_refill(ptr noundef %priv, ptr noundef %arrayidx.i) #18
  tail call void @consume_skb(ptr noundef %call.i) #18
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %do.body14, label %for.cond.i

do.body14:                                        ; preds = %for.body.i
  %msg_enable15 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 37
  %32 = ptrtoint ptr %msg_enable15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable15, align 8
  %and16 = and i32 %33, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body14.cleanup_crit_edge, label %if.then18

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then18:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #20
  %netdev19 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 9
  %34 = ptrtoint ptr %netdev19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev19, align 32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.52) #21
  br label %cleanup

if.end23:                                         ; preds = %for.cond.i.if.end23_crit_edge, %for.end.if.end23_crit_edge, %for.cond.preheader.if.end23_crit_edge
  %is_lite.i = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 5
  %36 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i94.not = icmp eq i8 %37, 0
  %off.addr.0.i = select i1 %tobool.not.i94.not, i32 4100, i32 4104
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 128
  %add.ptr.i = getelementptr i8, ptr %39, i32 8192
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %off.addr.0.i
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #18, !srcloc !220
  %41 = and i32 %40, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool26.not = icmp eq i32 %41, 0
  br i1 %tobool26.not, label %if.then27, label %if.end23.if.end29_crit_edge

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29

if.then27:                                        ; preds = %if.end23
  %42 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv, align 128
  %add.ptr1.i.i = getelementptr i8, ptr %43, i32 12288
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #18, !srcloc !220
  %45 = and i32 %44, -16777217
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 128
  %add.ptr1.i22.i = getelementptr i8, ptr %47, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i22.i, i32 %45) #18, !srcloc !221
  br label %do.body.i

do.body.i:                                        ; preds = %if.end9.i.do.body.i_crit_edge, %if.then27
  %timeout.0.i = phi i32 [ 1000, %if.then27 ], [ %dec.i, %if.end9.i.do.body.i_crit_edge ]
  %48 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i24.not.i = icmp eq i8 %49, 0
  %off.addr.0.i.i = select i1 %tobool.not.i24.not.i, i32 4100, i32 4104
  %50 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv, align 128
  %add.ptr.i25.i = getelementptr i8, ptr %51, i32 8192
  %add.ptr1.i26.i = getelementptr i8, ptr %add.ptr.i25.i, i32 %off.addr.0.i.i
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i26.i) #18, !srcloc !220
  %53 = and i32 %52, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %.not = icmp eq i32 %53, 0
  br i1 %.not, label %if.end9.i, label %do.body.i.if.end29_crit_edge

do.body.i.if.end29_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29

if.end9.i:                                        ; preds = %do.body.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #18
  %dec.i = add nsw i32 %timeout.0.i, -1
  %cmp10.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %cmp10.not.i, label %do.end.i, label %if.end9.i.do.body.i_crit_edge

if.end9.i.do.body.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #20
  %netdev.i = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 9
  %54 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %netdev.i, align 32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %55, ptr noundef nonnull @.str.61) #21
  br label %if.end29

if.end29:                                         ; preds = %do.end.i, %do.body.i.if.end29_crit_edge, %if.end23.if.end29_crit_edge
  %56 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i98.not = icmp eq i8 %57, 0
  %off.addr.0.i99 = select i1 %tobool.not.i98.not, i32 4116, i32 4120
  %58 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv, align 128
  %add.ptr.i100 = getelementptr i8, ptr %59, i32 8192
  %add.ptr1.i101 = getelementptr i8, ptr %add.ptr.i100, i32 %off.addr.0.i99
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i101, i32 0) #18, !srcloc !221
  %60 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i103.not = icmp eq i8 %61, 0
  %off.addr.0.i104 = select i1 %tobool.not.i103.not, i32 4112, i32 4116
  %62 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv, align 128
  %add.ptr.i105 = getelementptr i8, ptr %63, i32 8192
  %add.ptr1.i106 = getelementptr i8, ptr %add.ptr.i105, i32 %off.addr.0.i104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i106, i32 0) #18, !srcloc !221
  %64 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i108.not = icmp eq i8 %65, 0
  %off.addr.0.i109 = select i1 %tobool.not.i108.not, i32 4120, i32 4124
  %66 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %priv, align 128
  %add.ptr.i110 = getelementptr i8, ptr %67, i32 8192
  %add.ptr1.i111 = getelementptr i8, ptr %add.ptr.i110, i32 %off.addr.0.i109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i111, i32 0) #18, !srcloc !221
  %68 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i113.not = icmp eq i8 %69, 0
  %off.addr.0.i114 = select i1 %tobool.not.i113.not, i32 4124, i32 4128
  %70 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv, align 128
  %add.ptr.i115 = getelementptr i8, ptr %71, i32 8192
  %add.ptr1.i116 = getelementptr i8, ptr %add.ptr.i115, i32 %off.addr.0.i114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i116, i32 0) #18, !srcloc !221
  %72 = ptrtoint ptr %num_rx_bds to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_rx_bds, align 4
  %shl = shl i32 %73, 16
  %or = or i32 %shl, 2048
  %74 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i118.not = icmp eq i8 %75, 0
  %off.addr.0.i119 = select i1 %tobool.not.i118.not, i32 4108, i32 4112
  %76 = tail call i32 @llvm.bswap.i32(i32 %or) #18
  %77 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %priv, align 128
  %add.ptr.i120 = getelementptr i8, ptr %78, i32 8192
  %add.ptr1.i121 = getelementptr i8, ptr %add.ptr.i120, i32 %off.addr.0.i119
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i121, i32 %76) #18, !srcloc !221
  %79 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i123.not = icmp eq i8 %80, 0
  %off.addr.0.i124 = select i1 %tobool.not.i123.not, i32 4128, i32 4132
  %81 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %priv, align 128
  %add.ptr.i125 = getelementptr i8, ptr %82, i32 8192
  %add.ptr1.i126 = getelementptr i8, ptr %add.ptr.i125, i32 %off.addr.0.i124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i126, i32 0) #18, !srcloc !221
  %83 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i128.not = icmp eq i8 %84, 0
  %off.addr.0.i129 = select i1 %tobool.not.i128.not, i32 4132, i32 4136
  %85 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %priv, align 128
  %add.ptr.i130 = getelementptr i8, ptr %86, i32 8192
  %add.ptr1.i131 = getelementptr i8, ptr %add.ptr.i130, i32 %off.addr.0.i129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i131, i32 0) #18, !srcloc !221
  %87 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i133.not = icmp eq i8 %88, 0
  %off.addr.0.i134 = select i1 %tobool.not.i133.not, i32 4136, i32 4140
  %89 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %priv, align 128
  %add.ptr.i135 = getelementptr i8, ptr %90, i32 8192
  %add.ptr1.i136 = getelementptr i8, ptr %add.ptr.i135, i32 %off.addr.0.i134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i136, i32 0) #18, !srcloc !221
  %91 = ptrtoint ptr %num_rx_desc_words to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_rx_desc_words, align 8
  %sub = add i32 %92, -1
  %93 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i138.not = icmp eq i8 %94, 0
  %off.addr.0.i139 = select i1 %tobool.not.i138.not, i32 4140, i32 4144
  %95 = tail call i32 @llvm.bswap.i32(i32 %sub) #18
  %96 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %priv, align 128
  %add.ptr.i140 = getelementptr i8, ptr %97, i32 8192
  %add.ptr1.i141 = getelementptr i8, ptr %add.ptr.i140, i32 %off.addr.0.i139
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i141, i32 %95) #18, !srcloc !221
  %msg_enable33 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 37
  %98 = ptrtoint ptr %msg_enable33 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %msg_enable33, align 8
  %and34 = and i32 %99, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end29.cleanup_crit_edge, label %do.body37

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body37:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_sysport_init_rx_ring.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_sysport_init_rx_ring, %if.then42)) #18
          to label %cleanup [label %if.then42], !srcloc !223

if.then42:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #20
  %netdev43 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 9
  %100 = ptrtoint ptr %netdev43 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %netdev43, align 32
  %102 = ptrtoint ptr %num_rx_bds to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %num_rx_bds, align 4
  %104 = ptrtoint ptr %rx_bds to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rx_bds, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcm_sysport_init_rx_ring.__UNIQUE_ID_ddebug516, ptr noundef %101, ptr noundef nonnull @.str.54, i32 noundef %103, ptr noundef %105) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %do.body37, %if.end29.cleanup_crit_edge, %if.then18, %do.body14.cleanup_crit_edge, %if.then4, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then4 ], [ -12, %do.body.cleanup_crit_edge ], [ -12, %if.then18 ], [ -12, %do.body14.cleanup_crit_edge ], [ 0, %if.then42 ], [ 0, %if.end29.cleanup_crit_edge ], [ 0, %do.body37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_sysport_netif_start(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca %struct.dim_cq_moder, align 2
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %work.i = getelementptr i8, ptr %dev, i32 2832
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #18
  %0 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr i8, ptr %dev, i32 2848
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.63, ptr noundef nonnull @bcm_sysport_init_dim.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry9.i = getelementptr i8, ptr %dev, i32 2836
  %1 = ptrtoint ptr %entry9.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry9.i, ptr %entry9.i, align 4
  %prev.i.i = getelementptr i8, ptr %dev, i32 2840
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry9.i, ptr %prev.i.i, align 4
  %func.i = getelementptr i8, ptr %dev, i32 2844
  %3 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bcm_sysport_dim_work, ptr %func.i, align 4
  %mode.i = getelementptr i8, ptr %dev, i32 2881
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %mode.i, align 1
  %event_ctr.i = getelementptr i8, ptr %dev, i32 2746
  %5 = ptrtoint ptr %event_ctr.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %event_ctr.i, align 2
  %packets.i = getelementptr i8, ptr %dev, i32 2748
  %6 = ptrtoint ptr %packets.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %packets.i, align 4
  %bytes.i = getelementptr i8, ptr %dev, i32 2752
  %7 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bytes.i, align 8
  %dim1.i = getelementptr i8, ptr %dev, i32 2744
  %rx_coalesce_usecs.i = getelementptr i8, ptr %dev, i32 2892
  %8 = ptrtoint ptr %rx_coalesce_usecs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_coalesce_usecs.i, align 4
  %rx_max_coalesced_frames.i = getelementptr i8, ptr %dev, i32 2888
  %10 = ptrtoint ptr %rx_max_coalesced_frames.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_max_coalesced_frames.i, align 8
  %12 = ptrtoint ptr %dim1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dim1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i, label %entry.bcm_sysport_init_rx_coalesce.exit_crit_edge, label %if.then.i

entry.bcm_sysport_init_rx_coalesce.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %bcm_sysport_init_rx_coalesce.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #18
  call void @net_dim_get_def_rx_moderation(ptr nonnull sret(%struct.dim_cq_moder) align 2 %tmp.i, i8 noundef zeroext 0) #18
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %moder.sroa.0.0.copyload5.i = load i16, ptr %tmp.i, align 2
  %moder.sroa.5.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 2
  %15 = ptrtoint ptr %moder.sroa.5.0.tmp.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %moder.sroa.5.0.copyload6.i = load i16, ptr %moder.sroa.5.0.tmp.sroa_idx.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #18
  %conv.i = zext i16 %moder.sroa.0.0.copyload5.i to i32
  %conv4.i = zext i16 %moder.sroa.5.0.copyload6.i to i32
  br label %bcm_sysport_init_rx_coalesce.exit

bcm_sysport_init_rx_coalesce.exit:                ; preds = %if.then.i, %entry.bcm_sysport_init_rx_coalesce.exit_crit_edge
  %usecs.0.i = phi i32 [ %conv.i, %if.then.i ], [ %9, %entry.bcm_sysport_init_rx_coalesce.exit_crit_edge ]
  %pkts.0.i = phi i32 [ %conv4.i, %if.then.i ], [ %11, %entry.bcm_sysport_init_rx_coalesce.exit_crit_edge ]
  %is_lite.i.i.i = getelementptr i8, ptr %dev, i32 2324
  %16 = ptrtoint ptr %is_lite.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_lite.i.i.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.not.i.i = icmp eq i8 %17, 0
  %off.addr.0.i.i.i = select i1 %tobool.not.i.not.i.i, i32 4144, i32 4148
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 8192
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %off.addr.0.i.i.i
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #18, !srcloc !220
  %21 = lshr i32 %20, 8
  %and.i.i = and i32 %21, 65024
  %sub.i.i = mul i32 %usecs.0.i, 8000
  %22 = add i32 %sub.i.i, 65528
  %shl.i.i = and i32 %22, -65536
  %or.i.i = or i32 %shl.i.i, %pkts.0.i
  %or1.i.i = or i32 %or.i.i, %and.i.i
  %23 = ptrtoint ptr %is_lite.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_lite.i.i.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i8.not.i.i = icmp eq i8 %24, 0
  %off.addr.0.i9.i.i = select i1 %tobool.not.i8.not.i.i, i32 4144, i32 4148
  %25 = call i32 @llvm.bswap.i32(i32 %or1.i.i) #18
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i10.i.i = getelementptr i8, ptr %27, i32 8192
  %add.ptr1.i11.i.i = getelementptr i8, ptr %add.ptr.i10.i.i, i32 %off.addr.0.i9.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i11.i.i, i32 %25) #18, !srcloc !221
  %napi = getelementptr i8, ptr %dev, i32 2432
  call void @napi_enable(ptr noundef %napi) #18
  %irq0_mask.i = getelementptr i8, ptr %dev, i32 2312
  %28 = ptrtoint ptr %irq0_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq0_mask.i, align 8
  %and.i = and i32 %29, -545
  store i32 %and.i, ptr %irq0_mask.i, align 8
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i = getelementptr i8, ptr %31, i32 532
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 537001984) #18, !srcloc !221
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %32 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phydev, align 16
  call void @phy_start(ptr noundef %33) #18
  %34 = ptrtoint ptr %is_lite.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %is_lite.i.i.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not = icmp eq i8 %35, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %bcm_sysport_init_rx_coalesce.exit
  call void @__sanitizer_cov_trace_pc() #20
  %irq1_mask.i = getelementptr i8, ptr %dev, i32 2320
  %36 = ptrtoint ptr %irq1_mask.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %irq1_mask.i, align 16
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i9 = getelementptr i8, ptr %38, i32 596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i9, i32 -1) #18, !srcloc !221
  br label %if.end

if.else:                                          ; preds = %bcm_sysport_init_rx_coalesce.exit
  call void @__sanitizer_cov_trace_pc() #20
  %39 = ptrtoint ptr %irq0_mask.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq0_mask.i, align 8
  %and.i11 = and i32 %40, -268431361
  store i32 %and.i11, ptr %irq0_mask.i, align 8
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i12 = getelementptr i8, ptr %42, i32 532
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i12, i32 15793935) #18, !srcloc !221
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_sysport_fini_rx_ring(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %is_lite.i = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.not = icmp eq i8 %1, 0
  %off.addr.0.i = select i1 %tobool.not.i.not, i32 4100, i32 4104
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 128
  %add.ptr.i = getelementptr i8, ptr %3, i32 8192
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %off.addr.0.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #18, !srcloc !220
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %netdev = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 9
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.64) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %num_rx_bds = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 18
  %8 = ptrtoint ptr %num_rx_bds to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_rx_bds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp34.not = icmp eq i32 %9, 0
  br i1 %cmp34.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %rx_cbs = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 17
  %pdev = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end4.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end4.for.body_crit_edge ]
  %10 = ptrtoint ptr %rx_cbs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_cbs, align 8
  %arrayidx = getelementptr %struct.bcm_sysport_cb, ptr %11, i32 %i.035
  %dma_addr = getelementptr %struct.bcm_sysport_cb, ptr %11, i32 %i.035, i32 2
  %12 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not = icmp eq i32 %13, 0
  br i1 %tobool1.not, label %for.body.if.end4_crit_edge, label %if.then2

for.body.if.end4_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %13, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #18
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %for.body.if.end4_crit_edge
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %17, i32 noundef 0) #18
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dma_addr, align 4
  %inc = add nuw i32 %i.035, 1
  %20 = ptrtoint ptr %num_rx_bds to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_rx_bds, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %if.end4.for.body_crit_edge, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %if.end4.for.end_crit_edge, %if.end.for.end_crit_edge
  %rx_cbs5 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 17
  %22 = ptrtoint ptr %rx_cbs5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_cbs5, align 8
  tail call void @kfree(ptr noundef %23) #18
  %24 = ptrtoint ptr %rx_cbs5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %rx_cbs5, align 8
  %msg_enable = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 37
  %25 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable, align 8
  %and7 = and i32 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %for.end.do.end20_crit_edge, label %do.body10

for.end.do.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end20

do.body10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_sysport_fini_rx_ring.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_sysport_fini_rx_ring, %if.then15)) #18
          to label %do.end20 [label %if.then15], !srcloc !223

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #20
  %netdev16 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 9
  %27 = ptrtoint ptr %netdev16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev16, align 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcm_sysport_fini_rx_ring.__UNIQUE_ID_ddebug517, ptr noundef %28, ptr noundef nonnull @.str.66) #18
  br label %do.end20

do.end20:                                         ; preds = %if.then15, %do.body10, %for.end.do.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_sysport_fini_tx_ring(ptr noundef %priv, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_rings = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 15
  %0 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_rings, align 32
  %arrayidx = getelementptr %struct.bcm_sysport_tx_ring, ptr %1, i32 %index
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 128
  %add.ptr1.i = getelementptr i8, ptr %3, i32 17924
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #18, !srcloc !220
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %netdev = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 9
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.67) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cbs = getelementptr %struct.bcm_sysport_tx_ring, ptr %1, i32 %index, i32 9
  %8 = ptrtoint ptr %cbs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cbs, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %napi = getelementptr %struct.bcm_sysport_tx_ring, ptr %1, i32 %index, i32 1
  tail call void @napi_disable(ptr noundef %napi) #18
  tail call void @__netif_napi_del(ptr noundef %napi) #18
  tail call void @synchronize_net() #18
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx) #18
  %call5.i = tail call fastcc i32 @__bcm_sysport_tx_reclaim(ptr noundef %priv, ptr noundef %arrayidx) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx, i32 noundef %call2.i) #18
  %10 = ptrtoint ptr %cbs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cbs, align 4
  tail call void @kfree(ptr noundef %11) #18
  %12 = ptrtoint ptr %cbs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %cbs, align 4
  %size = getelementptr %struct.bcm_sysport_tx_ring, ptr %1, i32 %index, i32 3
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %size, align 4
  %alloc_size = getelementptr %struct.bcm_sysport_tx_ring, ptr %1, i32 %index, i32 4
  %14 = ptrtoint ptr %alloc_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %alloc_size, align 8
  %msg_enable = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 37
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 8
  %and7 = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end3.cleanup_crit_edge, label %do.body10

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body10:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_sysport_fini_tx_ring.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_sysport_fini_tx_ring, %if.then15)) #18
          to label %cleanup [label %if.then15], !srcloc !223

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #20
  %netdev16 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 9
  %17 = ptrtoint ptr %netdev16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev16, align 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcm_sysport_fini_tx_ring.__UNIQUE_ID_ddebug515, ptr noundef %18, ptr noundef nonnull @.str.69) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do.body10, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule_irqoff(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__bcm_sysport_tx_reclaim(ptr noundef %priv, ptr nocapture noundef %ring) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 32
  %priv1 = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %ring, i32 0, i32 10
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %is_lite = getelementptr inbounds %struct.bcm_sysport_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %is_lite to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_lite, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %index = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %ring, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 8
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %shl = shl nuw i32 1, %7
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl) #18
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 128
  %add.ptr1.i = getelementptr i8, ptr %10, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %8) #18, !srcloc !221
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add = add i32 %7, 12
  %shl5 = shl nuw i32 1, %add
  %11 = tail call i32 @llvm.bswap.i32(i32 %shl5) #18
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 128
  %add.ptr1.i107 = getelementptr i8, ptr %13, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i107, i32 %11) #18, !srcloc !221
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %index6 = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %ring, i32 0, i32 2
  %14 = ptrtoint ptr %index6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index6, align 8
  %mul = mul i32 %15, 28
  %add8 = add i32 %mul, 656
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 128
  %add.ptr.i108 = getelementptr i8, ptr %17, i32 16384
  %add.ptr1.i109 = getelementptr i8, ptr %add.ptr.i108, i32 %add8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i109) #18, !srcloc !220
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #18
  %shr = lshr i32 %19, 16
  %c_index9 = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %ring, i32 0, i32 7
  %20 = ptrtoint ptr %c_index9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %c_index9, align 4
  %sub = sub i32 %shr, %21
  %and10 = and i32 %sub, 65535
  %msg_enable = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 37
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 8
  %and11 = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.do.end25_crit_edge, label %do.body14

if.end.do.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end25

do.body14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__bcm_sysport_tx_reclaim.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__bcm_sysport_tx_reclaim, %if.then19)) #18
          to label %do.end25 [label %if.then19], !srcloc !223

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #20
  %24 = ptrtoint ptr %index6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index6, align 8
  %26 = ptrtoint ptr %c_index9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %c_index9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__bcm_sysport_tx_reclaim.__UNIQUE_ID_ddebug510, ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %25, i32 noundef %27, i32 noundef %shr, i32 noundef %and10) #18
  br label %do.end25

do.end25:                                         ; preds = %if.then19, %do.body14, %if.end.do.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp118.not = icmp eq i32 %and10, 0
  br i1 %cmp118.not, label %do.end25.while.end_crit_edge, label %while.body.lr.ph

do.end25.while.end_crit_edge:                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end25
  %cbs = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %ring, i32 0, i32 9
  %clean_index = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %ring, i32 0, i32 8
  %desc_count = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %ring, i32 0, i32 5
  %size = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %ring, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %bcm_sysport_tx_reclaim_one.exit.while.body_crit_edge, %while.body.lr.ph
  %txbds_processed.0121 = phi i32 [ 0, %while.body.lr.ph ], [ %inc26, %bcm_sysport_tx_reclaim_one.exit.while.body_crit_edge ]
  %bytes_compl.0120 = phi i32 [ 0, %while.body.lr.ph ], [ %bytes_compl.2, %bcm_sysport_tx_reclaim_one.exit.while.body_crit_edge ]
  %pkts_compl.0119 = phi i32 [ 0, %while.body.lr.ph ], [ %pkts_compl.2, %bcm_sysport_tx_reclaim_one.exit.while.body_crit_edge ]
  %28 = ptrtoint ptr %cbs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cbs, align 4
  %30 = ptrtoint ptr %clean_index to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %clean_index, align 8
  %arrayidx = getelementptr %struct.bcm_sysport_cb, ptr %29, i32 %31
  %32 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv1, align 8
  %pdev.i = getelementptr inbounds %struct.bcm_sysport_priv, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i, align 4
  %dma_addr.i = getelementptr %struct.bcm_sysport_cb, ptr %29, i32 %31, i32 2
  %40 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_addr.i, align 4
  %dma_len.i = getelementptr %struct.bcm_sysport_cb, ptr %29, i32 %31, i32 3
  %42 = ptrtoint ptr %dma_len.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %41, i32 noundef %43, i32 noundef 1, i32 noundef 0) #18
  %inc.i = add i32 %pkts_compl.0119, 1
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %45, i32 noundef 0) #18
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end11.sink.split.i

if.else.i:                                        ; preds = %while.body
  %dma_addr3.i = getelementptr %struct.bcm_sysport_cb, ptr %29, i32 %31, i32 2
  %47 = ptrtoint ptr %dma_addr3.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma_addr3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool4.not.i = icmp eq i32 %48, 0
  br i1 %tobool4.not.i, label %if.else.i.bcm_sysport_tx_reclaim_one.exit_crit_edge, label %if.then5.i

if.else.i.bcm_sysport_tx_reclaim_one.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bcm_sysport_tx_reclaim_one.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %dma_len6.i = getelementptr %struct.bcm_sysport_cb, ptr %29, i32 %31, i32 3
  %49 = ptrtoint ptr %dma_len6.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_len6.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %48, i32 noundef %50, i32 noundef 1, i32 noundef 0) #18
  br label %if.end11.sink.split.i

if.end11.sink.split.i:                            ; preds = %if.then5.i, %if.then.i
  %pkts_compl.1 = phi i32 [ %pkts_compl.0119, %if.then5.i ], [ %inc.i, %if.then.i ]
  %.pn = phi i32 [ %50, %if.then5.i ], [ %39, %if.then.i ]
  %dma_addr3.sink.i = phi ptr [ %dma_addr3.i, %if.then5.i ], [ %dma_addr.i, %if.then.i ]
  %bytes_compl.1 = add i32 %.pn, %bytes_compl.0120
  %51 = ptrtoint ptr %dma_addr3.sink.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %dma_addr3.sink.i, align 4
  br label %bcm_sysport_tx_reclaim_one.exit

bcm_sysport_tx_reclaim_one.exit:                  ; preds = %if.end11.sink.split.i, %if.else.i.bcm_sysport_tx_reclaim_one.exit_crit_edge
  %pkts_compl.2 = phi i32 [ %pkts_compl.0119, %if.else.i.bcm_sysport_tx_reclaim_one.exit_crit_edge ], [ %pkts_compl.1, %if.end11.sink.split.i ]
  %bytes_compl.2 = phi i32 [ %bytes_compl.0120, %if.else.i.bcm_sysport_tx_reclaim_one.exit_crit_edge ], [ %bytes_compl.1, %if.end11.sink.split.i ]
  %52 = ptrtoint ptr %desc_count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %desc_count, align 4
  %inc = add i32 %53, 1
  store i32 %inc, ptr %desc_count, align 4
  %inc26 = add nuw nsw i32 %txbds_processed.0121, 1
  %54 = ptrtoint ptr %clean_index to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %clean_index, align 8
  %56 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size, align 4
  %sub28 = add i32 %57, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %sub28)
  %cmp29 = icmp ult i32 %55, %sub28
  %inc38 = add i32 %55, 1
  %storemerge = select i1 %cmp29, i32 %inc38, i32 0, !prof !230
  %58 = ptrtoint ptr %clean_index to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %storemerge, ptr %clean_index, align 8
  %exitcond.not = icmp eq i32 %inc26, %and10
  br i1 %exitcond.not, label %bcm_sysport_tx_reclaim_one.exit.while.end_crit_edge, label %bcm_sysport_tx_reclaim_one.exit.while.body_crit_edge

bcm_sysport_tx_reclaim_one.exit.while.body_crit_edge: ; preds = %bcm_sysport_tx_reclaim_one.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

bcm_sysport_tx_reclaim_one.exit.while.end_crit_edge: ; preds = %bcm_sysport_tx_reclaim_one.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %bcm_sysport_tx_reclaim_one.exit.while.end_crit_edge, %do.end25.while.end_crit_edge
  %pkts_compl.0.lcssa = phi i32 [ 0, %do.end25.while.end_crit_edge ], [ %pkts_compl.2, %bcm_sysport_tx_reclaim_one.exit.while.end_crit_edge ]
  %bytes_compl.0.lcssa = phi i32 [ 0, %do.end25.while.end_crit_edge ], [ %bytes_compl.2, %bcm_sysport_tx_reclaim_one.exit.while.end_crit_edge ]
  %syncp = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 41
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %packets = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %ring, i32 0, i32 11
  %59 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %packets, align 4
  %add42 = add i32 %60, %pkts_compl.0.lcssa
  store i32 %add42, ptr %packets, align 4
  %bytes = getelementptr inbounds %struct.bcm_sysport_tx_ring, ptr %ring, i32 0, i32 12
  %61 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bytes, align 8
  %add43 = add i32 %62, %bytes_compl.0.lcssa
  store i32 %add43, ptr %bytes, align 8
  %dep_map.i.i = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 41, i32 0, i32 1
  %63 = tail call ptr @llvm.returnaddress(i32 0) #18
  %64 = ptrtoint ptr %63 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %64) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !231
  %65 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %66, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  %67 = ptrtoint ptr %c_index9 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %shr, ptr %c_index9, align 4
  %68 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %msg_enable, align 8
  %and48 = and i32 %69, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %while.end.do.end71_crit_edge, label %do.body51

while.end.do.end71_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end71

do.body51:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__bcm_sysport_tx_reclaim.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__bcm_sysport_tx_reclaim, %if.then63)) #18
          to label %do.end71 [label %if.then63], !srcloc !223

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #20
  %70 = ptrtoint ptr %index6 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %index6, align 8
  %72 = ptrtoint ptr %c_index9 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %c_index9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__bcm_sysport_tx_reclaim.__UNIQUE_ID_ddebug511, ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %71, i32 noundef %73, i32 noundef %pkts_compl.0.lcssa, i32 noundef %bytes_compl.0.lcssa) #18
  br label %do.end71

do.end71:                                         ; preds = %if.then63, %do.body51, %while.end.do.end71_crit_edge
  ret i32 %pkts_compl.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !207) #18
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !232
  %5 = tail call i32 @llvm.read_register.i32(metadata !207) #18
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !233
  %14 = tail call i32 @llvm.read_register.i32(metadata !207) #18
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !207) #18
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !207) #18
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !234
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !235
  %33 = tail call i32 @llvm.read_register.i32(metadata !207) #18
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !230

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 271, i32 noundef 9, ptr noundef null) #18
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !236
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #18
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_tx_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -48
  %priv = getelementptr i8, ptr %napi, i32 256
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %netdev.i = getelementptr inbounds %struct.bcm_sysport_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev.i, align 32
  %index.i = getelementptr i8, ptr %napi, i32 224
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #18
  %call6.i = tail call fastcc i32 @__bcm_sysport_tx_reclaim(ptr noundef %1, ptr noundef %add.ptr) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.then, label %bcm_sysport_tx_reclaim.exit

bcm_sysport_tx_reclaim.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %5
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3.i) #18
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3.i) #18
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #18
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %is_lite = getelementptr inbounds %struct.bcm_sysport_priv, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %is_lite to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_lite, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %12 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i, align 8
  br i1 %tobool.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %shl = shl nuw i32 1, %13
  %neg.i = xor i32 %shl, -1
  %irq1_mask.i = getelementptr inbounds %struct.bcm_sysport_priv, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %irq1_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq1_mask.i, align 16
  %and.i = and i32 %15, %neg.i
  store i32 %and.i, ptr %irq1_mask.i, align 16
  %16 = tail call i32 @llvm.bswap.i32(i32 %shl) #18
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %9, align 128
  %add.ptr1.i.i = getelementptr i8, ptr %18, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %16) #18, !srcloc !221
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %add = add i32 %13, 12
  %shl7 = shl nuw i32 1, %add
  %neg.i17 = xor i32 %shl7, -1
  %irq0_mask.i = getelementptr inbounds %struct.bcm_sysport_priv, ptr %9, i32 0, i32 2
  %19 = ptrtoint ptr %irq0_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq0_mask.i, align 8
  %and.i18 = and i32 %20, %neg.i17
  store i32 %and.i18, ptr %irq0_mask.i, align 8
  %21 = tail call i32 @llvm.bswap.i32(i32 %shl7) #18
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %9, align 128
  %add.ptr1.i.i19 = getelementptr i8, ptr %23, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i19, i32 %21) #18, !srcloc !221
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %bcm_sysport_tx_reclaim.exit
  %retval.0 = phi i32 [ 0, %if.else ], [ 0, %if.then3 ], [ %budget, %bcm_sysport_tx_reclaim.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bcm_sysport_rx_refill(ptr nocapture noundef %priv, ptr nocapture noundef %cb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %netdev = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 9
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 32
  %call = tail call ptr @__netdev_alloc_skb(ptr noundef %3, i32 noundef 2048, i32 noundef 10784) #18
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %alloc_rx_buff_failed = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 36, i32 10
  %4 = ptrtoint ptr %alloc_rx_buff_failed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alloc_rx_buff_failed, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %alloc_rx_buff_failed, align 4
  %msg_enable = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 37
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.55) #21
  br label %cleanup

if.end4:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %9) #18
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end4
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !230

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #18
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.60, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #18
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #18
  br label %if.then8

dma_map_single_attrs.exit:                        ; preds = %if.end4
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %9, i32 noundef 2048) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %9 to i32
  %sub.i = add i32 %15, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %14, i32 %shr.i
  %and.i = and i32 %15, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #18
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then8_crit_edge, label %if.end19

dma_map_single_attrs.exit.if.then8_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

if.then8:                                         ; preds = %dma_map_single_attrs.exit.if.then8_crit_edge, %dma_map_single_attrs.exit.thread
  %rx_dma_failed = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 36, i32 11
  %16 = ptrtoint ptr %rx_dma_failed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_dma_failed, align 4
  %inc10 = add i32 %17, 1
  store i32 %inc10, ptr %rx_dma_failed, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #18
  %msg_enable12 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 37
  %18 = ptrtoint ptr %msg_enable12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable12, align 8
  %and13 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then8.cleanup_crit_edge, label %if.then15

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then15:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.56) #21
  br label %cleanup

if.end19:                                         ; preds = %dma_map_single_attrs.exit
  %20 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cb, align 4
  %tobool21.not = icmp eq ptr %21, null
  br i1 %tobool21.not, label %if.end19.if.end25_crit_edge, label %if.then24, !prof !218

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  %dma_addr = getelementptr inbounds %struct.bcm_sysport_cb, ptr %cb, i32 0, i32 2
  %22 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_addr, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %23, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #18
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end19.if.end25_crit_edge
  %24 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %cb, align 4
  %dma_addr27 = getelementptr inbounds %struct.bcm_sysport_cb, ptr %cb, i32 0, i32 2
  %25 = ptrtoint ptr %dma_addr27 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call41.i, ptr %dma_addr27, align 4
  %bd_addr = getelementptr inbounds %struct.bcm_sysport_cb, ptr %cb, i32 0, i32 1
  %26 = ptrtoint ptr %bd_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bd_addr, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %call41.i) #18
  %add.ptr.i76 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 %28) #18, !srcloc !221
  %msg_enable29 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 37
  %29 = ptrtoint ptr %msg_enable29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_enable29, align 8
  %and30 = and i32 %30, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end25.cleanup_crit_edge, label %do.body33

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body33:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_sysport_rx_refill.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_sysport_rx_refill, %if.then42)) #18
          to label %cleanup [label %if.then42], !srcloc !223

if.then42:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcm_sysport_rx_refill.__UNIQUE_ID_ddebug507, ptr noundef %3, ptr noundef nonnull @.str.58) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %do.body33, %if.end25.cleanup_crit_edge, %if.then15, %if.then8.cleanup_crit_edge, %if.then3, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then3 ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.then15 ], [ null, %if.then8.cleanup_crit_edge ], [ %21, %if.then42 ], [ %21, %if.end25.cleanup_crit_edge ], [ %21, %do.body33 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sysport_dim_work(ptr nocapture noundef %work) #2 align 64 {
entry:
  %cur_profile = alloca %struct.dim_cq_moder, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -72
  %add.ptr6 = getelementptr i8, ptr %work, i32 -528
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cur_profile) #18
  %0 = ptrtoint ptr %cur_profile to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %cur_profile, align 8, !annotation !217
  %mode = getelementptr i8, ptr %work, i32 49
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %mode, align 1
  %profile_ix = getelementptr i8, ptr %work, i32 48
  %3 = ptrtoint ptr %profile_ix to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %profile_ix, align 8
  %conv = zext i8 %4 to i32
  call void @net_dim_get_rx_moderation(ptr nonnull sret(%struct.dim_cq_moder) align 2 %cur_profile, i8 noundef zeroext %2, i32 noundef %conv) #18
  %5 = ptrtoint ptr %cur_profile to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cur_profile, align 8
  %conv7 = zext i16 %6 to i32
  %pkts = getelementptr inbounds %struct.dim_cq_moder, ptr %cur_profile, i32 0, i32 1
  %7 = ptrtoint ptr %pkts to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pkts, align 2
  %conv8 = zext i16 %8 to i32
  %is_lite.i.i = getelementptr i8, ptr %work, i32 -508
  %9 = ptrtoint ptr %is_lite.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_lite.i.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.not.i = icmp eq i8 %10, 0
  %off.addr.0.i.i = select i1 %tobool.not.i.not.i, i32 4144, i32 4148
  %11 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr6, align 128
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 8192
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %off.addr.0.i.i
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #18, !srcloc !220
  %14 = lshr i32 %13, 8
  %and.i = and i32 %14, 65024
  %sub.i = mul nuw nsw i32 %conv7, 8000
  %15 = add nuw nsw i32 %sub.i, 65528
  %shl.i = and i32 %15, 1073676288
  %or.i = or i32 %shl.i, %conv8
  %or1.i = or i32 %or.i, %and.i
  %16 = ptrtoint ptr %is_lite.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_lite.i.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i8.not.i = icmp eq i8 %17, 0
  %off.addr.0.i9.i = select i1 %tobool.not.i8.not.i, i32 4144, i32 4148
  %18 = call i32 @llvm.bswap.i32(i32 %or1.i) #18
  %19 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr6, align 128
  %add.ptr.i10.i = getelementptr i8, ptr %20, i32 8192
  %add.ptr1.i11.i = getelementptr i8, ptr %add.ptr.i10.i, i32 %off.addr.0.i9.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i11.i, i32 %18) #18, !srcloc !221
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %add.ptr, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cur_profile) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dim_get_rx_moderation(ptr sret(%struct.dim_cq_moder) align 2, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_sysport_netif_stop(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call fastcc void @local_bh_disable() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !207) #18
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #18
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %4 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13.not.i = icmp eq i32 %5, 0
  br i1 %cmp13.not.i, label %entry.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

entry.netif_tx_disable.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #18
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %i.014.i, i32 11
  %8 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %3, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #18
  %9 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #18
  %inc.i = add nuw i32 %i.014.i, 1
  %10 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %entry.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #18
  tail call fastcc void @local_bh_enable() #18
  %napi = getelementptr i8, ptr %dev, i32 2432
  tail call void @napi_disable(ptr noundef %napi) #18
  %work = getelementptr i8, ptr %dev, i32 2832
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #18
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %12 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phydev, align 16
  tail call void @phy_stop(ptr noundef %13) #18
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i.i = getelementptr i8, ptr %15, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i, i32 -1) #18, !srcloc !221
  %irq0_mask.i.i = getelementptr i8, ptr %dev, i32 2312
  %16 = ptrtoint ptr %irq0_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %irq0_mask.i.i, align 8
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i = getelementptr i8, ptr %18, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 -1) #18, !srcloc !221
  %is_lite.i = getelementptr i8, ptr %dev, i32 2324
  %19 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.then.i, label %netif_tx_disable.exit.bcm_sysport_mask_all_intrs.exit_crit_edge

netif_tx_disable.exit.bcm_sysport_mask_all_intrs.exit_crit_edge: ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %bcm_sysport_mask_all_intrs.exit

if.then.i:                                        ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i5.i = getelementptr i8, ptr %22, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i5.i, i32 -1) #18, !srcloc !221
  %irq1_mask.i.i = getelementptr i8, ptr %dev, i32 2320
  %23 = ptrtoint ptr %irq1_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %irq1_mask.i.i, align 16
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i7.i = getelementptr i8, ptr %25, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i, i32 -1) #18, !srcloc !221
  br label %bcm_sysport_mask_all_intrs.exit

bcm_sysport_mask_all_intrs.exit:                  ; preds = %if.then.i, %netif_tx_disable.exit.bcm_sysport_mask_all_intrs.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #18
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @netdev_pick_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_stats_to_stats64(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sysport_desc_rx(ptr noundef %priv, i32 noundef %budget) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %stats641 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 40
  %netdev = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 32
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 128
  %add.ptr1.i = getelementptr i8, ptr %3, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 536870912) #18, !srcloc !221
  %is_lite = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 5
  %4 = ptrtoint ptr %is_lite to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_lite, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 128
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr1.i295 = getelementptr i8, ptr %7, i32 12312
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i295) #18, !srcloc !220
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr1.i300 = getelementptr i8, ptr %7, i32 12320
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i300) #18, !srcloc !220
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %9, %if.else ], [ %8, %if.then ]
  %10 = tail call i32 @llvm.bswap.i32(i32 %.sink) #18
  %and = and i32 %10, 65535
  %rx_c_index = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 20
  %11 = ptrtoint ptr %rx_c_index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_c_index, align 4
  %sub = sub i32 %10, %12
  %and3 = and i32 %sub, 65535
  %msg_enable = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 37
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 8
  %and4 = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.do.end17_crit_edge, label %do.body7

if.end.do.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end17

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_sysport_desc_rx.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_sysport_desc_rx, %if.then12)) #18
          to label %do.end17 [label %if.then12], !srcloc !223

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #20
  %15 = ptrtoint ptr %rx_c_index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_c_index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcm_sysport_desc_rx.__UNIQUE_ID_ddebug508, ptr noundef %1, ptr noundef nonnull @.str.78, i32 noundef %and, i32 noundef %16, i32 noundef %and3) #18
  br label %do.end17

do.end17:                                         ; preds = %if.then12, %do.body7, %if.end.do.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp303 = icmp ne i32 %and3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp18304 = icmp ne i32 %budget, 0
  %or.cond305 = and i1 %cmp303, %cmp18304
  br i1 %or.cond305, label %while.body.lr.ph, label %do.end17.while.end_crit_edge

do.end17.while.end_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end17
  %rx_cbs = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 17
  %rx_read_ptr = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 19
  %rx_dropped122 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %rx_errors125 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %crc_fwd = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 29
  %stats189 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %syncp = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 41
  %rx_bytes197 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 40, i32 1
  %dep_map.i.i = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 41, i32 0, i32 1
  %napi = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 8
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %num_rx_bds = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 18
  %17 = add i32 %budget, -1
  %18 = add nsw i32 %and3, -1
  %umin = call i32 @llvm.umin.i32(i32 %17, i32 %18)
  %19 = add nuw nsw i32 %umin, 1
  br label %while.body

while.body:                                       ; preds = %next.while.body_crit_edge, %while.body.lr.ph
  %processed.0307 = phi i32 [ 0, %while.body.lr.ph ], [ %inc201, %next.while.body_crit_edge ]
  %processed_bytes.0306 = phi i32 [ 0, %while.body.lr.ph ], [ %processed_bytes.1, %next.while.body_crit_edge ]
  %20 = ptrtoint ptr %rx_cbs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_cbs, align 8
  %22 = ptrtoint ptr %rx_read_ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_read_ptr, align 16
  %arrayidx = getelementptr %struct.bcm_sysport_cb, ptr %21, i32 %23
  %call19 = tail call fastcc ptr @bcm_sysport_rx_refill(ptr noundef %priv, ptr noundef %arrayidx)
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %do.body30, label %if.end40, !prof !218

do.body30:                                        ; preds = %while.body
  %24 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable, align 8
  %and32 = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body30.do.end37_crit_edge, label %if.then34

do.body30.do.end37_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end37

if.then34:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.79) #21
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %do.body30.do.end37_crit_edge
  %26 = ptrtoint ptr %rx_dropped122 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_dropped122, align 8
  %inc = add i32 %27, 1
  store i32 %inc, ptr %rx_dropped122, align 8
  %28 = ptrtoint ptr %rx_errors125 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_errors125, align 8
  %inc39 = add i32 %29, 1
  store i32 %inc39, ptr %rx_errors125, align 8
  br label %next

if.end40:                                         ; preds = %while.body
  %data = getelementptr inbounds %struct.sk_buff, ptr %call19, i32 0, i32 19
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %shr = lshr i32 %33, 18
  %shr43 = lshr i32 %33, 8
  %34 = trunc i32 %shr43 to i16
  %conv45 = and i16 %34, 1023
  %35 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msg_enable, align 8
  %and48 = and i32 %36, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end40.do.end73_crit_edge, label %do.body51

if.end40.do.end73_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end73

do.body51:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_sysport_desc_rx.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_sysport_desc_rx, %if.then63)) #18
          to label %do.end73 [label %if.then63], !srcloc !223

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #20
  %37 = ptrtoint ptr %rx_c_index to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_c_index, align 4
  %39 = ptrtoint ptr %rx_read_ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_read_ptr, align 16
  %conv67 = zext i16 %conv45 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcm_sysport_desc_rx.__UNIQUE_ID_ddebug509, ptr noundef %1, ptr noundef nonnull @.str.80, i32 noundef %and, i32 noundef %38, i32 noundef %40, i32 noundef %shr, i32 noundef %conv67) #18
  br label %do.end73

do.end73:                                         ; preds = %if.then63, %do.body51, %if.end40.do.end73_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 537133055, i32 %33)
  %cmp75 = icmp ugt i32 %33, 537133055
  br i1 %cmp75, label %do.body84, label %if.end97, !prof !218

do.body84:                                        ; preds = %do.end73
  %41 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_enable, align 8
  %and86 = and i32 %42, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %do.body84.do.end91_crit_edge, label %if.then88

do.body84.do.end91_crit_edge:                     ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end91

if.then88:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.81) #21
  br label %do.end91

do.end91:                                         ; preds = %if.then88, %do.body84.do.end91_crit_edge
  %43 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_length_errors, align 8
  %inc93 = add i32 %44, 1
  store i32 %inc93, ptr %rx_length_errors, align 8
  %45 = ptrtoint ptr %rx_errors125 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_errors125, align 8
  %inc96 = add i32 %46, 1
  store i32 %inc96, ptr %rx_errors125, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call19, i32 noundef 1) #18
  br label %next

if.end97:                                         ; preds = %do.end73
  %conv98 = zext i16 %conv45 to i32
  %47 = and i32 %conv98, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %47)
  %.not = icmp eq i32 %47, 768
  br i1 %.not, label %if.end127, label %do.body113, !prof !230

do.body113:                                       ; preds = %if.end97
  %48 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %msg_enable, align 8
  %and115 = and i32 %49, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %do.body113.do.end120_crit_edge, label %if.then117

do.body113.do.end120_crit_edge:                   ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end120

if.then117:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.82) #21
  br label %do.end120

do.end120:                                        ; preds = %if.then117, %do.body113.do.end120_crit_edge
  %50 = ptrtoint ptr %rx_dropped122 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_dropped122, align 8
  %inc123 = add i32 %51, 1
  store i32 %inc123, ptr %rx_dropped122, align 8
  %52 = ptrtoint ptr %rx_errors125 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_errors125, align 8
  %inc126 = add i32 %53, 1
  store i32 %inc126, ptr %rx_errors125, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call19, i32 noundef 1) #18
  br label %next

if.end127:                                        ; preds = %if.end97
  %and129 = and i32 %conv98, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end159, label %do.body138, !prof !230

do.body138:                                       ; preds = %if.end127
  %54 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %msg_enable, align 8
  %and140 = and i32 %55, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %do.body138.do.end145_crit_edge, label %if.then142

do.body138.do.end145_crit_edge:                   ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end145

if.then142:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.83) #21
  br label %do.end145

do.end145:                                        ; preds = %if.then142, %do.body138.do.end145_crit_edge
  %and147 = and i32 %conv98, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %do.end145.if.end152_crit_edge, label %if.then149

do.end145.if.end152_crit_edge:                    ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end152

if.then149:                                       ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #20
  %56 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_over_errors, align 4
  %inc151 = add i32 %57, 1
  store i32 %inc151, ptr %rx_over_errors, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.then149, %do.end145.if.end152_crit_edge
  %58 = ptrtoint ptr %rx_dropped122 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_dropped122, align 8
  %inc155 = add i32 %59, 1
  store i32 %inc155, ptr %rx_dropped122, align 8
  %60 = ptrtoint ptr %rx_errors125 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_errors125, align 8
  %inc158 = add i32 %61, 1
  store i32 %inc158, ptr %rx_errors125, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call19, i32 noundef 1) #18
  br label %next

if.end159:                                        ; preds = %if.end127
  %call161 = tail call ptr @skb_put(ptr noundef nonnull %call19, i32 noundef %shr) #18
  %and163 = and i32 %conv98, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %if.end159.if.end172_crit_edge, label %if.then171, !prof !218

if.end159.if.end172_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end172

if.then171:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #20
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call19, i32 0, i32 15
  %62 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end172

if.end172:                                        ; preds = %if.then171, %if.end159.if.end172_crit_edge
  %call173 = tail call ptr @skb_pull(ptr noundef nonnull %call19, i32 noundef 10) #18
  %63 = trunc i32 %shr to i16
  %conv176 = add nsw i16 %63, -10
  %conv177 = zext i16 %conv176 to i32
  %add = add i32 %processed_bytes.0306, %conv177
  %64 = ptrtoint ptr %crc_fwd to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load178 = load i8, ptr %crc_fwd, align 4
  %65 = and i8 %bf.load178, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool180.not = icmp eq i8 %65, 0
  br i1 %tobool180.not, label %if.end172.if.end187_crit_edge, label %if.then181

if.end172.if.end187_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end187

if.then181:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #20
  %sub183 = add nsw i32 %conv177, -4
  tail call void @skb_trim(ptr noundef nonnull %call19, i32 noundef %sub183) #18
  %conv186 = trunc i32 %sub183 to i16
  %.pre = and i32 %sub183, 65535
  br label %if.end187

if.end187:                                        ; preds = %if.then181, %if.end172.if.end187_crit_edge
  %conv191.pre-phi = phi i32 [ %.pre, %if.then181 ], [ %conv177, %if.end172.if.end187_crit_edge ]
  %len.0 = phi i16 [ %conv186, %if.then181 ], [ %conv176, %if.end172.if.end187_crit_edge ]
  %call188 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call19, ptr noundef %1) #18
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call19, i32 0, i32 15, i32 0, i32 18
  %66 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %call188, ptr %protocol, align 8
  %67 = ptrtoint ptr %stats189 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %stats189, align 8
  %inc190 = add i32 %68, 1
  store i32 %inc190, ptr %stats189, align 8
  %69 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_bytes, align 8
  %add193 = add i32 %70, %conv191.pre-phi
  store i32 %add193, ptr %rx_bytes, align 8
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %71 = ptrtoint ptr %stats641 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %stats641, align 8
  %inc195 = add i64 %72, 1
  store i64 %inc195, ptr %stats641, align 8
  %conv196 = zext i16 %len.0 to i64
  %73 = ptrtoint ptr %rx_bytes197 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %rx_bytes197, align 8
  %add198 = add i64 %74, %conv196
  store i64 %add198, ptr %rx_bytes197, align 8
  %75 = tail call ptr @llvm.returnaddress(i32 0) #18
  %76 = ptrtoint ptr %75 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %76) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !231
  %77 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %78, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  %call200 = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef nonnull %call19) #18
  br label %next

next:                                             ; preds = %if.end187, %if.end152, %do.end120, %do.end91, %do.end37
  %processed_bytes.1 = phi i32 [ %processed_bytes.0306, %do.end37 ], [ %processed_bytes.0306, %do.end91 ], [ %processed_bytes.0306, %do.end120 ], [ %processed_bytes.0306, %if.end152 ], [ %add, %if.end187 ]
  %inc201 = add nuw nsw i32 %processed.0307, 1
  %79 = ptrtoint ptr %rx_read_ptr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rx_read_ptr, align 16
  %inc203 = add i32 %80, 1
  %81 = ptrtoint ptr %num_rx_bds to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_rx_bds, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc203, i32 %82)
  %cmp205 = icmp eq i32 %inc203, %82
  %spec.store.select = select i1 %cmp205, i32 0, i32 %inc203
  %83 = ptrtoint ptr %rx_read_ptr to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %spec.store.select, ptr %rx_read_ptr, align 16
  %exitcond.not = icmp eq i32 %processed.0307, %umin
  br i1 %exitcond.not, label %next.while.end_crit_edge, label %next.while.body_crit_edge

next.while.body_crit_edge:                        ; preds = %next
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

next.while.end_crit_edge:                         ; preds = %next
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %next.while.end_crit_edge, %do.end17.while.end_crit_edge
  %processed_bytes.0.lcssa = phi i32 [ 0, %do.end17.while.end_crit_edge ], [ %processed_bytes.1, %next.while.end_crit_edge ]
  %processed.0.lcssa = phi i32 [ 0, %do.end17.while.end_crit_edge ], [ %19, %next.while.end_crit_edge ]
  %packets = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 21, i32 2
  %84 = ptrtoint ptr %packets to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %processed.0.lcssa, ptr %packets, align 4
  %bytes = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 21, i32 3
  %85 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %processed_bytes.0.lcssa, ptr %bytes, align 8
  ret i32 %processed.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dim(ptr noundef, [3 x i64]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dsa_slave_dev_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_sysport_unmap_queues(ptr nocapture noundef %dev, ptr noundef %slave_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dsa_port_from_netdev(ptr noundef %slave_dev) #18
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %index = getelementptr inbounds %struct.dsa_port, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %num_tx_queues2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %2 = ptrtoint ptr %num_tx_queues2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_queues2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 105
  %4 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %real_num_tx_queues, align 8
  %tx_rings = getelementptr i8, ptr %dev, i32 2720
  %mul = mul i32 %5, %1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %q.02 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_rings, align 32
  %switch_port = getelementptr %struct.bcm_sysport_tx_ring, ptr %7, i32 %q.02, i32 14
  %8 = ptrtoint ptr %switch_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %switch_port, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp3.not = icmp eq i32 %9, %1
  br i1 %cmp3.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end:                                           ; preds = %for.body
  %inspect = getelementptr %struct.bcm_sysport_tx_ring, ptr %7, i32 %q.02, i32 15
  %10 = ptrtoint ptr %inspect to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %inspect, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.end5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %inspect to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %inspect, align 4
  %switch_queue = getelementptr %struct.bcm_sysport_tx_ring, ptr %7, i32 %q.02, i32 13
  %13 = ptrtoint ptr %switch_queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %switch_queue, align 4
  %add = add i32 %14, %mul
  %arrayidx7 = getelementptr %struct.bcm_sysport_priv, ptr %add.ptr.i, i32 0, i32 44, i32 %add
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %q.02, 1
  %16 = ptrtoint ptr %num_tx_queues2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tx_queues2, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_port_from_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_suspend(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @netif_device_detach(ptr noundef %1) #18
  tail call fastcc void @bcm_sysport_netif_stop(ptr noundef %1)
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  %call3 = tail call i32 @phy_suspend(ptr noundef %5) #18
  %is_lite.i = getelementptr i8, ptr %1, i32 2324
  %6 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 128
  br i1 %tobool.not.i, label %if.then.i, label %if.else3.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 2056
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #18, !srcloc !220
  %11 = and i32 %10, -33554433
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i30.i = getelementptr i8, ptr %13, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30.i, i32 %11) #18, !srcloc !221
  br label %umac_enable_set.exit

if.else3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i31.i = getelementptr i8, ptr %9, i32 4096
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #18, !srcloc !220
  %15 = and i32 %14, -33554433
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i32.i = getelementptr i8, ptr %17, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %15) #18, !srcloc !221
  br label %umac_enable_set.exit

umac_enable_set.exit:                             ; preds = %if.else3.i, %if.then.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #18
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i59 = getelementptr i8, ptr %19, i32 12288
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i59) #18, !srcloc !220
  %21 = and i32 %20, -16777217
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i22.i = getelementptr i8, ptr %23, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i22.i, i32 %21) #18, !srcloc !221
  br label %do.body.i

do.body.i:                                        ; preds = %if.end9.i.do.body.i_crit_edge, %umac_enable_set.exit
  %timeout.0.i = phi i32 [ 1000, %umac_enable_set.exit ], [ %dec.i, %if.end9.i.do.body.i_crit_edge ]
  %24 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i24.not.i = icmp eq i8 %25, 0
  %off.addr.0.i.i = select i1 %tobool.not.i24.not.i, i32 4100, i32 4104
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i25.i = getelementptr i8, ptr %27, i32 8192
  %add.ptr1.i26.i = getelementptr i8, ptr %add.ptr.i25.i, i32 %off.addr.0.i.i
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i26.i) #18, !srcloc !220
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %.not = icmp eq i32 %29, 0
  br i1 %.not, label %if.end9.i, label %if.end6

if.end9.i:                                        ; preds = %do.body.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #18
  %dec.i = add nsw i32 %timeout.0.i, -1
  %cmp10.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %cmp10.not.i, label %if.then5, label %if.end9.i.do.body.i_crit_edge

if.end9.i.do.body.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

if.then5:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #20
  %netdev.i = getelementptr i8, ptr %1, i32 2656
  %30 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev.i, align 32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %31, ptr noundef nonnull @.str.61) #21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.85) #21
  br label %cleanup

if.end6:                                          ; preds = %do.body.i
  %rx_chk_en = getelementptr i8, ptr %1, i32 2916
  %32 = ptrtoint ptr %rx_chk_en to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %rx_chk_en, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool7.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool7.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i60 = getelementptr i8, ptr %34, i32 768
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #18, !srcloc !220
  %36 = and i32 %35, -16777217
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i61 = getelementptr i8, ptr %38, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %36) #18, !srcloc !221
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %wolopts = getelementptr i8, ptr %1, i32 2920
  %39 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wolopts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool11.not = icmp eq i32 %40, 0
  br i1 %tobool11.not, label %if.then12, label %if.end10.if.end13_crit_edge

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i = getelementptr i8, ptr %42, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 16777216) #18, !srcloc !221
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i62 = getelementptr i8, ptr %44, i32 17920
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i62) #18, !srcloc !220
  %46 = and i32 %45, -16777217
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i26.i63 = getelementptr i8, ptr %48, i32 17920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i26.i63, i32 %46) #18, !srcloc !221
  br label %do.body.i66

do.body.i66:                                      ; preds = %if.end11.i.do.body.i66_crit_edge, %if.end13
  %timeout.0.i64 = phi i32 [ 1000, %if.end13 ], [ %dec.i67, %if.end11.i.do.body.i66_crit_edge ]
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i28.i = getelementptr i8, ptr %50, i32 17924
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i28.i) #18, !srcloc !220
  %52 = and i32 %51, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %.not92 = icmp eq i32 %52, 0
  br i1 %.not92, label %if.end11.i, label %if.end17

if.end11.i:                                       ; preds = %do.body.i66
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #18
  %dec.i67 = add nsw i32 %timeout.0.i64, -1
  %cmp12.not.i = icmp eq i32 %timeout.0.i64, 0
  br i1 %cmp12.not.i, label %if.then16, label %if.end11.i.do.body.i66_crit_edge

if.end11.i.do.body.i66_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i66

if.then16:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  %netdev.i68 = getelementptr i8, ptr %1, i32 2656
  %53 = ptrtoint ptr %netdev.i68 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %netdev.i68, align 32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %54, ptr noundef nonnull @.str.62) #21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.86) #21
  br label %cleanup

if.end17:                                         ; preds = %do.body.i66
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #18
  %55 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i72 = icmp eq i8 %56, 0
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i, align 128
  br i1 %tobool.not.i72, label %if.then.i77, label %if.else3.i82

if.then.i77:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr1.i.i73 = getelementptr i8, ptr %58, i32 2056
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i73) #18, !srcloc !220
  %60 = and i32 %59, -16777217
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i30.i76 = getelementptr i8, ptr %62, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30.i76, i32 %60) #18, !srcloc !221
  br label %umac_enable_set.exit83

if.else3.i82:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i31.i78 = getelementptr i8, ptr %58, i32 4096
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i78) #18, !srcloc !220
  %64 = and i32 %63, -16777217
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i32.i81 = getelementptr i8, ptr %66, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i81, i32 %64) #18, !srcloc !221
  br label %umac_enable_set.exit83

umac_enable_set.exit83:                           ; preds = %if.else3.i82, %if.then.i77
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #18
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i84 = getelementptr i8, ptr %68, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i84, i32 16777216) #18, !srcloc !221
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %69 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp93.not = icmp eq i32 %70, 0
  br i1 %cmp93.not, label %umac_enable_set.exit83.for.end_crit_edge, label %umac_enable_set.exit83.for.body_crit_edge

umac_enable_set.exit83.for.body_crit_edge:        ; preds = %umac_enable_set.exit83
  br label %for.body

umac_enable_set.exit83.for.end_crit_edge:         ; preds = %umac_enable_set.exit83
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %umac_enable_set.exit83.for.body_crit_edge
  %i.094 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %umac_enable_set.exit83.for.body_crit_edge ]
  tail call fastcc void @bcm_sysport_fini_tx_ring(ptr noundef %add.ptr.i, i32 noundef %i.094)
  %inc = add nuw i32 %i.094, 1
  %71 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %72
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %umac_enable_set.exit83.for.end_crit_edge
  tail call fastcc void @bcm_sysport_fini_rx_ring(ptr noundef %add.ptr.i)
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 12, i32 1
  %73 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i85 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i85, label %for.end.if.end24_crit_edge, label %device_may_wakeup.exit

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

device_may_wakeup.exit:                           ; preds = %for.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 12, i32 6
  %74 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %75, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end24_crit_edge, label %land.lhs.true

device_may_wakeup.exit.if.end24_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %76 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %wolopts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool20.not = icmp eq i32 %77, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end24_crit_edge, label %if.then21

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

if.then21:                                        ; preds = %land.lhs.true
  %wol_clk = getelementptr i8, ptr %1, i32 2936
  %78 = ptrtoint ptr %wol_clk to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wol_clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %79) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i86 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i86, label %if.end.i, label %if.then21.clk_prepare_enable.exit_crit_edge

if.then21.clk_prepare_enable.exit_crit_edge:      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #20
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then21
  %call1.i = tail call i32 @clk_enable(ptr noundef %79) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @clk_unprepare(ptr noundef %79) #18
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then21.clk_prepare_enable.exit_crit_edge
  %call23 = tail call fastcc i32 @bcm_sysport_suspend_to_wol(ptr noundef %add.ptr.i)
  br label %if.end24

if.end24:                                         ; preds = %clk_prepare_enable.exit, %land.lhs.true.if.end24_crit_edge, %device_may_wakeup.exit.if.end24_crit_edge, %for.end.if.end24_crit_edge
  %ret.0 = phi i32 [ %call23, %clk_prepare_enable.exit ], [ 0, %land.lhs.true.if.end24_crit_edge ], [ 0, %device_may_wakeup.exit.if.end24_crit_edge ], [ 0, %for.end.if.end24_crit_edge ]
  %clk = getelementptr i8, ptr %1, i32 2932
  %80 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %81) #18
  tail call void @clk_unprepare(ptr noundef %81) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then16, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then5 ], [ -110, %if.then16 ], [ %ret.0, %if.end24 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sysport_resume(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr i8, ptr %1, i32 2932
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @clk_unprepare(ptr noundef %5) #18
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end.clk_prepare_enable.exit_crit_edge
  %wolopts = getelementptr i8, ptr %1, i32 2920
  %6 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wolopts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %clk_prepare_enable.exit.if.end5_crit_edge, label %if.then4

clk_prepare_enable.exit.if.end5_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.then4:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #20
  %wol_clk = getelementptr i8, ptr %1, i32 2936
  %8 = ptrtoint ptr %wol_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wol_clk, align 8
  tail call void @clk_disable(ptr noundef %9) #18
  tail call void @clk_unprepare(ptr noundef %9) #18
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %clk_prepare_enable.exit.if.end5_crit_edge
  %is_lite.i = getelementptr i8, ptr %1, i32 2324
  %10 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i83 = icmp eq i8 %11, 0
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 128
  br i1 %tobool.not.i83, label %umac_reset.exit, label %if.end5.if.else3.i_crit_edge

if.end5.if.else3.i_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else3.i

umac_reset.exit:                                  ; preds = %if.end5
  %add.ptr1.i.i = getelementptr i8, ptr %13, i32 2056
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #18, !srcloc !220
  %15 = or i32 %14, 2097152
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i10.i = getelementptr i8, ptr %17, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i10.i, i32 %15) #18, !srcloc !221
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #18
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i12.i = getelementptr i8, ptr %20, i32 2056
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i12.i) #18, !srcloc !220
  %22 = and i32 %21, -2097153
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i14.i = getelementptr i8, ptr %24, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i14.i, i32 %22) #18, !srcloc !221
  %25 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %.pr = load i8, ptr %is_lite.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool.not.i86 = icmp eq i8 %.pr, 0
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 128
  br i1 %tobool.not.i86, label %if.then.i, label %umac_reset.exit.if.else3.i_crit_edge

umac_reset.exit.if.else3.i_crit_edge:             ; preds = %umac_reset.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else3.i

if.then.i:                                        ; preds = %umac_reset.exit
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr1.i.i87 = getelementptr i8, ptr %27, i32 2056
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i87) #18, !srcloc !220
  %29 = and i32 %28, -50331649
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i30.i = getelementptr i8, ptr %31, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30.i, i32 %29) #18, !srcloc !221
  br label %umac_enable_set.exit

if.else3.i:                                       ; preds = %umac_reset.exit.if.else3.i_crit_edge, %if.end5.if.else3.i_crit_edge
  %32 = phi ptr [ %27, %umac_reset.exit.if.else3.i_crit_edge ], [ %13, %if.end5.if.else3.i_crit_edge ]
  %add.ptr.i31.i = getelementptr i8, ptr %32, i32 4096
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #18, !srcloc !220
  %34 = and i32 %33, -50331649
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i32.i = getelementptr i8, ptr %36, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %34) #18, !srcloc !221
  br label %umac_enable_set.exit

umac_enable_set.exit:                             ; preds = %if.else3.i, %if.then.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #18
  tail call fastcc void @bcm_sysport_resume_from_wol(ptr noundef %add.ptr.i)
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %37 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp154.not = icmp eq i32 %38, 0
  br i1 %cmp154.not, label %umac_enable_set.exit.for.end_crit_edge, label %umac_enable_set.exit.for.body_crit_edge

umac_enable_set.exit.for.body_crit_edge:          ; preds = %umac_enable_set.exit
  br label %for.body

umac_enable_set.exit.for.end_crit_edge:           ; preds = %umac_enable_set.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %umac_enable_set.exit.for.body_crit_edge
  %i.0155 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %umac_enable_set.exit.for.body_crit_edge ]
  %call6 = tail call fastcc i32 @bcm_sysport_init_tx_ring(ptr noundef %add.ptr.i, i32 noundef %i.0155)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.inc, label %if.then8

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef %i.0155) #21
  br label %out_free_tx_rings

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0155, 1
  %39 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %40
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %umac_enable_set.exit.for.end_crit_edge
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i = getelementptr i8, ptr %42, i32 17924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 33554432) #18, !srcloc !221
  %call10 = tail call fastcc i32 @bcm_sysport_init_rx_ring(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %for.end.out_free_rx_ring_crit_edge

for.end.out_free_rx_ring_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free_rx_ring

if.end13:                                         ; preds = %for.end
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i89 = getelementptr i8, ptr %44, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i89, i32 0) #18, !srcloc !221
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i90 = getelementptr i8, ptr %46, i32 12288
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i90) #18, !srcloc !220
  %48 = or i32 %47, 16777216
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i22.i = getelementptr i8, ptr %50, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i22.i, i32 %48) #18, !srcloc !221
  br label %do.body.i

do.body.i:                                        ; preds = %if.end9.i.do.body.i_crit_edge, %if.end13
  %timeout.0.i = phi i32 [ 1000, %if.end13 ], [ %dec.i, %if.end9.i.do.body.i_crit_edge ]
  %51 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i24.not.i = icmp eq i8 %52, 0
  %off.addr.0.i.i = select i1 %tobool.not.i24.not.i, i32 4100, i32 4104
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i25.i = getelementptr i8, ptr %54, i32 8192
  %add.ptr1.i26.i = getelementptr i8, ptr %add.ptr.i25.i, i32 %off.addr.0.i.i
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i26.i) #18, !srcloc !220
  %56 = and i32 %55, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %if.end17, label %if.end9.i

if.end9.i:                                        ; preds = %do.body.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #18
  %dec.i = add nsw i32 %timeout.0.i, -1
  %cmp10.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %cmp10.not.i, label %if.end9.i.out_free_rx_ring.sink.split_crit_edge, label %if.end9.i.do.body.i_crit_edge

if.end9.i.do.body.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

if.end9.i.out_free_rx_ring.sink.split_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free_rx_ring.sink.split

if.end17:                                         ; preds = %do.body.i
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %58 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %features, align 16
  %call18 = tail call i32 @bcm_sysport_set_features(ptr noundef %1, i64 noundef %59)
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i.i = getelementptr i8, ptr %61, i32 1024
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #18, !srcloc !220
  %63 = or i32 %62, 50331648
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #18
  %65 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i93 = icmp eq i8 %66, 0
  %and.i94 = and i32 %64, -12582913
  %spec.select.i = select i1 %tobool.not.i93, i32 %64, i32 %and.i94
  %and1.i = and i32 %spec.select.i, -4194305
  %67 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #18
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i7.i = getelementptr i8, ptr %69, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %67) #18, !srcloc !221
  %70 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool19.not = icmp eq i8 %71, 0
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.i, align 128
  br i1 %tobool19.not, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr1.i96 = getelementptr i8, ptr %73, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i96, i32 393216) #18, !srcloc !221
  br label %if.end21

if.else:                                          ; preds = %if.end17
  %add.ptr.i.i97 = getelementptr i8, ptr %73, i32 4096
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i97) #18, !srcloc !220
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #18
  %netdev.i98 = getelementptr i8, ptr %1, i32 2656
  %76 = ptrtoint ptr %netdev.i98 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %netdev.i98, align 32
  %dsa_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %77, i32 0, i32 75
  %78 = ptrtoint ptr %dsa_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dsa_ptr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i.i, label %if.else.gib_set_pad_extension.exit_crit_edge, label %netdev_uses_dsa.exit.i

if.else.gib_set_pad_extension.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %gib_set_pad_extension.exit

netdev_uses_dsa.exit.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %rcv.i.i = getelementptr inbounds %struct.dsa_port, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %rcv.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rcv.i.i, align 4
  %tobool2.i.not.i = icmp eq ptr %81, null
  %and.i99 = and i32 %75, -264241153
  %or.i100 = or i32 %and.i99, 16777216
  %spec.select.i101 = select i1 %tobool2.i.not.i, i32 %75, i32 %or.i100
  br label %gib_set_pad_extension.exit

gib_set_pad_extension.exit:                       ; preds = %netdev_uses_dsa.exit.i, %if.else.gib_set_pad_extension.exit_crit_edge
  %82 = phi i32 [ %75, %if.else.gib_set_pad_extension.exit_crit_edge ], [ %spec.select.i101, %netdev_uses_dsa.exit.i ]
  %and2.i = and i32 %82, -4128769
  %or3.i = or i32 %and2.i, 786432
  %83 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #18
  %84 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i10.i = getelementptr i8, ptr %85, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %83) #18, !srcloc !221
  br label %if.end21

if.end21:                                         ; preds = %gib_set_pad_extension.exit, %if.then20
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %86 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev_addr, align 64
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %87, align 1
  %conv.i = zext i8 %89 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %87, i32 1
  %90 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %91 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i102 = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %87, i32 2
  %92 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %93 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i103 = or i32 %or.i102, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %87, i32 3
  %94 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %95 to i32
  %or10.i = or i32 %or7.i103, %conv9.i
  %arrayidx11.i = getelementptr i8, ptr %87, i32 4
  %96 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %97 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 8
  %arrayidx14.i = getelementptr i8, ptr %87, i32 5
  %98 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %99 to i32
  %or16.i = or i32 %shl13.i, %conv15.i
  %100 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i105 = icmp eq i8 %101, 0
  %102 = tail call i32 @llvm.bswap.i32(i32 %or10.i) #18
  %103 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %add.ptr.i, align 128
  br i1 %tobool.not.i105, label %if.then.i107, label %if.else.i

if.then.i107:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr1.i.i106 = getelementptr i8, ptr %104, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i106, i32 %102) #18, !srcloc !221
  %105 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #18
  %106 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i29.i = getelementptr i8, ptr %107, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i29.i, i32 %105) #18, !srcloc !221
  br label %umac_set_hw_addr.exit

if.else.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr1.i31.i = getelementptr i8, ptr %104, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i31.i, i32 %102) #18, !srcloc !221
  %108 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #18
  %109 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i33.i = getelementptr i8, ptr %110, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i33.i, i32 %108) #18, !srcloc !221
  br label %umac_set_hw_addr.exit

umac_set_hw_addr.exit:                            ; preds = %if.else.i, %if.then.i107
  %111 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.not.i110 = icmp eq i8 %112, 0
  %113 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %add.ptr.i, align 128
  br i1 %tobool.not.i110, label %if.then.i115, label %if.else3.i120

if.then.i115:                                     ; preds = %umac_set_hw_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr1.i.i111 = getelementptr i8, ptr %114, i32 2056
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i111) #18, !srcloc !220
  %116 = or i32 %115, 33554432
  %117 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i30.i114 = getelementptr i8, ptr %118, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30.i114, i32 %116) #18, !srcloc !221
  br label %umac_enable_set.exit121

if.else3.i120:                                    ; preds = %umac_set_hw_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i31.i116 = getelementptr i8, ptr %114, i32 4096
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i116) #18, !srcloc !220
  %120 = or i32 %119, 33554432
  %121 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i32.i119 = getelementptr i8, ptr %122, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i119, i32 %120) #18, !srcloc !221
  br label %umac_enable_set.exit121

umac_enable_set.exit121:                          ; preds = %if.else3.i120, %if.then.i115
  %123 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i122 = getelementptr i8, ptr %124, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i122, i32 0) #18, !srcloc !221
  %125 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool.not.i124 = icmp eq i8 %126, 0
  %127 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %add.ptr.i, align 128
  br i1 %tobool.not.i124, label %if.then.i129, label %if.else3.i134

if.then.i129:                                     ; preds = %umac_enable_set.exit121
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr1.i.i125 = getelementptr i8, ptr %128, i32 2056
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i125) #18, !srcloc !220
  %130 = or i32 %129, 16777216
  %131 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i30.i128 = getelementptr i8, ptr %132, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30.i128, i32 %130) #18, !srcloc !221
  br label %umac_enable_set.exit135

if.else3.i134:                                    ; preds = %umac_enable_set.exit121
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i31.i130 = getelementptr i8, ptr %128, i32 4096
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i130) #18, !srcloc !220
  %134 = or i32 %133, 16777216
  %135 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i32.i133 = getelementptr i8, ptr %136, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i133, i32 %134) #18, !srcloc !221
  br label %umac_enable_set.exit135

umac_enable_set.exit135:                          ; preds = %if.else3.i134, %if.then.i129
  %137 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i.i136 = getelementptr i8, ptr %138, i32 17920
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i136) #18, !srcloc !220
  %140 = or i32 %139, 16777216
  %141 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i26.i138 = getelementptr i8, ptr %142, i32 17920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i26.i138, i32 %140) #18, !srcloc !221
  br label %do.body.i140

do.body.i140:                                     ; preds = %if.end11.i.do.body.i140_crit_edge, %umac_enable_set.exit135
  %timeout.0.i139 = phi i32 [ 1000, %umac_enable_set.exit135 ], [ %dec.i141, %if.end11.i.do.body.i140_crit_edge ]
  %143 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr1.i28.i = getelementptr i8, ptr %144, i32 17924
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i28.i) #18, !srcloc !220
  %146 = and i32 %145, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %if.end25, label %if.end11.i

if.end11.i:                                       ; preds = %do.body.i140
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #18
  %dec.i141 = add nsw i32 %timeout.0.i139, -1
  %cmp12.not.i = icmp eq i32 %timeout.0.i139, 0
  br i1 %cmp12.not.i, label %if.end11.i.out_free_rx_ring.sink.split_crit_edge, label %if.end11.i.do.body.i140_crit_edge

if.end11.i.do.body.i140_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i140

if.end11.i.out_free_rx_ring.sink.split_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free_rx_ring.sink.split

if.end25:                                         ; preds = %do.body.i140
  call void @__sanitizer_cov_trace_pc() #20
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %148 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %phydev, align 16
  %call26 = tail call i32 @phy_resume(ptr noundef %149) #18
  tail call fastcc void @bcm_sysport_netif_start(ptr noundef %1)
  tail call void @netif_device_attach(ptr noundef %1) #18
  br label %cleanup

out_free_rx_ring.sink.split:                      ; preds = %if.end11.i.out_free_rx_ring.sink.split_crit_edge, %if.end9.i.out_free_rx_ring.sink.split_crit_edge
  %.str.62.sink = phi ptr [ @.str.62, %if.end11.i.out_free_rx_ring.sink.split_crit_edge ], [ @.str.61, %if.end9.i.out_free_rx_ring.sink.split_crit_edge ]
  %.str.86.sink.ph = phi ptr [ @.str.86, %if.end11.i.out_free_rx_ring.sink.split_crit_edge ], [ @.str.90, %if.end9.i.out_free_rx_ring.sink.split_crit_edge ]
  %netdev.i142 = getelementptr i8, ptr %1, i32 2656
  %150 = ptrtoint ptr %netdev.i142 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %netdev.i142, align 32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %151, ptr noundef nonnull %.str.62.sink) #21
  br label %out_free_rx_ring

out_free_rx_ring:                                 ; preds = %out_free_rx_ring.sink.split, %for.end.out_free_rx_ring_crit_edge
  %.str.86.sink = phi ptr [ @.str.41, %for.end.out_free_rx_ring_crit_edge ], [ %.str.86.sink.ph, %out_free_rx_ring.sink.split ]
  %ret.0 = phi i32 [ %call10, %for.end.out_free_rx_ring_crit_edge ], [ -110, %out_free_rx_ring.sink.split ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull %.str.86.sink) #21
  tail call fastcc void @bcm_sysport_fini_rx_ring(ptr noundef %add.ptr.i)
  br label %out_free_tx_rings

out_free_tx_rings:                                ; preds = %out_free_rx_ring, %if.then8
  %ret.1 = phi i32 [ %call6, %if.then8 ], [ %ret.0, %out_free_rx_ring ]
  %152 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp29156.not = icmp eq i32 %153, 0
  br i1 %cmp29156.not, label %out_free_tx_rings.for.end33_crit_edge, label %out_free_tx_rings.for.body30_crit_edge

out_free_tx_rings.for.body30_crit_edge:           ; preds = %out_free_tx_rings
  br label %for.body30

out_free_tx_rings.for.end33_crit_edge:            ; preds = %out_free_tx_rings
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end33

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %out_free_tx_rings.for.body30_crit_edge
  %i.1157 = phi i32 [ %inc32, %for.body30.for.body30_crit_edge ], [ 0, %out_free_tx_rings.for.body30_crit_edge ]
  tail call fastcc void @bcm_sysport_fini_tx_ring(ptr noundef %add.ptr.i, i32 noundef %i.1157)
  %inc32 = add nuw i32 %i.1157, 1
  %154 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %num_tx_queues, align 4
  %cmp29 = icmp ult i32 %inc32, %155
  br i1 %cmp29, label %for.body30.for.body30_crit_edge, label %for.body30.for.end33_crit_edge

for.body30.for.end33_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end33

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body30

for.end33:                                        ; preds = %for.body30.for.end33_crit_edge, %out_free_tx_rings.for.end33_crit_edge
  %156 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %157) #18
  tail call void @clk_unprepare(ptr noundef %157) #18
  br label %cleanup

cleanup:                                          ; preds = %for.end33, %if.end25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %for.end33 ], [ 0, %if.end25 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sysport_suspend_to_wol(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 32
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 128
  %add.ptr1.i = getelementptr i8, ptr %3, i32 3616
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #18, !srcloc !220
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #18
  %wolopts = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 31
  %6 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wolopts, align 8
  %and = and i32 %7, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %or = zext i1 %tobool.not to i32
  %spec.select = or i32 %5, %or
  %and1 = and i32 %spec.select, -134217729
  %and3 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %entry.if.end11_crit_edge, label %if.then5

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %sopass = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 32
  %8 = ptrtoint ptr %sopass to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %sopass, align 1
  %conv = zext i16 %9 to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv) #18
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 128
  %add.ptr1.i108 = getelementptr i8, ptr %12, i32 3620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i108, i32 %10) #18, !srcloc !221
  %arrayidx8 = getelementptr %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 32, i32 2
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %arrayidx8, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #18
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 128
  %add.ptr1.i110 = getelementptr i8, ptr %17, i32 3624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i110, i32 %15) #18, !srcloc !221
  %or10 = or i32 %spec.select, 134217728
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %entry.if.end11_crit_edge
  %reg.1 = phi i32 [ %or10, %if.then5 ], [ %and1, %entry.if.end11_crit_edge ]
  %18 = tail call i32 @llvm.bswap.i32(i32 %reg.1) #18
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 128
  %add.ptr1.i112 = getelementptr i8, ptr %20, i32 3616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i112, i32 %18) #18, !srcloc !221
  %21 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wolopts, align 8
  %and13 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end11.do.body.preheader_crit_edge, label %if.then15

if.end11.do.body.preheader_crit_edge:             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.preheader

if.then15:                                        ; preds = %if.end11
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 128
  %add.ptr.i113 = getelementptr i8, ptr %24, i32 1024
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #18, !srcloc !220
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #18
  %is_lite = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 5
  %27 = ptrtoint ptr %is_lite to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_lite, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool17.not = icmp eq i8 %28, 0
  %reg.2.v = select i1 %tobool17.not, i32 8388608, i32 16777216
  %reg.2 = or i32 %reg.2.v, %26
  %29 = tail call i32 @llvm.bswap.i32(i32 %reg.2) #18
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 128
  %add.ptr.i114 = getelementptr i8, ptr %31, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %29) #18, !srcloc !221
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 128
  %add.ptr.i115 = getelementptr i8, ptr %33, i32 768
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #18, !srcloc !220
  %35 = and i32 %34, 267452415
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %filters = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 38
  %call24 = tail call i32 @_find_next_bit_be(ptr noundef %filters, i32 noundef 8, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call24)
  %cmp126 = icmp ult i32 %call24, 8
  br i1 %cmp126, label %if.then15.for.body_crit_edge, label %if.then15.for.end_crit_edge

if.then15.for.end_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.then15.for.body_crit_edge:                     ; preds = %if.then15
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then15.for.body_crit_edge
  %reg.3129 = phi i32 [ %or26, %for.body.for.body_crit_edge ], [ %36, %if.then15.for.body_crit_edge ]
  %i.0128 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then15.for.body_crit_edge ]
  %index.0127 = phi i32 [ %call30, %for.body.for.body_crit_edge ], [ %call24, %if.then15.for.body_crit_edge ]
  %add = add i32 %i.0128, 4
  %shl = shl nuw i32 1, %add
  %or26 = or i32 %shl, %reg.3129
  %inc = add i32 %i.0128, 1
  %add29 = add nuw nsw i32 %index.0127, 1
  %call30 = tail call i32 @_find_next_bit_be(ptr noundef %filters, i32 noundef 8, i32 noundef %add29) #18
  %cmp = icmp ult i32 %call30, 8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then15.for.end_crit_edge
  %reg.3.lcssa = phi i32 [ %36, %if.then15.for.end_crit_edge ], [ %or26, %for.body.for.end_crit_edge ]
  %or31 = or i32 %reg.3.lcssa, 9
  %37 = tail call i32 @llvm.bswap.i32(i32 %or31) #18
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 128
  %add.ptr.i116 = getelementptr i8, ptr %39, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %37) #18, !srcloc !221
  br label %do.body.preheader

do.body.preheader:                                ; preds = %for.end, %if.end11.do.body.preheader_crit_edge
  br label %do.body

do.body:                                          ; preds = %if.end37.do.body_crit_edge, %do.body.preheader
  %timeout.0 = phi i32 [ %dec, %if.end37.do.body_crit_edge ], [ 1000, %do.body.preheader ]
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 128
  %add.ptr1.i118 = getelementptr i8, ptr %41, i32 1032
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i118) #18, !srcloc !220
  %43 = and i32 %42, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool35.not = icmp eq i32 %43, 0
  br i1 %tobool35.not, label %if.end37, label %do.end

if.end37:                                         ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 2147480) #18
  %dec = add nsw i32 %timeout.0, -1
  %cmp38.not = icmp eq i32 %timeout.0, 0
  br i1 %cmp38.not, label %if.end37.if.end49_crit_edge, label %if.end37.do.body_crit_edge

if.end37.do.body_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

if.end37.if.end49_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end49

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %tobool40.not = icmp eq i32 %timeout.0, 0
  br i1 %tobool40.not, label %if.then41, label %do.end.if.end49_crit_edge

do.end.if.end49_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end49

if.then41:                                        ; preds = %do.end
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 128
  %add.ptr1.i.i = getelementptr i8, ptr %46, i32 3616
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #18, !srcloc !220
  %48 = and i32 %47, -16777217
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv, align 128
  %add.ptr1.i2.i = getelementptr i8, ptr %50, i32 3616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i2.i, i32 %48) #18, !srcloc !221
  %is_lite.i = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 5
  %51 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool1.not.i = icmp eq i8 %52, 0
  %bit.0.i = select i1 %tobool1.not.i, i32 -8388609, i32 -16777217
  %53 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv, align 128
  %add.ptr.i3.i = getelementptr i8, ptr %54, i32 1024
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #18, !srcloc !220
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #18
  %and10.i = and i32 %56, %bit.0.i
  %57 = tail call i32 @llvm.bswap.i32(i32 %and10.i) #18
  %58 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv, align 128
  %add.ptr.i4.i = getelementptr i8, ptr %59, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %57) #18, !srcloc !221
  %msg_enable = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 37
  %60 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %msg_enable, align 8
  %and43 = and i32 %61, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.then41.cleanup_crit_edge, label %if.then45

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then45:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.87) #21
  br label %cleanup

if.end49:                                         ; preds = %do.end.if.end49_crit_edge, %if.end37.if.end49_crit_edge
  %is_lite.i119 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 5
  %62 = ptrtoint ptr %is_lite.i119 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %is_lite.i119, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i = icmp eq i8 %63, 0
  %64 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv, align 128
  br i1 %tobool.not.i, label %if.then.i, label %if.else3.i

if.then.i:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr1.i.i120 = getelementptr i8, ptr %65, i32 2056
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i120) #18, !srcloc !220
  %67 = or i32 %66, 33554432
  %68 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv, align 128
  %add.ptr1.i30.i = getelementptr i8, ptr %69, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30.i, i32 %67) #18, !srcloc !221
  br label %umac_enable_set.exit

if.else3.i:                                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i31.i = getelementptr i8, ptr %65, i32 4096
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #18, !srcloc !220
  %71 = or i32 %70, 33554432
  %72 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv, align 128
  %add.ptr.i32.i = getelementptr i8, ptr %73, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %71) #18, !srcloc !221
  br label %umac_enable_set.exit

umac_enable_set.exit:                             ; preds = %if.else3.i, %if.then.i
  %msg_enable51 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 37
  %74 = ptrtoint ptr %msg_enable51 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %msg_enable51, align 8
  %and52 = and i32 %75, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %umac_enable_set.exit.cleanup_crit_edge, label %do.body55

umac_enable_set.exit.cleanup_crit_edge:           ; preds = %umac_enable_set.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body55:                                        ; preds = %umac_enable_set.exit
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_sysport_suspend_to_wol.__UNIQUE_ID_ddebug519, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_sysport_suspend_to_wol, %if.then60)) #18
          to label %cleanup [label %if.then60], !srcloc !223

if.then60:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcm_sysport_suspend_to_wol.__UNIQUE_ID_ddebug519, ptr noundef %1, ptr noundef nonnull @.str.89) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %do.body55, %umac_enable_set.exit.cleanup_crit_edge, %if.then45, %if.then41.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then45 ], [ -110, %if.then41.cleanup_crit_edge ], [ 0, %if.then60 ], [ 0, %umac_enable_set.exit.cleanup_crit_edge ], [ 0, %do.body55 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_sysport_resume_from_wol(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 128
  %add.ptr.i = getelementptr i8, ptr %1, i32 768
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #18, !srcloc !220
  %3 = and i32 %2, 116457471
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 128
  %add.ptr.i52 = getelementptr i8, ptr %5, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %3) #18, !srcloc !221
  %filters = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 38
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %filters, i32 noundef 8, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call1)
  %cmp60 = icmp ult i32 %call1, 8
  br i1 %cmp60, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %index.061 = phi i32 [ %call7, %for.body.for.body_crit_edge ], [ %call1, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 39, i32 %index.061
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %mul = shl nuw nsw i32 %index.061, 2
  %add = add nuw nsw i32 %mul, 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = lshr i32 %8, 16
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 128
  %add.ptr.i53 = getelementptr i8, ptr %11, i32 768
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i53, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %9) #18, !srcloc !221
  %add3 = add nuw nsw i32 %mul, 36
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 128
  %add.ptr.i54 = getelementptr i8, ptr %13, i32 768
  %add.ptr1.i55 = getelementptr i8, ptr %add.ptr.i54, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i55, i32 -65281) #18, !srcloc !221
  %add6 = add nuw nsw i32 %index.061, 1
  %call7 = tail call i32 @_find_next_bit_be(ptr noundef %filters, i32 noundef 8, i32 noundef %add6) #18
  %cmp = icmp ult i32 %call7, 8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 128
  %add.ptr1.i.i = getelementptr i8, ptr %15, i32 3616
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #18, !srcloc !220
  %17 = and i32 %16, -16777217
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 128
  %add.ptr1.i2.i = getelementptr i8, ptr %19, i32 3616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i2.i, i32 %17) #18, !srcloc !221
  %is_lite.i = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 5
  %20 = ptrtoint ptr %is_lite.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_lite.i, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool1.not.i = icmp eq i8 %21, 0
  %bit.0.i = select i1 %tobool1.not.i, i32 -8388609, i32 -16777217
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 128
  %add.ptr.i3.i = getelementptr i8, ptr %23, i32 1024
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #18, !srcloc !220
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #18
  %and10.i = and i32 %25, %bit.0.i
  %26 = tail call i32 @llvm.bswap.i32(i32 %and10.i) #18
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 128
  %add.ptr.i4.i = getelementptr i8, ptr %28, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %26) #18, !srcloc !221
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 128
  %add.ptr.i56 = getelementptr i8, ptr %30, i32 512
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #18, !srcloc !220
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #18
  %and9 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  %netdev = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 9
  %33 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev, align 32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %34, ptr noundef nonnull @.str.91) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %and10 = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.do.body_crit_edge, label %if.then12

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 128
  %add.ptr1.i58 = getelementptr i8, ptr %36, i32 836
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i58) #18, !srcloc !220
  %38 = lshr i32 %37, 24
  %netdev15 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 9
  %39 = ptrtoint ptr %netdev15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %netdev15, align 32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %40, ptr noundef nonnull @.str.92, i32 noundef %38) #21
  br label %do.body

do.body:                                          ; preds = %if.then12, %if.end.do.body_crit_edge
  %msg_enable = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 37
  %41 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_enable, align 8
  %and17 = and i32 %42, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body.do.end30_crit_edge, label %do.body20

do.body.do.end30_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end30

do.body20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_sysport_resume_from_wol.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_sysport_resume_from_wol, %if.then25)) #18
          to label %do.end30 [label %if.then25], !srcloc !223

if.then25:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #20
  %netdev26 = getelementptr inbounds %struct.bcm_sysport_priv, ptr %priv, i32 0, i32 9
  %43 = ptrtoint ptr %netdev26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %netdev26, align 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcm_sysport_resume_from_wol.__UNIQUE_ID_ddebug512, ptr noundef %44, ptr noundef nonnull @.str.94) #18
  br label %do.end30

do.end30:                                         ; preds = %if.then25, %do.body20, %do.body.do.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { nounwind readonly }
attributes #16 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !33, !34, !36, !37, !38, !39, !41, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !77, !79, !81, !83, !85, !86, !88, !90, !92, !94, !95, !96, !98, !99, !101, !102, !104, !106, !108, !109, !111, !112, !113, !115, !117, !118, !119, !121, !123, !125, !126, !127, !129, !130, !131, !133, !135, !137, !138, !140, !142, !143, !144, !146, !148, !149, !150, !152, !154, !156, !158, !160, !161, !162, !164, !166, !167, !168, !170, !172, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !196, !197, !199, !201, !203, !205, !206}
!llvm.named.register.sp = !{!207}
!llvm.module.flags = !{!208, !209, !210, !211, !212, !213, !214, !215}
!llvm.ident = !{!216}

!0 = !{ptr @__initcall__kmod_bcmsysport__520_2899_bcm_sysport_driver_init6, !1, !"__initcall__kmod_bcmsysport__520_2899_bcm_sysport_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2899, i32 1}
!2 = !{ptr @__exitcall_bcm_sysport_driver_exit, !1, !"__exitcall_bcm_sysport_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author521, !4, !"__UNIQUE_ID_author521", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2901, i32 1}
!5 = !{ptr @__UNIQUE_ID_description522, !6, !"__UNIQUE_ID_description522", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2902, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias523, !8, !"__UNIQUE_ID_alias523", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2903, i32 1}
!9 = !{ptr @__UNIQUE_ID_file524, !10, !"__UNIQUE_ID_file524", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2904, i32 1}
!11 = !{ptr @__UNIQUE_ID_license525, !10, !"__UNIQUE_ID_license525", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2894, i32 11}
!14 = !{ptr @bcm_sysport_driver, !15, !"bcm_sysport_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2890, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2479, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bcm_sysport_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @bcm_sysport_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2487, i32 31}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2489, i32 31}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2503, i32 48}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2553, i32 4}
!32 = !{ptr @bcm_sysport_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @bcm_sysport_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2563, i32 3}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @bcm_sysport_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @bcm_sysport_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2587, i32 52}
!41 = !{ptr @bcm_sysport_probe.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2599, i32 2}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2605, i32 3}
!46 = !{ptr @bcm_sysport_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @bcm_sysport_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2611, i32 3}
!50 = !{ptr @bcm_sysport_probe._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @bcm_sysport_probe._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2618, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @bcm_sysport_probe._entry.24, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @bcm_sysport_probe._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @bcm_sysport_ethtool_ops, !60, !"bcm_sysport_ethtool_ops", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2263, i32 33}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 311, i32 24}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 312, i32 26}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 387, i32 31}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 392, i32 31}
!69 = !{ptr @bcm_sysport_gstrings_stats, !70, !"bcm_sysport_gstrings_stats", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 215, i32 39}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 446, i32 2}
!73 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @bcm_sysport_update_mib_counters.__UNIQUE_ID_ddebug506, !72, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!75 = !{ptr @bcm_sysport_netdev_ops, !76, !"bcm_sysport_netdev_ops", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2306, i32 36}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1989, i32 19}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2004, i32 19}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2012, i32 20}
!83 = !{ptr @bcm_sysport_open.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2018, i32 2}
!85 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2022, i32 20}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2034, i32 19}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1139, i32 29}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 922, i32 2}
!94 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @__bcm_sysport_tx_reclaim.__UNIQUE_ID_ddebug510, !93, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 946, i32 2}
!98 = !{ptr @__bcm_sysport_tx_reclaim.__UNIQUE_ID_ddebug511, !97, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!101 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1190, i32 29}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1513, i32 3}
!106 = !{ptr @bcm_sysport_init_tx_ring.__key, !107, !"__key", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1518, i32 2}
!108 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1584, i32 2}
!111 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @bcm_sysport_init_tx_ring.__UNIQUE_ID_ddebug514, !110, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1704, i32 3}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1725, i32 2}
!117 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @bcm_sysport_init_rx_ring.__UNIQUE_ID_ddebug516, !116, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 697, i32 3}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 706, i32 3}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 721, i32 2}
!125 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @bcm_sysport_rx_refill.__UNIQUE_ID_ddebug507, !124, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!127 = distinct !{null, !128, !"__already_done", i1 false, i1 false}
!128 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!129 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1645, i32 27}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1673, i32 27}
!135 = !{ptr @bcm_sysport_init_dim.__key, !136, !"__key", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1475, i32 2}
!137 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1741, i32 29}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1755, i32 2}
!142 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @bcm_sysport_fini_rx_ring.__UNIQUE_ID_ddebug517, !141, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1601, i32 29}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1620, i32 2}
!148 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @bcm_sysport_fini_tx_ring.__UNIQUE_ID_ddebug515, !147, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2102, i32 19}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2111, i32 19}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1329, i32 19}
!156 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1348, i32 3}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1385, i32 2}
!160 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @bcm_sysport_xmit.__UNIQUE_ID_ddebug513, !159, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1396, i32 19}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 773, i32 2}
!166 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @bcm_sysport_desc_rx.__UNIQUE_ID_ddebug508, !165, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 788, i32 4}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 800, i32 3}
!172 = !{ptr @bcm_sysport_desc_rx.__UNIQUE_ID_ddebug509, !171, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!173 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 806, i32 4}
!175 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 814, i32 4}
!177 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 822, i32 4}
!179 = !{ptr @.str.84, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2352, i32 26}
!181 = !{ptr @bcm_sysport_of_match, !182, !"bcm_sysport_of_match", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2449, i32 34}
!183 = !{ptr @bcm_sysport_params, !184, !"bcm_sysport_params", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2438, i32 43}
!185 = !{ptr @bcm_sysport_pm_ops, !186, !"bcm_sysport_pm_ops", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2887, i32 8}
!187 = !{ptr @.str.85, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2746, i32 19}
!189 = !{ptr @.str.86, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2763, i32 19}
!191 = !{ptr @.str.87, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2712, i32 3}
!193 = !{ptr @.str.88, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2719, i32 2}
!195 = !{ptr @.str.89, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @bcm_sysport_suspend_to_wol.__UNIQUE_ID_ddebug519, !194, !"__UNIQUE_ID_ddebug519", i1 false, i1 false}
!197 = !{ptr @.str.90, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 2839, i32 19}
!199 = !{ptr @.str.91, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1100, i32 29}
!201 = !{ptr @.str.92, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1106, i32 8}
!203 = !{ptr @.str.93, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/broadcom/bcmsysport.c", i32 1109, i32 2}
!205 = !{ptr @.str.94, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @bcm_sysport_resume_from_wol.__UNIQUE_ID_ddebug512, !204, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!207 = !{!"sp"}
!208 = !{i32 1, !"wchar_size", i32 2}
!209 = !{i32 1, !"min_enum_size", i32 4}
!210 = !{i32 8, !"branch-target-enforcement", i32 0}
!211 = !{i32 8, !"sign-return-address", i32 0}
!212 = !{i32 8, !"sign-return-address-all", i32 0}
!213 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!214 = !{i32 7, !"uwtable", i32 1}
!215 = !{i32 7, !"frame-pointer", i32 2}
!216 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!217 = !{!"auto-init"}
!218 = !{!"branch_weights", i32 1, i32 2000}
!219 = !{i8 0, i8 2}
!220 = !{i64 4274326}
!221 = !{i64 4273908}
!222 = !{i64 2150284402}
!223 = !{i64 2148793100, i64 2148793105, i64 2148793118, i64 2148793162, i64 2148793196, i64 2148793217}
!224 = !{i64 716250, i64 716311}
!225 = !{i64 718982}
!226 = !{i64 719267}
!227 = !{i64 2153154944}
!228 = !{i64 2153154786}
!229 = !{i64 2153155114}
!230 = !{!"branch_weights", i32 2000, i32 1}
!231 = !{i64 2150285052}
!232 = !{i64 2150176654}
!233 = !{i64 2150181588}
!234 = !{i64 2150203306}
!235 = !{i64 2150208200}
!236 = !{i64 2150284727}
