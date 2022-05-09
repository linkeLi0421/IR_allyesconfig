; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/genet/bcmgenet.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/genet/bcmgenet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.bcmgenet_stats = type { [32 x i8], i32, i32, i32, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.151, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.151 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.bcmgenet_hw_params = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32 }
%struct.bcmgenet_plat_data = type { i32, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.bcmgenet_platform_data = type { i8, i32, i32, i32, i32, [6 x i8], i32 }
%struct.bcmgenet_priv = type { ptr, i32, ptr, ptr, ptr, i32, [17 x %struct.bcmgenet_tx_ring], ptr, ptr, i32, i32, [16 x %struct.bcmgenet_rxnfc_rule], %struct.list_head, [17 x %struct.bcmgenet_rx_ring], ptr, i8, %struct.wait_queue_head, i8, ptr, ptr, ptr, i16, ptr, i8, i32, i32, i32, i8, %struct.work_struct, i32, i32, i32, i8, %struct.spinlock, i32, i8, i32, i32, ptr, ptr, ptr, ptr, i32, [6 x i8], i8, %struct.bcmgenet_mib_counters, %struct.ethtool_eee }
%struct.bcmgenet_tx_ring = type { %struct.spinlock, %struct.napi_struct, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.bcmgenet_rxnfc_rule = type { %struct.list_head, %struct.ethtool_rx_flow_spec, i32 }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%struct.bcmgenet_rx_ring = type { %struct.napi_struct, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.bcmgenet_net_dim, i32, i32, ptr, ptr, ptr }
%struct.bcmgenet_net_dim = type { i16, i16, i32, i32, %struct.dim }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.bcmgenet_mib_counters = type { %struct.bcmgenet_rx_counters, %struct.bcmgenet_tx_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcmgenet_rx_counters = type { %struct.bcmgenet_pkt_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcmgenet_pkt_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bcmgenet_tx_counters = type { %struct.bcmgenet_pkt_counters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.145, [0 x i32] }
%union.anon.145 = type { i32 }
%struct.ethtool_usrip4_spec = type { i32, i32, i32, i8, i8, i8 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.anon.60 = type { i16, i16 }
%struct.status_64 = type { i32, i32, i32, [9 x i32], i32, [3 x i32] }
%struct.enet_cb = type { ptr, ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }

@__initcall__kmod_genet__507_4351_bcmgenet_driver_init6 = internal global ptr @bcmgenet_driver_init, section ".initcall6.init", align 4
@bcmgenet_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcmgenet_probe, ptr @bcmgenet_remove, ptr @bcmgenet_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcmgenet_match, ptr @genet_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcmgenet_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcmgenet_driver_exit = internal global ptr @bcmgenet_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author508 = internal constant [34 x i8] c"genet.author=Broadcom Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description509 = internal constant [60 x i8] c"genet.description=Broadcom GENET Ethernet controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias510 = internal constant [30 x i8] c"genet.alias=platform:bcmgenet\00", section ".modinfo", align 1
@__UNIQUE_ID_file511 = internal constant [53 x i8] c"genet.file=drivers/net/ethernet/broadcom/genet/genet\00", section ".modinfo", align 1
@__UNIQUE_ID_license512 = internal constant [18 x i8] c"genet.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep513 = internal constant [35 x i8] c"genet.softdep=pre: mdio-bcm-unimac\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bcmgenet\00", [23 x i8] zeroinitializer }, align 32
@bcmgenet_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,genet-v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v1_plat_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,genet-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v2_plat_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,genet-v3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v3_plat_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,genet-v4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v4_plat_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,genet-v5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @v5_plat_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-genet-v5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_plat_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7712-genet-v5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm7712_plat_data }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@genet_acpi_match = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"BCM6E4E\00\00", i32 ptrtoint (ptr @bcm2711_plat_data to i32), i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@bcmgenet_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bcmgenet_suspend, ptr @bcmgenet_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcmgenet_suspend_noirq, ptr @bcmgenet_resume_noirq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bcmgenet_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 3979, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't allocate net device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcmgenet_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/broadcom/genet/bcmgenet.c\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcmgenet_probe._entry_ptr = internal global ptr @bcmgenet_probe._entry, section ".printk_index", align 4
@bcmgenet_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@bcmgenet_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 547, i32 0, ptr @bcmgenet_get_drvinfo, ptr null, ptr null, ptr @bcmgenet_get_wol, ptr @bcmgenet_set_wol, ptr @bcmgenet_get_msglevel, ptr @bcmgenet_set_msglevel, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @bcmgenet_get_coalesce, ptr @bcmgenet_set_coalesce, ptr null, ptr null, ptr null, ptr @bcmgenet_get_pauseparam, ptr @bcmgenet_set_pauseparam, ptr null, ptr @bcmgenet_get_strings, ptr null, ptr @bcmgenet_get_ethtool_stats, ptr @bcmgenet_begin, ptr @bcmgenet_complete, ptr null, ptr null, ptr @bcmgenet_get_sset_count, ptr @bcmgenet_get_rxnfc, ptr @bcmgenet_set_rxnfc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr @bcmgenet_get_eee, ptr @bcmgenet_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @bcmgenet_get_link_ksettings, ptr @bcmgenet_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@bcmgenet_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @bcmgenet_open, ptr @bcmgenet_close, ptr @bcmgenet_xmit, ptr null, ptr null, ptr null, ptr @bcmgenet_set_rx_mode, ptr @bcmgenet_set_mac_addr, ptr null, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcmgenet_timeout, ptr null, ptr null, ptr null, ptr @bcmgenet_get_stats, ptr null, ptr null, ptr @bcmgenet_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcmgenet_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcmgenet_change_carrier, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"enet\00", [27 x i8] zeroinitializer }, align 32
@bcmgenet_probe.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 3, i8 -11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"genet\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get enet clock\0A\00", [38 x i8] zeroinitializer }, align 32
@bcmgenet_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&priv->wq\00", [22 x i8] zeroinitializer }, align 32
@bcmgenet_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&priv->bcmgenet_irq_work)\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet-wol\00", [23 x i8] zeroinitializer }, align 32
@bcmgenet_probe.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 3, i8 -5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get enet-wol clock\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet-eee\00", [23 x i8] zeroinitializer }, align 32
@bcmgenet_probe.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.2, ptr @.str.3, ptr @.str.17, i8 3, i8 -3, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get enet-eee clock\0A\00", [34 x i8] zeroinitializer }, align 32
@bcmgenet_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 4109, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"using random Ethernet MAC\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcmgenet_probe._entry_ptr.21 = internal global ptr @bcmgenet_probe._entry.18, section ".printk_index", align 4
@genet_dma_ring_regs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bcmgenet_dma_regs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bcmgenet_gstrings_stats = internal constant { [109 x %struct.bcmgenet_stats], [1296 x i8] } { [109 x %struct.bcmgenet_stats] [%struct.bcmgenet_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 0, i32 -1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 -1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8, i32 -1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 12, i32 -1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16, i32 -1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 20, i32 -1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 24, i32 -1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 28, i32 -1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 32, i32 -1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_64_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16436, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_65_127_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16440, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_128_255_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16444, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_256_511_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16448, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_512_1023_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16452, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_1024_1518_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16456, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_vlan_1519_1522_oct\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16460, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_1522_2047_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16464, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_2048_4095_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16468, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_4096_9216_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16472, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16476, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16480, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16484, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16488, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_fcs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16492, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16496, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16500, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_unknown\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16504, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_align\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16508, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_outrange\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16512, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_code\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16516, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_carrier\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16520, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_oversize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16524, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16528, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_mtu_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16532, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_good_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16536, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16540, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_ppp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16544, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_crc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16548, i32 0, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_64_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16552, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_65_127_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16556, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_128_255_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16560, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_256_511_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16564, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_512_1023_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16568, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_1024_1518_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16572, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_vlan_1519_1522_oct\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16576, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_1522_2047_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16580, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_2048_4095_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16584, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_4096_9216_oct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16588, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16592, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16596, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16600, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16604, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16608, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_fcs_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16612, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_oversize\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16616, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_defer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16620, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_excess_defer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16624, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_single_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16628, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_multi_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16632, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_late_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16636, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_excess_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16640, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_frags\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16644, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_total_col\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16648, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16652, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16656, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_good_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16660, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_unicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16664, i32 1, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_runt_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16668, i32 2, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_runt_valid_fcs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16672, i32 2, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_runt_inval_fcs_align\00\00\00\00\00\00\00\00\00", i32 4, i32 16676, i32 2, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_runt_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16680, i32 2, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rbuf_ovflow_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16684, i32 3, i16 1564 }, %struct.bcmgenet_stats { [32 x i8] c"rbuf_err_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16688, i32 3, i16 1588 }, %struct.bcmgenet_stats { [32 x i8] c"mdf_err_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16692, i32 3, i16 1592 }, %struct.bcmgenet_stats { [32 x i8] c"alloc_rx_buff_failed\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16696, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rx_dma_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16700, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_dma_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16704, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_realloc_tsb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16708, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"tx_realloc_tsb_failed\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16712, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"txq0_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 296, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"txq0_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 300, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq0_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8928, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq0_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8932, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq0_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8936, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq0_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8940, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"txq1_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 632, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"txq1_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 636, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq1_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9368, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq1_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9372, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq1_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9376, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq1_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9380, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"txq2_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 968, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"txq2_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 972, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq2_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9808, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq2_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9812, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq2_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9816, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq2_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 9820, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"txq3_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 1304, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"txq3_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 1308, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq3_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10248, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq3_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10252, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq3_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10256, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq3_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 10260, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"txq16_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 5672, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"txq16_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 5676, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq16_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15968, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq16_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15972, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq16_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15976, i32 4, i16 0 }, %struct.bcmgenet_stats { [32 x i8] c"rxq16_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 15980, i32 4, i16 0 }], [1296 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unsupported ethtool command. (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rxnfc: Not supported by this device\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rxnfc: Unsupported action (%llu)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rxnfc: Invalid location (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rxnfc: Unsupported mask\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rxnfc: Unsupported flow type (0x%x)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rxnfc: user-def not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EEE initialization failed\0A\00", [37 x i8] zeroinitializer }, align 32
@bcmgenet_open.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 3, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcmgenet_open\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcmgenet_open\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to initialize DMA\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't request IRQ %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to connect to PHY\0A\00", [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@init_umac.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 2, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_umac\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcmgenet: init_umac\0A\00", [43 x i8] zeroinitializer }, align 32
@init_umac.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.35, ptr @.str.3, ptr @.str.37, i8 2, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"done init umac\0A\00", [16 x i8] zeroinitializer }, align 32
@bcmgenet_init_dma.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 2, i8 -6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcmgenet_init_dma\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to initialize Rx queues\0A\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bcmgenet_alloc_rx_buffers.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.41, ptr @.str.3, ptr @.str.39, i8 2, i8 93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bcmgenet_alloc_rx_buffers\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Rx skb allocation failed\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.bcmgenet_rx_refill = private unnamed_addr constant [19 x i8] c"bcmgenet_rx_refill\00", align 1
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Rx skb DMA mapping failed\0A\00", [33 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@bcmgenet_init_dim.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&dim->dim.work)\00", [62 x i8] zeroinitializer }, align 32
@bcmgenet_desc_rx.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 2, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcmgenet_desc_rx\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RDMA: rxpkttoprocess=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@bcmgenet_desc_rx.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.47, ptr @.str.3, ptr @.str.49, i8 2, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:p_ind=%d c_ind=%d read_ptr=%d len_stat=0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dropping fragmented packet!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dma_flag=0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@bcmgenet_desc_rx.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.47, ptr @.str.3, ptr @.str.52, i8 2, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pushed up to kernel\0A\00", [43 x i8] zeroinitializer }, align 32
@bcmgenet_init_tx_ring.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ring->lock\00", [20 x i8] zeroinitializer }, align 32
@__bcmgenet_tx_reclaim.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.54, ptr @.str.3, ptr @.str.55, i8 1, i8 -39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__bcmgenet_tx_reclaim\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s ring=%d old_c_index=%u c_index=%u txbds_ready=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@bcmgenet_isr0.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 3, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcmgenet_isr0\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IRQ=0x%x\0A\00", [22 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@bcmgenet_isr1.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.58, ptr @.str.3, ptr @.str.59, i8 3, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcmgenet_isr1\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: IRQ=0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Timed out while disabling TX DMA\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Timed out while disabling RX DMA\0A\00", [62 x i8] zeroinitializer }, align 32
@bcmgenet_close.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.62, ptr @.str.3, ptr @.str.63, i8 3, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcmgenet_close\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcmgenet_close\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: tx ring %d full when queue %d awake\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.bcmgenet_xmit = private unnamed_addr constant [14 x i8] c"bcmgenet_xmit\00", align 1
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Tx DMA map failed\0A\00", [45 x i8] zeroinitializer }, align 32
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@bcmgenet_set_rx_mode.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.67, ptr @.str.3, ptr @.str.68, i8 3, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcmgenet_set_rx_mode\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: %08X\0A\00", [22 x i8] zeroinitializer }, align 32
@bcmgenet_timeout.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.69, ptr @.str.3, ptr @.str.70, i8 3, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcmgenet_timeout\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcmgenet_timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [226 x i8], [62 x i8] } { [226 x i8] c"Ring %d queue %d status summary\0ATX queue status: %s, interrupts: %s\0A(sw)free_bds: %d (sw)size: %d\0A(sw)p_index: %d (hw)p_index: %d\0A(sw)c_index: %d (hw)c_index: %d\0A(sw)clean_p: %d (sw)write_p: %d\0A(sw)cb_ptr: %d (sw)end_ptr: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stopped\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bcmgenet_dma_regs_v3plus = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\00\04\08\0C,048ptx|\80\84\88\8C,048<@DHLPTX\\`dhl", [63 x i8] zeroinitializer }, align 32
@genet_dma_ring_regs_v4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\00\04\08\0C\10\14\18\1C $(,0", [19 x i8] zeroinitializer }, align 32
@genet_dma_ring_regs_v123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\00\00\04\08\0C\10\00\14\00\18\1C ", [20 x i8] zeroinitializer }, align 32
@bcmgenet_dma_regs_v2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\00\04\08\0C048<\00\00\00\00\00\00\00\00,048<@DHLPTX\\`dhl", [63 x i8] zeroinitializer }, align 32
@bcmgenet_dma_regs_v1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\00\00\04\0C048<\00\00\00\00\00\00\00\00,048<@DHLPTX\\`dhl", [63 x i8] zeroinitializer }, align 32
@bcmgenet_hw_params = internal global { [6 x %struct.bcmgenet_hw_params], [88 x i8] } { [6 x %struct.bcmgenet_hw_params] [%struct.bcmgenet_hw_params zeroinitializer, %struct.bcmgenet_hw_params { i8 0, i8 0, i8 0, i8 0, i8 16, i32 65535, i8 16, i8 0, i8 31, i16 0, i32 4096, i32 0, i32 8192, i32 12288, i32 2, i32 0 }, %struct.bcmgenet_hw_params { i8 4, i8 32, i8 0, i8 0, i8 16, i32 65535, i8 16, i8 0, i8 31, i16 1536, i32 4096, i32 8192, i32 12288, i32 16384, i32 2, i32 2 }, %struct.bcmgenet_hw_params { i8 4, i8 32, i8 0, i8 0, i8 17, i32 131071, i8 48, i8 -128, i8 63, i16 1536, i32 32768, i32 64512, i32 65536, i32 69632, i32 2, i32 14 }, %struct.bcmgenet_hw_params { i8 4, i8 32, i8 0, i8 0, i8 17, i32 131071, i8 48, i8 -128, i8 63, i16 1536, i32 32768, i32 64512, i32 8192, i32 16384, i32 3, i32 15 }, %struct.bcmgenet_hw_params { i8 4, i8 32, i8 0, i8 0, i8 17, i32 131071, i8 48, i8 -128, i8 63, i16 1536, i32 32768, i32 64512, i32 8192, i32 16384, i32 3, i32 15 }], [88 x i8] zeroinitializer }, align 32
@bcmgenet_set_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 3848, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"GENET version mismatch, got: %d, configured for: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcmgenet_set_hw_params\00", [41 x i8] zeroinitializer }, align 32
@bcmgenet_set_hw_params._entry_ptr = internal global ptr @bcmgenet_set_hw_params._entry, section ".printk_index", align 4
@bcmgenet_set_hw_params._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.3, i32 3853, ptr @.str.80, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GENET %1d.%1d EPHY: 0x%04x\00", [37 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bcmgenet_set_hw_params._entry_ptr.81 = internal global ptr @bcmgenet_set_hw_params._entry.78, section ".printk_index", align 4
@bcmgenet_set_hw_params._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.77, ptr @.str.3, i32 3875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014bcmgenet: GENET is reporting EPHY revision: 0x%04x\0A\00", [42 x i8] zeroinitializer }, align 32
@bcmgenet_set_hw_params._entry_ptr.84 = internal global ptr @bcmgenet_set_hw_params._entry.82, section ".printk_index", align 4
@bcmgenet_set_hw_params._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.77, ptr @.str.3, i32 3879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014bcmgenet: Invalid GPHY revision detected: 0x%04x\0A\00", [44 x i8] zeroinitializer }, align 32
@bcmgenet_set_hw_params._entry_ptr.87 = internal global ptr @bcmgenet_set_hw_params._entry.85, section ".printk_index", align 4
@bcmgenet_set_hw_params.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.77, ptr @.str.3, ptr @.str.88, i8 3, i8 -47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [221 x i8], [35 x i8] } { [221 x i8] c"Configuration for version: %d\0ATXq: %1d, TXqBDs: %1d, RXq: %1d, RXqBDs: %1d\0ABP << en: %2d, BP msk: 0x%05x\0AHFB count: %2d, QTAQ msk: 0x%05x\0ATBUF: 0x%04x, HFB: 0x%04x, HFBreg: 0x%04x\0ARDMA: 0x%05x, TDMA: 0x%05x\0AWords/BD: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [231 x i8], [57 x i8] } { [231 x i8] c"bcmgenet: Configuration for version: %d\0ATXq: %1d, TXqBDs: %1d, RXq: %1d, RXqBDs: %1d\0ABP << en: %2d, BP msk: 0x%05x\0AHFB count: %2d, QTAQ msk: 0x%05x\0ATBUF: 0x%04x, HFB: 0x%04x, HFBreg: 0x%04x\0ARDMA: 0x%05x, TDMA: 0x%05x\0AWords/BD: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@bcmgenet_irq_task.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.90, ptr @.str.3, ptr @.str.39, i8 3, i8 9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcmgenet_irq_task\00", [46 x i8] zeroinitializer }, align 32
@v1_plat_data = internal constant { %struct.bcmgenet_plat_data, [20 x i8] } { %struct.bcmgenet_plat_data { i32 1, i32 16, i8 0 }, [20 x i8] zeroinitializer }, align 32
@v2_plat_data = internal constant { %struct.bcmgenet_plat_data, [20 x i8] } { %struct.bcmgenet_plat_data { i32 2, i32 16, i8 0 }, [20 x i8] zeroinitializer }, align 32
@v3_plat_data = internal constant { %struct.bcmgenet_plat_data, [20 x i8] } { %struct.bcmgenet_plat_data { i32 3, i32 16, i8 0 }, [20 x i8] zeroinitializer }, align 32
@v4_plat_data = internal constant { %struct.bcmgenet_plat_data, [20 x i8] } { %struct.bcmgenet_plat_data { i32 4, i32 16, i8 0 }, [20 x i8] zeroinitializer }, align 32
@v5_plat_data = internal constant { %struct.bcmgenet_plat_data, [20 x i8] } { %struct.bcmgenet_plat_data { i32 5, i32 16, i8 0 }, [20 x i8] zeroinitializer }, align 32
@bcm2711_plat_data = internal constant { %struct.bcmgenet_plat_data, [20 x i8] } { %struct.bcmgenet_plat_data { i32 5, i32 8, i8 0 }, [20 x i8] zeroinitializer }, align 32
@bcm7712_plat_data = internal constant { %struct.bcmgenet_plat_data, [20 x i8] } { %struct.bcmgenet_plat_data { i32 5, i32 16, i8 1 }, [20 x i8] zeroinitializer }, align 32
@switch.table.bcmgenet_set_hw_params = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @bcmgenet_dma_regs_v1, ptr @bcmgenet_dma_regs_v2, ptr @bcmgenet_dma_regs_v3plus, ptr @bcmgenet_dma_regs_v3plus, ptr @bcmgenet_dma_regs_v3plus], [44 x i8] zeroinitializer }, align 32
@switch.table.bcmgenet_set_hw_params.91 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @genet_dma_ring_regs_v123, ptr @genet_dma_ring_regs_v123, ptr @genet_dma_ring_regs_v123, ptr @genet_dma_ring_regs_v4, ptr @genet_dma_ring_regs_v4], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 511]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.94 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 4294967295]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 16, i64 1564, i64 1588]
@__sancov_gen_cov_switch_values.96 = internal global [6 x i64] [i64 4, i64 32, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 49, i64 50]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 13, i64 18]
@__sancov_gen_cov_switch_values.99 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.100 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.101 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.102 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.103 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.104 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.105 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.106 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.107 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.108 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.109 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.110 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.111 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.112 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.113 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.114 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.115 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.116 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.117 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.118 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.119 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.120 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.121 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.122 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.123 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.124 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.125 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.126 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.127 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.128 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.129 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.130 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.131 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.132 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.133 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.134 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.135 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.136 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.137 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 13, i64 18]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 -2]
@__sancov_gen_cov_switch_values.141 = internal global [5 x i64] [i64 3, i64 8, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 8, i64 15, i64 240, i64 255]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.144 = private unnamed_addr constant [16 x i8] c"bcmgenet_driver\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 4340, i32 31 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 4345, i32 11 }
@___asan_gen_.150 = private unnamed_addr constant [15 x i8] c"bcmgenet_match\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3954, i32 34 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"genet_acpi_match\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 4334, i32 36 }
@___asan_gen_.156 = private unnamed_addr constant [16 x i8] c"bcmgenet_pm_ops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 4327, i32 32 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3979, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 4002, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [21 x i8] c"bcmgenet_ethtool_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1607, i32 33 }
@___asan_gen_.186 = private unnamed_addr constant [20 x i8] c"bcmgenet_netdev_ops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3702, i32 36 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 4050, i32 54 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 4052, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 4072, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 4075, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 4077, i32 58 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 4079, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 4084, i32 58 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 4086, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 4109, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [20 x i8] c"genet_dma_ring_regs\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 424, i32 18 }
@___asan_gen_.234 = private unnamed_addr constant [18 x i8] c"bcmgenet_dma_regs\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 328, i32 18 }
@___asan_gen_.237 = private unnamed_addr constant [24 x i8] c"bcmgenet_gstrings_stats\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1048, i32 36 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1533, i32 26 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1458, i32 19 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1464, i32 19 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1391, i32 19 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1406, i32 20 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1421, i32 19 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1434, i32 20 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1373, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3354, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3383, i32 19 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3396, i32 19 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3409, i32 19 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2519, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2577, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3048, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3085, i32 25 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2423, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2192, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2203, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 326, i32 6 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2585, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2270, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2302, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2308, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2321, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2358, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2620, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1892, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3192, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3143, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2972, i32 26 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2995, i32 26 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3469, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2076, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 2117, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3583, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3538, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3514, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant [25 x i8] c"bcmgenet_dma_regs_v3plus\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 236, i32 17 }
@___asan_gen_.408 = private unnamed_addr constant [23 x i8] c"genet_dma_ring_regs_v4\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 395, i32 17 }
@___asan_gen_.411 = private unnamed_addr constant [25 x i8] c"genet_dma_ring_regs_v123\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 411, i32 17 }
@___asan_gen_.414 = private unnamed_addr constant [21 x i8] c"bcmgenet_dma_regs_v2\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 272, i32 17 }
@___asan_gen_.417 = private unnamed_addr constant [21 x i8] c"bcmgenet_dma_regs_v1\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 300, i32 17 }
@___asan_gen_.420 = private unnamed_addr constant [19 x i8] c"bcmgenet_hw_params\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3719, i32 34 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3846, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3852, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3874, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3879, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3894, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3109, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant [13 x i8] c"v1_plat_data\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3918, i32 40 }
@___asan_gen_.465 = private unnamed_addr constant [13 x i8] c"v2_plat_data\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3923, i32 40 }
@___asan_gen_.468 = private unnamed_addr constant [13 x i8] c"v3_plat_data\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3928, i32 40 }
@___asan_gen_.471 = private unnamed_addr constant [13 x i8] c"v4_plat_data\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3933, i32 40 }
@___asan_gen_.474 = private unnamed_addr constant [13 x i8] c"v5_plat_data\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3938, i32 40 }
@___asan_gen_.477 = private unnamed_addr constant [18 x i8] c"bcm2711_plat_data\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3943, i32 40 }
@___asan_gen_.480 = private unnamed_addr constant [18 x i8] c"bcm7712_plat_data\00", align 1
@___asan_gen_.481 = private constant [50 x i8] c"../drivers/net/ethernet/broadcom/genet/bcmgenet.c\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 3948, i32 40 }
@___asan_gen_.483 = private unnamed_addr constant [36 x i8] c"switch.table.bcmgenet_set_hw_params\00", align 1
@___asan_gen_.484 = private unnamed_addr constant [39 x i8] c"switch.table.bcmgenet_set_hw_params.91\00", align 1
@llvm.compiler.used = appending global [130 x ptr] [ptr @__UNIQUE_ID_alias510, ptr @__UNIQUE_ID_author508, ptr @__UNIQUE_ID_description509, ptr @__UNIQUE_ID_file511, ptr @__UNIQUE_ID_license512, ptr @__UNIQUE_ID_softdep513, ptr @__exitcall_bcmgenet_driver_exit, ptr @__initcall__kmod_genet__507_4351_bcmgenet_driver_init6, ptr @bcmgenet_driver_exit, ptr @bcmgenet_probe._entry, ptr @bcmgenet_probe._entry.18, ptr @bcmgenet_probe._entry_ptr, ptr @bcmgenet_probe._entry_ptr.21, ptr @bcmgenet_set_hw_params._entry, ptr @bcmgenet_set_hw_params._entry.78, ptr @bcmgenet_set_hw_params._entry.82, ptr @bcmgenet_set_hw_params._entry.85, ptr @bcmgenet_set_hw_params._entry_ptr, ptr @bcmgenet_set_hw_params._entry_ptr.81, ptr @bcmgenet_set_hw_params._entry_ptr.84, ptr @bcmgenet_set_hw_params._entry_ptr.87, ptr @bcmgenet_driver, ptr @.str, ptr @bcmgenet_match, ptr @genet_acpi_match, ptr @bcmgenet_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @bcmgenet_probe.__key, ptr @.str.6, ptr @bcmgenet_ethtool_ops, ptr @bcmgenet_netdev_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @bcmgenet_probe.__key.10, ptr @.str.11, ptr @bcmgenet_probe.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @genet_dma_ring_regs, ptr @bcmgenet_dma_regs, ptr @bcmgenet_gstrings_stats, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @bcmgenet_init_dim.__key, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @bcmgenet_init_tx_ring.__key, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @bcmgenet_dma_regs_v3plus, ptr @genet_dma_ring_regs_v4, ptr @genet_dma_ring_regs_v123, ptr @bcmgenet_dma_regs_v2, ptr @bcmgenet_dma_regs_v1, ptr @bcmgenet_hw_params, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @v1_plat_data, ptr @v2_plat_data, ptr @v3_plat_data, ptr @v4_plat_data, ptr @v5_plat_data, ptr @bcm2711_plat_data, ptr @bcm7712_plat_data, ptr @switch.table.bcmgenet_set_hw_params, ptr @switch.table.bcmgenet_set_hw_params.91], section "llvm.metadata"
@0 = internal global [115 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genet_acpi_match to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genet_dma_ring_regs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_dma_regs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_gstrings_stats to i32), i32 5232, i32 6528, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_init_dim.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_init_tx_ring.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 226, i32 288, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_dma_regs_v3plus to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genet_dma_ring_regs_v4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genet_dma_ring_regs_v123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_dma_regs_v2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_dma_regs_v1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_hw_params to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_set_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_set_hw_params._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_set_hw_params._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmgenet_set_hw_params._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 221, i32 256, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 231, i32 288, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v1_plat_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v2_plat_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3_plat_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4_plat_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v5_plat_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2711_plat_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7712_plat_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bcmgenet_set_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bcmgenet_set_hw_params.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcmgenet_driver, ptr noundef null) #17
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcmgenet_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcmgenet_driver) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 16760, i32 noundef 5, i32 noundef 5) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %call4 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #17
  %irq0 = getelementptr i8, ptr %call, i32 18636
  %2 = ptrtoint ptr %irq0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call4, ptr %irq0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.err230_crit_edge, label %if.end8

if.end.err230_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %err230

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #17
  %irq1 = getelementptr i8, ptr %call, i32 18640
  %3 = ptrtoint ptr %irq1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call9, ptr %irq1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp11 = icmp slt i32 %call9, 0
  br i1 %cmp11, label %if.end8.err230_crit_edge, label %if.end14

if.end8.err230_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %err230

if.end14:                                         ; preds = %if.end8
  %call15 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 2) #17
  %wol_irq = getelementptr i8, ptr %call, i32 18644
  %4 = ptrtoint ptr %wol_irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call15, ptr %wol_irq, align 4
  %call16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #17
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call16, ptr %add.ptr.i, align 8
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %do.body23

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %call16 to i32
  br label %err230

do.body23:                                        ; preds = %if.end14
  %lock = getelementptr i8, ptr %call, i32 18652
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @bcmgenet_probe.__key, i16 noundef signext 3) #17
  %autoneg_pause = getelementptr i8, ptr %call, i32 18492
  %7 = ptrtoint ptr %autoneg_pause to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %autoneg_pause, align 4
  %bf.set32 = or i8 %bf.load, -32
  store i8 %bf.set32, ptr %autoneg_pause, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %driver_data.i, align 4
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %10 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 200, ptr %watchdog_timeo, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %11 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bcmgenet_ethtool_ops, ptr %ethtool_ops, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %12 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @bcmgenet_netdev_ops, ptr %netdev_ops, align 8
  %msg_enable = getelementptr i8, ptr %call, i32 18708
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 7, ptr %msg_enable, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %14 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %features, align 16
  %or = or i64 %15, 1099511627817
  store i64 %or, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %16 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %hw_features, align 8
  %or38 = or i64 %17, %or
  store i64 %or38, ptr %hw_features, align 8
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 26
  %18 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %vlan_features, align 8
  %or40 = or i64 %19, %or
  store i64 %or40, ptr %vlan_features, align 8
  %wol_irq_disabled = getelementptr i8, ptr %call, i32 18648
  %20 = ptrtoint ptr %wol_irq_disabled to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %wol_irq_disabled, align 8
  %21 = ptrtoint ptr %wol_irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wol_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp42 = icmp sgt i32 %22, 0
  br i1 %cmp42, label %if.then43, label %do.body23.if.end51_crit_edge

do.body23.if.end51_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end51

if.then43:                                        ; preds = %do.body23
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %22, ptr noundef nonnull @bcmgenet_wol_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call, ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool47.not = icmp eq i32 %call.i, 0
  br i1 %tobool47.not, label %if.then48, label %if.then43.if.end51_crit_edge

if.then43.if.end51_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end51

if.then48:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @device_set_wakeup_capable(ptr noundef %dev, i1 noundef zeroext true) #17
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.then43.if.end51_crit_edge, %do.body23.if.end51_crit_edge
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 21
  %23 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %needed_headroom, align 8
  %add = add i16 %24, 64
  store i16 %add, ptr %needed_headroom, align 8
  %dev53 = getelementptr i8, ptr %call, i32 2312
  %25 = ptrtoint ptr %dev53 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call, ptr %dev53, align 8
  %pdev54 = getelementptr i8, ptr %call, i32 18716
  %26 = ptrtoint ptr %pdev54 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %pdev, ptr %pdev54, align 4
  %call56 = tail call ptr @device_get_match_data(ptr noundef %dev) #17
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  %27 = ptrtoint ptr %call56 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call56, align 4
  %version59 = getelementptr i8, ptr %call, i32 2308
  %29 = ptrtoint ptr %version59 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %version59, align 4
  %dma_max_burst_length = getelementptr inbounds %struct.bcmgenet_plat_data, ptr %call56, i32 0, i32 1
  %30 = ptrtoint ptr %dma_max_burst_length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_max_burst_length, align 4
  %dma_max_burst_length60 = getelementptr i8, ptr %call, i32 18704
  %32 = ptrtoint ptr %dma_max_burst_length60 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %dma_max_burst_length60, align 8
  %ephy_16nm = getelementptr inbounds %struct.bcmgenet_plat_data, ptr %call56, i32 0, i32 2
  %33 = ptrtoint ptr %ephy_16nm to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ephy_16nm, align 4, !range !246
  %ephy_16nm62 = getelementptr i8, ptr %call, i32 18588
  %35 = ptrtoint ptr %ephy_16nm62 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %ephy_16nm62, align 4
  br label %if.end65

if.else:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  %genet_version = getelementptr inbounds %struct.bcmgenet_platform_data, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %genet_version to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %genet_version, align 4
  %version63 = getelementptr i8, ptr %call, i32 2308
  %38 = ptrtoint ptr %version63 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %version63, align 4
  %dma_max_burst_length64 = getelementptr i8, ptr %call, i32 18704
  %39 = ptrtoint ptr %dma_max_burst_length64 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16, ptr %dma_max_burst_length64, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then58
  %40 = ptrtoint ptr %pdev54 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev54, align 4
  %dev67 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  %call68 = tail call ptr @devm_clk_get_optional(ptr noundef %dev67, ptr noundef nonnull @.str.7) #17
  %clk = getelementptr i8, ptr %call, i32 18712
  %42 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call68, ptr %clk, align 8
  %cmp.i361 = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i361, label %do.body72, label %if.end86

do.body72:                                        ; preds = %if.end65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcmgenet_probe.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcmgenet_probe, %if.then78)) #17
          to label %do.end83 [label %if.then78], !srcloc !247

if.then78:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #19
  %43 = ptrtoint ptr %pdev54 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev54, align 4
  %dev80 = getelementptr inbounds %struct.platform_device, ptr %44, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcmgenet_probe.__UNIQUE_ID_ddebug504, ptr noundef %dev80, ptr noundef nonnull @.str.9) #17
  br label %do.end83

do.end83:                                         ; preds = %if.then78, %do.body72
  %45 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clk, align 8
  %47 = ptrtoint ptr %46 to i32
  br label %err230

if.end86:                                         ; preds = %if.end65
  %call.i362 = tail call i32 @clk_prepare(ptr noundef %call68) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i362)
  %tobool.not.i = icmp eq i32 %call.i362, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end86.err230_crit_edge

if.end86.err230_crit_edge:                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #19
  br label %err230

if.end.i:                                         ; preds = %if.end86
  %call1.i = tail call i32 @clk_enable(ptr noundef %call68) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end91, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @clk_unprepare(ptr noundef %call68) #17
  br label %err230

if.end91:                                         ; preds = %if.end.i
  tail call fastcc void @bcmgenet_set_hw_params(ptr noundef %add.ptr.i)
  %hw_params = getelementptr i8, ptr %call, i32 18488
  %48 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_params, align 8
  %flags = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %49, i32 0, i32 15
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 4
  %and = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool92.not = icmp eq i32 %and, 0
  br i1 %tobool92.not, label %if.end91.if.then98_crit_edge, label %if.then93

if.end91.if.then98_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then98

if.then93:                                        ; preds = %if.end91
  %call95 = tail call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev, i64 noundef 1099511627775)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %phi.cmp = icmp eq i32 %call95, 0
  br i1 %phi.cmp, label %if.then93.do.body105_crit_edge, label %if.then93.if.then98_crit_edge

if.then93.if.then98_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then98

if.then93.do.body105_crit_edge:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body105

if.then98:                                        ; preds = %if.then93.if.then98_crit_edge, %if.end91.if.then98_crit_edge
  %call.i364 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i364)
  %cmp.i365 = icmp eq i32 %call.i364, 0
  br i1 %cmp.i365, label %if.then.i, label %if.then98.err_clk_disable_crit_edge

if.then98.err_clk_disable_crit_edge:              ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_clk_disable

if.then.i:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i366 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #17
  br label %do.body105

do.body105:                                       ; preds = %if.then.i, %if.then93.do.body105_crit_edge
  %wq = getelementptr i8, ptr %call, i32 18496
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.11, ptr noundef nonnull @bcmgenet_probe.__key.10) #17
  %rx_buf_len = getelementptr i8, ptr %call, i32 8052
  %52 = ptrtoint ptr %rx_buf_len to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2048, ptr %rx_buf_len, align 4
  %bcmgenet_irq_work = getelementptr i8, ptr %call, i32 18592
  tail call void @__init_work(ptr noundef %bcmgenet_irq_work, i32 noundef 0) #17
  %53 = ptrtoint ptr %bcmgenet_irq_work to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -64, ptr %bcmgenet_irq_work, align 8
  %lockdep_map = getelementptr i8, ptr %call, i32 18608
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @bcmgenet_probe.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry112 = getelementptr i8, ptr %call, i32 18596
  %54 = ptrtoint ptr %entry112 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %entry112, ptr %entry112, align 4
  %prev.i = getelementptr i8, ptr %call, i32 18600
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %entry112, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call, i32 18604
  %56 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @bcmgenet_irq_task, ptr %func, align 4
  %57 = ptrtoint ptr %pdev54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev54, align 4
  %dev117 = getelementptr inbounds %struct.platform_device, ptr %58, i32 0, i32 3
  %call118 = tail call ptr @devm_clk_get_optional(ptr noundef %dev117, ptr noundef nonnull @.str.14) #17
  %clk_wol = getelementptr i8, ptr %call, i32 18724
  %59 = ptrtoint ptr %clk_wol to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call118, ptr %clk_wol, align 4
  %cmp.i368 = icmp ugt ptr %call118, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i368, label %do.body122, label %if.end142

do.body122:                                       ; preds = %do.body105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcmgenet_probe.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcmgenet_probe, %if.then134)) #17
          to label %do.end139 [label %if.then134], !srcloc !247

if.then134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #19
  %60 = ptrtoint ptr %pdev54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev54, align 4
  %dev136 = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcmgenet_probe.__UNIQUE_ID_ddebug505, ptr noundef %dev136, ptr noundef nonnull @.str.15) #17
  br label %do.end139

do.end139:                                        ; preds = %if.then134, %do.body122
  %62 = ptrtoint ptr %clk_wol to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clk_wol, align 4
  %64 = ptrtoint ptr %63 to i32
  br label %err_clk_disable

if.end142:                                        ; preds = %do.body105
  %65 = ptrtoint ptr %pdev54 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev54, align 4
  %dev144 = getelementptr inbounds %struct.platform_device, ptr %66, i32 0, i32 3
  %call145 = tail call ptr @devm_clk_get_optional(ptr noundef %dev144, ptr noundef nonnull @.str.16) #17
  %clk_eee = getelementptr i8, ptr %call, i32 18568
  %67 = ptrtoint ptr %clk_eee to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call145, ptr %clk_eee, align 8
  %cmp.i369 = icmp ugt ptr %call145, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i369, label %do.body149, label %if.end169

do.body149:                                       ; preds = %if.end142
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcmgenet_probe.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcmgenet_probe, %if.then161)) #17
          to label %do.end166 [label %if.then161], !srcloc !247

if.then161:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #19
  %68 = ptrtoint ptr %pdev54 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev54, align 4
  %dev163 = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcmgenet_probe.__UNIQUE_ID_ddebug506, ptr noundef %dev163, ptr noundef nonnull @.str.17) #17
  br label %do.end166

do.end166:                                        ; preds = %if.then161, %do.body149
  %70 = ptrtoint ptr %clk_eee to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %clk_eee, align 8
  %72 = ptrtoint ptr %71 to i32
  br label %err_clk_disable

if.end169:                                        ; preds = %if.end142
  %call171 = tail call i32 @device_get_phy_mode(ptr noundef %dev) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call171)
  %cmp172 = icmp eq i32 %call171, 1
  br i1 %cmp172, label %if.then174, label %if.end169.if.end175_crit_edge

if.end169.if.end175_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end175

if.then174:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @bcmgenet_power_up(ptr noundef %add.ptr.i, i32 noundef 1)
  br label %if.end175

if.end175:                                        ; preds = %if.then174, %if.end169.if.end175_crit_edge
  %tobool176.not = icmp eq ptr %1, null
  br i1 %tobool176.not, label %if.end175.if.else182_crit_edge, label %land.lhs.true

if.end175.if.else182_crit_edge:                   ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else182

land.lhs.true:                                    ; preds = %if.end175
  %mac_address = getelementptr inbounds %struct.bcmgenet_platform_data, ptr %1, i32 0, i32 5
  %tobool.not.i370 = icmp eq ptr %mac_address, null
  %cmp.i371 = icmp ugt ptr %mac_address, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i370, %cmp.i371
  br i1 %spec.select.i, label %land.lhs.true.if.else182_crit_edge, label %if.then179

land.lhs.true.if.else182_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else182

if.then179:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %mac_address, i32 noundef 6) #17
  br label %if.end194

if.else182:                                       ; preds = %land.lhs.true.if.else182_crit_edge, %if.end175.if.else182_crit_edge
  %call184 = tail call i32 @device_get_ethdev_address(ptr noundef %dev, ptr noundef nonnull %call) #17
  br label %if.end194

if.end194:                                        ; preds = %if.else182, %if.then179
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %73 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_addr, align 64
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %77 = and i32 %76, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.i.not.i = icmp eq i32 %77, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end194.do.end199_crit_edge

if.end194.do.end199_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end199

is_valid_ether_addr.exit:                         ; preds = %if.end194
  %add.ptr.i.i = getelementptr i8, ptr %74, i32 4
  %78 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %79 to i32
  %or.i.i = or i32 %76, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end199_crit_edge, label %is_valid_ether_addr.exit.if.end201_crit_edge

is_valid_ether_addr.exit.if.end201_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end201

is_valid_ether_addr.exit.do.end199_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end199

do.end199:                                        ; preds = %is_valid_ether_addr.exit.do.end199_crit_edge, %if.end194.do.end199_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19) #20
  tail call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call)
  br label %if.end201

if.end201:                                        ; preds = %do.end199, %is_valid_ether_addr.exit.if.end201_crit_edge
  tail call fastcc void @reset_umac(ptr noundef %add.ptr.i)
  %call202 = tail call i32 @bcmgenet_mii_init(ptr noundef nonnull %call) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %if.end205, label %if.end201.err_clk_disable_crit_edge

if.end201.err_clk_disable_crit_edge:              ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_clk_disable

if.end205:                                        ; preds = %if.end201
  %80 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev53, align 8
  %82 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw_params, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %83, align 4
  %conv208 = zext i8 %85 to i32
  %add209 = add nuw nsw i32 %conv208, 1
  %call210 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %81, i32 noundef %add209) #17
  %86 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev53, align 8
  %88 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hw_params, align 8
  %rx_queues = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %rx_queues to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %rx_queues, align 2
  %conv213 = zext i8 %91 to i32
  %add214 = add nuw nsw i32 %conv213, 1
  %call215 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef %87, i32 noundef %add214) #17
  %92 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hw_params, align 8
  %rx_queues217379 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %rx_queues217379 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %rx_queues217379, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp219381.not = icmp eq i8 %95, 0
  br i1 %cmp219381.not, label %if.end205.for.end_crit_edge, label %if.end205.for.body_crit_edge

if.end205.for.body_crit_edge:                     ; preds = %if.end205
  br label %for.body

if.end205.for.end_crit_edge:                      ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end205.for.body_crit_edge
  %i.0382 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end205.for.body_crit_edge ]
  %rx_max_coalesced_frames = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.0382, i32 14
  %96 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %rx_max_coalesced_frames, align 8
  %inc = add nuw nsw i32 %i.0382, 1
  %97 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw_params, align 8
  %rx_queues217 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %rx_queues217 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %rx_queues217, align 2
  %conv218 = zext i8 %100 to i32
  %cmp219 = icmp ult i32 %inc, %conv218
  br i1 %cmp219, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end205.for.end_crit_edge
  %rx_max_coalesced_frames223 = getelementptr i8, ptr %call, i32 18464
  %101 = ptrtoint ptr %rx_max_coalesced_frames223 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1, ptr %rx_max_coalesced_frames223, align 8
  tail call void @netif_carrier_off(ptr noundef %call) #17
  %102 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %103) #17
  tail call void @clk_unprepare(ptr noundef %103) #17
  %call225 = tail call i32 @register_netdev(ptr noundef %call) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %for.end.cleanup_crit_edge, label %if.then227

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then227:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @bcmgenet_mii_exit(ptr noundef %call) #17
  br label %err230

err_clk_disable:                                  ; preds = %if.end201.err_clk_disable_crit_edge, %do.end166, %do.end139, %if.then98.err_clk_disable_crit_edge
  %err.2 = phi i32 [ %64, %do.end139 ], [ %72, %do.end166 ], [ %call202, %if.end201.err_clk_disable_crit_edge ], [ %call.i364, %if.then98.err_clk_disable_crit_edge ]
  %104 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %105) #17
  tail call void @clk_unprepare(ptr noundef %105) #17
  br label %err230

err230:                                           ; preds = %err_clk_disable, %if.then227, %if.then3.i, %if.end86.err230_crit_edge, %do.end83, %if.then19, %if.end8.err230_crit_edge, %if.end.err230_crit_edge
  %err.3 = phi i32 [ %6, %if.then19 ], [ %47, %do.end83 ], [ %err.2, %err_clk_disable ], [ %call225, %if.then227 ], [ %call4, %if.end.err230_crit_edge ], [ %call9, %if.end8.err230_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i362, %if.end86.err230_crit_edge ]
  tail call void @free_netdev(ptr noundef %call) #17
  br label %cleanup

cleanup:                                          ; preds = %err230, %for.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %err.3, %err230 ], [ -12, %do.end ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_remove(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %dev2 = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  tail call void @unregister_netdev(ptr noundef %3) #17
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 8
  tail call void @bcmgenet_mii_exit(ptr noundef %5) #17
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 8
  tail call void @free_netdev(ptr noundef %7) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcmgenet_shutdown(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  store ptr null, ptr %driver_data.i.i.i, align 4
  %dev2.i = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2.i, align 8
  tail call void @unregister_netdev(ptr noundef %3) #17
  %4 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2.i, align 8
  tail call void @bcmgenet_mii_exit(ptr noundef %5) #17
  %6 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2.i, align 8
  tail call void @free_netdev(ptr noundef %7) #17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcmgenet_wol_isr(i32 noundef %irq, ptr nocapture noundef readnone %dev_id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_set_hw_params(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 5
  br i1 %2, label %switch.lookup, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.bcmgenet_set_hw_params, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep173 = getelementptr inbounds [5 x ptr], ptr @switch.table.bcmgenet_set_hw_params.91, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep173 to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load174 = load ptr, ptr %switch.gep173, align 4
  store ptr %switch.load, ptr @bcmgenet_dma_regs, align 4
  store ptr %switch.load174, ptr @genet_dma_ring_regs, align 4
  br label %if.end16

if.end16:                                         ; preds = %switch.lookup, %entry.if.end16_crit_edge
  %arrayidx = getelementptr [6 x %struct.bcmgenet_hw_params], ptr @bcmgenet_hw_params, i32 0, i32 %1
  %hw_params = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 14
  %5 = ptrtoint ptr %hw_params to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %hw_params, align 8
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #17, !srcloc !248
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #17
  %shr = lshr i32 %9, 24
  %trunc = trunc i32 %shr to i4
  %10 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc, label %if.else28 [
    i4 6, label %if.end16.if.end35_crit_edge
    i4 5, label %if.then27
  ]

if.end16.if.end35_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.then27:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.else28:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  %11 = trunc i32 %shr to i8
  %conv = and i8 %11, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp30 = icmp eq i8 %conv, 0
  %spec.store.select = select i1 %cmp30, i8 1, i8 %conv
  %phi.cast = zext i8 %spec.store.select to i32
  br label %if.end35

if.end35:                                         ; preds = %if.else28, %if.then27, %if.end16.if.end35_crit_edge
  %major.0 = phi i32 [ 4, %if.then27 ], [ %phi.cast, %if.else28 ], [ 5, %if.end16.if.end35_crit_edge ]
  %12 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %major.0, i32 %13)
  %cmp38.not = icmp eq i32 %major.0, %13
  br i1 %cmp38.not, label %if.end35.do.end46_crit_edge, label %do.end

if.end35.do.end46_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end46

do.end:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  %pdev = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 39
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.76, i32 noundef %major.0, i32 noundef %13) #20
  br label %do.end46

do.end46:                                         ; preds = %do.end, %if.end35.do.end46_crit_edge
  %pdev47 = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 39
  %16 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev47, align 4
  %dev48 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %shr50 = lshr i32 %9, 16
  %and51 = and i32 %shr50, 15
  %and52 = and i32 %9, 65535
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev48, ptr noundef nonnull @.str.79, i32 noundef %major.0, i32 noundef %and51, i32 noundef %and52) #20
  %conv54 = trunc i32 %9 to i16
  %18 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %cmp56 = icmp eq i32 %19, 5
  br i1 %cmp56, label %if.then58, label %if.else69

if.then58:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %cmp60.not = icmp eq i32 %and52, 0
  br i1 %cmp60.not, label %if.then58.do.body104_crit_edge, label %do.end65

if.then58.do.body104_crit_edge:                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body104

do.end65:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #19
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %and52) #20
  br label %do.body104

if.else69:                                        ; preds = %do.end46
  %20 = zext i16 %conv54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.92)
  switch i16 %conv54, label %if.else84 [
    i16 0, label %if.else69.do.end80_crit_edge
    i16 511, label %if.else69.do.end80_crit_edge175
  ]

if.else69.do.end80_crit_edge175:                  ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end80

if.else69.do.end80_crit_edge:                     ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end80

do.end80:                                         ; preds = %if.else69.do.end80_crit_edge, %if.else69.do.end80_crit_edge175
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %and52) #20
  br label %cleanup

if.else84:                                        ; preds = %if.else69
  %and86 = and i32 %9, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %cmp87.not = icmp eq i32 %and86, 0
  br i1 %cmp87.not, label %if.else93, label %if.then89

if.then89:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #19
  %conv91 = shl i16 %conv54, 8
  %gphy_rev92 = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 21
  %21 = ptrtoint ptr %gphy_rev92 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv91, ptr %gphy_rev92, align 4
  br label %do.body104

if.else93:                                        ; preds = %if.else84
  %and95 = and i32 %9, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %cmp96.not = icmp eq i32 %and95, 0
  br i1 %cmp96.not, label %if.else93.do.body104_crit_edge, label %if.then98

if.else93.do.body104_crit_edge:                   ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body104

if.then98:                                        ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #19
  %gphy_rev99 = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 21
  %22 = ptrtoint ptr %gphy_rev99 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv54, ptr %gphy_rev99, align 4
  br label %do.body104

do.body104:                                       ; preds = %if.then98, %if.else93.do.body104_crit_edge, %if.then89, %do.end65, %if.then58.do.body104_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcmgenet_set_hw_params.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcmgenet_set_hw_params, %if.then109)) #17
          to label %cleanup [label %if.then109], !srcloc !247

if.then109:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %version, align 4
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 4
  %conv111 = zext i8 %26 to i32
  %tx_bds_per_q = getelementptr [6 x %struct.bcmgenet_hw_params], ptr @bcmgenet_hw_params, i32 0, i32 %1, i32 1
  %27 = ptrtoint ptr %tx_bds_per_q to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tx_bds_per_q, align 1
  %conv112 = zext i8 %28 to i32
  %rx_queues = getelementptr [6 x %struct.bcmgenet_hw_params], ptr @bcmgenet_hw_params, i32 0, i32 %1, i32 2
  %29 = ptrtoint ptr %rx_queues to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rx_queues, align 2
  %conv113 = zext i8 %30 to i32
  %rx_bds_per_q = getelementptr [6 x %struct.bcmgenet_hw_params], ptr @bcmgenet_hw_params, i32 0, i32 %1, i32 3
  %31 = ptrtoint ptr %rx_bds_per_q to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rx_bds_per_q, align 1
  %conv114 = zext i8 %32 to i32
  %bp_in_en_shift = getelementptr [6 x %struct.bcmgenet_hw_params], ptr @bcmgenet_hw_params, i32 0, i32 %1, i32 4
  %33 = ptrtoint ptr %bp_in_en_shift to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bp_in_en_shift, align 4
  %conv115 = zext i8 %34 to i32
  %bp_in_mask = getelementptr [6 x %struct.bcmgenet_hw_params], ptr @bcmgenet_hw_params, i32 0, i32 %1, i32 5
  %35 = ptrtoint ptr %bp_in_mask to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bp_in_mask, align 4
  %hfb_filter_cnt = getelementptr [6 x %struct.bcmgenet_hw_params], ptr @bcmgenet_hw_params, i32 0, i32 %1, i32 6
  %37 = ptrtoint ptr %hfb_filter_cnt to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hfb_filter_cnt, align 4
  %conv116 = zext i8 %38 to i32
  %qtag_mask = getelementptr [6 x %struct.bcmgenet_hw_params], ptr @bcmgenet_hw_params, i32 0, i32 %1, i32 8
  %39 = ptrtoint ptr %qtag_mask to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %qtag_mask, align 2
  %conv117 = zext i8 %40 to i32
  %tbuf_offset = getelementptr [6 x %struct.bcmgenet_hw_params], ptr @bcmgenet_hw_params, i32 0, i32 %1, i32 9
  %41 = ptrtoint ptr %tbuf_offset to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %tbuf_offset, align 4
  %conv118 = zext i16 %42 to i32
  %hfb_offset = getelementptr [6 x %struct.bcmgenet_hw_params], ptr @bcmgenet_hw_params, i32 0, i32 %1, i32 10
  %43 = ptrtoint ptr %hfb_offset to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hfb_offset, align 4
  %hfb_reg_offset = getelementptr [6 x %struct.bcmgenet_hw_params], ptr @bcmgenet_hw_params, i32 0, i32 %1, i32 11
  %45 = ptrtoint ptr %hfb_reg_offset to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hfb_reg_offset, align 4
  %rdma_offset = getelementptr [6 x %struct.bcmgenet_hw_params], ptr @bcmgenet_hw_params, i32 0, i32 %1, i32 12
  %47 = ptrtoint ptr %rdma_offset to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rdma_offset, align 4
  %tdma_offset = getelementptr [6 x %struct.bcmgenet_hw_params], ptr @bcmgenet_hw_params, i32 0, i32 %1, i32 13
  %49 = ptrtoint ptr %tdma_offset to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tdma_offset, align 4
  %words_per_bd = getelementptr [6 x %struct.bcmgenet_hw_params], ptr @bcmgenet_hw_params, i32 0, i32 %1, i32 14
  %51 = ptrtoint ptr %words_per_bd to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %words_per_bd, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcmgenet_set_hw_params.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.89, i32 noundef %24, i32 noundef %conv111, i32 noundef %conv112, i32 noundef %conv113, i32 noundef %conv114, i32 noundef %conv115, i32 noundef %36, i32 noundef %conv116, i32 noundef %conv117, i32 noundef %conv118, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then109, %do.body104, %do.end80
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev, i64 noundef %mask) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %mask) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %mask) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcmgenet_irq_task(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %work, i32 116
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcmgenet_irq_task.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcmgenet_irq_task, %if.then6)) #17
          to label %do.end9 [label %if.then6], !srcloc !247

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr i8, ptr %work, i32 -16280
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcmgenet_irq_task.__UNIQUE_ID_ddebug496, ptr noundef %3, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.90) #17
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %lock = getelementptr i8, ptr %work, i32 60
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #17
  %irq0_stat = getelementptr i8, ptr %work, i32 104
  %4 = ptrtoint ptr %irq0_stat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq0_stat, align 8
  store i32 0, ptr %irq0_stat, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #17
  %and12 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.end9.if.end22_crit_edge, label %land.lhs.true

do.end9.if.end22_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

land.lhs.true:                                    ; preds = %do.end9
  %dev14 = getelementptr i8, ptr %work, i32 -16280
  %6 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev14, align 8
  %phydev = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 145
  %8 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phydev, align 16
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %autoneg, align 8
  %11 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp.not.not = icmp eq i16 %11, 0
  br i1 %cmp.not.not, label %if.then15, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %call18 = tail call i32 @phy_init_hw(ptr noundef %9) #17
  %12 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev14, align 8
  %phydev20 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 145
  %14 = ptrtoint ptr %phydev20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phydev20, align 16
  %call.i = tail call i32 @__genphy_config_aneg(ptr noundef %15, i1 noundef zeroext false) #17
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %land.lhs.true.if.end22_crit_edge, %do.end9.if.end22_crit_edge
  %and23 = and i32 %5, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end28_crit_edge, label %if.then25

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  %dev26 = getelementptr i8, ptr %work, i32 -16280
  %16 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev26, align 8
  %phydev27 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 145
  %18 = ptrtoint ptr %phydev27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phydev27, align 16
  tail call void @phy_mac_interrupt(ptr noundef %19) #17
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end22.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_phy_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_power_up(ptr noundef %priv, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_params = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 14
  %0 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_params, align 8
  %flags = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 128
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #17, !srcloc !248
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #17
  %8 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %mode, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb15
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %version = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %cmp = icmp eq i32 %10, 5
  br i1 %cmp, label %land.lhs.true, label %sw.bb.if.else_crit_edge

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %ephy_16nm = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 27
  %11 = ptrtoint ptr %ephy_16nm to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ephy_16nm, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %if.then3, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %and4 = and i32 %7, -2036100
  %or = or i32 %and4, 256
  %13 = tail call i32 @llvm.bswap.i32(i32 %or) #17
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %add.ptr.i35 = getelementptr i8, ptr %15, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %13) #17, !srcloc !249
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #17
  br label %if.end8

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %and6 = and i32 %7, -4112
  %or7 = or i32 %and6, 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then3
  %reg.0 = phi i32 [ %or7, %if.else ], [ %and4, %if.then3 ]
  %17 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #17
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  %add.ptr.i36 = getelementptr i8, ptr %19, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %17) #17, !srcloc !249
  %dev = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  tail call void @bcmgenet_phy_power_set(ptr noundef %21, i1 noundef zeroext true) #17
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @bcmgenet_wol_power_up_cfg(ptr noundef %priv, i32 noundef 2) #17
  br label %cleanup

cleanup:                                          ; preds = %sw.bb15, %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #6 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #17
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #17
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #17
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_umac(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %version.i = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #17, !srcloc !249
  br label %bcmgenet_rbuf_ctrl_set.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr1.i4.i = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i4.i, i32 0) #17, !srcloc !249
  br label %bcmgenet_rbuf_ctrl_set.exit

bcmgenet_rbuf_ctrl_set.exit:                      ; preds = %if.else.i, %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #17
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %add.ptr1.i = getelementptr i8, ptr %6, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 2097152) #17, !srcloc !249
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 429496) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcmgenet_mii_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcmgenet_mii_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcmgenet_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcmgenet_get_wol(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcmgenet_set_wol(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcmgenet_get_msglevel(ptr nocapture noundef readonly %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 18708
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @bcmgenet_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %level) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 18708
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %level, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_get_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %hw_params.i = getelementptr i8, ptr %dev, i32 18488
  %2 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_params.i, align 8
  %tdma_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %tdma_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tdma_offset.i, align 4
  %words_per_bd.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %words_per_bd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %words_per_bd.i, align 4
  %mul2.i = shl i32 %7, 10
  %add.i = add i32 %mul2.i, %5
  %add.ptr.i25 = getelementptr i8, ptr %1, i32 %add.i
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i25, i32 1024
  %8 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i = getelementptr i8, ptr %8, i32 9
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %10 to i32
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %conv.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #17, !srcloc !248
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #17
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %13 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tx_max_coalesced_frames, align 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %16 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_params.i, align 8
  %rdma_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %rdma_offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rdma_offset.i, align 4
  %words_per_bd.i27 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %17, i32 0, i32 14
  %20 = ptrtoint ptr %words_per_bd.i27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %words_per_bd.i27, align 4
  %mul2.i28 = shl i32 %21, 10
  %add.i29 = add i32 %mul2.i28, %19
  %add.ptr.i30 = getelementptr i8, ptr %15, i32 %add.i29
  %add.ptr4.i31 = getelementptr i8, ptr %add.ptr.i30, i32 1024
  %22 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i32 = getelementptr i8, ptr %22, i32 9
  %23 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i32, align 1
  %conv.i33 = zext i8 %24 to i32
  %add.ptr5.i34 = getelementptr i8, ptr %add.ptr4.i31, i32 %conv.i33
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i34) #17, !srcloc !248
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #17
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %27 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %rx_max_coalesced_frames, align 4
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %30 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_params.i, align 8
  %rdma_offset.i36 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %rdma_offset.i36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rdma_offset.i36, align 4
  %words_per_bd.i37 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %31, i32 0, i32 14
  %34 = ptrtoint ptr %words_per_bd.i37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %words_per_bd.i37, align 4
  %mul2.i38 = shl i32 %35, 10
  %add.i39 = add i32 %mul2.i38, %33
  %add.ptr.i40 = getelementptr i8, ptr %29, i32 %add.i39
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i40, i32 1088
  %36 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i41 = getelementptr i8, ptr %36, i32 32
  %37 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i41, align 1
  %conv.i42 = zext i8 %38 to i32
  %add.ptr4.i43 = getelementptr i8, ptr %add.ptr3.i, i32 %conv.i42
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i43) #17, !srcloc !248
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #17
  %mul = shl i32 %40, 13
  %div = udiv i32 %mul, 1000
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %41 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div, ptr %rx_coalesce_usecs, align 4
  %42 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_params.i, align 8
  %rx_queues44 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %rx_queues44 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rx_queues44, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp46.not = icmp eq i8 %45, 0
  br i1 %cmp46.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %dim = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.047, i32 13
  %46 = ptrtoint ptr %dim to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %dim, align 8
  %conv5 = zext i16 %47 to i32
  %48 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  %or = or i32 %49, %conv5
  store i32 %or, ptr %use_adaptive_rx_coalesce, align 4
  %inc = add nuw nsw i32 %i.047, 1
  %50 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw_params.i, align 8
  %rx_queues = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %rx_queues to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %rx_queues, align 2
  %conv = zext i8 %53 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %dim8 = getelementptr i8, ptr %dev, i32 18320
  %54 = ptrtoint ptr %dim8 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %dim8, align 8
  %conv10 = zext i16 %55 to i32
  %use_adaptive_rx_coalesce11 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %56 = ptrtoint ptr %use_adaptive_rx_coalesce11 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %use_adaptive_rx_coalesce11, align 4
  %or12 = or i32 %57, %conv10
  store i32 %or12, ptr %use_adaptive_rx_coalesce11, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_set_coalesce(ptr nocapture noundef %dev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %0 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_max_coalesced_frames, align 4
  %2 = add i32 %1, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 -511, i32 %2)
  %3 = icmp ult i32 %2, -511
  br i1 %3, label %entry.cleanup_crit_edge, label %lor.lhs.false3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %4 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %5)
  %cmp4 = icmp ugt i32 %5, 511
  br i1 %cmp4, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %6 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 524281, i32 %7)
  %cmp6 = icmp ugt i32 %7, 524281
  br i1 %cmp6, label %lor.lhs.false5.cleanup_crit_edge, label %if.end

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8 = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10 = icmp eq i32 %5, 0
  %or.cond50 = select i1 %cmp8, i1 %cmp10, i1 false
  br i1 %or.cond50, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %hw_params = getelementptr i8, ptr %dev, i32 18488
  %8 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_params, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp1363.not = icmp eq i8 %11, 0
  br i1 %cmp1363.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %12 = phi ptr [ %26, %for.body.for.body_crit_edge ], [ %9, %for.cond.preheader.for.body_crit_edge ]
  %i.064 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %13 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_max_coalesced_frames, align 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %tdma_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %12, i32 0, i32 13
  %17 = ptrtoint ptr %tdma_offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tdma_offset.i, align 4
  %words_per_bd.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %12, i32 0, i32 14
  %19 = ptrtoint ptr %words_per_bd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %words_per_bd.i, align 4
  %mul2.i = shl i32 %20, 10
  %add.i = add i32 %mul2.i, %18
  %add.ptr.i51 = getelementptr i8, ptr %16, i32 %add.i
  %mul3.i = shl i32 %i.064, 6
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i51, i32 %mul3.i
  %21 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i = getelementptr i8, ptr %21, i32 9
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %23 to i32
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %conv.i
  %24 = tail call i32 @llvm.bswap.i32(i32 %14) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %24) #17, !srcloc !249
  %inc = add nuw nsw i32 %i.064, 1
  %25 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_params, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 4
  %conv = zext i8 %28 to i32
  %cmp13 = icmp ult i32 %inc, %conv
  br i1 %cmp13, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi ptr [ %9, %for.cond.preheader.for.end_crit_edge ], [ %26, %for.body.for.end_crit_edge ]
  %29 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_max_coalesced_frames, align 4
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 8
  %tdma_offset.i53 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %.lcssa, i32 0, i32 13
  %33 = ptrtoint ptr %tdma_offset.i53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tdma_offset.i53, align 4
  %words_per_bd.i54 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %.lcssa, i32 0, i32 14
  %35 = ptrtoint ptr %words_per_bd.i54 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %words_per_bd.i54, align 4
  %mul2.i55 = shl i32 %36, 10
  %add.i56 = add i32 %mul2.i55, %34
  %add.ptr.i57 = getelementptr i8, ptr %32, i32 %add.i56
  %add.ptr4.i58 = getelementptr i8, ptr %add.ptr.i57, i32 1024
  %37 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i59 = getelementptr i8, ptr %37, i32 9
  %38 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i59, align 1
  %conv.i60 = zext i8 %39 to i32
  %add.ptr5.i61 = getelementptr i8, ptr %add.ptr4.i58, i32 %conv.i60
  %40 = tail call i32 @llvm.bswap.i32(i32 %30) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i61, i32 %40) #17, !srcloc !249
  %41 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_params, align 8
  %rx_queues66 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %rx_queues66 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rx_queues66, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp2068.not = icmp eq i8 %44, 0
  br i1 %cmp2068.not, label %for.end.for.end25_crit_edge, label %for.end.for.body22_crit_edge

for.end.for.body22_crit_edge:                     ; preds = %for.end
  br label %for.body22

for.end.for.end25_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end25

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.end.for.body22_crit_edge
  %i.169 = phi i32 [ %inc24, %for.body22.for.body22_crit_edge ], [ 0, %for.end.for.body22_crit_edge ]
  %arrayidx = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.169
  tail call fastcc void @bcmgenet_set_ring_rx_coalesce(ptr noundef %arrayidx, ptr noundef %ec)
  %inc24 = add nuw nsw i32 %i.169, 1
  %45 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_params, align 8
  %rx_queues = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %rx_queues to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rx_queues, align 2
  %conv19 = zext i8 %48 to i32
  %cmp20 = icmp ult i32 %inc24, %conv19
  br i1 %cmp20, label %for.body22.for.body22_crit_edge, label %for.body22.for.end25_crit_edge

for.body22.for.end25_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end25

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body22

for.end25:                                        ; preds = %for.body22.for.end25_crit_edge, %for.end.for.end25_crit_edge
  %arrayidx27 = getelementptr i8, ptr %dev, i32 18048
  tail call fastcc void @bcmgenet_set_ring_rx_coalesce(ptr noundef %arrayidx27, ptr noundef %ec)
  br label %cleanup

cleanup:                                          ; preds = %for.end25, %if.end.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end25 ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcmgenet_get_pauseparam(ptr noundef %dev, ptr nocapture noundef writeonly %epause) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg_pause = getelementptr i8, ptr %dev, i32 18492
  %0 = ptrtoint ptr %autoneg_pause to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %autoneg_pause, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 1
  %1 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %bf.cast, ptr %autoneg, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %6, i32 2056
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #17, !srcloc !248
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #17
  %and = lshr i32 %8, 28
  %and.lobit = and i32 %and, 1
  %9 = xor i32 %and.lobit, 1
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 3
  %10 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tx_pause, align 4
  %and3 = lshr i32 %8, 8
  %and3.lobit = and i32 %and3, 1
  %11 = xor i32 %and3.lobit, 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %autoneg_pause to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load8 = load i8, ptr %autoneg_pause, align 4
  %bf.lshr9 = lshr i8 %bf.load8, 6
  %bf.clear = and i8 %bf.lshr9, 1
  %bf.cast10 = zext i8 %bf.clear to i32
  %tx_pause11 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 3
  %13 = ptrtoint ptr %tx_pause11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %bf.cast10, ptr %tx_pause11, align 4
  %bf.load13 = load i8, ptr %autoneg_pause, align 4
  %bf.lshr14 = lshr i8 %bf.load13, 5
  %bf.clear15 = and i8 %bf.lshr14, 1
  %bf.cast16 = zext i8 %bf.clear15 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %bf.cast16.sink = phi i32 [ %11, %if.then ], [ %bf.cast16, %if.else ]
  %14 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %bf.cast16.sink, ptr %14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_set_pauseparam(ptr noundef %dev, ptr noundef %epause) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @phy_validate_pause(ptr noundef nonnull %1, ptr noundef %epause) #17
  br i1 %call2, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 1
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  %autoneg_pause = getelementptr i8, ptr %dev, i32 18492
  %4 = ptrtoint ptr %autoneg_pause to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %autoneg_pause, align 4
  %bf.shl = select i1 %tobool5.not, i8 0, i8 -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %autoneg_pause, align 4
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 3
  %5 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  %bf.shl15 = select i1 %tobool7.not, i8 0, i8 64
  %bf.clear16 = and i8 %bf.set, -65
  %bf.set17 = or i8 %bf.shl15, %bf.clear16
  %7 = ptrtoint ptr %autoneg_pause to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %bf.set17, ptr %autoneg_pause, align 4
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 2
  %8 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool19.not = icmp eq i32 %9, 0
  %bf.shl27 = select i1 %tobool19.not, i8 0, i8 32
  %bf.clear28 = and i8 %bf.set17, -33
  %bf.set29 = or i8 %bf.clear28, %bf.shl27
  %10 = ptrtoint ptr %autoneg_pause to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bf.set29, ptr %autoneg_pause, align 4
  %not.tobool19.not = xor i1 %tobool19.not, true
  %not.tobool7.not = xor i1 %tobool7.not, true
  tail call void @bcmgenet_phy_pause_set(ptr noundef %dev, i1 noundef zeroext %not.tobool19.not, i1 noundef zeroext %not.tobool7.not) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcmgenet_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %entry.for.body_crit_edge, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.04, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %arrayidx = getelementptr [109 x %struct.bcmgenet_stats], ptr @bcmgenet_gstrings_stats, i32 0, i32 %i.04
  %0 = call ptr @memcpy(ptr %add.ptr, ptr %arrayidx, i32 32)
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 109
  br i1 %exitcond.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcmgenet_get_ethtool_stats(ptr noundef %dev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %version.i = getelementptr i8, ptr %dev, i32 2308
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then
  %j.051.i = phi i32 [ 0, %if.then ], [ %j.1.i, %cleanup.i.for.body.i_crit_edge ]
  %i.048.i = phi i32 [ 0, %if.then ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %type.i = getelementptr [109 x %struct.bcmgenet_stats], ptr @bcmgenet_gstrings_stats, i32 0, i32 %i.048.i, i32 3
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %3, label %for.body.i.sw.epilog.i_crit_edge [
    i32 -1, label %for.body.i.cleanup.i_crit_edge
    i32 4, label %for.body.i.cleanup.i_crit_edge20
    i32 2, label %sw.bb1.i
    i32 1, label %for.body.i.sw.bb3.i_crit_edge
    i32 0, label %for.body.i.sw.bb7.i_crit_edge
    i32 3, label %sw.bb11.i
  ]

for.body.i.sw.bb7.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb7.i

for.body.i.sw.bb3.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb3.i

for.body.i.cleanup.i_crit_edge20:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb3.i

sw.bb3.i:                                         ; preds = %sw.bb1.i, %for.body.i.sw.bb3.i_crit_edge
  %offset.0.i = phi i32 [ 12, %for.body.i.sw.bb3.i_crit_edge ], [ 24, %sw.bb1.i ]
  br label %sw.bb7.i

sw.bb7.i:                                         ; preds = %sw.bb3.i, %for.body.i.sw.bb7.i_crit_edge
  %offset.1.i = phi i32 [ %3, %for.body.i.sw.bb7.i_crit_edge ], [ %offset.0.i, %sw.bb3.i ]
  %add8.i = add i32 %j.051.i, 1024
  %add10.i = add i32 %add8.i, %offset.1.i
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 2048
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %add10.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #17, !srcloc !248
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #17
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %for.body.i
  %9 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp12.i = icmp eq i32 %10, 1
  %reg_offset.i = getelementptr [109 x %struct.bcmgenet_stats], ptr @bcmgenet_gstrings_stats, i32 0, i32 %i.048.i, i32 4
  %11 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %reg_offset.i, align 4
  %conv14.i = zext i16 %12 to i32
  br i1 %cmp12.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb11.i
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i44.i = getelementptr i8, ptr %14, i32 2048
  %add.ptr1.i45.i = getelementptr i8, ptr %add.ptr.i44.i, i32 %conv14.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i45.i) #17, !srcloc !248
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp16.i = icmp eq i32 %15, -1
  br i1 %cmp16.i, label %if.then18.i, label %if.then.i.sw.epilog.i_crit_edge

if.then.i.sw.epilog.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

if.then18.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i46.i = getelementptr i8, ptr %18, i32 2048
  %add.ptr1.i47.i = getelementptr i8, ptr %add.ptr.i46.i, i32 %conv14.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i47.i, i32 0) #17, !srcloc !249
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb11.i
  %19 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.95)
  switch i16 %12, label %sw.default.i.i [
    i16 1564, label %sw.bb.i.i
    i16 1588, label %sw.bb8.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i.i = icmp eq i32 %10, 2
  %..i.i = select i1 %cmp.i.i, i32 128, i32 148
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 768
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %..i.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #17, !srcloc !248
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp3.i.i = icmp eq i32 %22, -1
  br i1 %cmp3.i.i, label %if.then5.i.i, label %sw.bb.i.i.sw.epilog.i_crit_edge

sw.bb.i.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

if.then5.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i45.i.i = getelementptr i8, ptr %25, i32 768
  %add.ptr1.i46.i.i = getelementptr i8, ptr %add.ptr.i45.i.i, i32 %..i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i46.i.i, i32 0) #17, !srcloc !249
  br label %sw.epilog.i

sw.bb8.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp10.i.i = icmp eq i32 %10, 2
  %.44.i.i = select i1 %cmp10.i.i, i32 132, i32 152
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i47.i.i = getelementptr i8, ptr %27, i32 768
  %add.ptr1.i48.i.i = getelementptr i8, ptr %add.ptr.i47.i.i, i32 %.44.i.i
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i48.i.i) #17, !srcloc !248
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp17.i.i = icmp eq i32 %28, -1
  br i1 %cmp17.i.i, label %if.then19.i.i, label %sw.bb8.i.i.sw.epilog.i_crit_edge

sw.bb8.i.i.sw.epilog.i_crit_edge:                 ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

if.then19.i.i:                                    ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i49.i.i = getelementptr i8, ptr %31, i32 768
  %add.ptr1.i50.i.i = getelementptr i8, ptr %add.ptr.i49.i.i, i32 %.44.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i50.i.i, i32 0) #17, !srcloc !249
  br label %sw.epilog.i

sw.default.i.i:                                   ; preds = %if.else.i
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i51.i.i = getelementptr i8, ptr %33, i32 2048
  %add.ptr1.i52.i.i = getelementptr i8, ptr %add.ptr.i51.i.i, i32 %conv14.i
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i52.i.i) #17, !srcloc !248
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp24.i.i = icmp eq i32 %34, -1
  br i1 %cmp24.i.i, label %if.then26.i.i, label %sw.default.i.i.sw.epilog.i_crit_edge

sw.default.i.i.sw.epilog.i_crit_edge:             ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

if.then26.i.i:                                    ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i53.i.i = getelementptr i8, ptr %37, i32 2048
  %add.ptr1.i54.i.i = getelementptr i8, ptr %add.ptr.i53.i.i, i32 %conv14.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i54.i.i, i32 0) #17, !srcloc !249
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then26.i.i, %sw.default.i.i.sw.epilog.i_crit_edge, %if.then19.i.i, %sw.bb8.i.i.sw.epilog.i_crit_edge, %if.then5.i.i, %sw.bb.i.i.sw.epilog.i_crit_edge, %if.then18.i, %if.then.i.sw.epilog.i_crit_edge, %sw.bb7.i, %for.body.i.sw.epilog.i_crit_edge
  %val.0.i = phi i32 [ 0, %for.body.i.sw.epilog.i_crit_edge ], [ -1, %if.then18.i ], [ %16, %if.then.i.sw.epilog.i_crit_edge ], [ %8, %sw.bb7.i ], [ -1, %if.then26.i.i ], [ %35, %sw.default.i.i.sw.epilog.i_crit_edge ], [ -1, %if.then19.i.i ], [ %29, %sw.bb8.i.i.sw.epilog.i_crit_edge ], [ -1, %if.then5.i.i ], [ %23, %sw.bb.i.i.sw.epilog.i_crit_edge ]
  %stat_sizeof.i = getelementptr [109 x %struct.bcmgenet_stats], ptr @bcmgenet_gstrings_stats, i32 0, i32 %i.048.i, i32 1
  %38 = ptrtoint ptr %stat_sizeof.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stat_sizeof.i, align 4
  %add24.i = add i32 %39, %j.051.i
  %stat_offset.i = getelementptr [109 x %struct.bcmgenet_stats], ptr @bcmgenet_gstrings_stats, i32 0, i32 %i.048.i, i32 2
  %40 = ptrtoint ptr %stat_offset.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stat_offset.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %add.ptr.i, i32 %41
  %42 = ptrtoint ptr %add.ptr.i18 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %val.0.i, ptr %add.ptr.i18, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.epilog.i, %for.body.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge20
  %j.1.i = phi i32 [ %add24.i, %sw.epilog.i ], [ %j.051.i, %for.body.i.cleanup.i_crit_edge ], [ %j.051.i, %for.body.i.cleanup.i_crit_edge20 ]
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 109
  br i1 %exitcond.not.i, label %cleanup.i.if.end_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %cleanup.i.if.end_crit_edge, %entry.if.end_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %43 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %netdev_ops, align 8
  %ndo_get_stats = getelementptr inbounds %struct.net_device_ops, ptr %44, i32 0, i32 23
  %45 = ptrtoint ptr %ndo_get_stats to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ndo_get_stats, align 4
  %call2 = tail call ptr %46(ptr noundef %dev) #17
  %stats5 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.019 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.019)
  %cmp3 = icmp ult i32 %i.019, 9
  %p.0 = select i1 %cmp3, ptr %stats5, ptr %add.ptr.i
  %stat_offset = getelementptr [109 x %struct.bcmgenet_stats], ptr @bcmgenet_gstrings_stats, i32 0, i32 %i.019, i32 2
  %47 = ptrtoint ptr %stat_offset to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stat_offset, align 4
  %add.ptr = getelementptr i8, ptr %p.0, i32 %48
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr, align 4
  %conv = zext i32 %50 to i64
  %arrayidx7 = getelementptr i64, ptr %data, i32 %i.019
  %51 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv, ptr %arrayidx7, align 8
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 109
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_begin(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr i8, ptr %dev, i32 18712
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @clk_unprepare(ptr noundef %1) #17
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcmgenet_complete(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr i8, ptr %dev, i32 18712
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %1) #17
  tail call void @clk_unprepare(ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcmgenet_get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %string_set) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %string_set)
  %cond = icmp eq i32 %string_set, 1
  %. = select i1 %cond, i32 109, i32 -95
  ret i32 %.
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_get_rxnfc(ptr noundef readonly %dev, ptr nocapture noundef %cmd, ptr nocapture noundef writeonly %rule_locs) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 45, label %sw.bb
    i32 46, label %sw.bb3
    i32 47, label %sw.bb6
    i32 48, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %hw_params = getelementptr i8, ptr %dev, i32 18488
  %3 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_params, align 8
  %rx_queues = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %rx_queues to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rx_queues, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %narrow = select i1 %tobool.not, i8 1, i8 %6
  %7 = zext i8 %narrow to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %data, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %rxnfc_list.i = getelementptr i8, ptr %dev, i32 11000
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %sw.bb3
  %pos.0.in.i = phi ptr [ %rxnfc_list.i, %sw.bb3 ], [ %pos.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %res.0.i = phi i32 [ 0, %sw.bb3 ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %rxnfc_list.i
  %inc.i = add i32 %res.0.i, 1
  br i1 %cmp.i.not.i, label %bcmgenet_get_num_flows.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

bcmgenet_get_num_flows.exit:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  %10 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %res.0.i, ptr %10, align 8
  %data5 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %12 = ptrtoint ptr %data5 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 16, ptr %data5, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %13 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %location, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %14)
  %15 = icmp ugt i32 %14, 15
  br i1 %15, label %sw.bb6.sw.epilog_crit_edge, label %if.end.i

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb6
  %state.i = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 11, i32 %14, i32 2
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp2.i = icmp eq i32 %17, 0
  br i1 %cmp2.i, label %if.end.i.sw.epilog_crit_edge, label %if.else.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %fs.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %fs4.i = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 11, i32 %14, i32 1
  %18 = call ptr @memcpy(ptr %fs.i, ptr %fs4.i, i32 168)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %rxnfc_list = getelementptr i8, ptr %dev, i32 11000
  %19 = ptrtoint ptr %rxnfc_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %rule.037 = load ptr, ptr %rxnfc_list, align 8
  %cmp.not38 = icmp eq ptr %rule.037, %rxnfc_list
  br i1 %cmp.not38, label %sw.bb8.for.end_crit_edge, label %for.body.lr.ph

sw.bb8.for.end_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.bb8
  %20 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rule.040 = phi ptr [ %rule.037, %for.body.lr.ph ], [ %rule.0, %for.inc.for.body_crit_edge ]
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %i.1, %for.inc.for.body_crit_edge ]
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.039, i32 %22)
  %cmp11 = icmp ult i32 %i.039, %22
  br i1 %cmp11, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %location14 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule.040, i32 0, i32 1, i32 6
  %23 = ptrtoint ptr %location14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %location14, align 8
  %inc = add nuw i32 %i.039, 1
  %arrayidx = getelementptr i32, ptr %rule_locs, i32 %i.039
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %i.1 = phi i32 [ %inc, %if.then ], [ %i.039, %for.body.for.inc_crit_edge ]
  %26 = ptrtoint ptr %rule.040 to i32
  call void @__asan_load4_noabort(i32 %26)
  %rule.0 = load ptr, ptr %rule.040, align 8
  %cmp.not = icmp eq ptr %rule.0, %rxnfc_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.bb8.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %sw.bb8.for.end_crit_edge ], [ %i.1, %for.inc.for.end_crit_edge ]
  %27 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %i.0.lcssa, ptr %27, align 8
  %data20 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %29 = ptrtoint ptr %data20 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 16, ptr %data20, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %if.else.i, %if.end.i.sw.epilog_crit_edge, %sw.bb6.sw.epilog_crit_edge, %bcmgenet_get_num_flows.exit, %sw.bb, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %for.end ], [ 0, %bcmgenet_get_num_flows.exit ], [ 0, %sw.bb ], [ -95, %entry.sw.epilog_crit_edge ], [ -22, %sw.bb6.sw.epilog_crit_edge ], [ 0, %if.else.i ], [ -2, %if.end.i.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_set_rxnfc(ptr noundef %dev, ptr noundef readonly %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %1, label %sw.default [
    i32 50, label %sw.bb
    i32 49, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %hw_params.i = getelementptr i8, ptr %dev, i32 18488
  %3 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_params.i, align 8
  %hfb_filter_size.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %hfb_filter_size.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hfb_filter_size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp.i = icmp sgt i8 %6, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #20
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %fs.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %ring_cookie.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 5
  %7 = ptrtoint ptr %ring_cookie.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ring_cookie.i, align 8
  %rx_queues.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rx_queues.i, align 2
  %conv3.i = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %conv3.i)
  %cmp4.i = icmp ule i64 %8, %conv3.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %8)
  %cmp8.not.i = icmp eq i64 %8, -2
  %or.cond.i = or i1 %cmp8.not.i, %cmp4.i
  br i1 %or.cond.i, label %if.end13.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i64 noundef %8) #20
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i
  %location.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %11 = ptrtoint ptr %location.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %location.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %12)
  %cmp.i.i = icmp ugt i32 %12, 15
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %12) #20
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end13.i
  %13 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fs.i, align 8
  %and.i.i = and i32 %14, 1073741823
  %15 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %and.i.i, label %sw.default.i.i [
    i32 13, label %sw.bb.i.i
    i32 18, label %sw.bb21.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i.i
  %m_u.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %m_u.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %m_u.i.i, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.99)
  switch i8 %17, label %sw.bb.i.i.if.then19.i.i_crit_edge [
    i8 0, label %sw.bb.i.i.sw.bb.i.i.i_crit_edge
    i8 15, label %sw.bb.i.i.sw.bb.i.i.i_crit_edge59
    i8 -16, label %sw.bb.i.i.sw.bb.i.i.i_crit_edge60
    i8 -1, label %sw.bb.i.i.sw.bb.i.i.i_crit_edge61
  ]

sw.bb.i.i.sw.bb.i.i.i_crit_edge61:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.i.i

sw.bb.i.i.sw.bb.i.i.i_crit_edge60:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.i.i

sw.bb.i.i.sw.bb.i.i.i_crit_edge59:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.i.i

sw.bb.i.i.sw.bb.i.i.i_crit_edge:                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.i.i

sw.bb.i.i.if.then19.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19.i.i

sw.bb.i.i.i:                                      ; preds = %sw.bb.i.i.sw.bb.i.i.i_crit_edge, %sw.bb.i.i.sw.bb.i.i.i_crit_edge59, %sw.bb.i.i.sw.bb.i.i.i_crit_edge60, %sw.bb.i.i.sw.bb.i.i.i_crit_edge61
  %incdec.ptr.i.i.i = getelementptr i8, ptr %m_u.i.i, i32 1
  %19 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr.i.i.i, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %20, label %sw.bb.i.i.i.if.then19.i.i_crit_edge [
    i8 0, label %sw.bb.i.i.i.sw.bb.i.1.i.i_crit_edge
    i8 15, label %sw.bb.i.i.i.sw.bb.i.1.i.i_crit_edge62
    i8 -16, label %sw.bb.i.i.i.sw.bb.i.1.i.i_crit_edge63
    i8 -1, label %sw.bb.i.i.i.sw.bb.i.1.i.i_crit_edge64
  ]

sw.bb.i.i.i.sw.bb.i.1.i.i_crit_edge64:            ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.1.i.i

sw.bb.i.i.i.sw.bb.i.1.i.i_crit_edge63:            ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.1.i.i

sw.bb.i.i.i.sw.bb.i.1.i.i_crit_edge62:            ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.1.i.i

sw.bb.i.i.i.sw.bb.i.1.i.i_crit_edge:              ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.1.i.i

sw.bb.i.i.i.if.then19.i.i_crit_edge:              ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19.i.i

sw.bb.i.1.i.i:                                    ; preds = %sw.bb.i.i.i.sw.bb.i.1.i.i_crit_edge, %sw.bb.i.i.i.sw.bb.i.1.i.i_crit_edge62, %sw.bb.i.i.i.sw.bb.i.1.i.i_crit_edge63, %sw.bb.i.i.i.sw.bb.i.1.i.i_crit_edge64
  %incdec.ptr.i.1.i.i = getelementptr i8, ptr %m_u.i.i, i32 2
  %22 = ptrtoint ptr %incdec.ptr.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr.i.1.i.i, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %23, label %sw.bb.i.1.i.i.if.then19.i.i_crit_edge [
    i8 0, label %sw.bb.i.1.i.i.sw.bb.i.2.i.i_crit_edge
    i8 15, label %sw.bb.i.1.i.i.sw.bb.i.2.i.i_crit_edge65
    i8 -16, label %sw.bb.i.1.i.i.sw.bb.i.2.i.i_crit_edge66
    i8 -1, label %sw.bb.i.1.i.i.sw.bb.i.2.i.i_crit_edge67
  ]

sw.bb.i.1.i.i.sw.bb.i.2.i.i_crit_edge67:          ; preds = %sw.bb.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.2.i.i

sw.bb.i.1.i.i.sw.bb.i.2.i.i_crit_edge66:          ; preds = %sw.bb.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.2.i.i

sw.bb.i.1.i.i.sw.bb.i.2.i.i_crit_edge65:          ; preds = %sw.bb.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.2.i.i

sw.bb.i.1.i.i.sw.bb.i.2.i.i_crit_edge:            ; preds = %sw.bb.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.2.i.i

sw.bb.i.1.i.i.if.then19.i.i_crit_edge:            ; preds = %sw.bb.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19.i.i

sw.bb.i.2.i.i:                                    ; preds = %sw.bb.i.1.i.i.sw.bb.i.2.i.i_crit_edge, %sw.bb.i.1.i.i.sw.bb.i.2.i.i_crit_edge65, %sw.bb.i.1.i.i.sw.bb.i.2.i.i_crit_edge66, %sw.bb.i.1.i.i.sw.bb.i.2.i.i_crit_edge67
  %incdec.ptr.i.2.i.i = getelementptr i8, ptr %m_u.i.i, i32 3
  %25 = ptrtoint ptr %incdec.ptr.i.2.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %incdec.ptr.i.2.i.i, align 1
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %26, label %sw.bb.i.2.i.i.if.then19.i.i_crit_edge [
    i8 0, label %sw.bb.i.2.i.i.sw.bb.i.3.i.i_crit_edge
    i8 15, label %sw.bb.i.2.i.i.sw.bb.i.3.i.i_crit_edge68
    i8 -16, label %sw.bb.i.2.i.i.sw.bb.i.3.i.i_crit_edge69
    i8 -1, label %sw.bb.i.2.i.i.sw.bb.i.3.i.i_crit_edge70
  ]

sw.bb.i.2.i.i.sw.bb.i.3.i.i_crit_edge70:          ; preds = %sw.bb.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.3.i.i

sw.bb.i.2.i.i.sw.bb.i.3.i.i_crit_edge69:          ; preds = %sw.bb.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.3.i.i

sw.bb.i.2.i.i.sw.bb.i.3.i.i_crit_edge68:          ; preds = %sw.bb.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.3.i.i

sw.bb.i.2.i.i.sw.bb.i.3.i.i_crit_edge:            ; preds = %sw.bb.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i.3.i.i

sw.bb.i.2.i.i.if.then19.i.i_crit_edge:            ; preds = %sw.bb.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19.i.i

sw.bb.i.3.i.i:                                    ; preds = %sw.bb.i.2.i.i.sw.bb.i.3.i.i_crit_edge, %sw.bb.i.2.i.i.sw.bb.i.3.i.i_crit_edge68, %sw.bb.i.2.i.i.sw.bb.i.3.i.i_crit_edge69, %sw.bb.i.2.i.i.sw.bb.i.3.i.i_crit_edge70
  %ip4dst.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %ip4dst.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ip4dst.i.i, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %29, label %sw.bb.i.3.i.i.if.then19.i.i_crit_edge [
    i8 0, label %sw.bb.i.3.i.i.sw.bb.i108.i.i_crit_edge
    i8 15, label %sw.bb.i.3.i.i.sw.bb.i108.i.i_crit_edge71
    i8 -16, label %sw.bb.i.3.i.i.sw.bb.i108.i.i_crit_edge72
    i8 -1, label %sw.bb.i.3.i.i.sw.bb.i108.i.i_crit_edge73
  ]

sw.bb.i.3.i.i.sw.bb.i108.i.i_crit_edge73:         ; preds = %sw.bb.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i108.i.i

sw.bb.i.3.i.i.sw.bb.i108.i.i_crit_edge72:         ; preds = %sw.bb.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i108.i.i

sw.bb.i.3.i.i.sw.bb.i108.i.i_crit_edge71:         ; preds = %sw.bb.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i108.i.i

sw.bb.i.3.i.i.sw.bb.i108.i.i_crit_edge:           ; preds = %sw.bb.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i108.i.i

sw.bb.i.3.i.i.if.then19.i.i_crit_edge:            ; preds = %sw.bb.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19.i.i

sw.bb.i108.i.i:                                   ; preds = %sw.bb.i.3.i.i.sw.bb.i108.i.i_crit_edge, %sw.bb.i.3.i.i.sw.bb.i108.i.i_crit_edge71, %sw.bb.i.3.i.i.sw.bb.i108.i.i_crit_edge72, %sw.bb.i.3.i.i.sw.bb.i108.i.i_crit_edge73
  %incdec.ptr.i105.i.i = getelementptr i8, ptr %ip4dst.i.i, i32 1
  %31 = ptrtoint ptr %incdec.ptr.i105.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr.i105.i.i, align 1
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.104)
  switch i8 %32, label %sw.bb.i108.i.i.if.then19.i.i_crit_edge [
    i8 0, label %sw.bb.i108.i.i.sw.bb.i108.1.i.i_crit_edge
    i8 15, label %sw.bb.i108.i.i.sw.bb.i108.1.i.i_crit_edge74
    i8 -16, label %sw.bb.i108.i.i.sw.bb.i108.1.i.i_crit_edge75
    i8 -1, label %sw.bb.i108.i.i.sw.bb.i108.1.i.i_crit_edge76
  ]

sw.bb.i108.i.i.sw.bb.i108.1.i.i_crit_edge76:      ; preds = %sw.bb.i108.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i108.1.i.i

sw.bb.i108.i.i.sw.bb.i108.1.i.i_crit_edge75:      ; preds = %sw.bb.i108.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i108.1.i.i

sw.bb.i108.i.i.sw.bb.i108.1.i.i_crit_edge74:      ; preds = %sw.bb.i108.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i108.1.i.i

sw.bb.i108.i.i.sw.bb.i108.1.i.i_crit_edge:        ; preds = %sw.bb.i108.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i108.1.i.i

sw.bb.i108.i.i.if.then19.i.i_crit_edge:           ; preds = %sw.bb.i108.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19.i.i

sw.bb.i108.1.i.i:                                 ; preds = %sw.bb.i108.i.i.sw.bb.i108.1.i.i_crit_edge, %sw.bb.i108.i.i.sw.bb.i108.1.i.i_crit_edge74, %sw.bb.i108.i.i.sw.bb.i108.1.i.i_crit_edge75, %sw.bb.i108.i.i.sw.bb.i108.1.i.i_crit_edge76
  %incdec.ptr.i105.1.i.i = getelementptr i8, ptr %ip4dst.i.i, i32 2
  %34 = ptrtoint ptr %incdec.ptr.i105.1.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %incdec.ptr.i105.1.i.i, align 1
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.105)
  switch i8 %35, label %sw.bb.i108.1.i.i.if.then19.i.i_crit_edge [
    i8 0, label %sw.bb.i108.1.i.i.sw.bb.i108.2.i.i_crit_edge
    i8 15, label %sw.bb.i108.1.i.i.sw.bb.i108.2.i.i_crit_edge77
    i8 -16, label %sw.bb.i108.1.i.i.sw.bb.i108.2.i.i_crit_edge78
    i8 -1, label %sw.bb.i108.1.i.i.sw.bb.i108.2.i.i_crit_edge79
  ]

sw.bb.i108.1.i.i.sw.bb.i108.2.i.i_crit_edge79:    ; preds = %sw.bb.i108.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i108.2.i.i

sw.bb.i108.1.i.i.sw.bb.i108.2.i.i_crit_edge78:    ; preds = %sw.bb.i108.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i108.2.i.i

sw.bb.i108.1.i.i.sw.bb.i108.2.i.i_crit_edge77:    ; preds = %sw.bb.i108.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i108.2.i.i

sw.bb.i108.1.i.i.sw.bb.i108.2.i.i_crit_edge:      ; preds = %sw.bb.i108.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i108.2.i.i

sw.bb.i108.1.i.i.if.then19.i.i_crit_edge:         ; preds = %sw.bb.i108.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19.i.i

sw.bb.i108.2.i.i:                                 ; preds = %sw.bb.i108.1.i.i.sw.bb.i108.2.i.i_crit_edge, %sw.bb.i108.1.i.i.sw.bb.i108.2.i.i_crit_edge77, %sw.bb.i108.1.i.i.sw.bb.i108.2.i.i_crit_edge78, %sw.bb.i108.1.i.i.sw.bb.i108.2.i.i_crit_edge79
  %incdec.ptr.i105.2.i.i = getelementptr i8, ptr %ip4dst.i.i, i32 3
  %37 = ptrtoint ptr %incdec.ptr.i105.2.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %incdec.ptr.i105.2.i.i, align 1
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.106)
  switch i8 %38, label %sw.bb.i108.2.i.i.if.then19.i.i_crit_edge [
    i8 0, label %sw.bb.i108.2.i.i.sw.bb.i108.3.i.i_crit_edge
    i8 15, label %sw.bb.i108.2.i.i.sw.bb.i108.3.i.i_crit_edge80
    i8 -16, label %sw.bb.i108.2.i.i.sw.bb.i108.3.i.i_crit_edge81
    i8 -1, label %sw.bb.i108.2.i.i.sw.bb.i108.3.i.i_crit_edge82
  ]

sw.bb.i108.2.i.i.sw.bb.i108.3.i.i_crit_edge82:    ; preds = %sw.bb.i108.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i108.3.i.i

sw.bb.i108.2.i.i.sw.bb.i108.3.i.i_crit_edge81:    ; preds = %sw.bb.i108.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i108.3.i.i

sw.bb.i108.2.i.i.sw.bb.i108.3.i.i_crit_edge80:    ; preds = %sw.bb.i108.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i108.3.i.i

sw.bb.i108.2.i.i.sw.bb.i108.3.i.i_crit_edge:      ; preds = %sw.bb.i108.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i108.3.i.i

sw.bb.i108.2.i.i.if.then19.i.i_crit_edge:         ; preds = %sw.bb.i108.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19.i.i

sw.bb.i108.3.i.i:                                 ; preds = %sw.bb.i108.2.i.i.sw.bb.i108.3.i.i_crit_edge, %sw.bb.i108.2.i.i.sw.bb.i108.3.i.i_crit_edge80, %sw.bb.i108.2.i.i.sw.bb.i108.3.i.i_crit_edge81, %sw.bb.i108.2.i.i.sw.bb.i108.3.i.i_crit_edge82
  %l4_4_bytes.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %40 = ptrtoint ptr %l4_4_bytes.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %l4_4_bytes.i.i, align 1
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.107)
  switch i8 %41, label %sw.bb.i108.3.i.i.if.then19.i.i_crit_edge [
    i8 0, label %sw.bb.i108.3.i.i.sw.bb.i117.i.i_crit_edge
    i8 15, label %sw.bb.i108.3.i.i.sw.bb.i117.i.i_crit_edge83
    i8 -16, label %sw.bb.i108.3.i.i.sw.bb.i117.i.i_crit_edge84
    i8 -1, label %sw.bb.i108.3.i.i.sw.bb.i117.i.i_crit_edge85
  ]

sw.bb.i108.3.i.i.sw.bb.i117.i.i_crit_edge85:      ; preds = %sw.bb.i108.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i117.i.i

sw.bb.i108.3.i.i.sw.bb.i117.i.i_crit_edge84:      ; preds = %sw.bb.i108.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i117.i.i

sw.bb.i108.3.i.i.sw.bb.i117.i.i_crit_edge83:      ; preds = %sw.bb.i108.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i117.i.i

sw.bb.i108.3.i.i.sw.bb.i117.i.i_crit_edge:        ; preds = %sw.bb.i108.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i117.i.i

sw.bb.i108.3.i.i.if.then19.i.i_crit_edge:         ; preds = %sw.bb.i108.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19.i.i

sw.bb.i117.i.i:                                   ; preds = %sw.bb.i108.3.i.i.sw.bb.i117.i.i_crit_edge, %sw.bb.i108.3.i.i.sw.bb.i117.i.i_crit_edge83, %sw.bb.i108.3.i.i.sw.bb.i117.i.i_crit_edge84, %sw.bb.i108.3.i.i.sw.bb.i117.i.i_crit_edge85
  %incdec.ptr.i114.i.i = getelementptr i8, ptr %l4_4_bytes.i.i, i32 1
  %43 = ptrtoint ptr %incdec.ptr.i114.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %incdec.ptr.i114.i.i, align 1
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.108)
  switch i8 %44, label %sw.bb.i117.i.i.if.then19.i.i_crit_edge [
    i8 0, label %sw.bb.i117.i.i.sw.bb.i117.1.i.i_crit_edge
    i8 15, label %sw.bb.i117.i.i.sw.bb.i117.1.i.i_crit_edge86
    i8 -16, label %sw.bb.i117.i.i.sw.bb.i117.1.i.i_crit_edge87
    i8 -1, label %sw.bb.i117.i.i.sw.bb.i117.1.i.i_crit_edge88
  ]

sw.bb.i117.i.i.sw.bb.i117.1.i.i_crit_edge88:      ; preds = %sw.bb.i117.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i117.1.i.i

sw.bb.i117.i.i.sw.bb.i117.1.i.i_crit_edge87:      ; preds = %sw.bb.i117.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i117.1.i.i

sw.bb.i117.i.i.sw.bb.i117.1.i.i_crit_edge86:      ; preds = %sw.bb.i117.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i117.1.i.i

sw.bb.i117.i.i.sw.bb.i117.1.i.i_crit_edge:        ; preds = %sw.bb.i117.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i117.1.i.i

sw.bb.i117.i.i.if.then19.i.i_crit_edge:           ; preds = %sw.bb.i117.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19.i.i

sw.bb.i117.1.i.i:                                 ; preds = %sw.bb.i117.i.i.sw.bb.i117.1.i.i_crit_edge, %sw.bb.i117.i.i.sw.bb.i117.1.i.i_crit_edge86, %sw.bb.i117.i.i.sw.bb.i117.1.i.i_crit_edge87, %sw.bb.i117.i.i.sw.bb.i117.1.i.i_crit_edge88
  %incdec.ptr.i114.1.i.i = getelementptr i8, ptr %l4_4_bytes.i.i, i32 2
  %46 = ptrtoint ptr %incdec.ptr.i114.1.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %incdec.ptr.i114.1.i.i, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.109)
  switch i8 %47, label %sw.bb.i117.1.i.i.if.then19.i.i_crit_edge [
    i8 0, label %sw.bb.i117.1.i.i.sw.bb.i117.2.i.i_crit_edge
    i8 15, label %sw.bb.i117.1.i.i.sw.bb.i117.2.i.i_crit_edge89
    i8 -16, label %sw.bb.i117.1.i.i.sw.bb.i117.2.i.i_crit_edge90
    i8 -1, label %sw.bb.i117.1.i.i.sw.bb.i117.2.i.i_crit_edge91
  ]

sw.bb.i117.1.i.i.sw.bb.i117.2.i.i_crit_edge91:    ; preds = %sw.bb.i117.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i117.2.i.i

sw.bb.i117.1.i.i.sw.bb.i117.2.i.i_crit_edge90:    ; preds = %sw.bb.i117.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i117.2.i.i

sw.bb.i117.1.i.i.sw.bb.i117.2.i.i_crit_edge89:    ; preds = %sw.bb.i117.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i117.2.i.i

sw.bb.i117.1.i.i.sw.bb.i117.2.i.i_crit_edge:      ; preds = %sw.bb.i117.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i117.2.i.i

sw.bb.i117.1.i.i.if.then19.i.i_crit_edge:         ; preds = %sw.bb.i117.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19.i.i

sw.bb.i117.2.i.i:                                 ; preds = %sw.bb.i117.1.i.i.sw.bb.i117.2.i.i_crit_edge, %sw.bb.i117.1.i.i.sw.bb.i117.2.i.i_crit_edge89, %sw.bb.i117.1.i.i.sw.bb.i117.2.i.i_crit_edge90, %sw.bb.i117.1.i.i.sw.bb.i117.2.i.i_crit_edge91
  %incdec.ptr.i114.2.i.i = getelementptr i8, ptr %l4_4_bytes.i.i, i32 3
  %49 = ptrtoint ptr %incdec.ptr.i114.2.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %incdec.ptr.i114.2.i.i, align 1
  %51 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.110)
  switch i8 %50, label %sw.bb.i117.2.i.i.if.then19.i.i_crit_edge [
    i8 0, label %sw.bb.i117.2.i.i.sw.bb.i117.3.i.i_crit_edge
    i8 15, label %sw.bb.i117.2.i.i.sw.bb.i117.3.i.i_crit_edge92
    i8 -16, label %sw.bb.i117.2.i.i.sw.bb.i117.3.i.i_crit_edge93
    i8 -1, label %sw.bb.i117.2.i.i.sw.bb.i117.3.i.i_crit_edge94
  ]

sw.bb.i117.2.i.i.sw.bb.i117.3.i.i_crit_edge94:    ; preds = %sw.bb.i117.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i117.3.i.i

sw.bb.i117.2.i.i.sw.bb.i117.3.i.i_crit_edge93:    ; preds = %sw.bb.i117.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i117.3.i.i

sw.bb.i117.2.i.i.sw.bb.i117.3.i.i_crit_edge92:    ; preds = %sw.bb.i117.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i117.3.i.i

sw.bb.i117.2.i.i.sw.bb.i117.3.i.i_crit_edge:      ; preds = %sw.bb.i117.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i117.3.i.i

sw.bb.i117.2.i.i.if.then19.i.i_crit_edge:         ; preds = %sw.bb.i117.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19.i.i

sw.bb.i117.3.i.i:                                 ; preds = %sw.bb.i117.2.i.i.sw.bb.i117.3.i.i_crit_edge, %sw.bb.i117.2.i.i.sw.bb.i117.3.i.i_crit_edge92, %sw.bb.i117.2.i.i.sw.bb.i117.3.i.i_crit_edge93, %sw.bb.i117.2.i.i.sw.bb.i117.3.i.i_crit_edge94
  %proto.i.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u.i.i, i32 0, i32 5
  %52 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %proto.i.i, align 1
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.111)
  switch i8 %53, label %sw.bb.i117.3.i.i.if.then19.i.i_crit_edge [
    i8 0, label %sw.bb.i117.3.i.i.sw.bb.i126.i.i_crit_edge
    i8 15, label %sw.bb.i117.3.i.i.sw.bb.i126.i.i_crit_edge95
    i8 -16, label %sw.bb.i117.3.i.i.sw.bb.i126.i.i_crit_edge96
    i8 -1, label %sw.bb.i117.3.i.i.sw.bb.i126.i.i_crit_edge97
  ]

sw.bb.i117.3.i.i.sw.bb.i126.i.i_crit_edge97:      ; preds = %sw.bb.i117.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i126.i.i

sw.bb.i117.3.i.i.sw.bb.i126.i.i_crit_edge96:      ; preds = %sw.bb.i117.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i126.i.i

sw.bb.i117.3.i.i.sw.bb.i126.i.i_crit_edge95:      ; preds = %sw.bb.i117.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i126.i.i

sw.bb.i117.3.i.i.sw.bb.i126.i.i_crit_edge:        ; preds = %sw.bb.i117.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i126.i.i

sw.bb.i117.3.i.i.if.then19.i.i_crit_edge:         ; preds = %sw.bb.i117.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19.i.i

sw.bb.i126.i.i:                                   ; preds = %sw.bb.i117.3.i.i.sw.bb.i126.i.i_crit_edge, %sw.bb.i117.3.i.i.sw.bb.i126.i.i_crit_edge95, %sw.bb.i117.3.i.i.sw.bb.i126.i.i_crit_edge96, %sw.bb.i117.3.i.i.sw.bb.i126.i.i_crit_edge97
  %ip_ver.i.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u.i.i, i32 0, i32 4
  %55 = ptrtoint ptr %ip_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ip_ver.i.i, align 1
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.112)
  switch i8 %56, label %sw.bb.i126.i.i.if.then19.i.i_crit_edge [
    i8 0, label %sw.bb.i126.i.i.sw.bb.i135.i.i_crit_edge
    i8 15, label %sw.bb.i126.i.i.sw.bb.i135.i.i_crit_edge98
    i8 -16, label %sw.bb.i126.i.i.sw.bb.i135.i.i_crit_edge99
    i8 -1, label %sw.bb.i126.i.i.sw.bb.i135.i.i_crit_edge100
  ]

sw.bb.i126.i.i.sw.bb.i135.i.i_crit_edge100:       ; preds = %sw.bb.i126.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i135.i.i

sw.bb.i126.i.i.sw.bb.i135.i.i_crit_edge99:        ; preds = %sw.bb.i126.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i135.i.i

sw.bb.i126.i.i.sw.bb.i135.i.i_crit_edge98:        ; preds = %sw.bb.i126.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i135.i.i

sw.bb.i126.i.i.sw.bb.i135.i.i_crit_edge:          ; preds = %sw.bb.i126.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i135.i.i

sw.bb.i126.i.i.if.then19.i.i_crit_edge:           ; preds = %sw.bb.i126.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19.i.i

sw.bb.i135.i.i:                                   ; preds = %sw.bb.i126.i.i.sw.bb.i135.i.i_crit_edge, %sw.bb.i126.i.i.sw.bb.i135.i.i_crit_edge98, %sw.bb.i126.i.i.sw.bb.i135.i.i_crit_edge99, %sw.bb.i126.i.i.sw.bb.i135.i.i_crit_edge100
  %tos.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %58 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %tos.i.i, align 1
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.113)
  switch i8 %59, label %sw.bb.i135.i.i.if.then19.i.i_crit_edge [
    i8 0, label %sw.bb.i135.i.i.sw.epilog.i.i_crit_edge
    i8 15, label %sw.bb.i135.i.i.sw.epilog.i.i_crit_edge101
    i8 -16, label %sw.bb.i135.i.i.sw.epilog.i.i_crit_edge102
    i8 -1, label %sw.bb.i135.i.i.sw.epilog.i.i_crit_edge103
  ]

sw.bb.i135.i.i.sw.epilog.i.i_crit_edge103:        ; preds = %sw.bb.i135.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i.i

sw.bb.i135.i.i.sw.epilog.i.i_crit_edge102:        ; preds = %sw.bb.i135.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i.i

sw.bb.i135.i.i.sw.epilog.i.i_crit_edge101:        ; preds = %sw.bb.i135.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i.i

sw.bb.i135.i.i.sw.epilog.i.i_crit_edge:           ; preds = %sw.bb.i135.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i.i

sw.bb.i135.i.i.if.then19.i.i_crit_edge:           ; preds = %sw.bb.i135.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then19.i.i

if.then19.i.i:                                    ; preds = %sw.bb.i135.i.i.if.then19.i.i_crit_edge, %sw.bb.i126.i.i.if.then19.i.i_crit_edge, %sw.bb.i117.3.i.i.if.then19.i.i_crit_edge, %sw.bb.i117.2.i.i.if.then19.i.i_crit_edge, %sw.bb.i117.1.i.i.if.then19.i.i_crit_edge, %sw.bb.i117.i.i.if.then19.i.i_crit_edge, %sw.bb.i108.3.i.i.if.then19.i.i_crit_edge, %sw.bb.i108.2.i.i.if.then19.i.i_crit_edge, %sw.bb.i108.1.i.i.if.then19.i.i_crit_edge, %sw.bb.i108.i.i.if.then19.i.i_crit_edge, %sw.bb.i.3.i.i.if.then19.i.i_crit_edge, %sw.bb.i.2.i.i.if.then19.i.i_crit_edge, %sw.bb.i.1.i.i.if.then19.i.i_crit_edge, %sw.bb.i.i.i.if.then19.i.i_crit_edge, %sw.bb.i.i.if.then19.i.i_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #20
  br label %cleanup

sw.bb21.i.i:                                      ; preds = %if.end.i.i
  %m_u23.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %61 = ptrtoint ptr %m_u23.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %m_u23.i.i, align 1
  %63 = zext i8 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.114)
  switch i8 %62, label %sw.bb21.i.i.if.then32.i.i_crit_edge [
    i8 0, label %sw.bb21.i.i.sw.bb.i153.i.i_crit_edge
    i8 15, label %sw.bb21.i.i.sw.bb.i153.i.i_crit_edge104
    i8 -16, label %sw.bb21.i.i.sw.bb.i153.i.i_crit_edge105
    i8 -1, label %sw.bb21.i.i.sw.bb.i153.i.i_crit_edge106
  ]

sw.bb21.i.i.sw.bb.i153.i.i_crit_edge106:          ; preds = %sw.bb21.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.i.i

sw.bb21.i.i.sw.bb.i153.i.i_crit_edge105:          ; preds = %sw.bb21.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.i.i

sw.bb21.i.i.sw.bb.i153.i.i_crit_edge104:          ; preds = %sw.bb21.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.i.i

sw.bb21.i.i.sw.bb.i153.i.i_crit_edge:             ; preds = %sw.bb21.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.i.i

sw.bb21.i.i.if.then32.i.i_crit_edge:              ; preds = %sw.bb21.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then32.i.i

sw.bb.i153.i.i:                                   ; preds = %sw.bb21.i.i.sw.bb.i153.i.i_crit_edge, %sw.bb21.i.i.sw.bb.i153.i.i_crit_edge104, %sw.bb21.i.i.sw.bb.i153.i.i_crit_edge105, %sw.bb21.i.i.sw.bb.i153.i.i_crit_edge106
  %incdec.ptr.i150.i.i = getelementptr i8, ptr %m_u23.i.i, i32 1
  %64 = ptrtoint ptr %incdec.ptr.i150.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %incdec.ptr.i150.i.i, align 1
  %66 = zext i8 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.115)
  switch i8 %65, label %sw.bb.i153.i.i.if.then32.i.i_crit_edge [
    i8 0, label %sw.bb.i153.i.i.sw.bb.i153.1.i.i_crit_edge
    i8 15, label %sw.bb.i153.i.i.sw.bb.i153.1.i.i_crit_edge107
    i8 -16, label %sw.bb.i153.i.i.sw.bb.i153.1.i.i_crit_edge108
    i8 -1, label %sw.bb.i153.i.i.sw.bb.i153.1.i.i_crit_edge109
  ]

sw.bb.i153.i.i.sw.bb.i153.1.i.i_crit_edge109:     ; preds = %sw.bb.i153.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.1.i.i

sw.bb.i153.i.i.sw.bb.i153.1.i.i_crit_edge108:     ; preds = %sw.bb.i153.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.1.i.i

sw.bb.i153.i.i.sw.bb.i153.1.i.i_crit_edge107:     ; preds = %sw.bb.i153.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.1.i.i

sw.bb.i153.i.i.sw.bb.i153.1.i.i_crit_edge:        ; preds = %sw.bb.i153.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.1.i.i

sw.bb.i153.i.i.if.then32.i.i_crit_edge:           ; preds = %sw.bb.i153.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then32.i.i

sw.bb.i153.1.i.i:                                 ; preds = %sw.bb.i153.i.i.sw.bb.i153.1.i.i_crit_edge, %sw.bb.i153.i.i.sw.bb.i153.1.i.i_crit_edge107, %sw.bb.i153.i.i.sw.bb.i153.1.i.i_crit_edge108, %sw.bb.i153.i.i.sw.bb.i153.1.i.i_crit_edge109
  %incdec.ptr.i150.1.i.i = getelementptr i8, ptr %m_u23.i.i, i32 2
  %67 = ptrtoint ptr %incdec.ptr.i150.1.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %incdec.ptr.i150.1.i.i, align 1
  %69 = zext i8 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %68, label %sw.bb.i153.1.i.i.if.then32.i.i_crit_edge [
    i8 0, label %sw.bb.i153.1.i.i.sw.bb.i153.2.i.i_crit_edge
    i8 15, label %sw.bb.i153.1.i.i.sw.bb.i153.2.i.i_crit_edge110
    i8 -16, label %sw.bb.i153.1.i.i.sw.bb.i153.2.i.i_crit_edge111
    i8 -1, label %sw.bb.i153.1.i.i.sw.bb.i153.2.i.i_crit_edge112
  ]

sw.bb.i153.1.i.i.sw.bb.i153.2.i.i_crit_edge112:   ; preds = %sw.bb.i153.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.2.i.i

sw.bb.i153.1.i.i.sw.bb.i153.2.i.i_crit_edge111:   ; preds = %sw.bb.i153.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.2.i.i

sw.bb.i153.1.i.i.sw.bb.i153.2.i.i_crit_edge110:   ; preds = %sw.bb.i153.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.2.i.i

sw.bb.i153.1.i.i.sw.bb.i153.2.i.i_crit_edge:      ; preds = %sw.bb.i153.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.2.i.i

sw.bb.i153.1.i.i.if.then32.i.i_crit_edge:         ; preds = %sw.bb.i153.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then32.i.i

sw.bb.i153.2.i.i:                                 ; preds = %sw.bb.i153.1.i.i.sw.bb.i153.2.i.i_crit_edge, %sw.bb.i153.1.i.i.sw.bb.i153.2.i.i_crit_edge110, %sw.bb.i153.1.i.i.sw.bb.i153.2.i.i_crit_edge111, %sw.bb.i153.1.i.i.sw.bb.i153.2.i.i_crit_edge112
  %incdec.ptr.i150.2.i.i = getelementptr i8, ptr %m_u23.i.i, i32 3
  %70 = ptrtoint ptr %incdec.ptr.i150.2.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %incdec.ptr.i150.2.i.i, align 1
  %72 = zext i8 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.117)
  switch i8 %71, label %sw.bb.i153.2.i.i.if.then32.i.i_crit_edge [
    i8 0, label %sw.bb.i153.2.i.i.sw.bb.i153.3.i.i_crit_edge
    i8 15, label %sw.bb.i153.2.i.i.sw.bb.i153.3.i.i_crit_edge113
    i8 -16, label %sw.bb.i153.2.i.i.sw.bb.i153.3.i.i_crit_edge114
    i8 -1, label %sw.bb.i153.2.i.i.sw.bb.i153.3.i.i_crit_edge115
  ]

sw.bb.i153.2.i.i.sw.bb.i153.3.i.i_crit_edge115:   ; preds = %sw.bb.i153.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.3.i.i

sw.bb.i153.2.i.i.sw.bb.i153.3.i.i_crit_edge114:   ; preds = %sw.bb.i153.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.3.i.i

sw.bb.i153.2.i.i.sw.bb.i153.3.i.i_crit_edge113:   ; preds = %sw.bb.i153.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.3.i.i

sw.bb.i153.2.i.i.sw.bb.i153.3.i.i_crit_edge:      ; preds = %sw.bb.i153.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.3.i.i

sw.bb.i153.2.i.i.if.then32.i.i_crit_edge:         ; preds = %sw.bb.i153.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then32.i.i

sw.bb.i153.3.i.i:                                 ; preds = %sw.bb.i153.2.i.i.sw.bb.i153.3.i.i_crit_edge, %sw.bb.i153.2.i.i.sw.bb.i153.3.i.i_crit_edge113, %sw.bb.i153.2.i.i.sw.bb.i153.3.i.i_crit_edge114, %sw.bb.i153.2.i.i.sw.bb.i153.3.i.i_crit_edge115
  %incdec.ptr.i150.3.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %73 = ptrtoint ptr %incdec.ptr.i150.3.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %incdec.ptr.i150.3.i.i, align 1
  %75 = zext i8 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.118)
  switch i8 %74, label %sw.bb.i153.3.i.i.if.then32.i.i_crit_edge [
    i8 0, label %sw.bb.i153.3.i.i.sw.bb.i153.4.i.i_crit_edge
    i8 15, label %sw.bb.i153.3.i.i.sw.bb.i153.4.i.i_crit_edge116
    i8 -16, label %sw.bb.i153.3.i.i.sw.bb.i153.4.i.i_crit_edge117
    i8 -1, label %sw.bb.i153.3.i.i.sw.bb.i153.4.i.i_crit_edge118
  ]

sw.bb.i153.3.i.i.sw.bb.i153.4.i.i_crit_edge118:   ; preds = %sw.bb.i153.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.4.i.i

sw.bb.i153.3.i.i.sw.bb.i153.4.i.i_crit_edge117:   ; preds = %sw.bb.i153.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.4.i.i

sw.bb.i153.3.i.i.sw.bb.i153.4.i.i_crit_edge116:   ; preds = %sw.bb.i153.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.4.i.i

sw.bb.i153.3.i.i.sw.bb.i153.4.i.i_crit_edge:      ; preds = %sw.bb.i153.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.4.i.i

sw.bb.i153.3.i.i.if.then32.i.i_crit_edge:         ; preds = %sw.bb.i153.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then32.i.i

sw.bb.i153.4.i.i:                                 ; preds = %sw.bb.i153.3.i.i.sw.bb.i153.4.i.i_crit_edge, %sw.bb.i153.3.i.i.sw.bb.i153.4.i.i_crit_edge116, %sw.bb.i153.3.i.i.sw.bb.i153.4.i.i_crit_edge117, %sw.bb.i153.3.i.i.sw.bb.i153.4.i.i_crit_edge118
  %incdec.ptr.i150.4.i.i = getelementptr i8, ptr %incdec.ptr.i150.3.i.i, i32 1
  %76 = ptrtoint ptr %incdec.ptr.i150.4.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %incdec.ptr.i150.4.i.i, align 1
  %78 = zext i8 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.119)
  switch i8 %77, label %sw.bb.i153.4.i.i.if.then32.i.i_crit_edge [
    i8 0, label %sw.bb.i153.4.i.i.sw.bb.i153.5.i.i_crit_edge
    i8 15, label %sw.bb.i153.4.i.i.sw.bb.i153.5.i.i_crit_edge119
    i8 -16, label %sw.bb.i153.4.i.i.sw.bb.i153.5.i.i_crit_edge120
    i8 -1, label %sw.bb.i153.4.i.i.sw.bb.i153.5.i.i_crit_edge121
  ]

sw.bb.i153.4.i.i.sw.bb.i153.5.i.i_crit_edge121:   ; preds = %sw.bb.i153.4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.5.i.i

sw.bb.i153.4.i.i.sw.bb.i153.5.i.i_crit_edge120:   ; preds = %sw.bb.i153.4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.5.i.i

sw.bb.i153.4.i.i.sw.bb.i153.5.i.i_crit_edge119:   ; preds = %sw.bb.i153.4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.5.i.i

sw.bb.i153.4.i.i.sw.bb.i153.5.i.i_crit_edge:      ; preds = %sw.bb.i153.4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i153.5.i.i

sw.bb.i153.4.i.i.if.then32.i.i_crit_edge:         ; preds = %sw.bb.i153.4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then32.i.i

sw.bb.i153.5.i.i:                                 ; preds = %sw.bb.i153.4.i.i.sw.bb.i153.5.i.i_crit_edge, %sw.bb.i153.4.i.i.sw.bb.i153.5.i.i_crit_edge119, %sw.bb.i153.4.i.i.sw.bb.i153.5.i.i_crit_edge120, %sw.bb.i153.4.i.i.sw.bb.i153.5.i.i_crit_edge121
  %h_source.i.i = getelementptr inbounds %struct.ethhdr, ptr %m_u23.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %h_source.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %h_source.i.i, align 1
  %81 = zext i8 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.120)
  switch i8 %80, label %sw.bb.i153.5.i.i.if.then32.i.i_crit_edge [
    i8 0, label %sw.bb.i153.5.i.i.sw.bb.i162.i.i_crit_edge
    i8 15, label %sw.bb.i153.5.i.i.sw.bb.i162.i.i_crit_edge122
    i8 -16, label %sw.bb.i153.5.i.i.sw.bb.i162.i.i_crit_edge123
    i8 -1, label %sw.bb.i153.5.i.i.sw.bb.i162.i.i_crit_edge124
  ]

sw.bb.i153.5.i.i.sw.bb.i162.i.i_crit_edge124:     ; preds = %sw.bb.i153.5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.i.i

sw.bb.i153.5.i.i.sw.bb.i162.i.i_crit_edge123:     ; preds = %sw.bb.i153.5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.i.i

sw.bb.i153.5.i.i.sw.bb.i162.i.i_crit_edge122:     ; preds = %sw.bb.i153.5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.i.i

sw.bb.i153.5.i.i.sw.bb.i162.i.i_crit_edge:        ; preds = %sw.bb.i153.5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.i.i

sw.bb.i153.5.i.i.if.then32.i.i_crit_edge:         ; preds = %sw.bb.i153.5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then32.i.i

sw.bb.i162.i.i:                                   ; preds = %sw.bb.i153.5.i.i.sw.bb.i162.i.i_crit_edge, %sw.bb.i153.5.i.i.sw.bb.i162.i.i_crit_edge122, %sw.bb.i153.5.i.i.sw.bb.i162.i.i_crit_edge123, %sw.bb.i153.5.i.i.sw.bb.i162.i.i_crit_edge124
  %incdec.ptr.i159.i.i = getelementptr %struct.ethhdr, ptr %m_u23.i.i, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %incdec.ptr.i159.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %incdec.ptr.i159.i.i, align 1
  %84 = zext i8 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %83, label %sw.bb.i162.i.i.if.then32.i.i_crit_edge [
    i8 0, label %sw.bb.i162.i.i.sw.bb.i162.1.i.i_crit_edge
    i8 15, label %sw.bb.i162.i.i.sw.bb.i162.1.i.i_crit_edge125
    i8 -16, label %sw.bb.i162.i.i.sw.bb.i162.1.i.i_crit_edge126
    i8 -1, label %sw.bb.i162.i.i.sw.bb.i162.1.i.i_crit_edge127
  ]

sw.bb.i162.i.i.sw.bb.i162.1.i.i_crit_edge127:     ; preds = %sw.bb.i162.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.1.i.i

sw.bb.i162.i.i.sw.bb.i162.1.i.i_crit_edge126:     ; preds = %sw.bb.i162.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.1.i.i

sw.bb.i162.i.i.sw.bb.i162.1.i.i_crit_edge125:     ; preds = %sw.bb.i162.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.1.i.i

sw.bb.i162.i.i.sw.bb.i162.1.i.i_crit_edge:        ; preds = %sw.bb.i162.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.1.i.i

sw.bb.i162.i.i.if.then32.i.i_crit_edge:           ; preds = %sw.bb.i162.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then32.i.i

sw.bb.i162.1.i.i:                                 ; preds = %sw.bb.i162.i.i.sw.bb.i162.1.i.i_crit_edge, %sw.bb.i162.i.i.sw.bb.i162.1.i.i_crit_edge125, %sw.bb.i162.i.i.sw.bb.i162.1.i.i_crit_edge126, %sw.bb.i162.i.i.sw.bb.i162.1.i.i_crit_edge127
  %incdec.ptr.i159.1.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %85 = ptrtoint ptr %incdec.ptr.i159.1.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %incdec.ptr.i159.1.i.i, align 1
  %87 = zext i8 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %86, label %sw.bb.i162.1.i.i.if.then32.i.i_crit_edge [
    i8 0, label %sw.bb.i162.1.i.i.sw.bb.i162.2.i.i_crit_edge
    i8 15, label %sw.bb.i162.1.i.i.sw.bb.i162.2.i.i_crit_edge128
    i8 -16, label %sw.bb.i162.1.i.i.sw.bb.i162.2.i.i_crit_edge129
    i8 -1, label %sw.bb.i162.1.i.i.sw.bb.i162.2.i.i_crit_edge130
  ]

sw.bb.i162.1.i.i.sw.bb.i162.2.i.i_crit_edge130:   ; preds = %sw.bb.i162.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.2.i.i

sw.bb.i162.1.i.i.sw.bb.i162.2.i.i_crit_edge129:   ; preds = %sw.bb.i162.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.2.i.i

sw.bb.i162.1.i.i.sw.bb.i162.2.i.i_crit_edge128:   ; preds = %sw.bb.i162.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.2.i.i

sw.bb.i162.1.i.i.sw.bb.i162.2.i.i_crit_edge:      ; preds = %sw.bb.i162.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.2.i.i

sw.bb.i162.1.i.i.if.then32.i.i_crit_edge:         ; preds = %sw.bb.i162.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then32.i.i

sw.bb.i162.2.i.i:                                 ; preds = %sw.bb.i162.1.i.i.sw.bb.i162.2.i.i_crit_edge, %sw.bb.i162.1.i.i.sw.bb.i162.2.i.i_crit_edge128, %sw.bb.i162.1.i.i.sw.bb.i162.2.i.i_crit_edge129, %sw.bb.i162.1.i.i.sw.bb.i162.2.i.i_crit_edge130
  %incdec.ptr.i159.2.i.i = getelementptr i8, ptr %incdec.ptr.i159.1.i.i, i32 1
  %88 = ptrtoint ptr %incdec.ptr.i159.2.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %incdec.ptr.i159.2.i.i, align 1
  %90 = zext i8 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %89, label %sw.bb.i162.2.i.i.if.then32.i.i_crit_edge [
    i8 0, label %sw.bb.i162.2.i.i.sw.bb.i162.3.i.i_crit_edge
    i8 15, label %sw.bb.i162.2.i.i.sw.bb.i162.3.i.i_crit_edge131
    i8 -16, label %sw.bb.i162.2.i.i.sw.bb.i162.3.i.i_crit_edge132
    i8 -1, label %sw.bb.i162.2.i.i.sw.bb.i162.3.i.i_crit_edge133
  ]

sw.bb.i162.2.i.i.sw.bb.i162.3.i.i_crit_edge133:   ; preds = %sw.bb.i162.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.3.i.i

sw.bb.i162.2.i.i.sw.bb.i162.3.i.i_crit_edge132:   ; preds = %sw.bb.i162.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.3.i.i

sw.bb.i162.2.i.i.sw.bb.i162.3.i.i_crit_edge131:   ; preds = %sw.bb.i162.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.3.i.i

sw.bb.i162.2.i.i.sw.bb.i162.3.i.i_crit_edge:      ; preds = %sw.bb.i162.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.3.i.i

sw.bb.i162.2.i.i.if.then32.i.i_crit_edge:         ; preds = %sw.bb.i162.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then32.i.i

sw.bb.i162.3.i.i:                                 ; preds = %sw.bb.i162.2.i.i.sw.bb.i162.3.i.i_crit_edge, %sw.bb.i162.2.i.i.sw.bb.i162.3.i.i_crit_edge131, %sw.bb.i162.2.i.i.sw.bb.i162.3.i.i_crit_edge132, %sw.bb.i162.2.i.i.sw.bb.i162.3.i.i_crit_edge133
  %incdec.ptr.i159.3.i.i = getelementptr i8, ptr %incdec.ptr.i159.1.i.i, i32 2
  %91 = ptrtoint ptr %incdec.ptr.i159.3.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %incdec.ptr.i159.3.i.i, align 1
  %93 = zext i8 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %92, label %sw.bb.i162.3.i.i.if.then32.i.i_crit_edge [
    i8 0, label %sw.bb.i162.3.i.i.sw.bb.i162.4.i.i_crit_edge
    i8 15, label %sw.bb.i162.3.i.i.sw.bb.i162.4.i.i_crit_edge134
    i8 -16, label %sw.bb.i162.3.i.i.sw.bb.i162.4.i.i_crit_edge135
    i8 -1, label %sw.bb.i162.3.i.i.sw.bb.i162.4.i.i_crit_edge136
  ]

sw.bb.i162.3.i.i.sw.bb.i162.4.i.i_crit_edge136:   ; preds = %sw.bb.i162.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.4.i.i

sw.bb.i162.3.i.i.sw.bb.i162.4.i.i_crit_edge135:   ; preds = %sw.bb.i162.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.4.i.i

sw.bb.i162.3.i.i.sw.bb.i162.4.i.i_crit_edge134:   ; preds = %sw.bb.i162.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.4.i.i

sw.bb.i162.3.i.i.sw.bb.i162.4.i.i_crit_edge:      ; preds = %sw.bb.i162.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.4.i.i

sw.bb.i162.3.i.i.if.then32.i.i_crit_edge:         ; preds = %sw.bb.i162.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then32.i.i

sw.bb.i162.4.i.i:                                 ; preds = %sw.bb.i162.3.i.i.sw.bb.i162.4.i.i_crit_edge, %sw.bb.i162.3.i.i.sw.bb.i162.4.i.i_crit_edge134, %sw.bb.i162.3.i.i.sw.bb.i162.4.i.i_crit_edge135, %sw.bb.i162.3.i.i.sw.bb.i162.4.i.i_crit_edge136
  %incdec.ptr.i159.4.i.i = getelementptr i8, ptr %incdec.ptr.i159.1.i.i, i32 3
  %94 = ptrtoint ptr %incdec.ptr.i159.4.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %incdec.ptr.i159.4.i.i, align 1
  %96 = zext i8 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %95, label %sw.bb.i162.4.i.i.if.then32.i.i_crit_edge [
    i8 0, label %sw.bb.i162.4.i.i.sw.bb.i162.5.i.i_crit_edge
    i8 15, label %sw.bb.i162.4.i.i.sw.bb.i162.5.i.i_crit_edge137
    i8 -16, label %sw.bb.i162.4.i.i.sw.bb.i162.5.i.i_crit_edge138
    i8 -1, label %sw.bb.i162.4.i.i.sw.bb.i162.5.i.i_crit_edge139
  ]

sw.bb.i162.4.i.i.sw.bb.i162.5.i.i_crit_edge139:   ; preds = %sw.bb.i162.4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.5.i.i

sw.bb.i162.4.i.i.sw.bb.i162.5.i.i_crit_edge138:   ; preds = %sw.bb.i162.4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.5.i.i

sw.bb.i162.4.i.i.sw.bb.i162.5.i.i_crit_edge137:   ; preds = %sw.bb.i162.4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.5.i.i

sw.bb.i162.4.i.i.sw.bb.i162.5.i.i_crit_edge:      ; preds = %sw.bb.i162.4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i162.5.i.i

sw.bb.i162.4.i.i.if.then32.i.i_crit_edge:         ; preds = %sw.bb.i162.4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then32.i.i

sw.bb.i162.5.i.i:                                 ; preds = %sw.bb.i162.4.i.i.sw.bb.i162.5.i.i_crit_edge, %sw.bb.i162.4.i.i.sw.bb.i162.5.i.i_crit_edge137, %sw.bb.i162.4.i.i.sw.bb.i162.5.i.i_crit_edge138, %sw.bb.i162.4.i.i.sw.bb.i162.5.i.i_crit_edge139
  %h_proto.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %97 = ptrtoint ptr %h_proto.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %h_proto.i.i, align 1
  %99 = zext i8 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %98, label %sw.bb.i162.5.i.i.if.then32.i.i_crit_edge [
    i8 0, label %sw.bb.i162.5.i.i.sw.bb.i171.i.i_crit_edge
    i8 15, label %sw.bb.i162.5.i.i.sw.bb.i171.i.i_crit_edge140
    i8 -16, label %sw.bb.i162.5.i.i.sw.bb.i171.i.i_crit_edge141
    i8 -1, label %sw.bb.i162.5.i.i.sw.bb.i171.i.i_crit_edge142
  ]

sw.bb.i162.5.i.i.sw.bb.i171.i.i_crit_edge142:     ; preds = %sw.bb.i162.5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i171.i.i

sw.bb.i162.5.i.i.sw.bb.i171.i.i_crit_edge141:     ; preds = %sw.bb.i162.5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i171.i.i

sw.bb.i162.5.i.i.sw.bb.i171.i.i_crit_edge140:     ; preds = %sw.bb.i162.5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i171.i.i

sw.bb.i162.5.i.i.sw.bb.i171.i.i_crit_edge:        ; preds = %sw.bb.i162.5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i171.i.i

sw.bb.i162.5.i.i.if.then32.i.i_crit_edge:         ; preds = %sw.bb.i162.5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then32.i.i

sw.bb.i171.i.i:                                   ; preds = %sw.bb.i162.5.i.i.sw.bb.i171.i.i_crit_edge, %sw.bb.i162.5.i.i.sw.bb.i171.i.i_crit_edge140, %sw.bb.i162.5.i.i.sw.bb.i171.i.i_crit_edge141, %sw.bb.i162.5.i.i.sw.bb.i171.i.i_crit_edge142
  %incdec.ptr.i168.i.i = getelementptr i8, ptr %h_proto.i.i, i32 1
  %100 = ptrtoint ptr %incdec.ptr.i168.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %incdec.ptr.i168.i.i, align 1
  %102 = zext i8 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %101, label %sw.bb.i171.i.i.if.then32.i.i_crit_edge [
    i8 0, label %sw.bb.i171.i.i.sw.epilog.i.i_crit_edge
    i8 15, label %sw.bb.i171.i.i.sw.epilog.i.i_crit_edge143
    i8 -16, label %sw.bb.i171.i.i.sw.epilog.i.i_crit_edge144
    i8 -1, label %sw.bb.i171.i.i.sw.epilog.i.i_crit_edge145
  ]

sw.bb.i171.i.i.sw.epilog.i.i_crit_edge145:        ; preds = %sw.bb.i171.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i.i

sw.bb.i171.i.i.sw.epilog.i.i_crit_edge144:        ; preds = %sw.bb.i171.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i.i

sw.bb.i171.i.i.sw.epilog.i.i_crit_edge143:        ; preds = %sw.bb.i171.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i.i

sw.bb.i171.i.i.sw.epilog.i.i_crit_edge:           ; preds = %sw.bb.i171.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i.i

sw.bb.i171.i.i.if.then32.i.i_crit_edge:           ; preds = %sw.bb.i171.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then32.i.i

if.then32.i.i:                                    ; preds = %sw.bb.i171.i.i.if.then32.i.i_crit_edge, %sw.bb.i162.5.i.i.if.then32.i.i_crit_edge, %sw.bb.i162.4.i.i.if.then32.i.i_crit_edge, %sw.bb.i162.3.i.i.if.then32.i.i_crit_edge, %sw.bb.i162.2.i.i.if.then32.i.i_crit_edge, %sw.bb.i162.1.i.i.if.then32.i.i_crit_edge, %sw.bb.i162.i.i.if.then32.i.i_crit_edge, %sw.bb.i153.5.i.i.if.then32.i.i_crit_edge, %sw.bb.i153.4.i.i.if.then32.i.i_crit_edge, %sw.bb.i153.3.i.i.if.then32.i.i_crit_edge, %sw.bb.i153.2.i.i.if.then32.i.i_crit_edge, %sw.bb.i153.1.i.i.if.then32.i.i_crit_edge, %sw.bb.i153.i.i.if.then32.i.i_crit_edge, %sw.bb21.i.i.if.then32.i.i_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #20
  br label %cleanup

sw.default.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %14) #20
  br label %cleanup

sw.epilog.i.i:                                    ; preds = %sw.bb.i171.i.i.sw.epilog.i.i_crit_edge, %sw.bb.i171.i.i.sw.epilog.i.i_crit_edge143, %sw.bb.i171.i.i.sw.epilog.i.i_crit_edge144, %sw.bb.i171.i.i.sw.epilog.i.i_crit_edge145, %sw.bb.i135.i.i.sw.epilog.i.i_crit_edge, %sw.bb.i135.i.i.sw.epilog.i.i_crit_edge101, %sw.bb.i135.i.i.sw.epilog.i.i_crit_edge102, %sw.bb.i135.i.i.sw.epilog.i.i_crit_edge103
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %tobool39.not.i.i = icmp sgt i32 %14, -1
  br i1 %tobool39.not.i.i, label %sw.epilog.i.i.if.end62.i.i_crit_edge, label %if.then40.i.i

sw.epilog.i.i.if.end62.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end62.i.i

if.then40.i.i:                                    ; preds = %sw.epilog.i.i
  %vlan_etype.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 2
  %103 = ptrtoint ptr %vlan_etype.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %vlan_etype.i.i, align 1
  %105 = zext i8 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %104, label %if.then40.i.i.if.then49.i.i_crit_edge [
    i8 0, label %if.then40.i.i.sw.bb.i180.i.i_crit_edge
    i8 15, label %if.then40.i.i.sw.bb.i180.i.i_crit_edge146
    i8 -16, label %if.then40.i.i.sw.bb.i180.i.i_crit_edge147
    i8 -1, label %if.then40.i.i.sw.bb.i180.i.i_crit_edge148
  ]

if.then40.i.i.sw.bb.i180.i.i_crit_edge148:        ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i180.i.i

if.then40.i.i.sw.bb.i180.i.i_crit_edge147:        ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i180.i.i

if.then40.i.i.sw.bb.i180.i.i_crit_edge146:        ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i180.i.i

if.then40.i.i.sw.bb.i180.i.i_crit_edge:           ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i180.i.i

if.then40.i.i.if.then49.i.i_crit_edge:            ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then49.i.i

sw.bb.i180.i.i:                                   ; preds = %if.then40.i.i.sw.bb.i180.i.i_crit_edge, %if.then40.i.i.sw.bb.i180.i.i_crit_edge146, %if.then40.i.i.sw.bb.i180.i.i_crit_edge147, %if.then40.i.i.sw.bb.i180.i.i_crit_edge148
  %incdec.ptr.i177.i.i = getelementptr i8, ptr %vlan_etype.i.i, i32 1
  %106 = ptrtoint ptr %incdec.ptr.i177.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %incdec.ptr.i177.i.i, align 1
  %108 = zext i8 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.129)
  switch i8 %107, label %sw.bb.i180.i.i.if.then49.i.i_crit_edge [
    i8 0, label %sw.bb.i180.i.i.sw.bb.i180.1.i.i_crit_edge
    i8 15, label %sw.bb.i180.i.i.sw.bb.i180.1.i.i_crit_edge149
    i8 -16, label %sw.bb.i180.i.i.sw.bb.i180.1.i.i_crit_edge150
    i8 -1, label %sw.bb.i180.i.i.sw.bb.i180.1.i.i_crit_edge151
  ]

sw.bb.i180.i.i.sw.bb.i180.1.i.i_crit_edge151:     ; preds = %sw.bb.i180.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i180.1.i.i

sw.bb.i180.i.i.sw.bb.i180.1.i.i_crit_edge150:     ; preds = %sw.bb.i180.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i180.1.i.i

sw.bb.i180.i.i.sw.bb.i180.1.i.i_crit_edge149:     ; preds = %sw.bb.i180.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i180.1.i.i

sw.bb.i180.i.i.sw.bb.i180.1.i.i_crit_edge:        ; preds = %sw.bb.i180.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i180.1.i.i

sw.bb.i180.i.i.if.then49.i.i_crit_edge:           ; preds = %sw.bb.i180.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then49.i.i

sw.bb.i180.1.i.i:                                 ; preds = %sw.bb.i180.i.i.sw.bb.i180.1.i.i_crit_edge, %sw.bb.i180.i.i.sw.bb.i180.1.i.i_crit_edge149, %sw.bb.i180.i.i.sw.bb.i180.1.i.i_crit_edge150, %sw.bb.i180.i.i.sw.bb.i180.1.i.i_crit_edge151
  %vlan_tci.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 3
  %109 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %vlan_tci.i.i, align 1
  %111 = zext i8 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.130)
  switch i8 %110, label %sw.bb.i180.1.i.i.if.then49.i.i_crit_edge [
    i8 0, label %sw.bb.i180.1.i.i.sw.bb.i189.i.i_crit_edge
    i8 15, label %sw.bb.i180.1.i.i.sw.bb.i189.i.i_crit_edge152
    i8 -16, label %sw.bb.i180.1.i.i.sw.bb.i189.i.i_crit_edge153
    i8 -1, label %sw.bb.i180.1.i.i.sw.bb.i189.i.i_crit_edge154
  ]

sw.bb.i180.1.i.i.sw.bb.i189.i.i_crit_edge154:     ; preds = %sw.bb.i180.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i189.i.i

sw.bb.i180.1.i.i.sw.bb.i189.i.i_crit_edge153:     ; preds = %sw.bb.i180.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i189.i.i

sw.bb.i180.1.i.i.sw.bb.i189.i.i_crit_edge152:     ; preds = %sw.bb.i180.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i189.i.i

sw.bb.i180.1.i.i.sw.bb.i189.i.i_crit_edge:        ; preds = %sw.bb.i180.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i189.i.i

sw.bb.i180.1.i.i.if.then49.i.i_crit_edge:         ; preds = %sw.bb.i180.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then49.i.i

sw.bb.i189.i.i:                                   ; preds = %sw.bb.i180.1.i.i.sw.bb.i189.i.i_crit_edge, %sw.bb.i180.1.i.i.sw.bb.i189.i.i_crit_edge152, %sw.bb.i180.1.i.i.sw.bb.i189.i.i_crit_edge153, %sw.bb.i180.1.i.i.sw.bb.i189.i.i_crit_edge154
  %incdec.ptr.i186.i.i = getelementptr i8, ptr %vlan_tci.i.i, i32 1
  %112 = ptrtoint ptr %incdec.ptr.i186.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %incdec.ptr.i186.i.i, align 1
  %114 = zext i8 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %113, label %sw.bb.i189.i.i.if.then49.i.i_crit_edge [
    i8 0, label %sw.bb.i189.i.i.sw.bb.i189.1.i.i_crit_edge
    i8 15, label %sw.bb.i189.i.i.sw.bb.i189.1.i.i_crit_edge155
    i8 -16, label %sw.bb.i189.i.i.sw.bb.i189.1.i.i_crit_edge156
    i8 -1, label %sw.bb.i189.i.i.sw.bb.i189.1.i.i_crit_edge157
  ]

sw.bb.i189.i.i.sw.bb.i189.1.i.i_crit_edge157:     ; preds = %sw.bb.i189.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i189.1.i.i

sw.bb.i189.i.i.sw.bb.i189.1.i.i_crit_edge156:     ; preds = %sw.bb.i189.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i189.1.i.i

sw.bb.i189.i.i.sw.bb.i189.1.i.i_crit_edge155:     ; preds = %sw.bb.i189.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i189.1.i.i

sw.bb.i189.i.i.sw.bb.i189.1.i.i_crit_edge:        ; preds = %sw.bb.i189.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i189.1.i.i

sw.bb.i189.i.i.if.then49.i.i_crit_edge:           ; preds = %sw.bb.i189.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then49.i.i

sw.bb.i189.1.i.i:                                 ; preds = %sw.bb.i189.i.i.sw.bb.i189.1.i.i_crit_edge, %sw.bb.i189.i.i.sw.bb.i189.1.i.i_crit_edge155, %sw.bb.i189.i.i.sw.bb.i189.1.i.i_crit_edge156, %sw.bb.i189.i.i.sw.bb.i189.1.i.i_crit_edge157
  %data.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 4
  %115 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool53.not.i.i = icmp eq i32 %116, 0
  br i1 %tobool53.not.i.i, label %lor.lhs.false54.i.i, label %sw.bb.i189.1.i.i.if.then60.i.i_crit_edge

sw.bb.i189.1.i.i.if.then60.i.i_crit_edge:         ; preds = %sw.bb.i189.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then60.i.i

if.then49.i.i:                                    ; preds = %sw.bb.i189.i.i.if.then49.i.i_crit_edge, %sw.bb.i180.1.i.i.if.then49.i.i_crit_edge, %sw.bb.i180.i.i.if.then49.i.i_crit_edge, %if.then40.i.i.if.then49.i.i_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #20
  br label %cleanup

lor.lhs.false54.i.i:                              ; preds = %sw.bb.i189.1.i.i
  %arrayidx58.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 4, i32 1
  %117 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx58.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool59.not.i.i = icmp eq i32 %118, 0
  br i1 %tobool59.not.i.i, label %lor.lhs.false54.i.i.if.end62.i.i_crit_edge, label %lor.lhs.false54.i.i.if.then60.i.i_crit_edge

lor.lhs.false54.i.i.if.then60.i.i_crit_edge:      ; preds = %lor.lhs.false54.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then60.i.i

lor.lhs.false54.i.i.if.end62.i.i_crit_edge:       ; preds = %lor.lhs.false54.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end62.i.i

if.then60.i.i:                                    ; preds = %lor.lhs.false54.i.i.if.then60.i.i_crit_edge, %sw.bb.i189.1.i.i.if.then60.i.i_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #20
  br label %cleanup

if.end62.i.i:                                     ; preds = %lor.lhs.false54.i.i.if.end62.i.i_crit_edge, %sw.epilog.i.i.if.end62.i.i_crit_edge
  %and65.i.i = and i32 %14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i.i)
  %tobool66.not.i.i = icmp eq i32 %and65.i.i, 0
  br i1 %tobool66.not.i.i, label %if.end62.i.i.if.end16.i_crit_edge, label %if.then67.i.i

if.end62.i.i.if.end16.i_crit_edge:                ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

if.then67.i.i:                                    ; preds = %if.end62.i.i
  %h_dest70.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 1
  %119 = ptrtoint ptr %h_dest70.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %h_dest70.i.i, align 1
  %121 = zext i8 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.132)
  switch i8 %120, label %if.then67.i.i.if.then73.i.i_crit_edge [
    i8 0, label %if.then67.i.i.sw.bb.i198.i.i_crit_edge
    i8 15, label %if.then67.i.i.sw.bb.i198.i.i_crit_edge158
    i8 -16, label %if.then67.i.i.sw.bb.i198.i.i_crit_edge159
    i8 -1, label %if.then67.i.i.sw.bb.i198.i.i_crit_edge160
  ]

if.then67.i.i.sw.bb.i198.i.i_crit_edge160:        ; preds = %if.then67.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i198.i.i

if.then67.i.i.sw.bb.i198.i.i_crit_edge159:        ; preds = %if.then67.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i198.i.i

if.then67.i.i.sw.bb.i198.i.i_crit_edge158:        ; preds = %if.then67.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i198.i.i

if.then67.i.i.sw.bb.i198.i.i_crit_edge:           ; preds = %if.then67.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i198.i.i

if.then67.i.i.if.then73.i.i_crit_edge:            ; preds = %if.then67.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then73.i.i

sw.bb.i198.i.i:                                   ; preds = %if.then67.i.i.sw.bb.i198.i.i_crit_edge, %if.then67.i.i.sw.bb.i198.i.i_crit_edge158, %if.then67.i.i.sw.bb.i198.i.i_crit_edge159, %if.then67.i.i.sw.bb.i198.i.i_crit_edge160
  %incdec.ptr.i195.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 1, i32 1
  %122 = ptrtoint ptr %incdec.ptr.i195.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %incdec.ptr.i195.i.i, align 1
  %124 = zext i8 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.133)
  switch i8 %123, label %sw.bb.i198.i.i.if.then73.i.i_crit_edge [
    i8 0, label %sw.bb.i198.i.i.sw.bb.i198.1.i.i_crit_edge
    i8 15, label %sw.bb.i198.i.i.sw.bb.i198.1.i.i_crit_edge161
    i8 -16, label %sw.bb.i198.i.i.sw.bb.i198.1.i.i_crit_edge162
    i8 -1, label %sw.bb.i198.i.i.sw.bb.i198.1.i.i_crit_edge163
  ]

sw.bb.i198.i.i.sw.bb.i198.1.i.i_crit_edge163:     ; preds = %sw.bb.i198.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i198.1.i.i

sw.bb.i198.i.i.sw.bb.i198.1.i.i_crit_edge162:     ; preds = %sw.bb.i198.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i198.1.i.i

sw.bb.i198.i.i.sw.bb.i198.1.i.i_crit_edge161:     ; preds = %sw.bb.i198.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i198.1.i.i

sw.bb.i198.i.i.sw.bb.i198.1.i.i_crit_edge:        ; preds = %sw.bb.i198.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i198.1.i.i

sw.bb.i198.i.i.if.then73.i.i_crit_edge:           ; preds = %sw.bb.i198.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then73.i.i

sw.bb.i198.1.i.i:                                 ; preds = %sw.bb.i198.i.i.sw.bb.i198.1.i.i_crit_edge, %sw.bb.i198.i.i.sw.bb.i198.1.i.i_crit_edge161, %sw.bb.i198.i.i.sw.bb.i198.1.i.i_crit_edge162, %sw.bb.i198.i.i.sw.bb.i198.1.i.i_crit_edge163
  %incdec.ptr.i195.1.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 1, i32 2
  %125 = ptrtoint ptr %incdec.ptr.i195.1.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %incdec.ptr.i195.1.i.i, align 1
  %127 = zext i8 %126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.134)
  switch i8 %126, label %sw.bb.i198.1.i.i.if.then73.i.i_crit_edge [
    i8 0, label %sw.bb.i198.1.i.i.sw.bb.i198.2.i.i_crit_edge
    i8 15, label %sw.bb.i198.1.i.i.sw.bb.i198.2.i.i_crit_edge164
    i8 -16, label %sw.bb.i198.1.i.i.sw.bb.i198.2.i.i_crit_edge165
    i8 -1, label %sw.bb.i198.1.i.i.sw.bb.i198.2.i.i_crit_edge166
  ]

sw.bb.i198.1.i.i.sw.bb.i198.2.i.i_crit_edge166:   ; preds = %sw.bb.i198.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i198.2.i.i

sw.bb.i198.1.i.i.sw.bb.i198.2.i.i_crit_edge165:   ; preds = %sw.bb.i198.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i198.2.i.i

sw.bb.i198.1.i.i.sw.bb.i198.2.i.i_crit_edge164:   ; preds = %sw.bb.i198.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i198.2.i.i

sw.bb.i198.1.i.i.sw.bb.i198.2.i.i_crit_edge:      ; preds = %sw.bb.i198.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i198.2.i.i

sw.bb.i198.1.i.i.if.then73.i.i_crit_edge:         ; preds = %sw.bb.i198.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then73.i.i

sw.bb.i198.2.i.i:                                 ; preds = %sw.bb.i198.1.i.i.sw.bb.i198.2.i.i_crit_edge, %sw.bb.i198.1.i.i.sw.bb.i198.2.i.i_crit_edge164, %sw.bb.i198.1.i.i.sw.bb.i198.2.i.i_crit_edge165, %sw.bb.i198.1.i.i.sw.bb.i198.2.i.i_crit_edge166
  %incdec.ptr.i195.2.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 1, i32 3
  %128 = ptrtoint ptr %incdec.ptr.i195.2.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %incdec.ptr.i195.2.i.i, align 1
  %130 = zext i8 %129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.135)
  switch i8 %129, label %sw.bb.i198.2.i.i.if.then73.i.i_crit_edge [
    i8 0, label %sw.bb.i198.2.i.i.sw.bb.i198.3.i.i_crit_edge
    i8 15, label %sw.bb.i198.2.i.i.sw.bb.i198.3.i.i_crit_edge167
    i8 -16, label %sw.bb.i198.2.i.i.sw.bb.i198.3.i.i_crit_edge168
    i8 -1, label %sw.bb.i198.2.i.i.sw.bb.i198.3.i.i_crit_edge169
  ]

sw.bb.i198.2.i.i.sw.bb.i198.3.i.i_crit_edge169:   ; preds = %sw.bb.i198.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i198.3.i.i

sw.bb.i198.2.i.i.sw.bb.i198.3.i.i_crit_edge168:   ; preds = %sw.bb.i198.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i198.3.i.i

sw.bb.i198.2.i.i.sw.bb.i198.3.i.i_crit_edge167:   ; preds = %sw.bb.i198.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i198.3.i.i

sw.bb.i198.2.i.i.sw.bb.i198.3.i.i_crit_edge:      ; preds = %sw.bb.i198.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i198.3.i.i

sw.bb.i198.2.i.i.if.then73.i.i_crit_edge:         ; preds = %sw.bb.i198.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then73.i.i

sw.bb.i198.3.i.i:                                 ; preds = %sw.bb.i198.2.i.i.sw.bb.i198.3.i.i_crit_edge, %sw.bb.i198.2.i.i.sw.bb.i198.3.i.i_crit_edge167, %sw.bb.i198.2.i.i.sw.bb.i198.3.i.i_crit_edge168, %sw.bb.i198.2.i.i.sw.bb.i198.3.i.i_crit_edge169
  %incdec.ptr.i195.3.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 1, i32 4
  %131 = ptrtoint ptr %incdec.ptr.i195.3.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %incdec.ptr.i195.3.i.i, align 1
  %133 = zext i8 %132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.136)
  switch i8 %132, label %sw.bb.i198.3.i.i.if.then73.i.i_crit_edge [
    i8 0, label %sw.bb.i198.3.i.i.sw.bb.i198.4.i.i_crit_edge
    i8 15, label %sw.bb.i198.3.i.i.sw.bb.i198.4.i.i_crit_edge170
    i8 -16, label %sw.bb.i198.3.i.i.sw.bb.i198.4.i.i_crit_edge171
    i8 -1, label %sw.bb.i198.3.i.i.sw.bb.i198.4.i.i_crit_edge172
  ]

sw.bb.i198.3.i.i.sw.bb.i198.4.i.i_crit_edge172:   ; preds = %sw.bb.i198.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i198.4.i.i

sw.bb.i198.3.i.i.sw.bb.i198.4.i.i_crit_edge171:   ; preds = %sw.bb.i198.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i198.4.i.i

sw.bb.i198.3.i.i.sw.bb.i198.4.i.i_crit_edge170:   ; preds = %sw.bb.i198.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i198.4.i.i

sw.bb.i198.3.i.i.sw.bb.i198.4.i.i_crit_edge:      ; preds = %sw.bb.i198.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i198.4.i.i

sw.bb.i198.3.i.i.if.then73.i.i_crit_edge:         ; preds = %sw.bb.i198.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then73.i.i

sw.bb.i198.4.i.i:                                 ; preds = %sw.bb.i198.3.i.i.sw.bb.i198.4.i.i_crit_edge, %sw.bb.i198.3.i.i.sw.bb.i198.4.i.i_crit_edge170, %sw.bb.i198.3.i.i.sw.bb.i198.4.i.i_crit_edge171, %sw.bb.i198.3.i.i.sw.bb.i198.4.i.i_crit_edge172
  %incdec.ptr.i195.4.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 1, i32 5
  %134 = ptrtoint ptr %incdec.ptr.i195.4.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %incdec.ptr.i195.4.i.i, align 1
  %136 = zext i8 %135 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.137)
  switch i8 %135, label %sw.bb.i198.4.i.i.if.then73.i.i_crit_edge [
    i8 0, label %sw.bb.i198.4.i.i.if.end16.i_crit_edge
    i8 15, label %sw.bb.i198.4.i.i.if.end16.i_crit_edge173
    i8 -16, label %sw.bb.i198.4.i.i.if.end16.i_crit_edge174
    i8 -1, label %sw.bb.i198.4.i.i.if.end16.i_crit_edge175
  ]

sw.bb.i198.4.i.i.if.end16.i_crit_edge175:         ; preds = %sw.bb.i198.4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

sw.bb.i198.4.i.i.if.end16.i_crit_edge174:         ; preds = %sw.bb.i198.4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

sw.bb.i198.4.i.i.if.end16.i_crit_edge173:         ; preds = %sw.bb.i198.4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

sw.bb.i198.4.i.i.if.end16.i_crit_edge:            ; preds = %sw.bb.i198.4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.i

sw.bb.i198.4.i.i.if.then73.i.i_crit_edge:         ; preds = %sw.bb.i198.4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then73.i.i

if.then73.i.i:                                    ; preds = %sw.bb.i198.4.i.i.if.then73.i.i_crit_edge, %sw.bb.i198.3.i.i.if.then73.i.i_crit_edge, %sw.bb.i198.2.i.i.if.then73.i.i_crit_edge, %sw.bb.i198.1.i.i.if.then73.i.i_crit_edge, %sw.bb.i198.i.i.if.then73.i.i_crit_edge, %if.then67.i.i.if.then73.i.i_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #20
  br label %cleanup

if.end16.i:                                       ; preds = %sw.bb.i198.4.i.i.if.end16.i_crit_edge, %sw.bb.i198.4.i.i.if.end16.i_crit_edge173, %sw.bb.i198.4.i.i.if.end16.i_crit_edge174, %sw.bb.i198.4.i.i.if.end16.i_crit_edge175, %if.end62.i.i.if.end16.i_crit_edge
  %arrayidx.i = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 11, i32 %12
  %state.i = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 11, i32 %12, i32 2
  %137 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %138)
  %cmp18.i = icmp eq i32 %138, 2
  br i1 %cmp18.i, label %if.end.i63.i, label %if.end16.i.if.end23.i_crit_edge

if.end16.i.if.end23.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23.i

if.end.i63.i:                                     ; preds = %if.end16.i
  %139 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %add.ptr.i, align 8
  %hfb_reg_offset.i.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %4, i32 0, i32 11
  %141 = ptrtoint ptr %hfb_reg_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %hfb_reg_offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %140, i32 %142
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #17, !srcloc !248
  %144 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %add.ptr.i, align 8
  %146 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %hw_params.i, align 8
  %hfb_reg_offset.i29.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %147, i32 0, i32 11
  %148 = ptrtoint ptr %hfb_reg_offset.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %hfb_reg_offset.i29.i.i, align 4
  %add.ptr.i30.i.i = getelementptr i8, ptr %145, i32 %149
  %add.ptr1.i31.i.i = getelementptr i8, ptr %add.ptr.i30.i.i, i32 8
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i31.i.i) #17, !srcloc !248
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #17
  %shl.i.i = shl nuw nsw i32 1, %12
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i61.i = and i32 %151, %neg.i.i
  %152 = tail call i32 @llvm.bswap.i32(i32 %and.i61.i) #17
  %153 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %add.ptr.i, align 8
  %155 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %hw_params.i, align 8
  %hfb_reg_offset.i33.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %156, i32 0, i32 11
  %157 = ptrtoint ptr %hfb_reg_offset.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %hfb_reg_offset.i33.i.i, align 4
  %add.ptr.i34.i.i = getelementptr i8, ptr %154, i32 %158
  %add.ptr1.i35.i.i = getelementptr i8, ptr %add.ptr.i34.i.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i35.i.i, i32 %152) #17, !srcloc !249
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool.not.i.i = icmp eq i32 %143, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61.i)
  %tobool7.not.i.i = icmp eq i32 %and.i61.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %tobool7.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then8.i.i, label %if.end.i63.i.if.end23thread-pre-split.i_crit_edge

if.end.i63.i.if.end23thread-pre-split.i_crit_edge: ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23thread-pre-split.i

if.then8.i.i:                                     ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #19
  %159 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %add.ptr.i, align 8
  %161 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %hw_params.i, align 8
  %hfb_reg_offset.i41.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %162, i32 0, i32 11
  %163 = ptrtoint ptr %hfb_reg_offset.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %hfb_reg_offset.i41.i.i, align 4
  %add.ptr.i42.i.i = getelementptr i8, ptr %160, i32 %164
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i.i) #17, !srcloc !248
  %166 = and i32 %165, -16777217
  %167 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %add.ptr.i, align 8
  %169 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %hw_params.i, align 8
  %hfb_reg_offset.i44.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %170, i32 0, i32 11
  %171 = ptrtoint ptr %hfb_reg_offset.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %hfb_reg_offset.i44.i.i, align 4
  %add.ptr.i45.i.i = getelementptr i8, ptr %168, i32 %172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i.i, i32 %166) #17, !srcloc !249
  br label %if.end23thread-pre-split.i

if.end23thread-pre-split.i:                       ; preds = %if.then8.i.i, %if.end.i63.i.if.end23thread-pre-split.i_crit_edge
  %173 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %.pr.i = load i32, ptr %state.i, align 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23thread-pre-split.i, %if.end16.i.if.end23.i_crit_edge
  %174 = phi i32 [ %.pr.i, %if.end23thread-pre-split.i ], [ %138, %if.end16.i.if.end23.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %cmp25.not.i = icmp eq i32 %174, 0
  br i1 %cmp25.not.i, label %if.end23.i.if.end30.i_crit_edge, label %if.then27.i

if.end23.i.if.end30.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30.i

if.then27.i:                                      ; preds = %if.end23.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then27.i.list_del.exit.i_crit_edge

if.then27.i.list_del.exit.i_crit_edge:            ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %175 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %prev.i.i.i, align 4
  %177 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %176, ptr %prev1.i.i.i.i, align 4
  %180 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile ptr %178, ptr %176, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then27.i.list_del.exit.i_crit_edge
  %181 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %182 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %183 = ptrtoint ptr %location.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %location.i.i, align 8
  %185 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hw_params.i, align 8
  %hfb_filter_size.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %186, i32 0, i32 7
  %187 = ptrtoint ptr %hfb_filter_size.i.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %hfb_filter_size.i.i, align 1
  %conv.i.i = zext i8 %188 to i32
  %mul.i.i = mul i32 %184, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %cmp12.not.i.i = icmp eq i8 %188, 0
  br i1 %cmp12.not.i.i, label %list_del.exit.i.if.end30.i_crit_edge, label %list_del.exit.i.for.body.i.i_crit_edge

list_del.exit.i.for.body.i.i_crit_edge:           ; preds = %list_del.exit.i
  br label %for.body.i.i

list_del.exit.i.if.end30.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %list_del.exit.i.for.body.i.i_crit_edge
  %189 = phi ptr [ %195, %for.body.i.i.for.body.i.i_crit_edge ], [ %186, %list_del.exit.i.for.body.i.i_crit_edge ]
  %i.013.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %list_del.exit.i.for.body.i.i_crit_edge ]
  %add.i.i = add i32 %i.013.i.i, %mul.i.i
  %mul5.i.i = shl i32 %add.i.i, 2
  %190 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %add.ptr.i, align 8
  %hfb_offset.i.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %189, i32 0, i32 10
  %192 = ptrtoint ptr %hfb_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %hfb_offset.i.i.i, align 4
  %add.ptr.i.i64.i = getelementptr i8, ptr %191, i32 %193
  %add.ptr1.i.i65.i = getelementptr i8, ptr %add.ptr.i.i64.i, i32 %mul5.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i65.i, i32 0) #17, !srcloc !249
  %inc.i.i = add nuw nsw i32 %i.013.i.i, 1
  %194 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %hw_params.i, align 8
  %hfb_filter_size2.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %195, i32 0, i32 7
  %196 = ptrtoint ptr %hfb_filter_size2.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %hfb_filter_size2.i.i, align 1
  %conv3.i.i = zext i8 %197 to i32
  %cmp.i66.i = icmp ult i32 %inc.i.i, %conv3.i.i
  br i1 %cmp.i66.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end30.i_crit_edge

for.body.i.i.if.end30.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

if.end30.i:                                       ; preds = %for.body.i.i.if.end30.i_crit_edge, %list_del.exit.i.if.end30.i_crit_edge, %if.end23.i.if.end30.i_crit_edge
  %198 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 0, ptr %state.i, align 8
  %fs32.i = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 11, i32 %12, i32 1
  %199 = call ptr @memcpy(ptr %fs32.i, ptr %fs.i, i32 168)
  tail call fastcc void @bcmgenet_hfb_create_rxnfc_filter(ptr noundef %add.ptr.i, ptr noundef %arrayidx.i) #17
  %rxnfc_list.i = getelementptr i8, ptr %dev, i32 11000
  %prev.i67.i = getelementptr i8, ptr %dev, i32 11004
  %200 = ptrtoint ptr %prev.i67.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %prev.i67.i, align 4
  %call.i.i68.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.i, ptr noundef %201, ptr noundef %rxnfc_list.i) #17
  br i1 %call.i.i68.i, label %if.end.i.i69.i, label %if.end30.i.cleanup_crit_edge

if.end30.i.cleanup_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i.i69.i:                                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #19
  %202 = ptrtoint ptr %prev.i67.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %arrayidx.i, ptr %prev.i67.i, align 4
  %203 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %rxnfc_list.i, ptr %arrayidx.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %204 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %201, ptr %prev3.i.i.i, align 4
  %205 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile ptr %arrayidx.i, ptr %201, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %206 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %location.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %207)
  %cmp.i14 = icmp ugt i32 %207, 15
  br i1 %cmp.i14, label %sw.bb3.cleanup_crit_edge, label %if.end.i17

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i17:                                       ; preds = %sw.bb3
  %arrayidx.i15 = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 11, i32 %207
  %state.i16 = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 11, i32 %207, i32 2
  %208 = ptrtoint ptr %state.i16 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %state.i16, align 8
  %210 = zext i32 %209 to i64
  call void @__sanitizer_cov_trace_switch(i64 %210, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %209, label %if.end.i17.if.end11.i_crit_edge [
    i32 0, label %if.end.i17.cleanup_crit_edge
    i32 2, label %if.end.i.i33
  ]

if.end.i17.cleanup_crit_edge:                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i17.if.end11.i_crit_edge:                  ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11.i

if.end.i.i33:                                     ; preds = %if.end.i17
  %211 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %add.ptr.i, align 8
  %hw_params.i.i.i = getelementptr i8, ptr %dev, i32 18488
  %213 = ptrtoint ptr %hw_params.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %hw_params.i.i.i, align 8
  %hfb_reg_offset.i.i.i18 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %214, i32 0, i32 11
  %215 = ptrtoint ptr %hfb_reg_offset.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %hfb_reg_offset.i.i.i18, align 4
  %add.ptr.i.i.i19 = getelementptr i8, ptr %212, i32 %216
  %add.ptr1.i.i.i20 = getelementptr i8, ptr %add.ptr.i.i.i19, i32 4
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i20) #17, !srcloc !248
  %218 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %add.ptr.i, align 8
  %220 = ptrtoint ptr %hw_params.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %hw_params.i.i.i, align 8
  %hfb_reg_offset.i29.i.i21 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %221, i32 0, i32 11
  %222 = ptrtoint ptr %hfb_reg_offset.i29.i.i21 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %hfb_reg_offset.i29.i.i21, align 4
  %add.ptr.i30.i.i22 = getelementptr i8, ptr %219, i32 %223
  %add.ptr1.i31.i.i23 = getelementptr i8, ptr %add.ptr.i30.i.i22, i32 8
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i31.i.i23) #17, !srcloc !248
  %225 = tail call i32 @llvm.bswap.i32(i32 %224) #17
  %shl.i.i24 = shl nuw nsw i32 1, %207
  %neg.i.i25 = xor i32 %shl.i.i24, -1
  %and.i.i26 = and i32 %225, %neg.i.i25
  %226 = tail call i32 @llvm.bswap.i32(i32 %and.i.i26) #17
  %227 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %add.ptr.i, align 8
  %229 = ptrtoint ptr %hw_params.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %hw_params.i.i.i, align 8
  %hfb_reg_offset.i33.i.i27 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %230, i32 0, i32 11
  %231 = ptrtoint ptr %hfb_reg_offset.i33.i.i27 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %hfb_reg_offset.i33.i.i27, align 4
  %add.ptr.i34.i.i28 = getelementptr i8, ptr %228, i32 %232
  %add.ptr1.i35.i.i29 = getelementptr i8, ptr %add.ptr.i34.i.i28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i35.i.i29, i32 %226) #17, !srcloc !249
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool.not.i.i30 = icmp eq i32 %217, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i26)
  %tobool7.not.i.i31 = icmp eq i32 %and.i.i26, 0
  %or.cond.i.i32 = select i1 %tobool.not.i.i30, i1 %tobool7.not.i.i31, i1 false
  br i1 %or.cond.i.i32, label %if.then8.i.i38, label %if.end.i.i33.if.end11thread-pre-split.i_crit_edge

if.end.i.i33.if.end11thread-pre-split.i_crit_edge: ; preds = %if.end.i.i33
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11thread-pre-split.i

if.then8.i.i38:                                   ; preds = %if.end.i.i33
  call void @__sanitizer_cov_trace_pc() #19
  %233 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %add.ptr.i, align 8
  %235 = ptrtoint ptr %hw_params.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %hw_params.i.i.i, align 8
  %hfb_reg_offset.i41.i.i34 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %236, i32 0, i32 11
  %237 = ptrtoint ptr %hfb_reg_offset.i41.i.i34 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %hfb_reg_offset.i41.i.i34, align 4
  %add.ptr.i42.i.i35 = getelementptr i8, ptr %234, i32 %238
  %239 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i.i35) #17, !srcloc !248
  %240 = and i32 %239, -16777217
  %241 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %add.ptr.i, align 8
  %243 = ptrtoint ptr %hw_params.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %hw_params.i.i.i, align 8
  %hfb_reg_offset.i44.i.i36 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %244, i32 0, i32 11
  %245 = ptrtoint ptr %hfb_reg_offset.i44.i.i36 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %hfb_reg_offset.i44.i.i36, align 4
  %add.ptr.i45.i.i37 = getelementptr i8, ptr %242, i32 %246
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i.i37, i32 %240) #17, !srcloc !249
  br label %if.end11thread-pre-split.i

if.end11thread-pre-split.i:                       ; preds = %if.then8.i.i38, %if.end.i.i33.if.end11thread-pre-split.i_crit_edge
  %247 = ptrtoint ptr %state.i16 to i32
  call void @__asan_load4_noabort(i32 %247)
  %.pr.i39 = load i32, ptr %state.i16, align 8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end11thread-pre-split.i, %if.end.i17.if.end11.i_crit_edge
  %248 = phi i32 [ %.pr.i39, %if.end11thread-pre-split.i ], [ %209, %if.end.i17.if.end11.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %cmp13.not.i = icmp eq i32 %248, 0
  br i1 %cmp13.not.i, label %if.end11.i.if.end17.i_crit_edge, label %if.then14.i

if.end11.i.if.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end11.i
  %call.i.i.i40 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx.i15) #17
  br i1 %call.i.i.i40, label %if.end.i.i.i43, label %if.then14.i.list_del.exit.i49_crit_edge

if.then14.i.list_del.exit.i49_crit_edge:          ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit.i49

if.end.i.i.i43:                                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i41 = getelementptr inbounds %struct.list_head, ptr %arrayidx.i15, i32 0, i32 1
  %249 = ptrtoint ptr %prev.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %prev.i.i.i41, align 4
  %251 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %arrayidx.i15, align 4
  %prev1.i.i.i.i42 = getelementptr inbounds %struct.list_head, ptr %252, i32 0, i32 1
  %253 = ptrtoint ptr %prev1.i.i.i.i42 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %250, ptr %prev1.i.i.i.i42, align 4
  %254 = ptrtoint ptr %250 to i32
  call void @__asan_store4_noabort(i32 %254)
  store volatile ptr %252, ptr %250, align 4
  br label %list_del.exit.i49

list_del.exit.i49:                                ; preds = %if.end.i.i.i43, %if.then14.i.list_del.exit.i49_crit_edge
  %255 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr inttoptr (i32 256 to ptr), ptr %arrayidx.i15, align 4
  %prev.i.i44 = getelementptr inbounds %struct.list_head, ptr %arrayidx.i15, i32 0, i32 1
  %256 = ptrtoint ptr %prev.i.i44 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i44, align 4
  %257 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %location.i, align 8
  %hw_params.i.i = getelementptr i8, ptr %dev, i32 18488
  %259 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %hw_params.i.i, align 8
  %hfb_filter_size.i.i45 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %260, i32 0, i32 7
  %261 = ptrtoint ptr %hfb_filter_size.i.i45 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %hfb_filter_size.i.i45, align 1
  %conv.i.i46 = zext i8 %262 to i32
  %mul.i.i47 = mul i32 %258, %conv.i.i46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %cmp12.not.i.i48 = icmp eq i8 %262, 0
  br i1 %cmp12.not.i.i48, label %list_del.exit.i49.if.end17.i_crit_edge, label %list_del.exit.i49.for.body.i.i57_crit_edge

list_del.exit.i49.for.body.i.i57_crit_edge:       ; preds = %list_del.exit.i49
  br label %for.body.i.i57

list_del.exit.i49.if.end17.i_crit_edge:           ; preds = %list_del.exit.i49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17.i

for.body.i.i57:                                   ; preds = %for.body.i.i57.for.body.i.i57_crit_edge, %list_del.exit.i49.for.body.i.i57_crit_edge
  %263 = phi ptr [ %269, %for.body.i.i57.for.body.i.i57_crit_edge ], [ %260, %list_del.exit.i49.for.body.i.i57_crit_edge ]
  %i.013.i.i50 = phi i32 [ %inc.i.i54, %for.body.i.i57.for.body.i.i57_crit_edge ], [ 0, %list_del.exit.i49.for.body.i.i57_crit_edge ]
  %add.i.i51 = add i32 %i.013.i.i50, %mul.i.i47
  %mul5.i.i52 = shl i32 %add.i.i51, 2
  %264 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %add.ptr.i, align 8
  %hfb_offset.i.i.i53 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %263, i32 0, i32 10
  %266 = ptrtoint ptr %hfb_offset.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %hfb_offset.i.i.i53, align 4
  %add.ptr.i.i33.i = getelementptr i8, ptr %265, i32 %267
  %add.ptr1.i.i34.i = getelementptr i8, ptr %add.ptr.i.i33.i, i32 %mul5.i.i52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i34.i, i32 0) #17, !srcloc !249
  %inc.i.i54 = add nuw nsw i32 %i.013.i.i50, 1
  %268 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %hw_params.i.i, align 8
  %hfb_filter_size2.i.i55 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %269, i32 0, i32 7
  %270 = ptrtoint ptr %hfb_filter_size2.i.i55 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %hfb_filter_size2.i.i55, align 1
  %conv3.i.i56 = zext i8 %271 to i32
  %cmp.i35.i = icmp ult i32 %inc.i.i54, %conv3.i.i56
  br i1 %cmp.i35.i, label %for.body.i.i57.for.body.i.i57_crit_edge, label %for.body.i.i57.if.end17.i_crit_edge

for.body.i.i57.if.end17.i_crit_edge:              ; preds = %for.body.i.i57
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17.i

for.body.i.i57.for.body.i.i57_crit_edge:          ; preds = %for.body.i.i57
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i57

if.end17.i:                                       ; preds = %for.body.i.i57.if.end17.i_crit_edge, %list_del.exit.i49.if.end17.i_crit_edge, %if.end11.i.if.end17.i_crit_edge
  %fs19.i = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 11, i32 %207, i32 1
  %272 = call ptr @memset(ptr %fs19.i, i32 0, i32 172)
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dev5 = getelementptr i8, ptr %dev, i32 2312
  %273 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %dev5, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %274, ptr noundef nonnull @.str.22, i32 noundef %1) #20
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end17.i, %if.end.i17.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %if.end.i.i69.i, %if.end30.i.cleanup_crit_edge, %if.then73.i.i, %if.then60.i.i, %if.then49.i.i, %sw.default.i.i, %if.then32.i.i, %if.then19.i.i, %if.then.i.i, %if.then10.i, %if.then.i
  %retval.0 = phi i32 [ -22, %sw.default ], [ -22, %if.then.i ], [ -22, %if.then10.i ], [ 0, %if.end30.i.cleanup_crit_edge ], [ 0, %if.end.i.i69.i ], [ -22, %if.then.i.i ], [ -22, %sw.default.i.i ], [ -22, %if.then32.i.i ], [ -22, %if.then49.i.i ], [ -22, %if.then60.i.i ], [ -22, %if.then73.i.i ], [ -22, %if.then19.i.i ], [ -22, %sw.bb3.cleanup_crit_edge ], [ 0, %if.end17.i ], [ -2, %if.end.i17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_get_eee(ptr nocapture noundef readonly %dev, ptr noundef %e) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %version = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %eee_enabled = getelementptr i8, ptr %dev, i32 19040
  %4 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eee_enabled, align 4
  %eee_enabled3 = getelementptr inbounds %struct.ethtool_eee, ptr %e, i32 0, i32 5
  %6 = ptrtoint ptr %eee_enabled3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %eee_enabled3, align 4
  %eee_active = getelementptr i8, ptr %dev, i32 19036
  %7 = ptrtoint ptr %eee_active to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %eee_active, align 4
  %eee_active4 = getelementptr inbounds %struct.ethtool_eee, ptr %e, i32 0, i32 4
  %9 = ptrtoint ptr %eee_active4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %eee_active4, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %11, i32 2152
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #17, !srcloc !248
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #17
  %tx_lpi_timer = getelementptr inbounds %struct.ethtool_eee, ptr %e, i32 0, i32 7
  %14 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tx_lpi_timer, align 4
  %15 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phydev, align 16
  %call7 = tail call i32 @phy_ethtool_get_eee(ptr noundef %16, ptr noundef %e) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end2 ], [ -95, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_set_eee(ptr noundef %dev, ptr noundef %e) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %version = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %e, i32 0, i32 5
  %4 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eee_enabled, align 4
  %eee_enabled3 = getelementptr i8, ptr %dev, i32 19040
  %6 = ptrtoint ptr %eee_enabled3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %eee_enabled3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.end2.if.end15_crit_edge, label %if.else

if.end2.if.end15_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.else:                                          ; preds = %if.end2
  %call8 = tail call i32 @phy_init_eee(ptr noundef nonnull %3, i1 noundef zeroext false) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end14, label %do.body

do.body:                                          ; preds = %if.else
  %msg_enable = getelementptr i8, ptr %dev, i32 18708
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 4
  %and = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body.cleanup_crit_edge, label %if.then12

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #20
  br label %cleanup

if.end14:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %tx_lpi_timer = getelementptr inbounds %struct.ethtool_eee, ptr %e, i32 0, i32 7
  %9 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_lpi_timer, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #17
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %13, i32 2152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %11) #17, !srcloc !249
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end2.if.end15_crit_edge
  %14 = xor i1 %tobool5.not, true
  tail call fastcc void @bcmgenet_eee_enable_set(ptr noundef %dev, i1 noundef zeroext %14)
  %15 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phydev, align 16
  %call17 = tail call i32 @phy_ethtool_set_eee(ptr noundef %16, ptr noundef %e) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then12, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end15 ], [ -95, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call8, %if.then12 ], [ %call8, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @phy_ethtool_ksettings_get(ptr noundef nonnull %3, ptr noundef %cmd) #17
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.return_crit_edge ], [ -19, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call4 = tail call i32 @phy_ethtool_ksettings_set(ptr noundef nonnull %3, ptr noundef %cmd) #17
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end2 ], [ -22, %entry.return_crit_edge ], [ -19, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_set_ring_rx_coalesce(ptr nocapture noundef %ring, ptr nocapture noundef readonly %ec) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca %struct.dim_cq_moder, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %0 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_coalesce_usecs, align 4
  %rx_coalesce_usecs1 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 15
  %2 = ptrtoint ptr %rx_coalesce_usecs1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %rx_coalesce_usecs1, align 4
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %3 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_max_coalesced_frames, align 4
  %rx_max_coalesced_frames2 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 14
  %5 = ptrtoint ptr %rx_max_coalesced_frames2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rx_max_coalesced_frames2, align 8
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %6 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dim = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 13
  %8 = ptrtoint ptr %dim to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dim, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool5.not = icmp eq i16 %9, 0
  br i1 %tobool5.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #17
  %mode = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 13, i32 4, i32 7
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mode, align 1
  call void @net_dim_get_def_rx_moderation(ptr nonnull sret(%struct.dim_cq_moder) align 2 %tmp, i8 noundef zeroext %11) #17
  %12 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %12)
  %moder.sroa.0.0.copyload14 = load i16, ptr %tmp, align 2
  %moder.sroa.5.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 2
  %13 = ptrtoint ptr %moder.sroa.5.0.tmp.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %13)
  %moder.sroa.5.0.copyload15 = load i16, ptr %moder.sroa.5.0.tmp.sroa_idx, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #17
  %conv = zext i16 %moder.sroa.0.0.copyload14 to i32
  %conv9 = zext i16 %moder.sroa.5.0.copyload15 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %usecs.0 = phi i32 [ %1, %land.lhs.true.if.end_crit_edge ], [ %conv, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %pkts.0 = phi i32 [ %4, %land.lhs.true.if.end_crit_edge ], [ %conv9, %if.then ], [ %4, %entry.if.end_crit_edge ]
  %14 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  %conv11 = trunc i32 %15 to i16
  %dim12 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 13
  %16 = ptrtoint ptr %dim12 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv11, ptr %dim12, align 8
  %priv1.i = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 18
  %17 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv1.i, align 8
  %index.i = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 5
  %19 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index.i, align 8
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 8
  %hw_params.i.i = getelementptr inbounds %struct.bcmgenet_priv, ptr %18, i32 0, i32 14
  %23 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_params.i.i, align 8
  %rdma_offset.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %rdma_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rdma_offset.i.i, align 4
  %words_per_bd.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %24, i32 0, i32 14
  %27 = ptrtoint ptr %words_per_bd.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %words_per_bd.i.i, align 4
  %mul2.i.i = shl i32 %28, 10
  %add.i.i = add i32 %mul2.i.i, %26
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %add.i.i
  %mul3.i.i = shl i32 %20, 6
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul3.i.i
  %29 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i.i = getelementptr i8, ptr %29, i32 9
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %31 to i32
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 %conv.i.i
  %32 = call i32 @llvm.bswap.i32(i32 %pkts.0) #17
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %32) #17, !srcloc !249
  %add.i = add i32 %20, 16
  %33 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %18, align 8
  %35 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_params.i.i, align 8
  %rdma_offset.i13.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %rdma_offset.i13.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rdma_offset.i13.i, align 4
  %words_per_bd.i14.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %36, i32 0, i32 14
  %39 = ptrtoint ptr %words_per_bd.i14.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %words_per_bd.i14.i, align 4
  %mul2.i15.i = shl i32 %40, 10
  %add.i16.i = add i32 %mul2.i15.i, %38
  %add.ptr.i17.i = getelementptr i8, ptr %34, i32 %add.i16.i
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr.i17.i, i32 1088
  %41 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i18.i = getelementptr i8, ptr %41, i32 %add.i
  %42 = ptrtoint ptr %arrayidx.i18.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i18.i, align 1
  %conv.i19.i = zext i8 %43 to i32
  %add.ptr4.i20.i = getelementptr i8, ptr %add.ptr3.i.i, i32 %conv.i19.i
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i20.i) #17, !srcloc !248
  %45 = and i32 %44, 65535
  %46 = call i32 @llvm.bswap.i32(i32 %45) #17
  %mul.i = mul i32 %usecs.0, 1000
  %sub.i = add i32 %mul.i, 8191
  %div11.i = lshr i32 %sub.i, 13
  %or.i = or i32 %46, %div11.i
  %47 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %18, align 8
  %49 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_params.i.i, align 8
  %rdma_offset.i22.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %50, i32 0, i32 12
  %51 = ptrtoint ptr %rdma_offset.i22.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rdma_offset.i22.i, align 4
  %words_per_bd.i23.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %50, i32 0, i32 14
  %53 = ptrtoint ptr %words_per_bd.i23.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %words_per_bd.i23.i, align 4
  %mul2.i24.i = shl i32 %54, 10
  %add.i25.i = add i32 %mul2.i24.i, %52
  %add.ptr.i26.i = getelementptr i8, ptr %48, i32 %add.i25.i
  %add.ptr3.i27.i = getelementptr i8, ptr %add.ptr.i26.i, i32 1088
  %55 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i28.i = getelementptr i8, ptr %55, i32 %add.i
  %56 = ptrtoint ptr %arrayidx.i28.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i28.i, align 1
  %conv.i29.i = zext i8 %57 to i32
  %add.ptr4.i30.i = getelementptr i8, ptr %add.ptr3.i27.i, i32 %conv.i29.i
  %58 = call i32 @llvm.bswap.i32(i32 %or.i) #17
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i30.i, i32 %58) #17, !srcloc !249
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dim_get_def_rx_moderation(ptr sret(%struct.dim_cq_moder) align 2, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @phy_validate_pause(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcmgenet_phy_pause_set(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_hfb_create_rxnfc_filter(ptr noundef readonly %priv, ptr noundef %rule) unnamed_addr #2 align 64 {
entry:
  %val_8 = alloca i8, align 1
  %mask_8 = alloca i8, align 1
  %val_16 = alloca i16, align 2
  %mask_16 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fs1 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val_8) #17
  %0 = ptrtoint ptr %val_8 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val_8, align 1, !annotation !250
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mask_8) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val_16) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mask_16) #17
  %location = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1, i32 6
  %1 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %location, align 8
  %3 = ptrtoint ptr %fs1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fs1, align 8
  %and = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %h_dest = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1, i32 2, i32 1
  %h_dest2 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1, i32 4, i32 1
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %priv, i32 noundef %2, i32 noundef 0, ptr noundef %h_dest, ptr noundef %h_dest2, i32 noundef 6)
  %5 = ptrtoint ptr %fs1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %fs1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = phi i32 [ %.pr, %if.then ], [ %4, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool5.not = icmp sgt i32 %6, -1
  br i1 %tobool5.not, label %if.end.if.end25_crit_edge, label %if.then6

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then6:                                         ; preds = %if.end
  %vlan_etype = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1, i32 4, i32 2
  %7 = ptrtoint ptr %vlan_etype to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vlan_etype, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool8.not = icmp eq i16 %8, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.then6.if.then12_crit_edge

if.then6.if.then12_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.then6
  %vlan_tci = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1, i32 4, i32 3
  %9 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vlan_tci, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool11.not = icmp eq i16 %10, 0
  br i1 %tobool11.not, label %lor.lhs.false.if.end25_crit_edge, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then12

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.then6.if.then12_crit_edge
  %vlan_etype14 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1, i32 2, i32 2
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %priv, i32 noundef %2, i32 noundef 12, ptr noundef %vlan_etype14, ptr noundef %vlan_etype, i32 noundef 2)
  %vlan_tci19 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1, i32 2, i32 3
  %vlan_tci21 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1, i32 4, i32 3
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %priv, i32 noundef %2, i32 noundef 14, ptr noundef %vlan_tci19, ptr noundef %vlan_tci21, i32 noundef 2)
  br label %if.end25

if.end25:                                         ; preds = %if.then12, %lor.lhs.false.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %offset.0 = phi i32 [ 4, %if.then12 ], [ 0, %lor.lhs.false.if.end25_crit_edge ], [ 0, %if.end.if.end25_crit_edge ]
  %f_length.0 = phi i32 [ 2, %if.then12 ], [ 0, %lor.lhs.false.if.end25_crit_edge ], [ 0, %if.end.if.end25_crit_edge ]
  %11 = ptrtoint ptr %fs1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fs1, align 8
  %and27 = and i32 %12, 1073741823
  %13 = zext i32 %and27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %and27, label %if.end25.sw.epilog_crit_edge [
    i32 18, label %sw.bb
    i32 13, label %sw.bb41
  ]

if.end25.sw.epilog_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  %add28 = add nuw nsw i32 %f_length.0, 7
  %h_u = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1, i32 1
  %m_u = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1, i32 3
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %priv, i32 noundef %2, i32 noundef 0, ptr noundef %h_u, ptr noundef %m_u, i32 noundef 6)
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %h_u, i32 0, i32 1
  %h_source34 = getelementptr inbounds %struct.ethhdr, ptr %m_u, i32 0, i32 1
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %priv, i32 noundef %2, i32 noundef 6, ptr noundef %h_source, ptr noundef %h_source34, i32 noundef 6)
  %add36 = add nuw nsw i32 %offset.0, 12
  %h_proto = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1, i32 1, i32 0, i32 0, i32 3
  %h_proto39 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1, i32 3, i32 0, i32 0, i32 3
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %priv, i32 noundef %2, i32 noundef %add36, ptr noundef %h_proto, ptr noundef %h_proto39, i32 noundef 2)
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end25
  %add42 = or i32 %f_length.0, 17
  %14 = ptrtoint ptr %val_16 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2048, ptr %val_16, align 2
  %15 = ptrtoint ptr %mask_16 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %mask_16, align 2
  %add43 = add nuw nsw i32 %offset.0, 12
  call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %priv, i32 noundef %2, i32 noundef %add43, ptr noundef nonnull %val_16, ptr noundef nonnull %mask_16, i32 noundef 2)
  %add45 = add nuw nsw i32 %offset.0, 15
  %h_u46 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1, i32 1
  %tos = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1, i32 1, i32 0, i32 0, i32 3
  %m_u47 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1, i32 3
  %tos48 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1, i32 3, i32 0, i32 0, i32 3
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %priv, i32 noundef %2, i32 noundef %add45, ptr noundef %tos, ptr noundef %tos48, i32 noundef 1)
  %add50 = add nuw nsw i32 %offset.0, 23
  %proto = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u46, i32 0, i32 5
  %proto53 = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u47, i32 0, i32 5
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %priv, i32 noundef %2, i32 noundef %add50, ptr noundef %proto, ptr noundef %proto53, i32 noundef 1)
  %add55 = or i32 %offset.0, 26
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %priv, i32 noundef %2, i32 noundef %add55, ptr noundef %h_u46, ptr noundef %m_u47, i32 noundef 4)
  %add60 = add nuw nsw i32 %offset.0, 30
  %ip4dst = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %ip4dst63 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1, i32 3, i32 0, i32 0, i32 1
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %priv, i32 noundef %2, i32 noundef %add60, ptr noundef %ip4dst, ptr noundef %ip4dst63, i32 noundef 4)
  %l4_4_bytes = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1, i32 3, i32 0, i32 0, i32 2
  %16 = ptrtoint ptr %l4_4_bytes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %l4_4_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool66.not = icmp eq i32 %17, 0
  br i1 %tobool66.not, label %sw.bb41.sw.epilog_crit_edge, label %if.end68

sw.bb41.sw.epilog_crit_edge:                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.end68:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #19
  %18 = ptrtoint ptr %val_8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 69, ptr %val_8, align 1
  %19 = ptrtoint ptr %mask_8 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %mask_8, align 1
  %add69 = add nuw nsw i32 %offset.0, 14
  call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %priv, i32 noundef %2, i32 noundef %add69, ptr noundef nonnull %val_8, ptr noundef nonnull %mask_8, i32 noundef 1)
  %add71 = or i32 %offset.0, 34
  %l4_4_bytes73 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1, i32 1, i32 0, i32 0, i32 2
  tail call fastcc void @bcmgenet_hfb_insert_data(ptr noundef %priv, i32 noundef %2, i32 noundef %add71, ptr noundef %l4_4_bytes73, ptr noundef %l4_4_bytes, i32 noundef 4)
  %add78 = add nuw nsw i32 %f_length.0, 19
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end68, %sw.bb41.sw.epilog_crit_edge, %sw.bb, %if.end25.sw.epilog_crit_edge
  %f_length.1 = phi i32 [ %f_length.0, %if.end25.sw.epilog_crit_edge ], [ %add78, %if.end68 ], [ %add42, %sw.bb41.sw.epilog_crit_edge ], [ %add28, %sw.bb ]
  %mul = shl nsw i32 %f_length.1, 1
  %hw_params.i = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 14
  %20 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_params.i, align 8
  %hfb_filter_cnt.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %hfb_filter_cnt.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hfb_filter_cnt.i, align 4
  %conv.i = zext i8 %23 to i32
  %sub1.i = sub i32 27, %2
  %24 = add i32 %sub1.i, %conv.i
  %add.i = and i32 %24, -4
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  %hfb_reg_offset.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %21, i32 0, i32 11
  %27 = ptrtoint ptr %hfb_reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hfb_reg_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %28
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %add.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #17, !srcloc !248
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #17
  %rem.i = shl i32 %2, 3
  %mul2.i = and i32 %rem.i, 24
  %shl.i = shl nuw i32 255, %mul2.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %30, %neg.i
  %and3.i = and i32 %mul, 254
  %shl6.i = shl nuw i32 %and3.i, %mul2.i
  %or.i = or i32 %and.i, %shl6.i
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i) #17
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 8
  %34 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw_params.i, align 8
  %hfb_reg_offset.i16.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %hfb_reg_offset.i16.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hfb_reg_offset.i16.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %33, i32 %37
  %add.ptr1.i18.i = getelementptr i8, ptr %add.ptr.i17.i, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i18.i, i32 %31) #17, !srcloc !249
  %ring_cookie = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 1, i32 5
  %38 = ptrtoint ptr %ring_cookie to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ring_cookie, align 8
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.140)
  switch i64 %39, label %if.else [
    i64 0, label %sw.epilog.if.then83_crit_edge
    i64 -2, label %sw.epilog.if.then83_crit_edge209
  ]

sw.epilog.if.then83_crit_edge209:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then83

sw.epilog.if.then83_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then83

if.then83:                                        ; preds = %sw.epilog.if.then83_crit_edge, %sw.epilog.if.then83_crit_edge209
  %div12.i = lshr i32 %2, 3
  %add.i166 = add nuw nsw i32 %div12.i, 8
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 8
  %42 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_params.i, align 8
  %rdma_offset.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %rdma_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rdma_offset.i.i, align 4
  %words_per_bd.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %43, i32 0, i32 14
  %46 = ptrtoint ptr %words_per_bd.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %words_per_bd.i.i, align 4
  %mul2.i.i = shl i32 %47, 10
  %add.i.i = add i32 %mul2.i.i, %45
  %add.ptr.i.i167 = getelementptr i8, ptr %41, i32 %add.i.i
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr.i.i167, i32 1088
  %48 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i.i = getelementptr i8, ptr %48, i32 %add.i166
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %50 to i32
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr3.i.i, i32 %conv.i.i
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #17, !srcloc !248
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #17
  %rem.i168 = shl i32 %2, 2
  %mul.i = and i32 %rem.i168, 28
  %shl.i169 = shl nuw i32 15, %mul.i
  %neg.i170 = xor i32 %shl.i169, -1
  %and.i171 = and i32 %52, %neg.i170
  %53 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv, align 8
  %55 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw_params.i, align 8
  %rdma_offset.i14.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %56, i32 0, i32 12
  %57 = ptrtoint ptr %rdma_offset.i14.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rdma_offset.i14.i, align 4
  %words_per_bd.i15.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %56, i32 0, i32 14
  %59 = ptrtoint ptr %words_per_bd.i15.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %words_per_bd.i15.i, align 4
  %mul2.i16.i = shl i32 %60, 10
  %add.i17.i = add i32 %mul2.i16.i, %58
  %add.ptr.i18.i = getelementptr i8, ptr %54, i32 %add.i17.i
  %add.ptr3.i19.i = getelementptr i8, ptr %add.ptr.i18.i, i32 1088
  %61 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i20.i = getelementptr i8, ptr %61, i32 %add.i166
  %62 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i20.i, align 1
  %conv.i21.i = zext i8 %63 to i32
  %add.ptr4.i22.i = getelementptr i8, ptr %add.ptr3.i19.i, i32 %conv.i21.i
  %64 = tail call i32 @llvm.bswap.i32(i32 %and.i171) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i22.i, i32 %64) #17, !srcloc !249
  br label %if.end87

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %conv85 = trunc i64 %39 to i32
  %div12.i172 = lshr i32 %2, 3
  %add.i173 = add nuw nsw i32 %div12.i172, 8
  %65 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv, align 8
  %67 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw_params.i, align 8
  %rdma_offset.i.i175 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %68, i32 0, i32 12
  %69 = ptrtoint ptr %rdma_offset.i.i175 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rdma_offset.i.i175, align 4
  %words_per_bd.i.i176 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %68, i32 0, i32 14
  %71 = ptrtoint ptr %words_per_bd.i.i176 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %words_per_bd.i.i176, align 4
  %mul2.i.i177 = shl i32 %72, 10
  %add.i.i178 = add i32 %mul2.i.i177, %70
  %add.ptr.i.i179 = getelementptr i8, ptr %66, i32 %add.i.i178
  %add.ptr3.i.i180 = getelementptr i8, ptr %add.ptr.i.i179, i32 1088
  %73 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i.i181 = getelementptr i8, ptr %73, i32 %add.i173
  %74 = ptrtoint ptr %arrayidx.i.i181 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.i.i181, align 1
  %conv.i.i182 = zext i8 %75 to i32
  %add.ptr4.i.i183 = getelementptr i8, ptr %add.ptr3.i.i180, i32 %conv.i.i182
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i183) #17, !srcloc !248
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #17
  %rem.i184 = shl i32 %2, 2
  %mul.i185 = and i32 %rem.i184, 28
  %shl.i186 = shl nuw i32 15, %mul.i185
  %neg.i187 = xor i32 %shl.i186, -1
  %and.i188 = and i32 %77, %neg.i187
  %and1.i = and i32 %conv85, 15
  %shl4.i = shl nuw i32 %and1.i, %mul.i185
  %or.i189 = or i32 %and.i188, %shl4.i
  %78 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %priv, align 8
  %80 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw_params.i, align 8
  %rdma_offset.i14.i190 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %81, i32 0, i32 12
  %82 = ptrtoint ptr %rdma_offset.i14.i190 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rdma_offset.i14.i190, align 4
  %words_per_bd.i15.i191 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %81, i32 0, i32 14
  %84 = ptrtoint ptr %words_per_bd.i15.i191 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %words_per_bd.i15.i191, align 4
  %mul2.i16.i192 = shl i32 %85, 10
  %add.i17.i193 = add i32 %mul2.i16.i192, %83
  %add.ptr.i18.i194 = getelementptr i8, ptr %79, i32 %add.i17.i193
  %add.ptr3.i19.i195 = getelementptr i8, ptr %add.ptr.i18.i194, i32 1088
  %86 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i20.i196 = getelementptr i8, ptr %86, i32 %add.i173
  %87 = ptrtoint ptr %arrayidx.i20.i196 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i20.i196, align 1
  %conv.i21.i197 = zext i8 %88 to i32
  %add.ptr4.i22.i198 = getelementptr i8, ptr %add.ptr3.i19.i195, i32 %conv.i21.i197
  %89 = tail call i32 @llvm.bswap.i32(i32 %or.i189) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i22.i198, i32 %89) #17, !srcloc !249
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %2)
  %cmp.i = icmp ult i32 %2, 32
  %add.i199 = select i1 %cmp.i, i32 8, i32 4
  %90 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %priv, align 8
  %92 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hw_params.i, align 8
  %hfb_reg_offset.i.i201 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %93, i32 0, i32 11
  %94 = ptrtoint ptr %hfb_reg_offset.i.i201 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %hfb_reg_offset.i.i201, align 4
  %add.ptr.i.i202 = getelementptr i8, ptr %91, i32 %95
  %add.ptr1.i.i203 = getelementptr i8, ptr %add.ptr.i.i202, i32 %add.i199
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i203) #17, !srcloc !248
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #17
  %rem.i204 = and i32 %2, 31
  %shl.i205 = shl nuw i32 1, %rem.i204
  %or.i206 = or i32 %97, %shl.i205
  %98 = tail call i32 @llvm.bswap.i32(i32 %or.i206) #17
  %99 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %priv, align 8
  %101 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hw_params.i, align 8
  %hfb_reg_offset.i12.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %102, i32 0, i32 11
  %103 = ptrtoint ptr %hfb_reg_offset.i12.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %hfb_reg_offset.i12.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %100, i32 %104
  %add.ptr1.i14.i = getelementptr i8, ptr %add.ptr.i13.i, i32 %add.i199
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i14.i, i32 %98) #17, !srcloc !249
  %105 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %priv, align 8
  %107 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hw_params.i, align 8
  %hfb_reg_offset.i16.i207 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %108, i32 0, i32 11
  %109 = ptrtoint ptr %hfb_reg_offset.i16.i207 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %hfb_reg_offset.i16.i207, align 4
  %add.ptr.i17.i208 = getelementptr i8, ptr %106, i32 %110
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i208) #17, !srcloc !248
  %112 = or i32 %111, 16777216
  %113 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %priv, align 8
  %115 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hw_params.i, align 8
  %hfb_reg_offset.i19.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %116, i32 0, i32 11
  %117 = ptrtoint ptr %hfb_reg_offset.i19.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %hfb_reg_offset.i19.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %114, i32 %118
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %112) #17, !srcloc !249
  br label %if.end87

if.end87:                                         ; preds = %if.else, %if.then83
  %.sink = phi i32 [ 2, %if.else ], [ 1, %if.then83 ]
  %state86 = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule, i32 0, i32 2
  %119 = ptrtoint ptr %state86 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %.sink, ptr %state86, align 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mask_16) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val_16) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mask_8) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val_8) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_hfb_insert_data(ptr nocapture noundef readonly %priv, i32 noundef %f_index, i32 noundef %offset, ptr nocapture noundef readonly %val, ptr nocapture noundef readonly %mask, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_params = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 14
  %0 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_params, align 8
  %hfb_filter_size = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %hfb_filter_size to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hfb_filter_size, align 1
  %conv = zext i8 %3 to i32
  %mul = mul i32 %conv, %f_index
  %div1 = lshr i32 %offset, 1
  %add = add i32 %mul, %div1
  %mul1 = shl i32 %add, 2
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %hfb_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %hfb_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hfb_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %7
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #17, !srcloc !248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not15 = icmp eq i32 %size, 0
  br i1 %tobool.not15, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #17
  br label %while.body

while.body:                                       ; preds = %if.end35, %while.body.preheader
  %dec22.in = phi i32 [ %dec22, %if.end35 ], [ %size, %while.body.preheader ]
  %tmp.021 = phi i32 [ %tmp.3, %if.end35 ], [ %9, %while.body.preheader ]
  %index.020 = phi i32 [ %index.1, %if.end35 ], [ %add, %while.body.preheader ]
  %mask.addr.018 = phi ptr [ %mask.addr.1, %if.end35 ], [ %mask, %while.body.preheader ]
  %val.addr.017 = phi ptr [ %val.addr.1, %if.end35 ], [ %val, %while.body.preheader ]
  %offset.addr.016 = phi i32 [ %inc, %if.end35 ], [ %offset, %while.body.preheader ]
  %dec22 = add i32 %dec22.in, -1
  %inc = add i32 %offset.addr.016, 1
  %and = and i32 %offset.addr.016, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %and3 = and i32 %tmp.021, -196864
  %10 = ptrtoint ptr %val.addr.017 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val.addr.017, align 1
  %conv4 = zext i8 %11 to i32
  %or = or i32 %and3, %conv4
  %12 = ptrtoint ptr %mask.addr.018 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mask.addr.018, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %13, label %if.then.sw.epilog_crit_edge [
    i8 -1, label %sw.bb
    i8 -16, label %sw.bb8
    i8 15, label %sw.bb10
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %or7 = or i32 %or, 196608
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %or9 = or i32 %or, 131072
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %or11 = or i32 %or, 65536
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb8, %sw.bb, %if.then.sw.epilog_crit_edge
  %tmp.1 = phi i32 [ %or, %if.then.sw.epilog_crit_edge ], [ %or11, %sw.bb10 ], [ %or9, %sw.bb8 ], [ %or7, %sw.bb ]
  %mul13 = shl i32 %index.020, 2
  %15 = tail call i32 @llvm.bswap.i32(i32 %tmp.1) #17
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %18 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_params, align 8
  %hfb_offset.i3 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %hfb_offset.i3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hfb_offset.i3, align 4
  %add.ptr.i4 = getelementptr i8, ptr %17, i32 %21
  %add.ptr1.i5 = getelementptr i8, ptr %add.ptr.i4, i32 %mul13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i5, i32 %15) #17, !srcloc !249
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec22)
  %tobool14.not = icmp eq i32 %dec22, 0
  br i1 %tobool14.not, label %sw.epilog.while.end_crit_edge, label %if.then15

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

if.then15:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %inc12 = add i32 %index.020, 1
  %mul16 = shl i32 %inc12, 2
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 8
  %24 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_params, align 8
  %hfb_offset.i7 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %hfb_offset.i7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hfb_offset.i7, align 4
  %add.ptr.i8 = getelementptr i8, ptr %23, i32 %27
  %add.ptr1.i9 = getelementptr i8, ptr %add.ptr.i8, i32 %mul16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i9) #17, !srcloc !248
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #17
  br label %if.end35

if.else:                                          ; preds = %while.body
  %and18 = and i32 %tmp.021, -851713
  %30 = ptrtoint ptr %val.addr.017 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %val.addr.017, align 1
  %conv20 = zext i8 %31 to i32
  %shl = shl nuw nsw i32 %conv20, 8
  %or21 = or i32 %shl, %and18
  %32 = ptrtoint ptr %mask.addr.018 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mask.addr.018, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %33, label %if.else.sw.epilog30_crit_edge [
    i8 -1, label %sw.bb24
    i8 -16, label %sw.bb26
    i8 15, label %sw.bb28
  ]

if.else.sw.epilog30_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog30

sw.bb24:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %or25 = or i32 %or21, 786432
  br label %sw.epilog30

sw.bb26:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %or27 = or i32 %or21, 524288
  br label %sw.epilog30

sw.bb28:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %or29 = or i32 %or21, 262144
  br label %sw.epilog30

sw.epilog30:                                      ; preds = %sw.bb28, %sw.bb26, %sw.bb24, %if.else.sw.epilog30_crit_edge
  %tmp.2 = phi i32 [ %or21, %if.else.sw.epilog30_crit_edge ], [ %or29, %sw.bb28 ], [ %or27, %sw.bb26 ], [ %or25, %sw.bb24 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec22)
  %tobool31.not = icmp eq i32 %dec22, 0
  br i1 %tobool31.not, label %if.then32, label %sw.epilog30.if.end35_crit_edge

sw.epilog30.if.end35_crit_edge:                   ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.then32:                                        ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #19
  %mul33 = shl i32 %index.020, 2
  %35 = tail call i32 @llvm.bswap.i32(i32 %tmp.2) #17
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  %38 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_params, align 8
  %hfb_offset.i11 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %hfb_offset.i11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hfb_offset.i11, align 4
  %add.ptr.i12 = getelementptr i8, ptr %37, i32 %41
  %add.ptr1.i13 = getelementptr i8, ptr %add.ptr.i12, i32 %mul33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i13, i32 %35) #17, !srcloc !249
  br label %while.end

if.end35:                                         ; preds = %sw.epilog30.if.end35_crit_edge, %if.then15
  %index.1 = phi i32 [ %inc12, %if.then15 ], [ %index.020, %sw.epilog30.if.end35_crit_edge ]
  %tmp.3 = phi i32 [ %29, %if.then15 ], [ %tmp.2, %sw.epilog30.if.end35_crit_edge ]
  %mask.addr.1 = getelementptr i8, ptr %mask.addr.018, i32 1
  %val.addr.1 = getelementptr i8, ptr %val.addr.017, i32 1
  br label %while.body

while.end:                                        ; preds = %if.then32, %sw.epilog.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_eee(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_eee_enable_set(ptr nocapture noundef %dev, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %hw_params = getelementptr i8, ptr %dev, i32 18488
  %0 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_params, align 8
  %tbuf_offset = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %tbuf_offset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tbuf_offset, align 4
  %conv = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv, 20
  br i1 %enable, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %clk_eee_enabled = getelementptr i8, ptr %dev, i32 18572
  %4 = ptrtoint ptr %clk_eee_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %clk_eee_enabled, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %clk_eee = getelementptr i8, ptr %dev, i32 18568
  %6 = ptrtoint ptr %clk_eee to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_eee, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.clk_prepare_enable.exit_crit_edge

if.then.clk_prepare_enable.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @clk_unprepare(ptr noundef %7) #17
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then.clk_prepare_enable.exit_crit_edge
  %8 = ptrtoint ptr %clk_eee_enabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %clk_eee_enabled, align 4
  br label %if.end

if.end:                                           ; preds = %clk_prepare_enable.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %masksel75 = phi i32 [ 3, %clk_prepare_enable.exit ], [ 3, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %masksel = phi i32 [ 8, %clk_prepare_enable.exit ], [ 8, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %10, i32 2148
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #17, !srcloc !248
  %12 = and i32 %11, -134217729
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %reg.0 = or i32 %13, %masksel
  %14 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #17
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i70 = getelementptr i8, ptr %16, i32 2148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i70, i32 %14) #17, !srcloc !249
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %18, i32 %add
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #17, !srcloc !248
  %20 = and i32 %19, -50331649
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %reg.1 = or i32 %21, %masksel75
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr17 = getelementptr i8, ptr %23, i32 %add
  %24 = tail call i32 @llvm.bswap.i32(i32 %reg.1) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %24) #17, !srcloc !249
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i72 = getelementptr i8, ptr %26, i32 924
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i72) #17, !srcloc !248
  %28 = and i32 %27, -50331649
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %reg.2 = or i32 %29, %masksel75
  %30 = tail call i32 @llvm.bswap.i32(i32 %reg.2) #17
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i74 = getelementptr i8, ptr %32, i32 924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i74, i32 %30) #17, !srcloc !249
  br i1 %enable, label %if.end.if.end33_crit_edge, label %land.lhs.true26

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33

land.lhs.true26:                                  ; preds = %if.end
  %clk_eee_enabled27 = getelementptr i8, ptr %dev, i32 18572
  %33 = ptrtoint ptr %clk_eee_enabled27 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %clk_eee_enabled27, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool28.not = icmp eq i8 %34, 0
  br i1 %tobool28.not, label %land.lhs.true26.if.end33_crit_edge, label %if.then30

land.lhs.true26.if.end33_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33

if.then30:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #19
  %clk_eee31 = getelementptr i8, ptr %dev, i32 18568
  %35 = ptrtoint ptr %clk_eee31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk_eee31, align 8
  tail call void @clk_disable(ptr noundef %36) #17
  tail call void @clk_unprepare(ptr noundef %36) #17
  %37 = ptrtoint ptr %clk_eee_enabled27 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %clk_eee_enabled27, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %land.lhs.true26.if.end33_crit_edge, %if.end.if.end33_crit_edge
  %conv35 = zext i1 %enable to i32
  %eee_enabled = getelementptr i8, ptr %dev, i32 19040
  %38 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv35, ptr %eee_enabled, align 4
  %eee_active = getelementptr i8, ptr %dev, i32 19036
  %39 = ptrtoint ptr %eee_active to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv35, ptr %eee_active, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_eee(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_eee(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %msg_enable = getelementptr i8, ptr %dev, i32 18708
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcmgenet_open.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcmgenet_open, %if.then6)) #17
          to label %do.end9 [label %if.then6], !srcloc !247

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcmgenet_open.__UNIQUE_ID_ddebug499, ptr noundef %dev, ptr noundef nonnull @.str.31) #17
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %clk = getelementptr i8, ptr %dev, i32 18712
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end9.clk_prepare_enable.exit_crit_edge

do.end9.clk_prepare_enable.exit_crit_edge:        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %do.end9
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @clk_unprepare(ptr noundef %3) #17
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %do.end9.clk_prepare_enable.exit_crit_edge
  %internal_phy = getelementptr i8, ptr %dev, i32 18548
  %4 = ptrtoint ptr %internal_phy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %internal_phy, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool11.not = icmp eq i8 %5, 0
  br i1 %tobool11.not, label %clk_prepare_enable.exit.if.end13_crit_edge, label %if.then12

clk_prepare_enable.exit.if.end13_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then12:                                        ; preds = %clk_prepare_enable.exit
  %hw_params.i = getelementptr i8, ptr %dev, i32 18488
  %6 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_params.i, align 8
  %flags.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i100 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i100, label %if.then12.if.end13_crit_edge, label %if.end.i101

if.then12.if.end13_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.end.i101:                                      ; preds = %if.then12
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 128
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !248
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #17
  %version.i = getelementptr i8, ptr %dev, i32 2308
  %14 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp.i = icmp eq i32 %15, 5
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i101.if.else.i_crit_edge

if.end.i101.if.else.i_crit_edge:                  ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i101
  %ephy_16nm.i = getelementptr i8, ptr %dev, i32 18588
  %16 = ptrtoint ptr %ephy_16nm.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ephy_16nm.i, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool2.not.i102 = icmp eq i8 %17, 0
  br i1 %tobool2.not.i102, label %if.then3.i103, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

if.then3.i103:                                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %and4.i = and i32 %13, -2036100
  %or.i = or i32 %and4.i, 256
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i) #17
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i35.i = getelementptr i8, ptr %20, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 %18) #17, !srcloc !249
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #17
  br label %if.end8.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i101.if.else.i_crit_edge
  %and6.i = and i32 %13, -4112
  %or7.i = or i32 %and6.i, 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then3.i103
  %reg.0.i = phi i32 [ %or7.i, %if.else.i ], [ %and4.i, %if.then3.i103 ]
  %22 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #17
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i36.i = getelementptr i8, ptr %24, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 %22) #17, !srcloc !249
  %dev.i = getelementptr i8, ptr %dev, i32 2312
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 8
  tail call void @bcmgenet_phy_power_set(ptr noundef %26, i1 noundef zeroext true) #17
  br label %if.end13

if.end13:                                         ; preds = %if.end8.i, %if.then12.if.end13_crit_edge, %clk_prepare_enable.exit.if.end13_crit_edge
  %version.i.i = getelementptr i8, ptr %dev, i32 2308
  %27 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i.i = icmp eq i32 %28, 1
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 8
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr1.i.i.i = getelementptr i8, ptr %30, i32 772
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #17, !srcloc !248
  br label %bcmgenet_rbuf_ctrl_get.exit.i

if.else.i.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr1.i4.i.i = getelementptr i8, ptr %30, i32 8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i4.i.i) #17, !srcloc !248
  br label %bcmgenet_rbuf_ctrl_get.exit.i

bcmgenet_rbuf_ctrl_get.exit.i:                    ; preds = %if.else.i.i, %if.then.i.i
  %.sink.i.i = phi i32 [ %32, %if.else.i.i ], [ %31, %if.then.i.i ]
  %33 = tail call i32 @llvm.bswap.i32(i32 %.sink.i.i) #17
  %or.i104 = or i32 %33, 2
  %34 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.i7.i = icmp eq i32 %35, 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %or.i104) #17
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 8
  br i1 %cmp.i7.i, label %if.then.i9.i, label %if.else.i11.i

if.then.i9.i:                                     ; preds = %bcmgenet_rbuf_ctrl_get.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr1.i.i8.i = getelementptr i8, ptr %38, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i8.i, i32 %36) #17, !srcloc !249
  br label %bcmgenet_rbuf_ctrl_set.exit.i

if.else.i11.i:                                    ; preds = %bcmgenet_rbuf_ctrl_get.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr1.i4.i10.i = getelementptr i8, ptr %38, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i4.i10.i, i32 %36) #17, !srcloc !249
  br label %bcmgenet_rbuf_ctrl_set.exit.i

bcmgenet_rbuf_ctrl_set.exit.i:                    ; preds = %if.else.i11.i, %if.then.i9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 2147480) #17
  %and.i105 = and i32 %33, -3
  %40 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp.i13.i = icmp eq i32 %41, 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %and.i105) #17
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 8
  br i1 %cmp.i13.i, label %if.then.i15.i, label %if.else.i17.i

if.then.i15.i:                                    ; preds = %bcmgenet_rbuf_ctrl_set.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr1.i.i14.i = getelementptr i8, ptr %44, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i14.i, i32 %42) #17, !srcloc !249
  br label %bcmgenet_umac_reset.exit

if.else.i17.i:                                    ; preds = %bcmgenet_rbuf_ctrl_set.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr1.i4.i16.i = getelementptr i8, ptr %44, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i4.i16.i, i32 %42) #17, !srcloc !249
  br label %bcmgenet_umac_reset.exit

bcmgenet_umac_reset.exit:                         ; preds = %if.else.i17.i, %if.then.i15.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 2147480) #17
  tail call fastcc void @init_umac(ptr noundef %add.ptr.i)
  %46 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk, align 8
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %47) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %bcmgenet_umac_reset.exit.bcmgenet_set_features.exit_crit_edge

bcmgenet_umac_reset.exit.bcmgenet_set_features.exit_crit_edge: ; preds = %bcmgenet_umac_reset.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_set_features.exit

if.end.i.i:                                       ; preds = %bcmgenet_umac_reset.exit
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %47) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i107, label %if.end.i.i.cleanup.sink.split.i_crit_edge

if.end.i.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.i

if.end.i107:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %49, i32 2056
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #17, !srcloc !248
  %crc_fwd_en.i = getelementptr i8, ptr %dev, i32 18700
  %sum.shift.i = lshr i32 %50, 30
  %51 = trunc i32 %sum.shift.i to i8
  %52 = and i8 %51, 1
  %53 = ptrtoint ptr %crc_fwd_en.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %crc_fwd_en.i, align 4
  %54 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %55) #17
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end.i107, %if.end.i.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %55, %if.end.i107 ], [ %47, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink.i) #17
  br label %bcmgenet_set_features.exit

bcmgenet_set_features.exit:                       ; preds = %cleanup.sink.split.i, %bcmgenet_umac_reset.exit.bcmgenet_set_features.exit_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %56 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_addr, align 64
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %57, align 1
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #17
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i.i108 = getelementptr i8, ptr %62, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i108, i32 %60) #17, !srcloc !249
  %arrayidx1.i = getelementptr i8, ptr %57, i32 4
  %63 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %arrayidx1.i, align 1
  %conv.i = zext i16 %64 to i32
  %65 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #17
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i6.i = getelementptr i8, ptr %67, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i6.i, i32 %65) #17, !srcloc !249
  %call15 = tail call fastcc i32 @bcmgenet_dma_disable(ptr noundef %add.ptr.i)
  %call16 = tail call fastcc i32 @bcmgenet_init_dma(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %bcmgenet_set_features.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #20
  br label %err_clk_disable

if.end19:                                         ; preds = %bcmgenet_set_features.exit
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i, align 8
  %hw_params.i.i = getelementptr i8, ptr %dev, i32 18488
  %70 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw_params.i.i, align 8
  %rdma_offset.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %71, i32 0, i32 12
  %72 = ptrtoint ptr %rdma_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rdma_offset.i.i, align 4
  %words_per_bd.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %71, i32 0, i32 14
  %74 = ptrtoint ptr %words_per_bd.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %words_per_bd.i.i, align 4
  %mul2.i.i = shl i32 %75, 10
  %add.i.i = add i32 %mul2.i.i, %73
  %add.ptr.i.i109 = getelementptr i8, ptr %69, i32 %add.i.i
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr.i.i109, i32 1088
  %76 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i.i = getelementptr i8, ptr %76, i32 1
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %78 to i32
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr3.i.i, i32 %conv.i.i
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #17, !srcloc !248
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #17
  %or.i110 = or i32 %80, %call15
  %81 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr.i, align 8
  %83 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw_params.i.i, align 8
  %rdma_offset.i11.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %84, i32 0, i32 12
  %85 = ptrtoint ptr %rdma_offset.i11.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rdma_offset.i11.i, align 4
  %words_per_bd.i12.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %84, i32 0, i32 14
  %87 = ptrtoint ptr %words_per_bd.i12.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %words_per_bd.i12.i, align 4
  %mul2.i13.i = shl i32 %88, 10
  %add.i14.i = add i32 %mul2.i13.i, %86
  %add.ptr.i15.i = getelementptr i8, ptr %82, i32 %add.i14.i
  %add.ptr3.i16.i = getelementptr i8, ptr %add.ptr.i15.i, i32 1088
  %89 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i17.i = getelementptr i8, ptr %89, i32 1
  %90 = ptrtoint ptr %arrayidx.i17.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.i17.i, align 1
  %conv.i18.i = zext i8 %91 to i32
  %add.ptr4.i19.i = getelementptr i8, ptr %add.ptr3.i16.i, i32 %conv.i18.i
  %92 = tail call i32 @llvm.bswap.i32(i32 %or.i110) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i19.i, i32 %92) #17, !srcloc !249
  %93 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr.i, align 8
  %95 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hw_params.i.i, align 8
  %tdma_offset.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %96, i32 0, i32 13
  %97 = ptrtoint ptr %tdma_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tdma_offset.i.i, align 4
  %words_per_bd.i21.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %96, i32 0, i32 14
  %99 = ptrtoint ptr %words_per_bd.i21.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %words_per_bd.i21.i, align 4
  %mul2.i22.i = shl i32 %100, 10
  %add.i23.i = add i32 %mul2.i22.i, %98
  %add.ptr.i24.i = getelementptr i8, ptr %94, i32 %add.i23.i
  %add.ptr3.i25.i = getelementptr i8, ptr %add.ptr.i24.i, i32 1088
  %101 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i26.i = getelementptr i8, ptr %101, i32 1
  %102 = ptrtoint ptr %arrayidx.i26.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.i26.i, align 1
  %conv.i27.i = zext i8 %103 to i32
  %add.ptr4.i28.i = getelementptr i8, ptr %add.ptr3.i25.i, i32 %conv.i27.i
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i28.i) #17, !srcloc !248
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #17
  %or2.i = or i32 %105, %call15
  %106 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %add.ptr.i, align 8
  %108 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hw_params.i.i, align 8
  %tdma_offset.i30.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %109, i32 0, i32 13
  %110 = ptrtoint ptr %tdma_offset.i30.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tdma_offset.i30.i, align 4
  %words_per_bd.i31.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %109, i32 0, i32 14
  %112 = ptrtoint ptr %words_per_bd.i31.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %words_per_bd.i31.i, align 4
  %mul2.i32.i = shl i32 %113, 10
  %add.i33.i = add i32 %mul2.i32.i, %111
  %add.ptr.i34.i = getelementptr i8, ptr %107, i32 %add.i33.i
  %add.ptr3.i35.i = getelementptr i8, ptr %add.ptr.i34.i, i32 1088
  %114 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i36.i = getelementptr i8, ptr %114, i32 1
  %115 = ptrtoint ptr %arrayidx.i36.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.i36.i, align 1
  %conv.i37.i = zext i8 %116 to i32
  %add.ptr4.i38.i = getelementptr i8, ptr %add.ptr3.i35.i, i32 %conv.i37.i
  %117 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i38.i, i32 %117) #17, !srcloc !249
  %rxnfc_list.i = getelementptr i8, ptr %dev, i32 11000
  %118 = ptrtoint ptr %rxnfc_list.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %rxnfc_list.i, ptr %rxnfc_list.i, align 4
  %prev.i.i = getelementptr i8, ptr %dev, i32 11004
  %119 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %rxnfc_list.i, ptr %prev.i.i, align 4
  %120 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %version.i.i, align 4
  %.off.i = add i32 %121, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end19.bcmgenet_hfb_init.exit_crit_edge, label %for.body.preheader.i

if.end19.bcmgenet_hfb_init.exit_crit_edge:        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_hfb_init.exit

for.body.preheader.i:                             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr i8, ptr %dev, i32 8056
  %122 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %arrayidx.i, ptr %arrayidx.i, align 4
  %prev.i14.i = getelementptr i8, ptr %dev, i32 8060
  %123 = ptrtoint ptr %prev.i14.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %arrayidx.i, ptr %prev.i14.i, align 4
  %state.i = getelementptr i8, ptr %dev, i32 8232
  %124 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %state.i, align 8
  %arrayidx.1.i = getelementptr i8, ptr %dev, i32 8240
  %125 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %arrayidx.1.i, ptr %arrayidx.1.i, align 4
  %prev.i14.1.i = getelementptr i8, ptr %dev, i32 8244
  %126 = ptrtoint ptr %prev.i14.1.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %arrayidx.1.i, ptr %prev.i14.1.i, align 4
  %state.1.i = getelementptr i8, ptr %dev, i32 8416
  %127 = ptrtoint ptr %state.1.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %state.1.i, align 8
  %arrayidx.2.i = getelementptr i8, ptr %dev, i32 8424
  %128 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %arrayidx.2.i, ptr %arrayidx.2.i, align 4
  %prev.i14.2.i = getelementptr i8, ptr %dev, i32 8428
  %129 = ptrtoint ptr %prev.i14.2.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %arrayidx.2.i, ptr %prev.i14.2.i, align 4
  %state.2.i = getelementptr i8, ptr %dev, i32 8600
  %130 = ptrtoint ptr %state.2.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %state.2.i, align 8
  %arrayidx.3.i = getelementptr i8, ptr %dev, i32 8608
  %131 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %arrayidx.3.i, ptr %arrayidx.3.i, align 4
  %prev.i14.3.i = getelementptr i8, ptr %dev, i32 8612
  %132 = ptrtoint ptr %prev.i14.3.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %arrayidx.3.i, ptr %prev.i14.3.i, align 4
  %state.3.i = getelementptr i8, ptr %dev, i32 8784
  %133 = ptrtoint ptr %state.3.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %state.3.i, align 8
  %arrayidx.4.i = getelementptr i8, ptr %dev, i32 8792
  %134 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %arrayidx.4.i, ptr %arrayidx.4.i, align 4
  %prev.i14.4.i = getelementptr i8, ptr %dev, i32 8796
  %135 = ptrtoint ptr %prev.i14.4.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %arrayidx.4.i, ptr %prev.i14.4.i, align 4
  %state.4.i = getelementptr i8, ptr %dev, i32 8968
  %136 = ptrtoint ptr %state.4.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %state.4.i, align 8
  %arrayidx.5.i = getelementptr i8, ptr %dev, i32 8976
  %137 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %arrayidx.5.i, ptr %arrayidx.5.i, align 4
  %prev.i14.5.i = getelementptr i8, ptr %dev, i32 8980
  %138 = ptrtoint ptr %prev.i14.5.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %arrayidx.5.i, ptr %prev.i14.5.i, align 4
  %state.5.i = getelementptr i8, ptr %dev, i32 9152
  %139 = ptrtoint ptr %state.5.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %state.5.i, align 8
  %arrayidx.6.i = getelementptr i8, ptr %dev, i32 9160
  %140 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %arrayidx.6.i, ptr %arrayidx.6.i, align 4
  %prev.i14.6.i = getelementptr i8, ptr %dev, i32 9164
  %141 = ptrtoint ptr %prev.i14.6.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %arrayidx.6.i, ptr %prev.i14.6.i, align 4
  %state.6.i = getelementptr i8, ptr %dev, i32 9336
  %142 = ptrtoint ptr %state.6.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %state.6.i, align 8
  %arrayidx.7.i = getelementptr i8, ptr %dev, i32 9344
  %143 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %arrayidx.7.i, ptr %arrayidx.7.i, align 4
  %prev.i14.7.i = getelementptr i8, ptr %dev, i32 9348
  %144 = ptrtoint ptr %prev.i14.7.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %arrayidx.7.i, ptr %prev.i14.7.i, align 4
  %state.7.i = getelementptr i8, ptr %dev, i32 9520
  %145 = ptrtoint ptr %state.7.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %state.7.i, align 8
  %arrayidx.8.i = getelementptr i8, ptr %dev, i32 9528
  %146 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %arrayidx.8.i, ptr %arrayidx.8.i, align 4
  %prev.i14.8.i = getelementptr i8, ptr %dev, i32 9532
  %147 = ptrtoint ptr %prev.i14.8.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %arrayidx.8.i, ptr %prev.i14.8.i, align 4
  %state.8.i = getelementptr i8, ptr %dev, i32 9704
  %148 = ptrtoint ptr %state.8.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %state.8.i, align 8
  %arrayidx.9.i = getelementptr i8, ptr %dev, i32 9712
  %149 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %arrayidx.9.i, ptr %arrayidx.9.i, align 4
  %prev.i14.9.i = getelementptr i8, ptr %dev, i32 9716
  %150 = ptrtoint ptr %prev.i14.9.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %arrayidx.9.i, ptr %prev.i14.9.i, align 4
  %state.9.i = getelementptr i8, ptr %dev, i32 9888
  %151 = ptrtoint ptr %state.9.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %state.9.i, align 8
  %arrayidx.10.i = getelementptr i8, ptr %dev, i32 9896
  %152 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr %arrayidx.10.i, ptr %arrayidx.10.i, align 4
  %prev.i14.10.i = getelementptr i8, ptr %dev, i32 9900
  %153 = ptrtoint ptr %prev.i14.10.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %arrayidx.10.i, ptr %prev.i14.10.i, align 4
  %state.10.i = getelementptr i8, ptr %dev, i32 10072
  %154 = ptrtoint ptr %state.10.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %state.10.i, align 8
  %arrayidx.11.i = getelementptr i8, ptr %dev, i32 10080
  %155 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %arrayidx.11.i, ptr %arrayidx.11.i, align 4
  %prev.i14.11.i = getelementptr i8, ptr %dev, i32 10084
  %156 = ptrtoint ptr %prev.i14.11.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %arrayidx.11.i, ptr %prev.i14.11.i, align 4
  %state.11.i = getelementptr i8, ptr %dev, i32 10256
  %157 = ptrtoint ptr %state.11.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %state.11.i, align 8
  %arrayidx.12.i = getelementptr i8, ptr %dev, i32 10264
  %158 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile ptr %arrayidx.12.i, ptr %arrayidx.12.i, align 4
  %prev.i14.12.i = getelementptr i8, ptr %dev, i32 10268
  %159 = ptrtoint ptr %prev.i14.12.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %arrayidx.12.i, ptr %prev.i14.12.i, align 4
  %state.12.i = getelementptr i8, ptr %dev, i32 10440
  %160 = ptrtoint ptr %state.12.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %state.12.i, align 8
  %arrayidx.13.i = getelementptr i8, ptr %dev, i32 10448
  %161 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile ptr %arrayidx.13.i, ptr %arrayidx.13.i, align 4
  %prev.i14.13.i = getelementptr i8, ptr %dev, i32 10452
  %162 = ptrtoint ptr %prev.i14.13.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %arrayidx.13.i, ptr %prev.i14.13.i, align 4
  %state.13.i = getelementptr i8, ptr %dev, i32 10624
  %163 = ptrtoint ptr %state.13.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %state.13.i, align 8
  %arrayidx.14.i = getelementptr i8, ptr %dev, i32 10632
  %164 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile ptr %arrayidx.14.i, ptr %arrayidx.14.i, align 4
  %prev.i14.14.i = getelementptr i8, ptr %dev, i32 10636
  %165 = ptrtoint ptr %prev.i14.14.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %arrayidx.14.i, ptr %prev.i14.14.i, align 4
  %state.14.i = getelementptr i8, ptr %dev, i32 10808
  %166 = ptrtoint ptr %state.14.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %state.14.i, align 8
  %arrayidx.15.i = getelementptr i8, ptr %dev, i32 10816
  %167 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store volatile ptr %arrayidx.15.i, ptr %arrayidx.15.i, align 4
  %prev.i14.15.i = getelementptr i8, ptr %dev, i32 10820
  %168 = ptrtoint ptr %prev.i14.15.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %arrayidx.15.i, ptr %prev.i14.15.i, align 4
  %state.15.i = getelementptr i8, ptr %dev, i32 10992
  %169 = ptrtoint ptr %state.15.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %state.15.i, align 8
  tail call fastcc void @bcmgenet_hfb_clear(ptr noundef %add.ptr.i) #17
  br label %bcmgenet_hfb_init.exit

bcmgenet_hfb_init.exit:                           ; preds = %for.body.preheader.i, %if.end19.bcmgenet_hfb_init.exit_crit_edge
  %irq0 = getelementptr i8, ptr %dev, i32 18636
  %170 = ptrtoint ptr %irq0 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %irq0, align 4
  %call.i112 = tail call i32 @request_threaded_irq(i32 noundef %171, ptr noundef nonnull @bcmgenet_isr0, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %cmp = icmp slt i32 %call.i112, 0
  br i1 %cmp, label %if.then21, label %if.end23

if.then21:                                        ; preds = %bcmgenet_hfb_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  %172 = ptrtoint ptr %irq0 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %irq0, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %173) #20
  br label %err_fini_dma

if.end23:                                         ; preds = %bcmgenet_hfb_init.exit
  %irq1 = getelementptr i8, ptr %dev, i32 18640
  %174 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %irq1, align 8
  %call.i113 = tail call i32 @request_threaded_irq(i32 noundef %175, ptr noundef nonnull @bcmgenet_isr1, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %cmp27 = icmp slt i32 %call.i113, 0
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  %176 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %irq1, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %177) #20
  br label %err_irq0

if.end30:                                         ; preds = %if.end23
  %call31 = tail call i32 @bcmgenet_mii_probe(ptr noundef %dev) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #20
  %178 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %irq1, align 8
  %call42 = tail call ptr @free_irq(i32 noundef %179, ptr noundef %add.ptr.i) #17
  br label %err_irq0

if.end34:                                         ; preds = %if.end30
  %rx_pause = getelementptr i8, ptr %dev, i32 18492
  %180 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load1_noabort(i32 %180)
  %bf.load = load i8, ptr %rx_pause, align 4
  %181 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool35 = icmp ne i8 %181, 0
  %182 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool40 = icmp ne i8 %182, 0
  tail call void @bcmgenet_phy_pause_set(ptr noundef %dev, i1 noundef zeroext %tobool35, i1 noundef zeroext %tobool40) #17
  tail call fastcc void @bcmgenet_netif_start(ptr noundef %dev)
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %183 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp4.not.i = icmp eq i32 %184, 0
  br i1 %cmp4.not.i, label %if.end34.cleanup_crit_edge, label %for.body.lr.ph.i

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end34
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %185 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %186, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #17
  %inc.i = add nuw i32 %i.05.i, 1
  %187 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i114 = icmp ult i32 %inc.i, %188
  br i1 %cmp.i114, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

err_irq0:                                         ; preds = %if.then33, %if.then28
  %ret.0 = phi i32 [ %call.i113, %if.then28 ], [ %call31, %if.then33 ]
  %189 = ptrtoint ptr %irq0 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %irq0, align 4
  %call44 = tail call ptr @free_irq(i32 noundef %190, ptr noundef %add.ptr.i) #17
  br label %err_fini_dma

err_fini_dma:                                     ; preds = %err_irq0, %if.then21
  %ret.1 = phi i32 [ %call.i112, %if.then21 ], [ %ret.0, %err_irq0 ]
  tail call fastcc void @bcmgenet_dma_teardown(ptr noundef %add.ptr.i)
  tail call fastcc void @bcmgenet_fini_dma(ptr noundef %add.ptr.i)
  br label %err_clk_disable

err_clk_disable:                                  ; preds = %err_fini_dma, %if.then18
  %ret.2 = phi i32 [ %call16, %if.then18 ], [ %ret.1, %err_fini_dma ]
  %191 = ptrtoint ptr %internal_phy to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %internal_phy, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool47.not = icmp eq i8 %192, 0
  br i1 %tobool47.not, label %err_clk_disable.if.end50_crit_edge, label %if.then48

err_clk_disable.if.end50_crit_edge:               ; preds = %err_clk_disable
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

if.then48:                                        ; preds = %err_clk_disable
  %hw_params.i115 = getelementptr i8, ptr %dev, i32 18488
  %193 = ptrtoint ptr %hw_params.i115 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %hw_params.i115, align 8
  %flags.i116 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %194, i32 0, i32 15
  %195 = ptrtoint ptr %flags.i116 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %flags.i116, align 4
  %and.i117 = and i32 %196, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i117)
  %tobool.not.i118 = icmp eq i32 %and.i117, 0
  br i1 %tobool.not.i118, label %if.then48.if.end50_crit_edge, label %if.then.i

if.then48.if.end50_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end50

if.then.i:                                        ; preds = %if.then48
  %197 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i119 = getelementptr i8, ptr %198, i32 128
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i119) #17, !srcloc !248
  %200 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %201)
  %cmp.i121 = icmp eq i32 %201, 5
  br i1 %cmp.i121, label %land.lhs.true.i123, label %if.then.i.if.else.i124_crit_edge

if.then.i.if.else.i124_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i124

land.lhs.true.i123:                               ; preds = %if.then.i
  %ephy_16nm.i122 = getelementptr i8, ptr %dev, i32 18588
  %202 = ptrtoint ptr %ephy_16nm.i122 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %ephy_16nm.i122, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool4.not.i = icmp eq i8 %203, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i123.if.end.i127_crit_edge, label %land.lhs.true.i123.if.else.i124_crit_edge

land.lhs.true.i123.if.else.i124_crit_edge:        ; preds = %land.lhs.true.i123
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i124

land.lhs.true.i123.if.end.i127_crit_edge:         ; preds = %land.lhs.true.i123
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i127

if.else.i124:                                     ; preds = %land.lhs.true.i123.if.else.i124_crit_edge, %if.then.i.if.else.i124_crit_edge
  br label %if.end.i127

if.end.i127:                                      ; preds = %if.else.i124, %land.lhs.true.i123.if.end.i127_crit_edge
  %.sink.i125 = phi i32 [ 4, %if.else.i124 ], [ 2031744, %land.lhs.true.i123.if.end.i127_crit_edge ]
  %204 = or i32 %199, 50331648
  %205 = call i32 @llvm.bswap.i32(i32 %204)
  %or7.i126 = or i32 %205, %.sink.i125
  %206 = tail call i32 @llvm.bswap.i32(i32 %or7.i126) #17
  %207 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %208, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %206) #17, !srcloc !249
  %dev8.i = getelementptr i8, ptr %dev, i32 2312
  %209 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev8.i, align 8
  tail call void @bcmgenet_phy_power_set(ptr noundef %210, i1 noundef zeroext false) #17
  br label %if.end50

if.end50:                                         ; preds = %if.end.i127, %if.then48.if.end50_crit_edge, %err_clk_disable.if.end50_crit_edge
  %211 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %212) #17
  tail call void @clk_unprepare(ptr noundef %212) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %for.body.i.cleanup_crit_edge, %if.end34.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %if.end50 ], [ 0, %if.end34.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %msg_enable = getelementptr i8, ptr %dev, i32 18708
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcmgenet_close.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcmgenet_close, %if.then6)) #17
          to label %do.end9 [label %if.then6], !srcloc !247

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcmgenet_close.__UNIQUE_ID_ddebug500, ptr noundef %dev, ptr noundef nonnull @.str.63) #17
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  tail call fastcc void @bcmgenet_netif_stop(ptr noundef %dev)
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %3) #17
  %irq0 = getelementptr i8, ptr %dev, i32 18636
  %4 = ptrtoint ptr %irq0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq0, align 4
  %call10 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %add.ptr.i) #17
  %irq1 = getelementptr i8, ptr %dev, i32 18640
  %6 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq1, align 8
  %call11 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %add.ptr.i) #17
  %internal_phy = getelementptr i8, ptr %dev, i32 18548
  %8 = ptrtoint ptr %internal_phy to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %internal_phy, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %do.end9.if.end15_crit_edge, label %if.then13

do.end9.if.end15_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.then13:                                        ; preds = %do.end9
  %hw_params.i = getelementptr i8, ptr %dev, i32 18488
  %10 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_params.i, align 8
  %flags.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then13.if.end15_crit_edge, label %if.then.i

if.then13.if.end15_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.then.i:                                        ; preds = %if.then13
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 128
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !248
  %version.i = getelementptr i8, ptr %dev, i32 2308
  %17 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %18)
  %cmp.i = icmp eq i32 %18, 5
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.i.if.else.i_crit_edge

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %ephy_16nm.i = getelementptr i8, ptr %dev, i32 18588
  %19 = ptrtoint ptr %ephy_16nm.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ephy_16nm.i, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool4.not.i = icmp eq i8 %20, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %land.lhs.true.i.if.end.i_crit_edge
  %.sink.i = phi i32 [ 4, %if.else.i ], [ 2031744, %land.lhs.true.i.if.end.i_crit_edge ]
  %21 = or i32 %16, 50331648
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %or7.i = or i32 %22, %.sink.i
  %23 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #17
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %25, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %23) #17, !srcloc !249
  %dev8.i = getelementptr i8, ptr %dev, i32 2312
  %26 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev8.i, align 8
  tail call void @bcmgenet_phy_power_set(ptr noundef %27, i1 noundef zeroext false) #17
  br label %if.end15

if.end15:                                         ; preds = %if.end.i, %if.then13.if.end15_crit_edge, %do.end9.if.end15_crit_edge
  %clk = getelementptr i8, ptr %dev, i32 18712
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %29) #17
  tail call void @clk_unprepare(ptr noundef %29) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pdev = getelementptr i8, ptr %dev, i32 18716
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %2 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_mapping.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  %conv = zext i16 %3 to i32
  %sub = add nsw i32 %conv, -1
  %index.0 = select i1 %cmp, i32 16, i32 %sub
  %arrayidx = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %index.0
  %queue = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %index.0, i32 5
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i, align 128
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %nr_frags6 = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %nr_frags6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nr_frags6, align 2
  %conv7 = zext i8 %11 to i32
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #17
  %free_bds = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %index.0, i32 10
  %12 = ptrtoint ptr %free_bds to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %free_bds, align 8
  %add = add nuw nsw i32 %conv7, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add)
  %cmp8.not = icmp ugt i32 %13, %add
  br i1 %cmp8.not, label %if.end15, label %if.then10

if.then10:                                        ; preds = %entry
  %state.i186 = getelementptr %struct.netdev_queue, ptr %7, i32 %5, i32 13
  %14 = ptrtoint ptr %state.i186 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i186, align 4
  %and1.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then12, label %if.then10.out_crit_edge

if.then10.out_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i186) #17
  %16 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %queue, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.bcmgenet_xmit, i32 noundef %index.0, i32 noundef %17) #20
  br label %out

if.end15:                                         ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %bytes_sent = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %bytes_sent to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %bytes_sent, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i.i, 64
  br i1 %cmp.i, label %if.then.i, label %if.end15.if.end9.i_crit_edge, !prof !251

if.end15.if.end9.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9.i

if.then.i:                                        ; preds = %if.end15
  %call3.i = tail call ptr @skb_realloc_headroom(ptr noundef %skb, i32 noundef 64) #17
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %bcmgenet_add_tsb.exit.thread, label %if.end.i

bcmgenet_add_tsb.exit.thread:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #17
  %tx_realloc_tsb_failed.i = getelementptr i8, ptr %dev, i32 19016
  %25 = ptrtoint ptr %tx_realloc_tsb_failed.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_realloc_tsb_failed.i, align 4
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %tx_realloc_tsb_failed.i, align 4
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %27 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_dropped.i, align 4
  %inc6.i = add i32 %28, 1
  store i32 %inc6.i, ptr %tx_dropped.i, align 4
  br label %out

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #17
  %tx_realloc_tsb.i = getelementptr i8, ptr %dev, i32 19012
  %29 = ptrtoint ptr %tx_realloc_tsb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_realloc_tsb.i, align 4
  %inc8.i = add i32 %30, 1
  store i32 %inc8.i, ptr %tx_realloc_tsb.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i, %if.end15.if.end9.i_crit_edge
  %skb.addr.0.i = phi ptr [ %call3.i, %if.end.i ], [ %skb, %if.end15.if.end9.i_crit_edge ]
  %call10.i = tail call ptr @skb_push(ptr noundef %skb.addr.0.i, i32 noundef 64) #17
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 19
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i, align 4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15
  %33 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %34 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %34)
  %cmp11.i = icmp eq i16 %34, 1536
  br i1 %cmp11.i, label %if.then13.i, label %if.end9.i.bcmgenet_add_tsb.exit_crit_edge

if.end9.i.bcmgenet_add_tsb.exit_crit_edge:        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_add_tsb.exit

if.then13.i:                                      ; preds = %if.end9.i
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 18
  %35 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %protocol.i, align 8
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.143)
  switch i16 %36, label %if.then13.i.sw.epilog.i_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb17.i
  ]

if.then13.i.sw.epilog.i_crit_edge:                ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #19
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
  %protocol16.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %42 = ptrtoint ptr %protocol16.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %protocol16.i, align 1
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #19
  %head.i.i56.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 18
  %44 = ptrtoint ptr %head.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %head.i.i56.i, align 8
  %network_header.i.i57.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 20
  %46 = ptrtoint ptr %network_header.i.i57.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %network_header.i.i57.i, align 4
  %conv.i.i58.i = zext i16 %47 to i32
  %add.ptr.i.i59.i = getelementptr i8, ptr %45, i32 %conv.i.i58.i
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i59.i, i32 0, i32 3
  %48 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %nexthdr.i, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb17.i, %sw.bb.i, %if.then13.i.sw.epilog.i_crit_edge
  %ip_proto.0.i = phi i8 [ %49, %sw.bb17.i ], [ %43, %sw.bb.i ], [ 0, %if.then13.i.sw.epilog.i_crit_edge ]
  %50 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 5
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %50, align 8
  %conv.i.i = zext i16 %52 to i32
  %head.i.i60.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 18
  %53 = ptrtoint ptr %head.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head.i.i60.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %54 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 65472, %sub.ptr.lhs.cast.i.i.i
  %sub.i.i = add i32 %sub.ptr.sub.i.neg.i.i, %conv.i.i
  %conv20.i = add i32 %sub.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv21.i = and i32 %conv20.i, 65535
  %shl.i = shl i32 %conv20.i, 16
  %csum_offset.i = getelementptr inbounds %struct.anon.60, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %csum_offset.i, align 2
  %conv23.i = zext i16 %56 to i32
  %add.i = add nuw nsw i32 %conv21.i, %conv23.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %ip_proto.0.i)
  %cmp26.i = icmp eq i8 %ip_proto.0.i, 17
  %spec.select297 = select i1 %cmp26.i, i32 -2147450880, i32 -2147483648
  %or.i = or i32 %shl.i, %spec.select297
  %spec.select.i = or i32 %or.i, %add.i
  %tx_csum_info31.i = getelementptr inbounds %struct.status_64, ptr %32, i32 0, i32 4
  %57 = ptrtoint ptr %tx_csum_info31.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %spec.select.i, ptr %tx_csum_info31.i, align 4
  br label %bcmgenet_add_tsb.exit

bcmgenet_add_tsb.exit:                            ; preds = %sw.epilog.i, %if.end9.i.bcmgenet_add_tsb.exit_crit_edge
  %tobool.not = icmp eq ptr %skb.addr.0.i, null
  br i1 %tobool.not, label %bcmgenet_add_tsb.exit.out_crit_edge, label %for.cond.preheader

bcmgenet_add_tsb.exit.out_crit_edge:              ; preds = %bcmgenet_add_tsb.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

for.cond.preheader:                               ; preds = %bcmgenet_add_tsb.exit
  %cbs.i = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %arrayidx, i32 0, i32 6
  %write_ptr.i = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %arrayidx, i32 0, i32 11
  %cb_ptr.i = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %arrayidx, i32 0, i32 13
  %end_ptr.i = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %arrayidx, i32 0, i32 14
  %end.i195 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 17
  %cb36 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 3
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 6
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 7
  %hw_params = getelementptr i8, ptr %dev, i32 18488
  br label %for.body

for.body:                                         ; preds = %if.end69.for.body_crit_edge, %for.cond.preheader
  %i.0280 = phi i32 [ 0, %for.cond.preheader ], [ %inc75, %if.end69.for.body_crit_edge ]
  %58 = ptrtoint ptr %cbs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cbs.i, align 8
  %60 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %write_ptr.i, align 4
  %62 = ptrtoint ptr %cb_ptr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cb_ptr.i, align 4
  %64 = ptrtoint ptr %end_ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %end_ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %65)
  %cmp.i187 = icmp eq i32 %61, %65
  %inc.i188 = add i32 %61, 1
  %storemerge.i = select i1 %cmp.i187, i32 %63, i32 %inc.i188
  %66 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %storemerge.i, ptr %write_ptr.i, align 4
  %sub.i = sub i32 %61, %63
  %add.ptr.i189 = getelementptr %struct.enet_cb, ptr %59, i32 %sub.i
  %tobool22.not = icmp eq ptr %add.ptr.i189, null
  br i1 %tobool22.not, label %do.body27, label %do.end33, !prof !251

do.body27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/broadcom/genet/bcmgenet.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2098, 0\0A.popsection", ""() #17, !srcloc !252
  unreachable

do.end33:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0280)
  %tobool34.not = icmp eq i32 %i.0280, 0
  br i1 %tobool34.not, label %if.then35, label %if.else40

if.then35:                                        ; preds = %do.end33
  %67 = ptrtoint ptr %cb36 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr.i189, ptr %cb36, align 8
  %68 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len.i, align 4
  %70 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %data_len.i, align 8
  %72 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %73) #17
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then35
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end46.thread_crit_edge, label %if.then.i191, !prof !253

land.rhs.i.if.end46.thread_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46.thread

if.then.i191:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev1) #17
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 3
  %74 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i191.dev_name.exit.i_crit_edge

if.then.i191.dev_name.exit.i_crit_edge:           ; preds = %if.then.i191
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i191
  call void @__sanitizer_cov_trace_pc() #19
  %76 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i191.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %77, %if.end.i.i ], [ %75, %if.then.i191.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #17
  br label %if.end46.thread

if.end39.i:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i190 = sub i32 %69, %71
  tail call void @debug_dma_map_single(ptr noundef %dev1, ptr noundef %73, i32 noundef %sub.i190) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %78 = load ptr, ptr @mem_map, align 4
  %79 = ptrtoint ptr %73 to i32
  %sub.i192 = add i32 %79, 1073741824
  %shr.i = lshr i32 %sub.i192, 12
  %add.ptr.i193 = getelementptr %struct.page, ptr %78, i32 %shr.i
  %and.i = and i32 %79, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1, ptr noundef %add.ptr.i193, i32 noundef %and.i, i32 noundef %sub.i190, i32 noundef 1, i32 noundef 0) #17
  br label %if.end46

if.else40:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #19
  %80 = ptrtoint ptr %end.i195 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %end.i195, align 4
  %sub42 = add nsw i32 %i.0280, -1
  %arrayidx43 = getelementptr %struct.skb_shared_info, ptr %81, i32 0, i32 12, i32 %sub42
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %81, i32 0, i32 12, i32 %sub42, i32 1
  %82 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bv_len.i, align 4
  %84 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx43, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %81, i32 0, i32 12, i32 %sub42, i32 2
  %86 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1, ptr noundef %85, i32 noundef %87, i32 noundef %83, i32 noundef 1, i32 noundef 0) #17
  br label %if.end46

if.end46.thread:                                  ; preds = %dev_name.exit.i, %land.rhs.i.if.end46.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev1, i32 noundef -1) #17
  br label %if.then49

if.end46:                                         ; preds = %if.else40, %if.end39.i
  %mapping.0 = phi i32 [ %call2.i, %if.else40 ], [ %call41.i, %if.end39.i ]
  %size.0 = phi i32 [ %83, %if.else40 ], [ %sub.i190, %if.end39.i ]
  tail call void @debug_dma_mapping_error(ptr noundef %dev1, i32 noundef %mapping.0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mapping.0)
  %cmp.i196 = icmp eq i32 %mapping.0, -1
  br i1 %cmp.i196, label %if.end46.if.then49_crit_edge, label %if.end56

if.end46.if.then49_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then49

if.then49:                                        ; preds = %if.end46.if.then49_crit_edge, %if.end46.thread
  %tx_dma_failed = getelementptr i8, ptr %dev, i32 19008
  %88 = ptrtoint ptr %tx_dma_failed to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tx_dma_failed, align 4
  %inc = add i32 %89, 1
  store i32 %inc, ptr %tx_dma_failed, align 4
  %msg_enable = getelementptr i8, ptr %dev, i32 18708
  %90 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %msg_enable, align 4
  %and = and i32 %91, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %if.then49.do.end55_crit_edge, label %if.then52

if.then49.do.end55_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end55

if.then52:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.65) #20
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %if.then49.do.end55_crit_edge
  %92 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %write_ptr.i, align 4
  %94 = ptrtoint ptr %cb_ptr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cb_ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %95)
  %cmp.i200 = icmp eq i32 %93, %95
  br i1 %cmp.i200, label %if.then.i202, label %if.else.i

if.then.i202:                                     ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #19
  %96 = ptrtoint ptr %end_ptr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %end_ptr.i, align 8
  br label %bcmgenet_put_txcb.exit

if.else.i:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #19
  %dec.i = add i32 %93, -1
  br label %bcmgenet_put_txcb.exit

bcmgenet_put_txcb.exit:                           ; preds = %if.else.i, %if.then.i202
  %storemerge.i203 = phi i32 [ %dec.i, %if.else.i ], [ %97, %if.then.i202 ]
  %98 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %storemerge.i203, ptr %write_ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0280)
  %cmp102281.not = icmp eq i32 %i.0280, 0
  br i1 %cmp102281.not, label %bcmgenet_put_txcb.exit.while.end_crit_edge, label %bcmgenet_put_txcb.exit.while.body_crit_edge

bcmgenet_put_txcb.exit.while.body_crit_edge:      ; preds = %bcmgenet_put_txcb.exit
  br label %while.body

bcmgenet_put_txcb.exit.while.end_crit_edge:       ; preds = %bcmgenet_put_txcb.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

if.end56:                                         ; preds = %if.end46
  %dma_addr = getelementptr %struct.enet_cb, ptr %59, i32 %sub.i, i32 2
  %99 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %mapping.0, ptr %dma_addr, align 4
  %dma_len = getelementptr %struct.enet_cb, ptr %59, i32 %sub.i, i32 3
  %100 = ptrtoint ptr %dma_len to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %size.0, ptr %dma_len, align 4
  %101 = ptrtoint ptr %add.ptr.i189 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %skb.addr.0.i, ptr %add.ptr.i189, align 4
  %shl = shl i32 %size.0, 16
  %102 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hw_params, align 8
  %qtag_mask = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %103, i32 0, i32 8
  %104 = ptrtoint ptr %qtag_mask to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %qtag_mask, align 2
  %conv58 = zext i8 %105 to i32
  %shl59 = shl nuw nsw i32 %conv58, 7
  %or = or i32 %shl59, %shl
  br i1 %tobool34.not, label %if.then61, label %if.end56.if.end69_crit_edge

if.end56.if.end69_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  %106 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %bf.load = load i16, ptr %ip_summed.i, align 8
  %107 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %107)
  %cmp64 = icmp eq i16 %107, 1536
  %spec.select.v = select i1 %cmp64, i32 8272, i32 8256
  %spec.select = or i32 %spec.select.v, %or
  br label %if.end69

if.end69:                                         ; preds = %if.then61, %if.end56.if.end69_crit_edge
  %len_stat.0 = phi i32 [ %or, %if.end56.if.end69_crit_edge ], [ %spec.select, %if.then61 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0280, i32 %conv7)
  %cmp70 = icmp eq i32 %i.0280, %conv7
  %or73 = or i32 %len_stat.0, 16384
  %spec.select184 = select i1 %cmp70, i32 %or73, i32 %len_stat.0
  %bd_addr = getelementptr %struct.enet_cb, ptr %59, i32 %sub.i, i32 1
  %108 = ptrtoint ptr %bd_addr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bd_addr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %109, i32 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %mapping.0) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %110) #17, !srcloc !249
  %111 = tail call i32 @llvm.bswap.i32(i32 %spec.select184) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %111) #17, !srcloc !249
  %inc75 = add nuw nsw i32 %i.0280, 1
  %exitcond = icmp eq i32 %i.0280, %conv7
  br i1 %exitcond, label %for.end, label %if.end69.for.body_crit_edge

if.end69.for.body_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %if.end69
  %last_cb = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 3, i32 4
  %112 = ptrtoint ptr %last_cb to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %add.ptr.i189, ptr %last_cb, align 4
  tail call void @skb_clone_tx_timestamp(ptr noundef nonnull %skb.addr.0.i) #17
  %113 = ptrtoint ptr %end.i195 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %end.i195, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %114, i32 0, i32 3
  %115 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %tx_flags.i, align 1
  %117 = and i8 %116, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i = icmp eq i8 %117, 0
  br i1 %tobool.not.i, label %for.end.skb_tx_timestamp.exit_crit_edge, label %if.then.i207

for.end.skb_tx_timestamp.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_tx_timestamp.exit

if.then.i207:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @skb_tstamp_tx(ptr noundef nonnull %skb.addr.0.i, ptr noundef null) #17
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i207, %for.end.skb_tx_timestamp.exit_crit_edge
  %118 = ptrtoint ptr %free_bds to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %free_bds, align 8
  %sub80 = sub i32 %119, %add
  store i32 %sub80, ptr %free_bds, align 8
  %prod_index = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %index.0, i32 12
  %120 = ptrtoint ptr %prod_index to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %prod_index, align 8
  %add82 = add i32 %121, %add
  %and84 = and i32 %add82, 65535
  store i32 %and84, ptr %prod_index, align 8
  %bytes_sent87 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 3, i32 8
  %122 = ptrtoint ptr %bytes_sent87 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %bytes_sent87, align 8
  %dql.i = getelementptr %struct.netdev_queue, ptr %7, i32 %5, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %123)
  %cmp.i.i = icmp ugt i32 %123, 268435455
  br i1 %cmp.i.i, label %do.body2.i.i, label %dql_queued.exit.i, !prof !251

do.body2.i.i:                                     ; preds = %skb_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #17, !srcloc !254
  unreachable

dql_queued.exit.i:                                ; preds = %skb_tx_timestamp.exit
  %last_obj_cnt.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %5, i32 15, i32 2
  %124 = ptrtoint ptr %last_obj_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %last_obj_cnt.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !255
  %125 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dql.i, align 128
  %add.i.i = add i32 %126, %123
  store i32 %add.i.i, ptr %dql.i, align 128
  %adj_limit.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %5, i32 15, i32 1
  %127 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %adj_limit.i.i, align 4
  %129 = load volatile i32, ptr %dql.i, align 128
  %sub.i.i209 = sub i32 %128, %129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i209)
  %cmp.i210 = icmp sgt i32 %sub.i.i209, -1
  br i1 %cmp.i210, label %dql_queued.exit.i.netdev_tx_sent_queue.exit_crit_edge, label %if.end.i212, !prof !253

dql_queued.exit.i.netdev_tx_sent_queue.exit_crit_edge: ; preds = %dql_queued.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %netdev_tx_sent_queue.exit

if.end.i212:                                      ; preds = %dql_queued.exit.i
  %state.i211 = getelementptr %struct.netdev_queue, ptr %7, i32 %5, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i211) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !256
  %130 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %adj_limit.i.i, align 4
  %132 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %dql.i, align 128
  %sub.i22.i = sub i32 %131, %133
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i)
  %cmp7.i = icmp sgt i32 %sub.i22.i, -1
  br i1 %cmp7.i, label %if.then14.i, label %if.end.i212.netdev_tx_sent_queue.exit_crit_edge, !prof !251

if.end.i212.netdev_tx_sent_queue.exit_crit_edge:  ; preds = %if.end.i212
  call void @__sanitizer_cov_trace_pc() #19
  br label %netdev_tx_sent_queue.exit

if.then14.i:                                      ; preds = %if.end.i212
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i211) #17
  br label %netdev_tx_sent_queue.exit

netdev_tx_sent_queue.exit:                        ; preds = %if.then14.i, %if.end.i212.netdev_tx_sent_queue.exit_crit_edge, %dql_queued.exit.i.netdev_tx_sent_queue.exit_crit_edge
  %134 = ptrtoint ptr %free_bds to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %free_bds, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %135)
  %cmp89 = icmp ult i32 %135, 19
  br i1 %cmp89, label %if.then91, label %netdev_tx_sent_queue.exit.if.end92_crit_edge

netdev_tx_sent_queue.exit.if.end92_crit_edge:     ; preds = %netdev_tx_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end92

if.then91:                                        ; preds = %netdev_tx_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #19
  %state.i185 = getelementptr %struct.netdev_queue, ptr %7, i32 %5, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i185) #17
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %netdev_tx_sent_queue.exit.if.end92_crit_edge
  %136 = tail call i32 @llvm.read_register.i32(metadata !236) #17
  %and.i.i = and i32 %136, -16384
  %137 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %cpu.i, align 4
  %arrayidx.i213 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %139
  %140 = ptrtoint ptr %arrayidx.i213 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.i213, align 4
  %add.i214 = add i32 %141, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %142 = inttoptr i32 %add.i214 to ptr
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %142, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.i215.not = icmp eq i8 %144, 0
  br i1 %tobool.i215.not, label %if.end92.if.then96_crit_edge, label %lor.lhs.false

if.end92.if.then96_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then96

lor.lhs.false:                                    ; preds = %if.end92
  %state.i216 = getelementptr %struct.netdev_queue, ptr %7, i32 %5, i32 13
  %145 = ptrtoint ptr %state.i216 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %state.i216, align 4
  %and.i217 = and i32 %146, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i217)
  %tobool.i218.not = icmp eq i32 %and.i217, 0
  br i1 %tobool.i218.not, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false.if.then96_crit_edge

lor.lhs.false.if.then96_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then96

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then96:                                        ; preds = %lor.lhs.false.if.then96_crit_edge, %if.end92.if.then96_crit_edge
  %index97 = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %index.0, i32 4
  %147 = ptrtoint ptr %index97 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %index97, align 8
  %149 = ptrtoint ptr %prod_index to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %prod_index, align 8
  %151 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %add.ptr.i, align 8
  %153 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %hw_params, align 8
  %tdma_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %154, i32 0, i32 13
  %155 = ptrtoint ptr %tdma_offset.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %tdma_offset.i, align 4
  %words_per_bd.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %154, i32 0, i32 14
  %157 = ptrtoint ptr %words_per_bd.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %words_per_bd.i, align 4
  %mul2.i = shl i32 %158, 10
  %add.i219 = add i32 %mul2.i, %156
  %add.ptr.i220 = getelementptr i8, ptr %152, i32 %add.i219
  %mul3.i = shl i32 %148, 6
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i220, i32 %mul3.i
  %159 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i221 = getelementptr i8, ptr %159, i32 3
  %160 = ptrtoint ptr %arrayidx.i221 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx.i221, align 1
  %conv.i = zext i8 %161 to i32
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %conv.i
  %162 = tail call i32 @llvm.bswap.i32(i32 %150) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %162) #17, !srcloc !249
  br label %out

out:                                              ; preds = %while.end, %if.then96, %lor.lhs.false.out_crit_edge, %bcmgenet_add_tsb.exit.out_crit_edge, %bcmgenet_add_tsb.exit.thread, %if.then12, %if.then10.out_crit_edge
  %ret.1 = phi i32 [ 0, %while.end ], [ 0, %if.then96 ], [ 0, %lor.lhs.false.out_crit_edge ], [ 16, %if.then12 ], [ 16, %if.then10.out_crit_edge ], [ 0, %bcmgenet_add_tsb.exit.out_crit_edge ], [ 0, %bcmgenet_add_tsb.exit.thread ]
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #17
  ret i32 %ret.1

while.body:                                       ; preds = %bcmgenet_free_tx_cb.exit.while.body_crit_edge, %bcmgenet_put_txcb.exit.while.body_crit_edge
  %i.1282 = phi i32 [ %dec, %bcmgenet_free_tx_cb.exit.while.body_crit_edge ], [ %i.0280, %bcmgenet_put_txcb.exit.while.body_crit_edge ]
  %dec = add nsw i32 %i.1282, -1
  %163 = ptrtoint ptr %cbs.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %cbs.i, align 8
  %165 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %write_ptr.i, align 4
  %167 = ptrtoint ptr %cb_ptr.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %cb_ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %166, i32 %168)
  %cmp.i225 = icmp eq i32 %166, %168
  br i1 %cmp.i225, label %if.then.i227, label %if.else.i229

if.then.i227:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %169 = ptrtoint ptr %end_ptr.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %end_ptr.i, align 8
  br label %bcmgenet_put_txcb.exit234

if.else.i229:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %dec.i228 = add i32 %166, -1
  br label %bcmgenet_put_txcb.exit234

bcmgenet_put_txcb.exit234:                        ; preds = %if.else.i229, %if.then.i227
  %storemerge.i230 = phi i32 [ %dec.i228, %if.else.i229 ], [ %170, %if.then.i227 ]
  %171 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %storemerge.i230, ptr %write_ptr.i, align 4
  %sub.i231 = sub i32 %166, %168
  %add.ptr.i232 = getelementptr %struct.enet_cb, ptr %164, i32 %sub.i231
  %172 = ptrtoint ptr %add.ptr.i232 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %add.ptr.i232, align 4
  %tobool.not.i235 = icmp eq ptr %173, null
  br i1 %tobool.not.i235, label %if.else13.i, label %if.then.i236

if.then.i236:                                     ; preds = %bcmgenet_put_txcb.exit234
  call void @__sanitizer_cov_trace_pc() #19
  %174 = ptrtoint ptr %add.ptr.i232 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %add.ptr.i232, align 4
  %dma_addr.i = getelementptr %struct.enet_cb, ptr %164, i32 %sub.i231, i32 2
  %175 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %dma_addr.i, align 4
  br label %bcmgenet_free_tx_cb.exit.sink.split

if.else13.i:                                      ; preds = %bcmgenet_put_txcb.exit234
  %dma_addr14.i = getelementptr %struct.enet_cb, ptr %164, i32 %sub.i231, i32 2
  %177 = ptrtoint ptr %dma_addr14.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %dma_addr14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool15.not.i = icmp eq i32 %178, 0
  br i1 %tobool15.not.i, label %if.else13.i.bcmgenet_free_tx_cb.exit_crit_edge, label %if.else13.i.bcmgenet_free_tx_cb.exit.sink.split_crit_edge

if.else13.i.bcmgenet_free_tx_cb.exit.sink.split_crit_edge: ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_free_tx_cb.exit.sink.split

if.else13.i.bcmgenet_free_tx_cb.exit_crit_edge:   ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_free_tx_cb.exit

bcmgenet_free_tx_cb.exit.sink.split:              ; preds = %if.else13.i.bcmgenet_free_tx_cb.exit.sink.split_crit_edge, %if.then.i236
  %.sink = phi i32 [ %176, %if.then.i236 ], [ %178, %if.else13.i.bcmgenet_free_tx_cb.exit.sink.split_crit_edge ]
  %dma_addr.i.sink = phi ptr [ %dma_addr.i, %if.then.i236 ], [ %dma_addr14.i, %if.else13.i.bcmgenet_free_tx_cb.exit.sink.split_crit_edge ]
  %dma_len.i = getelementptr %struct.enet_cb, ptr %164, i32 %sub.i231, i32 3
  %179 = ptrtoint ptr %dma_len.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %dma_len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1, i32 noundef %.sink, i32 noundef %180, i32 noundef 1, i32 noundef 0) #17
  %181 = ptrtoint ptr %dma_addr.i.sink to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %dma_addr.i.sink, align 4
  br label %bcmgenet_free_tx_cb.exit

bcmgenet_free_tx_cb.exit:                         ; preds = %bcmgenet_free_tx_cb.exit.sink.split, %if.else13.i.bcmgenet_free_tx_cb.exit_crit_edge
  %cmp102 = icmp sgt i32 %i.1282, 1
  br i1 %cmp102, label %bcmgenet_free_tx_cb.exit.while.body_crit_edge, label %bcmgenet_free_tx_cb.exit.while.end_crit_edge

bcmgenet_free_tx_cb.exit.while.end_crit_edge:     ; preds = %bcmgenet_free_tx_cb.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

bcmgenet_free_tx_cb.exit.while.body_crit_edge:    ; preds = %bcmgenet_free_tx_cb.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.end:                                        ; preds = %bcmgenet_free_tx_cb.exit.while.end_crit_edge, %bcmgenet_put_txcb.exit.while.end_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %skb.addr.0.i) #17
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcmgenet_set_rx_mode(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %msg_enable = getelementptr i8, ptr %dev, i32 18708
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcmgenet_set_rx_mode.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcmgenet_set_rx_mode, %if.then6)) #17
          to label %do.end9 [label %if.then6], !srcloc !247

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcmgenet_set_rx_mode.__UNIQUE_ID_ddebug502, ptr noundef %dev, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67, i32 noundef %3) #17
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %uc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 65
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 65, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count10 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %6 = ptrtoint ptr %count10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count10, align 8
  %add = add i32 %7, %5
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %9, i32 2056
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #17, !srcloc !248
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #17
  %flags13 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %12 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags13, align 8
  %and14 = and i32 %13, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp ne i32 %and14, 0
  %add11 = add i32 %add, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %add11)
  %cmp = icmp sgt i32 %add11, 17
  %or.cond = select i1 %tobool15.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then16, label %if.else

if.then16:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #19
  %or = or i32 %11, 16
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #17
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i96 = getelementptr i8, ptr %16, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i96, i32 %14) #17, !srcloc !249
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i98 = getelementptr i8, ptr %18, i32 3664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i98, i32 0) #17, !srcloc !249
  br label %cleanup

if.else:                                          ; preds = %do.end9
  %and17 = and i32 %11, -17
  %19 = tail call i32 @llvm.bswap.i32(i32 %and17) #17
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i100 = getelementptr i8, ptr %21, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i100, i32 %19) #17, !srcloc !249
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %22 = ptrtoint ptr %broadcast to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %broadcast, align 1
  %conv.i = zext i8 %23 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx1.i = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 1
  %24 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %25 to i32
  %or.i = or i32 %shl.i, %conv2.i
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i) #17
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %28, i32 3668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %26) #17, !srcloc !249
  %arrayidx3.i = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 2
  %29 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %30 to i32
  %shl5.i = shl nuw i32 %conv4.i, 24
  %arrayidx6.i = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 3
  %31 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %32 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 16
  %or9.i = or i32 %shl8.i, %shl5.i
  %arrayidx10.i = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 4
  %33 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %34 to i32
  %shl12.i = shl nuw nsw i32 %conv11.i, 8
  %or13.i = or i32 %or9.i, %shl12.i
  %arrayidx14.i = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 5
  %35 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %36 to i32
  %or16.i = or i32 %or13.i, %conv15.i
  %37 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #17
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i30.i = getelementptr i8, ptr %39, i32 3672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30.i, i32 %37) #17, !srcloc !249
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %40 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_addr, align 64
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 1
  %conv.i101 = zext i8 %43 to i32
  %shl.i102 = shl nuw nsw i32 %conv.i101, 8
  %arrayidx1.i103 = getelementptr i8, ptr %41, i32 1
  %44 = ptrtoint ptr %arrayidx1.i103 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx1.i103, align 1
  %conv2.i104 = zext i8 %45 to i32
  %or.i105 = or i32 %shl.i102, %conv2.i104
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i105) #17
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i.i109 = getelementptr i8, ptr %48, i32 3676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i109, i32 %46) #17, !srcloc !249
  %arrayidx3.i110 = getelementptr i8, ptr %41, i32 2
  %49 = ptrtoint ptr %arrayidx3.i110 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx3.i110, align 1
  %conv4.i111 = zext i8 %50 to i32
  %shl5.i112 = shl nuw i32 %conv4.i111, 24
  %arrayidx6.i113 = getelementptr i8, ptr %41, i32 3
  %51 = ptrtoint ptr %arrayidx6.i113 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx6.i113, align 1
  %conv7.i114 = zext i8 %52 to i32
  %shl8.i115 = shl nuw nsw i32 %conv7.i114, 16
  %or9.i116 = or i32 %shl8.i115, %shl5.i112
  %arrayidx10.i117 = getelementptr i8, ptr %41, i32 4
  %53 = ptrtoint ptr %arrayidx10.i117 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx10.i117, align 1
  %conv11.i118 = zext i8 %54 to i32
  %shl12.i119 = shl nuw nsw i32 %conv11.i118, 8
  %or13.i120 = or i32 %or9.i116, %shl12.i119
  %arrayidx14.i121 = getelementptr i8, ptr %41, i32 5
  %55 = ptrtoint ptr %arrayidx14.i121 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx14.i121, align 1
  %conv15.i122 = zext i8 %56 to i32
  %or16.i123 = or i32 %or13.i120, %conv15.i122
  %57 = tail call i32 @llvm.bswap.i32(i32 %or16.i123) #17
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i30.i127 = getelementptr i8, ptr %59, i32 3680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30.i127, i32 %57) #17, !srcloc !249
  %60 = ptrtoint ptr %uc to i32
  call void @__asan_load4_noabort(i32 %60)
  %ha.0199 = load ptr, ptr %uc, align 4
  %cmp24.not200 = icmp eq ptr %ha.0199, %uc
  br i1 %cmp24.not200, label %if.else.for.cond39.preheader_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.for.cond39.preheader_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %for.body.for.cond39.preheader_crit_edge, %if.else.for.cond39.preheader_crit_edge
  %i.0.lcssa = phi i32 [ 4, %if.else.for.cond39.preheader_crit_edge ], [ %add20.i156, %for.body.for.cond39.preheader_crit_edge ]
  %61 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %61)
  %ha.1203 = load ptr, ptr %mc, align 4
  %cmp43.not204 = icmp eq ptr %ha.1203, %mc
  br i1 %cmp43.not204, label %for.cond39.preheader.for.end55_crit_edge, label %for.cond39.preheader.for.body46_crit_edge

for.cond39.preheader.for.body46_crit_edge:        ; preds = %for.cond39.preheader
  br label %for.body46

for.cond39.preheader.for.end55_crit_edge:         ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end55

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else.for.body_crit_edge
  %ha.0202 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.0199, %if.else.for.body_crit_edge ]
  %i.0201 = phi i32 [ %add20.i156, %for.body.for.body_crit_edge ], [ 4, %if.else.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0202, i32 0, i32 2
  %62 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %addr, align 1
  %conv.i129 = zext i8 %63 to i32
  %shl.i130 = shl nuw nsw i32 %conv.i129, 8
  %arrayidx1.i131 = getelementptr %struct.netdev_hw_addr, ptr %ha.0202, i32 0, i32 2, i32 1
  %64 = ptrtoint ptr %arrayidx1.i131 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx1.i131, align 1
  %conv2.i132 = zext i8 %65 to i32
  %or.i133 = or i32 %shl.i130, %conv2.i132
  %mul.i134 = shl i32 %i.0201, 2
  %add.i135 = add i32 %mul.i134, 1620
  %66 = tail call i32 @llvm.bswap.i32(i32 %or.i133) #17
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i136 = getelementptr i8, ptr %68, i32 2048
  %add.ptr1.i.i137 = getelementptr i8, ptr %add.ptr.i.i136, i32 %add.i135
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i137, i32 %66) #17, !srcloc !249
  %arrayidx3.i138 = getelementptr %struct.netdev_hw_addr, ptr %ha.0202, i32 0, i32 2, i32 2
  %69 = ptrtoint ptr %arrayidx3.i138 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx3.i138, align 1
  %conv4.i139 = zext i8 %70 to i32
  %shl5.i140 = shl nuw i32 %conv4.i139, 24
  %arrayidx6.i141 = getelementptr %struct.netdev_hw_addr, ptr %ha.0202, i32 0, i32 2, i32 3
  %71 = ptrtoint ptr %arrayidx6.i141 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx6.i141, align 1
  %conv7.i142 = zext i8 %72 to i32
  %shl8.i143 = shl nuw nsw i32 %conv7.i142, 16
  %or9.i144 = or i32 %shl8.i143, %shl5.i140
  %arrayidx10.i145 = getelementptr %struct.netdev_hw_addr, ptr %ha.0202, i32 0, i32 2, i32 4
  %73 = ptrtoint ptr %arrayidx10.i145 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx10.i145, align 1
  %conv11.i146 = zext i8 %74 to i32
  %shl12.i147 = shl nuw nsw i32 %conv11.i146, 8
  %or13.i148 = or i32 %or9.i144, %shl12.i147
  %arrayidx14.i149 = getelementptr %struct.netdev_hw_addr, ptr %ha.0202, i32 0, i32 2, i32 5
  %75 = ptrtoint ptr %arrayidx14.i149 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx14.i149, align 1
  %conv15.i150 = zext i8 %76 to i32
  %or16.i151 = or i32 %or13.i148, %conv15.i150
  %add19.i153 = add i32 %mul.i134, 1624
  %77 = tail call i32 @llvm.bswap.i32(i32 %or16.i151) #17
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i29.i154 = getelementptr i8, ptr %79, i32 2048
  %add.ptr1.i30.i155 = getelementptr i8, ptr %add.ptr.i29.i154, i32 %add19.i153
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30.i155, i32 %77) #17, !srcloc !249
  %add20.i156 = add i32 %i.0201, 2
  %80 = ptrtoint ptr %ha.0202 to i32
  call void @__asan_load4_noabort(i32 %80)
  %ha.0 = load ptr, ptr %ha.0202, align 4
  %cmp24.not = icmp eq ptr %ha.0, %uc
  br i1 %cmp24.not, label %for.body.for.cond39.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.for.cond39.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond39.preheader

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %for.cond39.preheader.for.body46_crit_edge
  %ha.1206 = phi ptr [ %ha.1, %for.body46.for.body46_crit_edge ], [ %ha.1203, %for.cond39.preheader.for.body46_crit_edge ]
  %i.1205 = phi i32 [ %add20.i184, %for.body46.for.body46_crit_edge ], [ %i.0.lcssa, %for.cond39.preheader.for.body46_crit_edge ]
  %addr47 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.1206, i32 0, i32 2
  %81 = ptrtoint ptr %addr47 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %addr47, align 1
  %conv.i157 = zext i8 %82 to i32
  %shl.i158 = shl nuw nsw i32 %conv.i157, 8
  %arrayidx1.i159 = getelementptr %struct.netdev_hw_addr, ptr %ha.1206, i32 0, i32 2, i32 1
  %83 = ptrtoint ptr %arrayidx1.i159 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx1.i159, align 1
  %conv2.i160 = zext i8 %84 to i32
  %or.i161 = or i32 %shl.i158, %conv2.i160
  %mul.i162 = shl i32 %i.1205, 2
  %add.i163 = add i32 %mul.i162, 1620
  %85 = tail call i32 @llvm.bswap.i32(i32 %or.i161) #17
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i164 = getelementptr i8, ptr %87, i32 2048
  %add.ptr1.i.i165 = getelementptr i8, ptr %add.ptr.i.i164, i32 %add.i163
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i165, i32 %85) #17, !srcloc !249
  %arrayidx3.i166 = getelementptr %struct.netdev_hw_addr, ptr %ha.1206, i32 0, i32 2, i32 2
  %88 = ptrtoint ptr %arrayidx3.i166 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx3.i166, align 1
  %conv4.i167 = zext i8 %89 to i32
  %shl5.i168 = shl nuw i32 %conv4.i167, 24
  %arrayidx6.i169 = getelementptr %struct.netdev_hw_addr, ptr %ha.1206, i32 0, i32 2, i32 3
  %90 = ptrtoint ptr %arrayidx6.i169 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx6.i169, align 1
  %conv7.i170 = zext i8 %91 to i32
  %shl8.i171 = shl nuw nsw i32 %conv7.i170, 16
  %or9.i172 = or i32 %shl8.i171, %shl5.i168
  %arrayidx10.i173 = getelementptr %struct.netdev_hw_addr, ptr %ha.1206, i32 0, i32 2, i32 4
  %92 = ptrtoint ptr %arrayidx10.i173 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx10.i173, align 1
  %conv11.i174 = zext i8 %93 to i32
  %shl12.i175 = shl nuw nsw i32 %conv11.i174, 8
  %or13.i176 = or i32 %or9.i172, %shl12.i175
  %arrayidx14.i177 = getelementptr %struct.netdev_hw_addr, ptr %ha.1206, i32 0, i32 2, i32 5
  %94 = ptrtoint ptr %arrayidx14.i177 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx14.i177, align 1
  %conv15.i178 = zext i8 %95 to i32
  %or16.i179 = or i32 %or13.i176, %conv15.i178
  %add19.i181 = add i32 %mul.i162, 1624
  %96 = tail call i32 @llvm.bswap.i32(i32 %or16.i179) #17
  %97 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i29.i182 = getelementptr i8, ptr %98, i32 2048
  %add.ptr1.i30.i183 = getelementptr i8, ptr %add.ptr.i29.i182, i32 %add19.i181
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30.i183, i32 %96) #17, !srcloc !249
  %add20.i184 = add i32 %i.1205, 2
  %99 = ptrtoint ptr %ha.1206 to i32
  call void @__asan_load4_noabort(i32 %99)
  %ha.1 = load ptr, ptr %ha.1206, align 4
  %cmp43.not = icmp eq ptr %ha.1, %mc
  br i1 %cmp43.not, label %for.body46.for.end55_crit_edge, label %for.body46.for.body46_crit_edge

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body46

for.body46.for.end55_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end55

for.end55:                                        ; preds = %for.body46.for.end55_crit_edge, %for.cond39.preheader.for.end55_crit_edge
  %sub = sub i32 15, %add
  %shl.neg = shl nsw i32 -1, %sub
  %and58 = and i32 %shl.neg, 131071
  %100 = tail call i32 @llvm.bswap.i32(i32 %and58) #17
  %101 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i186 = getelementptr i8, ptr %102, i32 3664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i186, i32 %100) #17, !srcloc !249
  br label %cleanup

cleanup:                                          ; preds = %for.end55, %if.then16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_set_mac_addr(ptr noundef %dev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcmgenet_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %msg_enable = getelementptr i8, ptr %dev, i32 18708
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcmgenet_timeout.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcmgenet_timeout, %if.then6)) #17
          to label %do.end9 [label %if.then6], !srcloc !247

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcmgenet_timeout.__UNIQUE_ID_ddebug501, ptr noundef %dev, ptr noundef nonnull @.str.70) #17
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %hw_params = getelementptr i8, ptr %dev, i32 18488
  %2 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_params, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp47.not = icmp eq i8 %5, 0
  br i1 %cmp47.not, label %do.end9.for.end_crit_edge, label %do.end9.for.body_crit_edge

do.end9.for.body_crit_edge:                       ; preds = %do.end9
  br label %for.body

do.end9.for.end_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end9.for.body_crit_edge
  %q.048 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end9.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %q.048
  tail call fastcc void @bcmgenet_dump_tx_queue(ptr noundef %arrayidx)
  %inc = add nuw nsw i32 %q.048, 1
  %6 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_params, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %conv = zext i8 %9 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end9.for.end_crit_edge
  %arrayidx12 = getelementptr i8, ptr %dev, i32 7704
  tail call fastcc void @bcmgenet_dump_tx_queue(ptr noundef %arrayidx12)
  tail call fastcc void @bcmgenet_tx_reclaim_all(ptr noundef %dev)
  %10 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_params, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %conv16 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp1749.not = icmp eq i8 %13, 0
  br i1 %cmp1749.not, label %for.end.for.end22_crit_edge, label %for.end.for.body19_crit_edge

for.end.for.body19_crit_edge:                     ; preds = %for.end
  br label %for.body19

for.end.for.end22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end22

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.end.for.body19_crit_edge
  %q.151 = phi i32 [ %inc21, %for.body19.for.body19_crit_edge ], [ 0, %for.end.for.body19_crit_edge ]
  %int1_enable.050 = phi i32 [ %or, %for.body19.for.body19_crit_edge ], [ 0, %for.end.for.body19_crit_edge ]
  %shl = shl nuw i32 1, %q.151
  %or = or i32 %shl, %int1_enable.050
  %inc21 = add nuw nsw i32 %q.151, 1
  %exitcond.not = icmp eq i32 %inc21, %conv16
  br i1 %exitcond.not, label %for.body19.for.end22_crit_edge, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body19

for.body19.for.end22_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end22

for.end22:                                        ; preds = %for.body19.for.end22_crit_edge, %for.end.for.end22_crit_edge
  %int1_enable.0.lcssa = phi i32 [ 0, %for.end.for.end22_crit_edge ], [ %or, %for.body19.for.end22_crit_edge ]
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %15, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 256) #17, !srcloc !249
  %16 = tail call i32 @llvm.bswap.i32(i32 %int1_enable.0.lcssa) #17
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i43 = getelementptr i8, ptr %18, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i43, i32 %16) #17, !srcloc !249
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %19 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %20, i32 0, i32 12
  %22 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp.not.i.i = icmp eq i32 %23, %21
  br i1 %cmp.not.i.i, label %for.end22.netif_trans_update.exit_crit_edge, label %do.body5.i.i

for.end22.netif_trans_update.exit_crit_edge:      ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #19
  %24 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %21, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %for.end22.netif_trans_update.exit_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %25 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_errors, align 4
  %inc23 = add i32 %26, 1
  store i32 %inc23, ptr %tx_errors, align 4
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %27 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp4.not.i = icmp eq i32 %28, 0
  br i1 %cmp4.not.i, label %netif_trans_update.exit.netif_tx_wake_all_queues.exit_crit_edge, label %netif_trans_update.exit.for.body.i_crit_edge

netif_trans_update.exit.for.body.i_crit_edge:     ; preds = %netif_trans_update.exit
  br label %for.body.i

netif_trans_update.exit.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %netif_tx_wake_all_queues.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %netif_trans_update.exit.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %netif_trans_update.exit.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %30, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #17
  %inc.i = add nuw i32 %i.05.i, 1
  %31 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %32
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_wake_all_queues.exit_crit_edge

for.body.i.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %netif_tx_wake_all_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

netif_tx_wake_all_queues.exit:                    ; preds = %for.body.i.netif_tx_wake_all_queues.exit_crit_edge, %netif_trans_update.exit.netif_tx_wake_all_queues.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bcmgenet_get_stats(ptr noundef %dev) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %hw_params = getelementptr i8, ptr %dev, i32 18488
  %0 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_params, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp89.not = icmp eq i8 %3, 0
  br i1 %cmp89.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %q.092 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tx_packets.091 = phi i32 [ %add2, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tx_bytes.090 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %bytes = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %q.092, i32 3
  %4 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bytes, align 4
  %add = add i32 %5, %tx_bytes.090
  %packets = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %q.092, i32 2
  %6 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %packets, align 8
  %add2 = add i32 %7, %tx_packets.091
  %inc = add nuw nsw i32 %q.092, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %tx_bytes.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %tx_packets.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add2, %for.body.for.end_crit_edge ]
  %bytes5 = getelementptr i8, ptr %dev, i32 7980
  %8 = ptrtoint ptr %bytes5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytes5, align 4
  %packets7 = getelementptr i8, ptr %dev, i32 7976
  %10 = ptrtoint ptr %packets7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %packets7, align 8
  %rx_queues = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %rx_queues to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rx_queues, align 2
  %conv11 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp1295.not = icmp eq i8 %13, 0
  br i1 %cmp1295.not, label %for.end.for.end24_crit_edge, label %for.end.for.body14_crit_edge

for.end.for.body14_crit_edge:                     ; preds = %for.end
  br label %for.body14

for.end.for.end24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end24

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.end.for.body14_crit_edge
  %q.1100 = phi i32 [ %inc23, %for.body14.for.body14_crit_edge ], [ 0, %for.end.for.body14_crit_edge ]
  %rx_dropped.099 = phi i32 [ %add21, %for.body14.for.body14_crit_edge ], [ 0, %for.end.for.body14_crit_edge ]
  %rx_errors.098 = phi i32 [ %add20, %for.body14.for.body14_crit_edge ], [ 0, %for.end.for.body14_crit_edge ]
  %rx_packets.097 = phi i32 [ %add19, %for.body14.for.body14_crit_edge ], [ 0, %for.end.for.body14_crit_edge ]
  %rx_bytes.096 = phi i32 [ %add17, %for.body14.for.body14_crit_edge ], [ 0, %for.end.for.body14_crit_edge ]
  %bytes16 = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %q.1100, i32 1
  %14 = ptrtoint ptr %bytes16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bytes16, align 8
  %add17 = add i32 %15, %rx_bytes.096
  %packets18 = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %q.1100, i32 2
  %16 = ptrtoint ptr %packets18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %packets18, align 4
  %add19 = add i32 %17, %rx_packets.097
  %errors = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %q.1100, i32 3
  %18 = ptrtoint ptr %errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %errors, align 8
  %add20 = add i32 %19, %rx_errors.098
  %dropped = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %q.1100, i32 4
  %20 = ptrtoint ptr %dropped to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dropped, align 4
  %add21 = add i32 %21, %rx_dropped.099
  %inc23 = add nuw nsw i32 %q.1100, 1
  %exitcond105.not = icmp eq i32 %inc23, %conv11
  br i1 %exitcond105.not, label %for.body14.for.end24_crit_edge, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body14

for.body14.for.end24_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end24

for.end24:                                        ; preds = %for.body14.for.end24_crit_edge, %for.end.for.end24_crit_edge
  %rx_bytes.0.lcssa = phi i32 [ 0, %for.end.for.end24_crit_edge ], [ %add17, %for.body14.for.end24_crit_edge ]
  %rx_packets.0.lcssa = phi i32 [ 0, %for.end.for.end24_crit_edge ], [ %add19, %for.body14.for.end24_crit_edge ]
  %rx_errors.0.lcssa = phi i32 [ 0, %for.end.for.end24_crit_edge ], [ %add20, %for.body14.for.end24_crit_edge ]
  %rx_dropped.0.lcssa = phi i32 [ 0, %for.end.for.end24_crit_edge ], [ %add21, %for.body14.for.end24_crit_edge ]
  %add8 = add i32 %11, %tx_packets.0.lcssa
  %add6 = add i32 %9, %tx_bytes.0.lcssa
  %bytes27 = getelementptr i8, ptr %dev, i32 18272
  %22 = ptrtoint ptr %bytes27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bytes27, align 8
  %add28 = add i32 %23, %rx_bytes.0.lcssa
  %packets29 = getelementptr i8, ptr %dev, i32 18276
  %24 = ptrtoint ptr %packets29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %packets29, align 4
  %add30 = add i32 %25, %rx_packets.0.lcssa
  %errors31 = getelementptr i8, ptr %dev, i32 18280
  %26 = ptrtoint ptr %errors31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %errors31, align 8
  %add32 = add i32 %27, %rx_errors.0.lcssa
  %dropped33 = getelementptr i8, ptr %dev, i32 18284
  %28 = ptrtoint ptr %dropped33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dropped33, align 4
  %add34 = add i32 %29, %rx_dropped.0.lcssa
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %tx_bytes35 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %30 = ptrtoint ptr %tx_bytes35 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add6, ptr %tx_bytes35, align 4
  %tx_packets37 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %31 = ptrtoint ptr %tx_packets37 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add8, ptr %tx_packets37, align 4
  %rx_bytes39 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %32 = ptrtoint ptr %rx_bytes39 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add28, ptr %rx_bytes39, align 8
  %33 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add30, ptr %stats, align 8
  %rx_errors43 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %34 = ptrtoint ptr %rx_errors43 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add32, ptr %rx_errors43, align 8
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %35 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add32, ptr %rx_missed_errors, align 4
  %rx_dropped46 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %36 = ptrtoint ptr %rx_dropped46 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add34, ptr %rx_dropped46, align 8
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcmgenet_poll_controller(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %irq0 = getelementptr i8, ptr %dev, i32 18636
  %0 = ptrtoint ptr %irq0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq0, align 4
  tail call void @disable_irq(i32 noundef %1) #17
  %2 = ptrtoint ptr %irq0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq0, align 4
  %call2 = tail call i32 @bcmgenet_isr0(i32 noundef %3, ptr noundef %add.ptr.i)
  %4 = ptrtoint ptr %irq0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq0, align 4
  tail call void @enable_irq(i32 noundef %5) #17
  %irq1 = getelementptr i8, ptr %dev, i32 18640
  %6 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq1, align 8
  tail call void @disable_irq(i32 noundef %7) #17
  %8 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq1, align 8
  %call5 = tail call i32 @bcmgenet_isr1(i32 noundef %9, ptr noundef %add.ptr.i)
  %10 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq1, align 8
  tail call void @enable_irq(i32 noundef %11) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_set_features(ptr nocapture noundef %dev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %clk = getelementptr i8, ptr %dev, i32 18712
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 2056
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #17, !srcloc !248
  %crc_fwd_en = getelementptr i8, ptr %dev, i32 18700
  %sum.shift = lshr i32 %4, 30
  %5 = trunc i32 %sum.shift to i8
  %6 = and i8 %5, 1
  %7 = ptrtoint ptr %crc_fwd_en to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %crc_fwd_en, align 4
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %9) #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.end ], [ %1, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.i16.ph = phi i32 [ 0, %if.end ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0.i16 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.i16.ph, %cleanup.sink.split ]
  ret i32 %retval.0.i16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_change_carrier(ptr noundef %dev, i1 noundef zeroext %new_carrier) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %is_pseudo_fixed_link.i = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %is_pseudo_fixed_link.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %is_pseudo_fixed_link.i, align 8
  %3 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.i.not = icmp eq i16 %3, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %phy_interface = getelementptr i8, ptr %dev, i32 18576
  %4 = ptrtoint ptr %phy_interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_interface, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %5)
  %cmp.not = icmp eq i32 %5, 17
  br i1 %cmp.not, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  br i1 %new_carrier, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @netif_carrier_on(ptr noundef %dev) #17
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @netif_carrier_off(ptr noundef %dev) #17
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then5, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %lor.lhs.false3.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_umac(ptr noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 39
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_umac.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_umac, %if.then)) #17
          to label %do.end [label %if.then], !srcloc !247

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_umac.__UNIQUE_ID_ddebug493, ptr noundef %dev4, ptr noundef nonnull @.str.36) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %version.i.i = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 1
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr1.i.i.i = getelementptr i8, ptr %7, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i, i32 0) #17, !srcloc !249
  br label %reset_umac.exit

if.else.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr1.i4.i.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i4.i.i, i32 0) #17, !srcloc !249
  br label %reset_umac.exit

reset_umac.exit:                                  ; preds = %if.else.i.i, %if.then.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #17
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %10, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 2097152) #17, !srcloc !249
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 429496) #17
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %add.ptr1.i = getelementptr i8, ptr %13, i32 3456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 117440512) #17, !srcloc !249
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %add.ptr1.i96 = getelementptr i8, ptr %15, i32 3456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i96, i32 0) #17, !srcloc !249
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %add.ptr1.i98 = getelementptr i8, ptr %17, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i98, i32 393216) #17, !srcloc !249
  %18 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i = icmp eq i32 %19, 1
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 8
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %reset_umac.exit
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr1.i.i99 = getelementptr i8, ptr %21, i32 896
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i99) #17, !srcloc !248
  br label %bcmgenet_tbuf_ctrl_get.exit

if.else.i:                                        ; preds = %reset_umac.exit
  call void @__sanitizer_cov_trace_pc() #19
  %hw_params.i = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 14
  %23 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_params.i, align 8
  %tbuf_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %tbuf_offset.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tbuf_offset.i, align 4
  %conv.i = zext i16 %26 to i32
  %add.ptr.i100 = getelementptr i8, ptr %21, i32 %conv.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i100) #17, !srcloc !248
  br label %bcmgenet_tbuf_ctrl_get.exit

bcmgenet_tbuf_ctrl_get.exit:                      ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ %27, %if.else.i ], [ %22, %if.then.i ]
  %28 = or i32 %.sink.i, 16777216
  %29 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i102 = icmp eq i32 %30, 1
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  br i1 %cmp.i102, label %if.then.i104, label %if.else.i109

if.then.i104:                                     ; preds = %bcmgenet_tbuf_ctrl_get.exit
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr1.i.i103 = getelementptr i8, ptr %32, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i103, i32 %28) #17, !srcloc !249
  br label %bcmgenet_tbuf_ctrl_set.exit

if.else.i109:                                     ; preds = %bcmgenet_tbuf_ctrl_get.exit
  call void @__sanitizer_cov_trace_pc() #19
  %hw_params.i105 = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 14
  %33 = ptrtoint ptr %hw_params.i105 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_params.i105, align 8
  %tbuf_offset.i106 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %tbuf_offset.i106 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %tbuf_offset.i106, align 4
  %conv.i107 = zext i16 %36 to i32
  %add.ptr.i108 = getelementptr i8, ptr %32, i32 %conv.i107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %28) #17, !srcloc !249
  br label %bcmgenet_tbuf_ctrl_set.exit

bcmgenet_tbuf_ctrl_set.exit:                      ; preds = %if.else.i109, %if.then.i104
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 8
  %add.ptr.i110 = getelementptr i8, ptr %38, i32 768
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110) #17, !srcloc !248
  %40 = or i32 %39, 50331648
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 8
  %add.ptr.i111 = getelementptr i8, ptr %42, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 %40) #17, !srcloc !249
  %43 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv, align 8
  %add.ptr1.i113 = getelementptr i8, ptr %44, i32 788
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i113) #17, !srcloc !248
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #17
  %crc_fwd_en = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 35
  %47 = ptrtoint ptr %crc_fwd_en to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %crc_fwd_en, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool10.not = icmp eq i8 %48, 0
  %or12 = or i32 %46, 49
  %or9 = and i32 %46, -50
  %and = or i32 %or9, 33
  %reg.0 = select i1 %tobool10.not, i32 %and, i32 %or12
  %49 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #17
  %50 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv, align 8
  %add.ptr1.i115 = getelementptr i8, ptr %51, i32 788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i115, i32 %49) #17, !srcloc !249
  %52 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %version.i.i, align 4
  %.off = add i32 %53, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bcmgenet_tbuf_ctrl_set.exit.if.end17_crit_edge, label %if.then16

bcmgenet_tbuf_ctrl_set.exit.if.end17_crit_edge:   ; preds = %bcmgenet_tbuf_ctrl_set.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

if.then16:                                        ; preds = %bcmgenet_tbuf_ctrl_set.exit
  call void @__sanitizer_cov_trace_pc() #19
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 8
  %add.ptr1.i117 = getelementptr i8, ptr %55, i32 948
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i117, i32 16777216) #17, !srcloc !249
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %bcmgenet_tbuf_ctrl_set.exit.if.end17_crit_edge
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv, align 8
  %add.ptr1.i.i118 = getelementptr i8, ptr %57, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i118, i32 -1) #17, !srcloc !249
  %58 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv, align 8
  %add.ptr1.i5.i = getelementptr i8, ptr %59, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i5.i, i32 -1) #17, !srcloc !249
  %60 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv, align 8
  %add.ptr1.i7.i = getelementptr i8, ptr %61, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i, i32 -1) #17, !srcloc !249
  %62 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv, align 8
  %add.ptr1.i9.i = getelementptr i8, ptr %63, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i9.i, i32 -1) #17, !srcloc !249
  %phy_interface = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 24
  %64 = ptrtoint ptr %phy_interface to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %phy_interface, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %65)
  %cmp18 = icmp eq i32 %65, 17
  br i1 %cmp18, label %if.then19, label %if.end17.if.end32_crit_edge

if.end17.if.end32_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.then19:                                        ; preds = %if.end17
  %66 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp.i120 = icmp eq i32 %67, 1
  %68 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv, align 8
  br i1 %cmp.i120, label %if.then.i122, label %if.else.i128

if.then.i122:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr1.i.i121 = getelementptr i8, ptr %69, i32 928
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i121) #17, !srcloc !248
  br label %bcmgenet_bp_mc_get.exit

if.else.i128:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #19
  %hw_params.i123 = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 14
  %71 = ptrtoint ptr %hw_params.i123 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw_params.i123, align 8
  %tbuf_offset.i124 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %72, i32 0, i32 9
  %73 = ptrtoint ptr %tbuf_offset.i124 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %tbuf_offset.i124, align 4
  %conv.i125 = zext i16 %74 to i32
  %add.ptr.i126 = getelementptr i8, ptr %69, i32 %conv.i125
  %add.ptr1.i127 = getelementptr i8, ptr %add.ptr.i126, i32 12
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i127) #17, !srcloc !248
  br label %bcmgenet_bp_mc_get.exit

bcmgenet_bp_mc_get.exit:                          ; preds = %if.else.i128, %if.then.i122
  %.sink.i129 = phi i32 [ %75, %if.else.i128 ], [ %70, %if.then.i122 ]
  %76 = tail call i32 @llvm.bswap.i32(i32 %.sink.i129) #17
  %hw_params = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 14
  %77 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw_params, align 8
  %bp_in_en_shift = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %bp_in_en_shift to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bp_in_en_shift, align 4
  %conv = zext i8 %80 to i32
  %shl = shl nuw i32 1, %conv
  %or21 = or i32 %shl, %76
  %dev22 = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 2
  %81 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev22, align 8
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 104
  %83 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp.i130 = icmp ugt i32 %84, 1
  %bp_in_mask = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %78, i32 0, i32 5
  %85 = ptrtoint ptr %bp_in_mask to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %bp_in_mask, align 4
  %or26 = or i32 %86, %or21
  %neg = xor i32 %86, -1
  %and30 = and i32 %or21, %neg
  %reg.1 = select i1 %cmp.i130, i32 %or26, i32 %and30
  %87 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp.i132 = icmp eq i32 %88, 1
  br i1 %cmp.i132, label %if.then.i134, label %if.else.i140

if.then.i134:                                     ; preds = %bcmgenet_bp_mc_get.exit
  call void @__sanitizer_cov_trace_pc() #19
  %89 = tail call i32 @llvm.bswap.i32(i32 %reg.1) #17
  %90 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %priv, align 8
  %add.ptr1.i.i133 = getelementptr i8, ptr %91, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i133, i32 %89) #17, !srcloc !249
  br label %if.end32

if.else.i140:                                     ; preds = %bcmgenet_bp_mc_get.exit
  call void @__sanitizer_cov_trace_pc() #19
  %92 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %priv, align 8
  %tbuf_offset.i136 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %78, i32 0, i32 9
  %94 = ptrtoint ptr %tbuf_offset.i136 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %tbuf_offset.i136, align 4
  %conv.i137 = zext i16 %95 to i32
  %add.ptr.i138 = getelementptr i8, ptr %93, i32 %conv.i137
  %add.ptr1.i139 = getelementptr i8, ptr %add.ptr.i138, i32 12
  %96 = tail call i32 @llvm.bswap.i32(i32 %reg.1) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i139, i32 %96) #17, !srcloc !249
  br label %if.end32

if.end32:                                         ; preds = %if.else.i140, %if.then.i134, %if.end17.if.end32_crit_edge
  %hw_params33 = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 14
  %97 = ptrtoint ptr %hw_params33 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw_params33, align 8
  %flags = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %98, i32 0, i32 15
  %99 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags, align 4
  %and34 = and i32 %100, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %spec.select = select i1 %tobool35.not, i32 0, i32 25165824
  %101 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #17
  %102 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %priv, align 8
  %add.ptr1.i142 = getelementptr i8, ptr %103, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i142, i32 %101) #17, !srcloc !249
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_umac.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_umac, %if.then51)) #17
          to label %do.end54 [label %if.then51], !srcloc !247

if.then51:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_umac.__UNIQUE_ID_ddebug494, ptr noundef %dev, ptr noundef nonnull @.str.37) #17
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %if.end32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcmgenet_dma_disable(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_params = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 14
  %0 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_params, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp69.not = icmp eq i8 %3, 0
  br i1 %cmp69.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %dma_ctrl.071 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 131073, %entry.for.body_crit_edge ]
  %i.070 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.070, 1
  %shl = shl i32 2, %i.070
  %or = or i32 %dma_ctrl.071, %shl
  %exitcond.not = icmp eq i32 %add, %conv
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %phi.bo = xor i32 %or, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %dma_ctrl.0.lcssa = phi i32 [ -131074, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %tdma_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %tdma_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tdma_offset.i, align 4
  %words_per_bd.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %words_per_bd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %words_per_bd.i, align 4
  %mul2.i = shl i32 %9, 10
  %add.i = add i32 %mul2.i, %7
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 1088
  %10 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i = getelementptr i8, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %12 to i32
  %add.ptr4.i = getelementptr i8, ptr %add.ptr3.i, i32 %conv.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #17, !srcloc !248
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #17
  %and = and i32 %14, %dma_ctrl.0.lcssa
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  %17 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_params, align 8
  %tdma_offset.i37 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %tdma_offset.i37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tdma_offset.i37, align 4
  %words_per_bd.i38 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %18, i32 0, i32 14
  %21 = ptrtoint ptr %words_per_bd.i38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %words_per_bd.i38, align 4
  %mul2.i39 = shl i32 %22, 10
  %add.i40 = add i32 %mul2.i39, %20
  %add.ptr.i41 = getelementptr i8, ptr %16, i32 %add.i40
  %add.ptr3.i42 = getelementptr i8, ptr %add.ptr.i41, i32 1088
  %23 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i43 = getelementptr i8, ptr %23, i32 1
  %24 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i43, align 1
  %conv.i44 = zext i8 %25 to i32
  %add.ptr4.i45 = getelementptr i8, ptr %add.ptr3.i42, i32 %conv.i44
  %26 = tail call i32 @llvm.bswap.i32(i32 %and) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i45, i32 %26) #17, !srcloc !249
  %27 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_params, align 8
  %rx_queues = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %rx_queues to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rx_queues, align 2
  %conv4 = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp574.not = icmp eq i8 %30, 0
  br i1 %cmp574.not, label %for.end.for.end13_crit_edge, label %for.end.for.body7_crit_edge

for.end.for.body7_crit_edge:                      ; preds = %for.end
  br label %for.body7

for.end.for.end13_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end13

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.end.for.body7_crit_edge
  %dma_ctrl.176 = phi i32 [ %or10, %for.body7.for.body7_crit_edge ], [ 131073, %for.end.for.body7_crit_edge ]
  %i.175 = phi i32 [ %add8, %for.body7.for.body7_crit_edge ], [ 0, %for.end.for.body7_crit_edge ]
  %add8 = add nuw nsw i32 %i.175, 1
  %shl9 = shl i32 2, %i.175
  %or10 = or i32 %dma_ctrl.176, %shl9
  %exitcond79.not = icmp eq i32 %add8, %conv4
  br i1 %exitcond79.not, label %for.body7.for.end13_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body7

for.body7.for.end13_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end13

for.end13:                                        ; preds = %for.body7.for.end13_crit_edge, %for.end.for.end13_crit_edge
  %dma_ctrl.1.lcssa = phi i32 [ 131073, %for.end.for.end13_crit_edge ], [ %or10, %for.body7.for.end13_crit_edge ]
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  %rdma_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %28, i32 0, i32 12
  %33 = ptrtoint ptr %rdma_offset.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rdma_offset.i, align 4
  %words_per_bd.i47 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %28, i32 0, i32 14
  %35 = ptrtoint ptr %words_per_bd.i47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %words_per_bd.i47, align 4
  %mul2.i48 = shl i32 %36, 10
  %add.i49 = add i32 %mul2.i48, %34
  %add.ptr.i50 = getelementptr i8, ptr %32, i32 %add.i49
  %add.ptr3.i51 = getelementptr i8, ptr %add.ptr.i50, i32 1088
  %37 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i52 = getelementptr i8, ptr %37, i32 1
  %38 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i52, align 1
  %conv.i53 = zext i8 %39 to i32
  %add.ptr4.i54 = getelementptr i8, ptr %add.ptr3.i51, i32 %conv.i53
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i54) #17, !srcloc !248
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #17
  %neg15 = xor i32 %dma_ctrl.1.lcssa, -1
  %and16 = and i32 %41, %neg15
  %42 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv, align 8
  %44 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw_params, align 8
  %rdma_offset.i56 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %rdma_offset.i56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rdma_offset.i56, align 4
  %words_per_bd.i57 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %45, i32 0, i32 14
  %48 = ptrtoint ptr %words_per_bd.i57 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %words_per_bd.i57, align 4
  %mul2.i58 = shl i32 %49, 10
  %add.i59 = add i32 %mul2.i58, %47
  %add.ptr.i60 = getelementptr i8, ptr %43, i32 %add.i59
  %add.ptr3.i61 = getelementptr i8, ptr %add.ptr.i60, i32 1088
  %50 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i62 = getelementptr i8, ptr %50, i32 1
  %51 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i62, align 1
  %conv.i63 = zext i8 %52 to i32
  %add.ptr4.i64 = getelementptr i8, ptr %add.ptr3.i61, i32 %conv.i63
  %53 = tail call i32 @llvm.bswap.i32(i32 %and16) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i64, i32 %53) #17, !srcloc !249
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 8
  %add.ptr1.i = getelementptr i8, ptr %55, i32 2868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 16777216) #17, !srcloc !249
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 2147480) #17
  %57 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv, align 8
  %add.ptr1.i67 = getelementptr i8, ptr %58, i32 2868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i67, i32 0) #17, !srcloc !249
  ret i32 %dma_ctrl.1.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcmgenet_init_dma(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  %dma_priority.i = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 37
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcmgenet_init_dma.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcmgenet_init_dma, %if.then5)) #17
          to label %do.end8 [label %if.then5], !srcloc !247

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcmgenet_init_dma.__UNIQUE_ID_ddebug495, ptr noundef %3, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38) #17
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %hw_params = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 14
  %6 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_params, align 8
  %rdma_offset = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %rdma_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rdma_offset, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %9
  %rx_bds = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 7
  %10 = ptrtoint ptr %rx_bds to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %rx_bds, align 8
  %num_rx_bds = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 9
  %11 = ptrtoint ptr %num_rx_bds to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 256, ptr %num_rx_bds, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 4096) #21
  %rx_cbs = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 8
  %13 = ptrtoint ptr %rx_cbs to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %rx_cbs, align 4
  %tobool12.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool12.not, label %do.end8.cleanup_crit_edge, label %for.cond.preheader

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end8
  %14 = ptrtoint ptr %num_rx_bds to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_rx_bds, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp158.not = icmp eq i32 %15, 0
  br i1 %cmp158.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0159 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %16 = ptrtoint ptr %rx_cbs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_cbs, align 4
  %18 = ptrtoint ptr %rx_bds to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_bds, align 8
  %20 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_params, align 8
  %words_per_bd = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %words_per_bd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %words_per_bd, align 4
  %mul = shl i32 %i.0159, 2
  %mul20 = mul i32 %mul, %23
  %add.ptr21 = getelementptr i8, ptr %19, i32 %mul20
  %bd_addr = getelementptr %struct.enet_cb, ptr %17, i32 %i.0159, i32 1
  %24 = ptrtoint ptr %bd_addr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr21, ptr %bd_addr, align 4
  %inc = add nuw i32 %i.0159, 1
  %25 = ptrtoint ptr %num_rx_bds to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_rx_bds, align 8
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %29 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_params, align 8
  %tdma_offset = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %30, i32 0, i32 13
  %31 = ptrtoint ptr %tdma_offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tdma_offset, align 4
  %add.ptr24 = getelementptr i8, ptr %28, i32 %32
  %tx_bds = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 3
  %33 = ptrtoint ptr %tx_bds to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr24, ptr %tx_bds, align 4
  %num_tx_bds = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 5
  %34 = ptrtoint ptr %num_tx_bds to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 256, ptr %num_tx_bds, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i103 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 4096) #21
  %tx_cbs = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 4
  %36 = ptrtoint ptr %tx_cbs to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i.i103, ptr %tx_cbs, align 8
  %tobool28.not = icmp eq ptr %call7.i.i.i103, null
  br i1 %tobool28.not, label %if.then29, label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %for.end
  %37 = ptrtoint ptr %num_tx_bds to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_tx_bds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp34160.not = icmp eq i32 %38, 0
  br i1 %cmp34160.not, label %for.cond32.preheader.for.end47_crit_edge, label %for.cond32.preheader.for.body35_crit_edge

for.cond32.preheader.for.body35_crit_edge:        ; preds = %for.cond32.preheader
  br label %for.body35

for.cond32.preheader.for.end47_crit_edge:         ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end47

if.then29:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %39 = ptrtoint ptr %rx_cbs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_cbs, align 4
  tail call void @kfree(ptr noundef %40) #17
  br label %cleanup

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.cond32.preheader.for.body35_crit_edge
  %i.1161 = phi i32 [ %inc46, %for.body35.for.body35_crit_edge ], [ 0, %for.cond32.preheader.for.body35_crit_edge ]
  %41 = ptrtoint ptr %tx_cbs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_cbs, align 8
  %43 = ptrtoint ptr %tx_bds to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_bds, align 4
  %45 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_params, align 8
  %words_per_bd40 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %46, i32 0, i32 14
  %47 = ptrtoint ptr %words_per_bd40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %words_per_bd40, align 4
  %mul41 = shl i32 %i.1161, 2
  %mul42 = mul i32 %mul41, %48
  %add.ptr43 = getelementptr i8, ptr %44, i32 %mul42
  %bd_addr44 = getelementptr %struct.enet_cb, ptr %42, i32 %i.1161, i32 1
  %49 = ptrtoint ptr %bd_addr44 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr43, ptr %bd_addr44, align 4
  %inc46 = add nuw i32 %i.1161, 1
  %50 = ptrtoint ptr %num_tx_bds to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_tx_bds, align 4
  %cmp34 = icmp ult i32 %inc46, %51
  br i1 %cmp34, label %for.body35.for.body35_crit_edge, label %for.body35.for.end47_crit_edge

for.body35.for.end47_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end47

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body35

for.end47:                                        ; preds = %for.body35.for.end47_crit_edge, %for.cond32.preheader.for.end47_crit_edge
  %dma_max_burst_length = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 36
  %52 = ptrtoint ptr %dma_max_burst_length to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dma_max_burst_length, align 8
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 8
  %56 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw_params, align 8
  %rdma_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %57, i32 0, i32 12
  %58 = ptrtoint ptr %rdma_offset.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rdma_offset.i, align 4
  %words_per_bd.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %57, i32 0, i32 14
  %60 = ptrtoint ptr %words_per_bd.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %words_per_bd.i, align 4
  %mul2.i = shl i32 %61, 10
  %add.i = add i32 %mul2.i, %59
  %add.ptr.i = getelementptr i8, ptr %55, i32 %add.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 1088
  %62 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i = getelementptr i8, ptr %62, i32 3
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %64 to i32
  %add.ptr4.i = getelementptr i8, ptr %add.ptr3.i, i32 %conv.i
  %65 = tail call i32 @llvm.bswap.i32(i32 %53) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %65) #17, !srcloc !249
  %dev48 = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 2
  %66 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev48, align 8
  %add.ptr.i.i = getelementptr i8, ptr %67, i32 2304
  %68 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i.i, align 8
  %hw_params.i.i = getelementptr i8, ptr %67, i32 18488
  %70 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw_params.i.i, align 8
  %rdma_offset.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %71, i32 0, i32 12
  %72 = ptrtoint ptr %rdma_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rdma_offset.i.i, align 4
  %words_per_bd.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %71, i32 0, i32 14
  %74 = ptrtoint ptr %words_per_bd.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %words_per_bd.i.i, align 4
  %mul2.i.i = shl i32 %75, 10
  %add.i.i = add i32 %mul2.i.i, %73
  %add.ptr.i76.i = getelementptr i8, ptr %69, i32 %add.i.i
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr.i76.i, i32 1088
  %76 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i.i = getelementptr i8, ptr %76, i32 1
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %78 to i32
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr3.i.i, i32 %conv.i.i
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #17, !srcloc !248
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #17
  %and.i = and i32 %80, 1
  %and2.i = and i32 %80, -2
  %81 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr.i.i, align 8
  %83 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw_params.i.i, align 8
  %rdma_offset.i78.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %84, i32 0, i32 12
  %85 = ptrtoint ptr %rdma_offset.i78.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rdma_offset.i78.i, align 4
  %words_per_bd.i79.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %84, i32 0, i32 14
  %87 = ptrtoint ptr %words_per_bd.i79.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %words_per_bd.i79.i, align 4
  %mul2.i80.i = shl i32 %88, 10
  %add.i81.i = add i32 %mul2.i80.i, %86
  %add.ptr.i82.i = getelementptr i8, ptr %82, i32 %add.i81.i
  %add.ptr3.i83.i = getelementptr i8, ptr %add.ptr.i82.i, i32 1088
  %89 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i84.i = getelementptr i8, ptr %89, i32 1
  %90 = ptrtoint ptr %arrayidx.i84.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.i84.i, align 1
  %conv.i85.i = zext i8 %91 to i32
  %add.ptr4.i86.i = getelementptr i8, ptr %add.ptr3.i83.i, i32 %conv.i85.i
  %92 = tail call i32 @llvm.bswap.i32(i32 %and2.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i86.i, i32 %92) #17, !srcloc !249
  %93 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw_params.i.i, align 8
  %rx_queues111.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %rx_queues111.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %rx_queues111.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp113.not.i = icmp eq i8 %96, 0
  br i1 %cmp113.not.i, label %for.end47.for.end.i_crit_edge, label %for.end47.for.body.i_crit_edge

for.end47.for.body.i_crit_edge:                   ; preds = %for.end47
  br label %for.body.i

for.end47.for.end.i_crit_edge:                    ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.end47.for.body.i_crit_edge
  %97 = phi ptr [ %101, %if.end.i.for.body.i_crit_edge ], [ %94, %for.end47.for.body.i_crit_edge ]
  %ring_cfg.0116.i = phi i32 [ %or.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.end47.for.body.i_crit_edge ]
  %dma_ctrl.0115.i = phi i32 [ %or16.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.end47.for.body.i_crit_edge ]
  %i.0114.i = phi i32 [ %add.i104, %if.end.i.for.body.i_crit_edge ], [ 0, %for.end47.for.body.i_crit_edge ]
  %rx_bds_per_q.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %rx_bds_per_q.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %rx_bds_per_q.i, align 1
  %conv5.i = zext i8 %99 to i32
  %mul.i = mul i32 %i.0114.i, %conv5.i
  %add.i104 = add nuw nsw i32 %i.0114.i, 1
  %mul12.i = mul i32 %add.i104, %conv5.i
  %call13.i = tail call fastcc i32 @bcmgenet_init_rx_ring(ptr noundef %add.ptr.i.i, i32 noundef %i.0114.i, i32 noundef %conv5.i, i32 noundef %mul.i, i32 noundef %mul12.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.if.then51_crit_edge

for.body.i.if.then51_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then51

if.end.i:                                         ; preds = %for.body.i
  %shl.i = shl nuw i32 1, %i.0114.i
  %or.i = or i32 %shl.i, %ring_cfg.0116.i
  %shl15.i = shl i32 2, %i.0114.i
  %or16.i = or i32 %shl15.i, %dma_ctrl.0115.i
  %100 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hw_params.i.i, align 8
  %rx_queues.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %rx_queues.i, align 2
  %conv.i105 = zext i8 %103 to i32
  %cmp.i = icmp ult i32 %add.i104, %conv.i105
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %for.end.loopexit.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %conv.i105.le = zext i8 %103 to i32
  %phi.bo.i = or i32 %or.i, 65536
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %for.end47.for.end.i_crit_edge
  %.lcssa110.i = phi i32 [ %conv.i105.le, %for.end.loopexit.i ], [ 0, %for.end47.for.end.i_crit_edge ]
  %dma_ctrl.0.lcssa.i = phi i32 [ %or16.i, %for.end.loopexit.i ], [ 0, %for.end47.for.end.i_crit_edge ]
  %ring_cfg.0.lcssa.i = phi i32 [ %phi.bo.i, %for.end.loopexit.i ], [ 65536, %for.end47.for.end.i_crit_edge ]
  %.lcssa.i = phi ptr [ %101, %for.end.loopexit.i ], [ %94, %for.end47.for.end.i_crit_edge ]
  %rx_bds_per_q21.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %.lcssa.i, i32 0, i32 3
  %104 = ptrtoint ptr %rx_bds_per_q21.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %rx_bds_per_q21.i, align 1
  %conv22.i = zext i8 %105 to i32
  %mul23.i = mul nuw nsw i32 %.lcssa110.i, %conv22.i
  %sub.i = sub nsw i32 256, %mul23.i
  %call31.i = tail call fastcc i32 @bcmgenet_init_rx_ring(ptr noundef %add.ptr.i.i, i32 noundef 16, i32 noundef %sub.i, i32 noundef %mul23.i, i32 noundef 256) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end55, label %for.end.i.if.then51_crit_edge

for.end.i.if.then51_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then51

if.then51:                                        ; preds = %for.end.i.if.then51_crit_edge, %for.body.i.if.then51_crit_edge
  %retval.0.i106.ph = phi i32 [ %call31.i, %for.end.i.if.then51_crit_edge ], [ %call13.i, %for.body.i.if.then51_crit_edge ]
  %106 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev48, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %107, ptr noundef nonnull @.str.40) #20
  %108 = ptrtoint ptr %num_rx_bds to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_rx_bds, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp6.not.i = icmp eq i32 %109, 0
  br i1 %cmp6.not.i, label %if.then51.bcmgenet_free_rx_buffers.exit_crit_edge, label %for.body.lr.ph.i

if.then51.bcmgenet_free_rx_buffers.exit_crit_edge: ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_free_rx_buffers.exit

for.body.lr.ph.i:                                 ; preds = %if.then51
  %pdev.i = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 39
  br label %for.body.i108

for.body.i108:                                    ; preds = %for.inc.i.for.body.i108_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i108_crit_edge ]
  %110 = ptrtoint ptr %rx_cbs to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rx_cbs, align 4
  %arrayidx.i107 = getelementptr %struct.enet_cb, ptr %111, i32 %i.07.i
  %112 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pdev.i, align 4
  %114 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i107, align 4
  store ptr null, ptr %arrayidx.i107, align 4
  %dma_addr.i.i = getelementptr %struct.enet_cb, ptr %111, i32 %i.07.i, i32 2
  %116 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dma_addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool.not.i.i = icmp eq i32 %117, 0
  br i1 %tobool.not.i.i, label %for.body.i108.bcmgenet_free_rx_cb.exit.i_crit_edge, label %if.then.i.i

for.body.i108.bcmgenet_free_rx_cb.exit.i_crit_edge: ; preds = %for.body.i108
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_free_rx_cb.exit.i

if.then.i.i:                                      ; preds = %for.body.i108
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %113, i32 0, i32 3
  %dma_len.i.i = getelementptr %struct.enet_cb, ptr %111, i32 %i.07.i, i32 3
  %118 = ptrtoint ptr %dma_len.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dma_len.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %117, i32 noundef %119, i32 noundef 2, i32 noundef 0) #17
  %120 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %dma_addr.i.i, align 4
  br label %bcmgenet_free_rx_cb.exit.i

bcmgenet_free_rx_cb.exit.i:                       ; preds = %if.then.i.i, %for.body.i108.bcmgenet_free_rx_cb.exit.i_crit_edge
  %tobool.not.i109 = icmp eq ptr %115, null
  br i1 %tobool.not.i109, label %bcmgenet_free_rx_cb.exit.i.for.inc.i_crit_edge, label %if.then.i

bcmgenet_free_rx_cb.exit.i.for.inc.i_crit_edge:   ; preds = %bcmgenet_free_rx_cb.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.then.i:                                        ; preds = %bcmgenet_free_rx_cb.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %115, i32 noundef 0) #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %bcmgenet_free_rx_cb.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.07.i, 1
  %121 = ptrtoint ptr %num_rx_bds to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %num_rx_bds, align 8
  %cmp.i110 = icmp ult i32 %inc.i, %122
  br i1 %cmp.i110, label %for.inc.i.for.body.i108_crit_edge, label %for.inc.i.bcmgenet_free_rx_buffers.exit_crit_edge

for.inc.i.bcmgenet_free_rx_buffers.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_free_rx_buffers.exit

for.inc.i.for.body.i108_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i108

bcmgenet_free_rx_buffers.exit:                    ; preds = %for.inc.i.bcmgenet_free_rx_buffers.exit_crit_edge, %if.then51.bcmgenet_free_rx_buffers.exit_crit_edge
  %123 = ptrtoint ptr %rx_cbs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rx_cbs, align 4
  tail call void @kfree(ptr noundef %124) #17
  %125 = ptrtoint ptr %tx_cbs to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %tx_cbs, align 8
  tail call void @kfree(ptr noundef %126) #17
  br label %cleanup

if.end55:                                         ; preds = %for.end.i
  %127 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %add.ptr.i.i, align 8
  %129 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hw_params.i.i, align 8
  %rdma_offset.i88.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %130, i32 0, i32 12
  %131 = ptrtoint ptr %rdma_offset.i88.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rdma_offset.i88.i, align 4
  %words_per_bd.i89.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %130, i32 0, i32 14
  %133 = ptrtoint ptr %words_per_bd.i89.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %words_per_bd.i89.i, align 4
  %mul2.i90.i = shl i32 %134, 10
  %add.i91.i = add i32 %mul2.i90.i, %132
  %add.ptr.i92.i = getelementptr i8, ptr %128, i32 %add.i91.i
  %add.ptr3.i93.i = getelementptr i8, ptr %add.ptr.i92.i, i32 1088
  %135 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %135, align 1
  %conv.i94.i = zext i8 %137 to i32
  %add.ptr4.i95.i = getelementptr i8, ptr %add.ptr3.i93.i, i32 %conv.i94.i
  %138 = tail call i32 @llvm.bswap.i32(i32 %ring_cfg.0.lcssa.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i95.i, i32 %138) #17, !srcloc !249
  %139 = or i32 %and.i, %dma_ctrl.0.lcssa.i
  %spec.select.i = or i32 %139, 131072
  %140 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %add.ptr.i.i, align 8
  %142 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hw_params.i.i, align 8
  %rdma_offset.i97.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %143, i32 0, i32 12
  %144 = ptrtoint ptr %rdma_offset.i97.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rdma_offset.i97.i, align 4
  %words_per_bd.i98.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %143, i32 0, i32 14
  %146 = ptrtoint ptr %words_per_bd.i98.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %words_per_bd.i98.i, align 4
  %mul2.i99.i = shl i32 %147, 10
  %add.i100.i = add i32 %mul2.i99.i, %145
  %add.ptr.i101.i = getelementptr i8, ptr %141, i32 %add.i100.i
  %add.ptr3.i102.i = getelementptr i8, ptr %add.ptr.i101.i, i32 1088
  %148 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i103.i = getelementptr i8, ptr %148, i32 1
  %149 = ptrtoint ptr %arrayidx.i103.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx.i103.i, align 1
  %conv.i104.i = zext i8 %150 to i32
  %add.ptr4.i105.i = getelementptr i8, ptr %add.ptr3.i102.i, i32 %conv.i104.i
  %151 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i105.i, i32 %151) #17, !srcloc !249
  %152 = ptrtoint ptr %dma_max_burst_length to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %dma_max_burst_length, align 8
  %154 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %priv, align 8
  %156 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %hw_params, align 8
  %tdma_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %157, i32 0, i32 13
  %158 = ptrtoint ptr %tdma_offset.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %tdma_offset.i, align 4
  %words_per_bd.i113 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %157, i32 0, i32 14
  %160 = ptrtoint ptr %words_per_bd.i113 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %words_per_bd.i113, align 4
  %mul2.i114 = shl i32 %161, 10
  %add.i115 = add i32 %mul2.i114, %159
  %add.ptr.i116 = getelementptr i8, ptr %155, i32 %add.i115
  %add.ptr3.i117 = getelementptr i8, ptr %add.ptr.i116, i32 1088
  %162 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i118 = getelementptr i8, ptr %162, i32 3
  %163 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx.i118, align 1
  %conv.i119 = zext i8 %164 to i32
  %add.ptr4.i120 = getelementptr i8, ptr %add.ptr3.i117, i32 %conv.i119
  %165 = tail call i32 @llvm.bswap.i32(i32 %153) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i120, i32 %165) #17, !srcloc !249
  %166 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev48, align 8
  %add.ptr.i.i121 = getelementptr i8, ptr %167, i32 2304
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dma_priority.i) #17
  %168 = call ptr @memset(ptr %dma_priority.i, i32 0, i32 12)
  %169 = ptrtoint ptr %add.ptr.i.i121 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %add.ptr.i.i121, align 8
  %hw_params.i.i122 = getelementptr i8, ptr %167, i32 18488
  %171 = ptrtoint ptr %hw_params.i.i122 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %hw_params.i.i122, align 8
  %tdma_offset.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %172, i32 0, i32 13
  %173 = ptrtoint ptr %tdma_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %tdma_offset.i.i, align 4
  %words_per_bd.i.i123 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %172, i32 0, i32 14
  %175 = ptrtoint ptr %words_per_bd.i.i123 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %words_per_bd.i.i123, align 4
  %mul2.i.i124 = shl i32 %176, 10
  %add.i.i125 = add i32 %mul2.i.i124, %174
  %add.ptr.i82.i126 = getelementptr i8, ptr %170, i32 %add.i.i125
  %add.ptr3.i.i127 = getelementptr i8, ptr %add.ptr.i82.i126, i32 1088
  %177 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i.i128 = getelementptr i8, ptr %177, i32 1
  %178 = ptrtoint ptr %arrayidx.i.i128 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx.i.i128, align 1
  %conv.i.i129 = zext i8 %179 to i32
  %add.ptr4.i.i130 = getelementptr i8, ptr %add.ptr3.i.i127, i32 %conv.i.i129
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i130) #17, !srcloc !248
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #17
  %and2.i131 = and i32 %181, -2
  %182 = ptrtoint ptr %add.ptr.i.i121 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %add.ptr.i.i121, align 8
  %184 = ptrtoint ptr %hw_params.i.i122 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %hw_params.i.i122, align 8
  %tdma_offset.i84.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %185, i32 0, i32 13
  %186 = ptrtoint ptr %tdma_offset.i84.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %tdma_offset.i84.i, align 4
  %words_per_bd.i85.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %185, i32 0, i32 14
  %188 = ptrtoint ptr %words_per_bd.i85.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %words_per_bd.i85.i, align 4
  %mul2.i86.i = shl i32 %189, 10
  %add.i87.i = add i32 %mul2.i86.i, %187
  %add.ptr.i88.i = getelementptr i8, ptr %183, i32 %add.i87.i
  %add.ptr3.i89.i = getelementptr i8, ptr %add.ptr.i88.i, i32 1088
  %190 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i90.i = getelementptr i8, ptr %190, i32 1
  %191 = ptrtoint ptr %arrayidx.i90.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx.i90.i, align 1
  %conv.i91.i = zext i8 %192 to i32
  %add.ptr4.i92.i = getelementptr i8, ptr %add.ptr3.i89.i, i32 %conv.i91.i
  %193 = tail call i32 @llvm.bswap.i32(i32 %and2.i131) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i92.i, i32 %193) #17, !srcloc !249
  %194 = ptrtoint ptr %add.ptr.i.i121 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %add.ptr.i.i121, align 8
  %196 = ptrtoint ptr %hw_params.i.i122 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %hw_params.i.i122, align 8
  %tdma_offset.i94.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %197, i32 0, i32 13
  %198 = ptrtoint ptr %tdma_offset.i94.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %tdma_offset.i94.i, align 4
  %words_per_bd.i95.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %197, i32 0, i32 14
  %200 = ptrtoint ptr %words_per_bd.i95.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %words_per_bd.i95.i, align 4
  %mul2.i96.i = shl i32 %201, 10
  %add.i97.i = add i32 %mul2.i96.i, %199
  %add.ptr.i98.i = getelementptr i8, ptr %195, i32 %add.i97.i
  %add.ptr3.i99.i = getelementptr i8, ptr %add.ptr.i98.i, i32 1088
  %202 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i100.i = getelementptr i8, ptr %202, i32 4
  %203 = ptrtoint ptr %arrayidx.i100.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx.i100.i, align 1
  %conv.i101.i = zext i8 %204 to i32
  %add.ptr4.i102.i = getelementptr i8, ptr %add.ptr3.i99.i, i32 %conv.i101.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i102.i, i32 33554432) #17, !srcloc !249
  %205 = ptrtoint ptr %hw_params.i.i122 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %hw_params.i.i122, align 8
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %206, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %cmp154.not.i = icmp eq i8 %208, 0
  br i1 %cmp154.not.i, label %if.end55.bcmgenet_init_tx_queues.exit_crit_edge, label %if.end55.for.body.i141_crit_edge

if.end55.for.body.i141_crit_edge:                 ; preds = %if.end55
  br label %for.body.i141

if.end55.bcmgenet_init_tx_queues.exit_crit_edge:  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_init_tx_queues.exit

for.body.i141:                                    ; preds = %for.body.i141.for.body.i141_crit_edge, %if.end55.for.body.i141_crit_edge
  %209 = phi ptr [ %216, %for.body.i141.for.body.i141_crit_edge ], [ %206, %if.end55.for.body.i141_crit_edge ]
  %ring_cfg.0157.i = phi i32 [ %or.i137, %for.body.i141.for.body.i141_crit_edge ], [ 0, %if.end55.for.body.i141_crit_edge ]
  %dma_ctrl.0156.i = phi i32 [ %or15.i, %for.body.i141.for.body.i141_crit_edge ], [ 0, %if.end55.for.body.i141_crit_edge ]
  %i.0155.i = phi i32 [ %add.i134, %for.body.i141.for.body.i141_crit_edge ], [ 0, %if.end55.for.body.i141_crit_edge ]
  %tx_bds_per_q.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %tx_bds_per_q.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %tx_bds_per_q.i, align 1
  %conv5.i132 = zext i8 %211 to i32
  %mul.i133 = mul i32 %i.0155.i, %conv5.i132
  %add.i134 = add nuw nsw i32 %i.0155.i, 1
  %mul12.i135 = mul i32 %add.i134, %conv5.i132
  tail call fastcc void @bcmgenet_init_tx_ring(ptr noundef %add.ptr.i.i121, i32 noundef %i.0155.i, i32 noundef %conv5.i132, i32 noundef %mul.i133, i32 noundef %mul12.i135) #17
  %shl.i136 = shl nuw i32 1, %i.0155.i
  %or.i137 = or i32 %shl.i136, %ring_cfg.0157.i
  %shl14.i = shl i32 2, %i.0155.i
  %or15.i = or i32 %shl14.i, %dma_ctrl.0156.i
  %div.i = udiv i32 %i.0155.i, 6
  %212 = mul i32 %div.i, 6
  %rem.i.decomposed = sub i32 %i.0155.i, %212
  %mul17.i = mul nuw nsw i32 %rem.i.decomposed, 5
  %shl18.i = shl i32 %i.0155.i, %mul17.i
  %arrayidx.i138 = getelementptr [3 x i32], ptr %dma_priority.i, i32 0, i32 %div.i
  %213 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx.i138, align 4
  %or19.i = or i32 %214, %shl18.i
  store i32 %or19.i, ptr %arrayidx.i138, align 4
  %215 = ptrtoint ptr %hw_params.i.i122 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %hw_params.i.i122, align 8
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %216, align 4
  %conv.i139 = zext i8 %218 to i32
  %cmp.i140 = icmp ult i32 %add.i134, %conv.i139
  br i1 %cmp.i140, label %for.body.i141.for.body.i141_crit_edge, label %for.end.loopexit.i144

for.body.i141.for.body.i141_crit_edge:            ; preds = %for.body.i141
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i141

for.end.loopexit.i144:                            ; preds = %for.body.i141
  call void @__sanitizer_cov_trace_pc() #19
  %conv.i139.le = zext i8 %218 to i32
  %phi.bo.i143 = or i32 %or.i137, 65536
  br label %bcmgenet_init_tx_queues.exit

bcmgenet_init_tx_queues.exit:                     ; preds = %for.end.loopexit.i144, %if.end55.bcmgenet_init_tx_queues.exit_crit_edge
  %.lcssa152.i = phi i32 [ %conv.i139.le, %for.end.loopexit.i144 ], [ 0, %if.end55.bcmgenet_init_tx_queues.exit_crit_edge ]
  %dma_ctrl.0.lcssa.i145 = phi i32 [ %or15.i, %for.end.loopexit.i144 ], [ 0, %if.end55.bcmgenet_init_tx_queues.exit_crit_edge ]
  %ring_cfg.0.lcssa.i146 = phi i32 [ %phi.bo.i143, %for.end.loopexit.i144 ], [ 65536, %if.end55.bcmgenet_init_tx_queues.exit_crit_edge ]
  %.lcssa.i147 = phi ptr [ %216, %for.end.loopexit.i144 ], [ %206, %if.end55.bcmgenet_init_tx_queues.exit_crit_edge ]
  %and.i148 = and i32 %181, 1
  %tx_bds_per_q24.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %.lcssa.i147, i32 0, i32 1
  %219 = ptrtoint ptr %tx_bds_per_q24.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %tx_bds_per_q24.i, align 1
  %conv25.i = zext i8 %220 to i32
  %mul26.i = mul nuw nsw i32 %.lcssa152.i, %conv25.i
  %sub.i149 = sub nsw i32 256, %mul26.i
  tail call fastcc void @bcmgenet_init_tx_ring(ptr noundef %add.ptr.i.i121, i32 noundef 16, i32 noundef %sub.i149, i32 noundef %mul26.i, i32 noundef 256) #17
  %221 = ptrtoint ptr %hw_params.i.i122 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %hw_params.i.i122, align 8
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %222, align 4
  %conv38.i = zext i8 %224 to i32
  %shl40.i = shl nuw nsw i32 %conv38.i, 20
  %arrayidx41.i = getelementptr inbounds [3 x i32], ptr %dma_priority.i, i32 0, i32 2
  %225 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx41.i, align 4
  %or42.i = or i32 %shl40.i, %226
  %227 = ptrtoint ptr %dma_priority.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %dma_priority.i, align 4
  %229 = ptrtoint ptr %add.ptr.i.i121 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %add.ptr.i.i121, align 8
  %tdma_offset.i104.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %222, i32 0, i32 13
  %231 = ptrtoint ptr %tdma_offset.i104.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %tdma_offset.i104.i, align 4
  %words_per_bd.i105.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %222, i32 0, i32 14
  %233 = ptrtoint ptr %words_per_bd.i105.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %words_per_bd.i105.i, align 4
  %mul2.i106.i = shl i32 %234, 10
  %add.i107.i = add i32 %mul2.i106.i, %232
  %add.ptr.i108.i = getelementptr i8, ptr %230, i32 %add.i107.i
  %add.ptr3.i109.i = getelementptr i8, ptr %add.ptr.i108.i, i32 1088
  %235 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i110.i = getelementptr i8, ptr %235, i32 5
  %236 = ptrtoint ptr %arrayidx.i110.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %arrayidx.i110.i, align 1
  %conv.i111.i = zext i8 %237 to i32
  %add.ptr4.i112.i = getelementptr i8, ptr %add.ptr3.i109.i, i32 %conv.i111.i
  %238 = tail call i32 @llvm.bswap.i32(i32 %228) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i112.i, i32 %238) #17, !srcloc !249
  %arrayidx44.i = getelementptr inbounds [3 x i32], ptr %dma_priority.i, i32 0, i32 1
  %239 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx44.i, align 4
  %241 = ptrtoint ptr %add.ptr.i.i121 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %add.ptr.i.i121, align 8
  %243 = ptrtoint ptr %hw_params.i.i122 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %hw_params.i.i122, align 8
  %tdma_offset.i114.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %244, i32 0, i32 13
  %245 = ptrtoint ptr %tdma_offset.i114.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %tdma_offset.i114.i, align 4
  %words_per_bd.i115.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %244, i32 0, i32 14
  %247 = ptrtoint ptr %words_per_bd.i115.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %words_per_bd.i115.i, align 4
  %mul2.i116.i = shl i32 %248, 10
  %add.i117.i = add i32 %mul2.i116.i, %246
  %add.ptr.i118.i = getelementptr i8, ptr %242, i32 %add.i117.i
  %add.ptr3.i119.i = getelementptr i8, ptr %add.ptr.i118.i, i32 1088
  %249 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i120.i = getelementptr i8, ptr %249, i32 6
  %250 = ptrtoint ptr %arrayidx.i120.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx.i120.i, align 1
  %conv.i121.i = zext i8 %251 to i32
  %add.ptr4.i122.i = getelementptr i8, ptr %add.ptr3.i119.i, i32 %conv.i121.i
  %252 = tail call i32 @llvm.bswap.i32(i32 %240) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i122.i, i32 %252) #17, !srcloc !249
  %253 = ptrtoint ptr %add.ptr.i.i121 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %add.ptr.i.i121, align 8
  %255 = ptrtoint ptr %hw_params.i.i122 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %hw_params.i.i122, align 8
  %tdma_offset.i124.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %256, i32 0, i32 13
  %257 = ptrtoint ptr %tdma_offset.i124.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %tdma_offset.i124.i, align 4
  %words_per_bd.i125.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %256, i32 0, i32 14
  %259 = ptrtoint ptr %words_per_bd.i125.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %words_per_bd.i125.i, align 4
  %mul2.i126.i = shl i32 %260, 10
  %add.i127.i = add i32 %mul2.i126.i, %258
  %add.ptr.i128.i = getelementptr i8, ptr %254, i32 %add.i127.i
  %add.ptr3.i129.i = getelementptr i8, ptr %add.ptr.i128.i, i32 1088
  %261 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i130.i = getelementptr i8, ptr %261, i32 7
  %262 = ptrtoint ptr %arrayidx.i130.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx.i130.i, align 1
  %conv.i131.i = zext i8 %263 to i32
  %add.ptr4.i132.i = getelementptr i8, ptr %add.ptr3.i129.i, i32 %conv.i131.i
  %264 = tail call i32 @llvm.bswap.i32(i32 %or42.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i132.i, i32 %264) #17, !srcloc !249
  %265 = ptrtoint ptr %add.ptr.i.i121 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %add.ptr.i.i121, align 8
  %267 = ptrtoint ptr %hw_params.i.i122 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %hw_params.i.i122, align 8
  %tdma_offset.i134.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %268, i32 0, i32 13
  %269 = ptrtoint ptr %tdma_offset.i134.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %tdma_offset.i134.i, align 4
  %words_per_bd.i135.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %268, i32 0, i32 14
  %271 = ptrtoint ptr %words_per_bd.i135.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %words_per_bd.i135.i, align 4
  %mul2.i136.i = shl i32 %272, 10
  %add.i137.i = add i32 %mul2.i136.i, %270
  %add.ptr.i138.i = getelementptr i8, ptr %266, i32 %add.i137.i
  %add.ptr3.i139.i = getelementptr i8, ptr %add.ptr.i138.i, i32 1088
  %273 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %273, align 1
  %conv.i140.i = zext i8 %275 to i32
  %add.ptr4.i141.i = getelementptr i8, ptr %add.ptr3.i139.i, i32 %conv.i140.i
  %276 = tail call i32 @llvm.bswap.i32(i32 %ring_cfg.0.lcssa.i146) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i141.i, i32 %276) #17, !srcloc !249
  %277 = or i32 %and.i148, %dma_ctrl.0.lcssa.i145
  %spec.select.i150 = or i32 %277, 131072
  %278 = ptrtoint ptr %add.ptr.i.i121 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %add.ptr.i.i121, align 8
  %280 = ptrtoint ptr %hw_params.i.i122 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %hw_params.i.i122, align 8
  %tdma_offset.i143.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %281, i32 0, i32 13
  %282 = ptrtoint ptr %tdma_offset.i143.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %tdma_offset.i143.i, align 4
  %words_per_bd.i144.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %281, i32 0, i32 14
  %284 = ptrtoint ptr %words_per_bd.i144.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %words_per_bd.i144.i, align 4
  %mul2.i145.i = shl i32 %285, 10
  %add.i146.i = add i32 %mul2.i145.i, %283
  %add.ptr.i147.i = getelementptr i8, ptr %279, i32 %add.i146.i
  %add.ptr3.i148.i = getelementptr i8, ptr %add.ptr.i147.i, i32 1088
  %286 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i149.i = getelementptr i8, ptr %286, i32 1
  %287 = ptrtoint ptr %arrayidx.i149.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %arrayidx.i149.i, align 1
  %conv.i150.i = zext i8 %288 to i32
  %add.ptr4.i151.i = getelementptr i8, ptr %add.ptr3.i148.i, i32 %conv.i150.i
  %289 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i150) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i151.i, i32 %289) #17, !srcloc !249
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dma_priority.i) #17
  br label %cleanup

cleanup:                                          ; preds = %bcmgenet_init_tx_queues.exit, %bcmgenet_free_rx_buffers.exit, %if.then29, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i106.ph, %bcmgenet_free_rx_buffers.exit ], [ 0, %bcmgenet_init_tx_queues.exit ], [ -12, %if.then29 ], [ -12, %do.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_isr0(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 512
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #17, !srcloc !248
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 8
  %add.ptr1.i = getelementptr i8, ptr %4, i32 524
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #17, !srcloc !248
  %6 = xor i32 %5, -1
  %7 = and i32 %2, %6
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_id, align 8
  %add.ptr1.i93 = getelementptr i8, ptr %10, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i93, i32 %7) #17, !srcloc !249
  %msg_enable = getelementptr inbounds %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 37
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 4
  %and2 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body3

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end11

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcmgenet_isr0.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcmgenet_isr0, %if.then8)) #17
          to label %do.end11 [label %if.then8], !srcloc !247

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr inbounds %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcmgenet_isr0.__UNIQUE_ID_ddebug498, ptr noundef %14, ptr noundef nonnull @.str.57, i32 noundef %8) #17
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body3, %entry.do.end11_crit_edge
  %and12 = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.end11.if.end25_crit_edge, label %if.then14

do.end11.if.end25_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then14:                                        ; preds = %do.end11
  %arrayidx = getelementptr %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 13, i32 16
  %event_ctr = getelementptr %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 13, i32 16, i32 13, i32 1
  %15 = ptrtoint ptr %event_ctr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %event_ctr, align 2
  %inc = add i16 %16, 1
  store i16 %inc, ptr %event_ctr, align 2
  %call15 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx) #17
  br i1 %call15, label %if.then22, label %if.then14.if.end25_crit_edge, !prof !253

if.then14.if.end25_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then22:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #19
  %int_disable = getelementptr %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 13, i32 16, i32 17
  %17 = ptrtoint ptr %int_disable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %int_disable, align 4
  tail call void %18(ptr noundef %arrayidx) #17
  tail call void @__napi_schedule_irqoff(ptr noundef %arrayidx) #17
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.then14.if.end25_crit_edge, %do.end11.if.end25_crit_edge
  %and26 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end42_crit_edge, label %if.then28

if.end25.if.end42_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42

if.then28:                                        ; preds = %if.end25
  %napi30 = getelementptr %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 6, i32 16, i32 1
  %call31 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi30) #17
  br i1 %call31, label %if.then38, label %if.then28.if.end42_crit_edge, !prof !253

if.then28.if.end42_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42

if.then38:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx29 = getelementptr %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 6, i32 16
  %int_disable39 = getelementptr %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 6, i32 16, i32 16
  %19 = ptrtoint ptr %int_disable39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %int_disable39, align 8
  tail call void %20(ptr noundef %arrayidx29) #17
  tail call void @__napi_schedule_irqoff(ptr noundef %napi30) #17
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.then28.if.end42_crit_edge, %if.end25.if.end42_crit_edge
  %hw_params = getelementptr inbounds %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 14
  %21 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_params, align 8
  %flags43 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %flags43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags43, align 4
  %and44 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %and46 = and i32 %8, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %or.cond = or i1 %tobool47.not, %tobool45.not
  br i1 %or.cond, label %if.end42.if.end49_crit_edge, label %if.then48

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.then48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  %wq = getelementptr inbounds %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #17
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end42.if.end49_crit_edge
  %and50 = and i32 %8, 52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end49.if.end64_crit_edge, label %do.body54

if.end49.if.end64_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

do.body54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  %lock = getelementptr inbounds %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 33
  %call57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #17
  %irq0_stat = getelementptr inbounds %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 34
  %25 = ptrtoint ptr %irq0_stat to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq0_stat, align 8
  %or = or i32 %26, %and50
  store i32 %or, ptr %irq0_stat, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call57) #17
  %bcmgenet_irq_work = getelementptr inbounds %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %bcmgenet_irq_work) #17
  br label %if.end64

if.end64:                                         ; preds = %do.body54, %if.end49.if.end64_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_isr1(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 576
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #17, !srcloc !248
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 8
  %add.ptr1.i = getelementptr i8, ptr %4, i32 588
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #17, !srcloc !248
  %6 = xor i32 %5, -1
  %7 = and i32 %2, %6
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_id, align 8
  %add.ptr1.i82 = getelementptr i8, ptr %10, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i82, i32 %7) #17, !srcloc !249
  %msg_enable = getelementptr inbounds %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 37
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 4
  %and2 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body3

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end11

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcmgenet_isr1.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcmgenet_isr1, %if.then8)) #17
          to label %do.end11 [label %if.then8], !srcloc !247

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr inbounds %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcmgenet_isr1.__UNIQUE_ID_ddebug497, ptr noundef %14, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, i32 noundef %8) #17
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body3, %entry.do.end11_crit_edge
  %hw_params = getelementptr inbounds %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 14
  %15 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_params, align 8
  %rx_queues84 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %rx_queues84 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rx_queues84, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp86.not = icmp eq i8 %18, 0
  br i1 %cmp86.not, label %do.end11.for.cond28.preheader_crit_edge, label %do.end11.for.body_crit_edge

do.end11.for.body_crit_edge:                      ; preds = %do.end11
  br label %for.body

do.end11.for.cond28.preheader_crit_edge:          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %for.inc.for.cond28.preheader_crit_edge, %do.end11.for.cond28.preheader_crit_edge
  %19 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_params, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp3190.not = icmp eq i8 %22, 0
  br i1 %cmp3190.not, label %for.cond28.preheader.for.end54_crit_edge, label %for.cond28.preheader.for.body33_crit_edge

for.cond28.preheader.for.body33_crit_edge:        ; preds = %for.cond28.preheader
  br label %for.body33

for.cond28.preheader.for.end54_crit_edge:         ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end54

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end11.for.body_crit_edge
  %index.087 = phi i32 [ %inc27, %for.inc.for.body_crit_edge ], [ 0, %do.end11.for.body_crit_edge ]
  %shl = shl i32 65536, %index.087
  %and13 = and i32 %shl, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %if.end16

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end16:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 13, i32 %index.087
  %event_ctr = getelementptr %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 13, i32 %index.087, i32 13, i32 1
  %23 = ptrtoint ptr %event_ctr to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %event_ctr, align 2
  %inc = add i16 %24, 1
  store i16 %inc, ptr %event_ctr, align 2
  %call17 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %arrayidx) #17
  br i1 %call17, label %if.then24, label %if.end16.for.inc_crit_edge, !prof !253

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  %int_disable = getelementptr %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 13, i32 %index.087, i32 17
  %25 = ptrtoint ptr %int_disable to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %int_disable, align 4
  tail call void %26(ptr noundef %arrayidx) #17
  tail call void @__napi_schedule_irqoff(ptr noundef %arrayidx) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %if.end16.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc27 = add nuw nsw i32 %index.087, 1
  %27 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_params, align 8
  %rx_queues = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %rx_queues to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rx_queues, align 2
  %conv = zext i8 %30 to i32
  %cmp = icmp ult i32 %inc27, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond28.preheader_crit_edge

for.inc.for.cond28.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond28.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body33:                                       ; preds = %for.inc52.for.body33_crit_edge, %for.cond28.preheader.for.body33_crit_edge
  %index.191 = phi i32 [ %inc53, %for.inc52.for.body33_crit_edge ], [ 0, %for.cond28.preheader.for.body33_crit_edge ]
  %shl34 = shl nuw i32 1, %index.191
  %and35 = and i32 %shl34, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %for.body33.for.inc52_crit_edge, label %if.end38

for.body33.for.inc52_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc52

if.end38:                                         ; preds = %for.body33
  %napi40 = getelementptr %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 6, i32 %index.191, i32 1
  %call41 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi40) #17
  br i1 %call41, label %if.then48, label %if.end38.for.inc52_crit_edge, !prof !253

if.end38.for.inc52_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc52

if.then48:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx39 = getelementptr %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 6, i32 %index.191
  %int_disable49 = getelementptr %struct.bcmgenet_priv, ptr %dev_id, i32 0, i32 6, i32 %index.191, i32 16
  %31 = ptrtoint ptr %int_disable49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %int_disable49, align 8
  tail call void %32(ptr noundef %arrayidx39) #17
  tail call void @__napi_schedule_irqoff(ptr noundef %napi40) #17
  br label %for.inc52

for.inc52:                                        ; preds = %if.then48, %if.end38.for.inc52_crit_edge, %for.body33.for.inc52_crit_edge
  %inc53 = add nuw nsw i32 %index.191, 1
  %33 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_params, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 4
  %conv30 = zext i8 %36 to i32
  %cmp31 = icmp ult i32 %inc53, %conv30
  br i1 %cmp31, label %for.inc52.for.body33_crit_edge, label %for.inc52.for.end54_crit_edge

for.inc52.for.end54_crit_edge:                    ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end54

for.inc52.for.body33_crit_edge:                   ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body33

for.end54:                                        ; preds = %for.inc52.for.end54_crit_edge, %for.cond28.preheader.for.end54_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcmgenet_mii_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_netif_start(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @bcmgenet_set_rx_mode(ptr noundef %dev)
  %hw_params.i = getelementptr i8, ptr %dev, i32 18488
  %0 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_params.i, align 8
  %rx_queues15.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rx_queues15.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_queues15.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp17.not.i = icmp eq i8 %3, 0
  br i1 %cmp17.not.i, label %entry.bcmgenet_enable_rx_napi.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.bcmgenet_enable_rx_napi.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_enable_rx_napi.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.018.i
  tail call void @napi_enable(ptr noundef %arrayidx.i) #17
  %int_enable.i = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.018.i, i32 16
  %4 = ptrtoint ptr %int_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %int_enable.i, align 8
  tail call void %5(ptr noundef %arrayidx.i) #17
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %6 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_params.i, align 8
  %rx_queues.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rx_queues.i, align 2
  %conv.i = zext i8 %9 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.bcmgenet_enable_rx_napi.exit_crit_edge

for.body.i.bcmgenet_enable_rx_napi.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_enable_rx_napi.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

bcmgenet_enable_rx_napi.exit:                     ; preds = %for.body.i.bcmgenet_enable_rx_napi.exit_crit_edge, %entry.bcmgenet_enable_rx_napi.exit_crit_edge
  %arrayidx3.i = getelementptr i8, ptr %dev, i32 18048
  tail call void @napi_enable(ptr noundef %arrayidx3.i) #17
  %int_enable5.i = getelementptr i8, ptr %dev, i32 18472
  %10 = ptrtoint ptr %int_enable5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %int_enable5.i, align 8
  tail call void %11(ptr noundef %arrayidx3.i) #17
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %13, i32 2056
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #17, !srcloc !248
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #17
  %and.i = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %bcmgenet_enable_rx_napi.exit.umac_enable_set.exit_crit_edge

bcmgenet_enable_rx_napi.exit.umac_enable_set.exit_crit_edge: ; preds = %bcmgenet_enable_rx_napi.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %umac_enable_set.exit

if.end.i:                                         ; preds = %bcmgenet_enable_rx_napi.exit
  call void @__sanitizer_cov_trace_pc() #19
  %or.i = or i32 %15, 3
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #17
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i16.i = getelementptr i8, ptr %18, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i16.i, i32 %16) #17, !srcloc !249
  br label %umac_enable_set.exit

umac_enable_set.exit:                             ; preds = %if.end.i, %bcmgenet_enable_rx_napi.exit.umac_enable_set.exit_crit_edge
  %19 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_params.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp16.not.i = icmp eq i8 %22, 0
  br i1 %cmp16.not.i, label %umac_enable_set.exit.bcmgenet_enable_tx_napi.exit_crit_edge, label %umac_enable_set.exit.for.body.i12_crit_edge

umac_enable_set.exit.for.body.i12_crit_edge:      ; preds = %umac_enable_set.exit
  br label %for.body.i12

umac_enable_set.exit.bcmgenet_enable_tx_napi.exit_crit_edge: ; preds = %umac_enable_set.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_enable_tx_napi.exit

for.body.i12:                                     ; preds = %for.body.i12.for.body.i12_crit_edge, %umac_enable_set.exit.for.body.i12_crit_edge
  %i.017.i = phi i32 [ %inc.i9, %for.body.i12.for.body.i12_crit_edge ], [ 0, %umac_enable_set.exit.for.body.i12_crit_edge ]
  %arrayidx.i7 = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %i.017.i
  %napi.i = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %i.017.i, i32 1
  tail call void @napi_enable(ptr noundef %napi.i) #17
  %int_enable.i8 = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %i.017.i, i32 15
  %23 = ptrtoint ptr %int_enable.i8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %int_enable.i8, align 4
  tail call void %24(ptr noundef %arrayidx.i7) #17
  %inc.i9 = add nuw nsw i32 %i.017.i, 1
  %25 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_params.i, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 4
  %conv.i10 = zext i8 %28 to i32
  %cmp.i11 = icmp ult i32 %inc.i9, %conv.i10
  br i1 %cmp.i11, label %for.body.i12.for.body.i12_crit_edge, label %for.body.i12.bcmgenet_enable_tx_napi.exit_crit_edge

for.body.i12.bcmgenet_enable_tx_napi.exit_crit_edge: ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_enable_tx_napi.exit

for.body.i12.for.body.i12_crit_edge:              ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i12

bcmgenet_enable_tx_napi.exit:                     ; preds = %for.body.i12.bcmgenet_enable_tx_napi.exit_crit_edge, %umac_enable_set.exit.bcmgenet_enable_tx_napi.exit_crit_edge
  %arrayidx3.i13 = getelementptr i8, ptr %dev, i32 7704
  %napi4.i = getelementptr i8, ptr %dev, i32 7752
  tail call void @napi_enable(ptr noundef %napi4.i) #17
  %int_enable5.i14 = getelementptr i8, ptr %dev, i32 8028
  %29 = ptrtoint ptr %int_enable5.i14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %int_enable5.i14, align 4
  tail call void %30(ptr noundef %arrayidx3.i13) #17
  %internal_phy.i = getelementptr i8, ptr %dev, i32 18548
  %31 = ptrtoint ptr %internal_phy.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %internal_phy.i, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i15 = icmp eq i8 %32, 0
  br i1 %tobool.not.i15, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %bcmgenet_enable_tx_napi.exit
  call void @__sanitizer_cov_trace_pc() #19
  %version.i = getelementptr i8, ptr %dev, i32 2308
  %33 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %version.i, align 4
  %.off.i = add i32 %34, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  %spec.select32.i = select i1 %switch.i, i32 872415232, i32 805306368
  br label %bcmgenet_link_intr_enable.exit

if.else.i:                                        ; preds = %bcmgenet_enable_tx_napi.exit
  %ext_phy.i = getelementptr i8, ptr %dev, i32 18584
  %35 = ptrtoint ptr %ext_phy.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ext_phy.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool8.not.i = icmp eq i32 %36, 0
  br i1 %tobool8.not.i, label %if.else11.i, label %if.else.i.bcmgenet_link_intr_enable.exit_crit_edge

if.else.i.bcmgenet_link_intr_enable.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_link_intr_enable.exit

if.else11.i:                                      ; preds = %if.else.i
  %phy_interface.i = getelementptr i8, ptr %dev, i32 18576
  %37 = ptrtoint ptr %phy_interface.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %phy_interface.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %38)
  %cmp12.i = icmp eq i32 %38, 17
  br i1 %cmp12.i, label %if.then13.i, label %if.else11.i.bcmgenet_link_intr_enable.exit_crit_edge

if.else11.i.bcmgenet_link_intr_enable.exit_crit_edge: ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_link_intr_enable.exit

if.then13.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #19
  %39 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw_params.i, align 8
  %flags.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %40, i32 0, i32 15
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i, align 4
  %and.i17 = and i32 %42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool14.not.i = icmp eq i32 %and.i17, 0
  %spec.select.i = select i1 %tobool14.not.i, i32 0, i32 805306368
  br label %bcmgenet_link_intr_enable.exit

bcmgenet_link_intr_enable.exit:                   ; preds = %if.then13.i, %if.else11.i.bcmgenet_link_intr_enable.exit_crit_edge, %if.else.i.bcmgenet_link_intr_enable.exit_crit_edge, %if.then.i
  %int0_enable.0.i = phi i32 [ 0, %if.else11.i.bcmgenet_link_intr_enable.exit_crit_edge ], [ 805306368, %if.else.i.bcmgenet_link_intr_enable.exit_crit_edge ], [ %spec.select.i, %if.then13.i ], [ %spec.select32.i, %if.then.i ]
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i.i18 = getelementptr i8, ptr %44, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i18, i32 %int0_enable.0.i) #17, !srcloc !249
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %45 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %phydev, align 16
  tail call void @phy_start(ptr noundef %46) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_dma_teardown(ptr noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %hw_params.i = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 14
  %2 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_params.i, align 8
  %tdma_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %tdma_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tdma_offset.i, align 4
  %words_per_bd.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %words_per_bd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %words_per_bd.i, align 4
  %mul2.i = shl i32 %7, 10
  %add.i = add i32 %mul2.i, %5
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 1088
  %8 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i = getelementptr i8, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %10 to i32
  %add.ptr4.i = getelementptr i8, ptr %add.ptr3.i, i32 %conv.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #17, !srcloc !248
  %12 = and i32 %11, -16777217
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  %15 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_params.i, align 8
  %tdma_offset.i2 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %tdma_offset.i2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tdma_offset.i2, align 4
  %words_per_bd.i3 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %16, i32 0, i32 14
  %19 = ptrtoint ptr %words_per_bd.i3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %words_per_bd.i3, align 4
  %mul2.i4 = shl i32 %20, 10
  %add.i5 = add i32 %mul2.i4, %18
  %add.ptr.i6 = getelementptr i8, ptr %14, i32 %add.i5
  %add.ptr3.i7 = getelementptr i8, ptr %add.ptr.i6, i32 1088
  %21 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i8 = getelementptr i8, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i8, align 1
  %conv.i9 = zext i8 %23 to i32
  %add.ptr4.i10 = getelementptr i8, ptr %add.ptr3.i7, i32 %conv.i9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i10, i32 %12) #17, !srcloc !249
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %inc95 = phi i32 [ 1, %entry ], [ %inc, %if.end.while.body_crit_edge ]
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 8
  %26 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_params.i, align 8
  %tdma_offset.i12 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %tdma_offset.i12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tdma_offset.i12, align 4
  %words_per_bd.i13 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %27, i32 0, i32 14
  %30 = ptrtoint ptr %words_per_bd.i13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %words_per_bd.i13, align 4
  %mul2.i14 = shl i32 %31, 10
  %add.i15 = add i32 %mul2.i14, %29
  %add.ptr.i16 = getelementptr i8, ptr %25, i32 1088
  %add.ptr3.i17 = getelementptr i8, ptr %add.ptr.i16, i32 %add.i15
  %32 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i18 = getelementptr i8, ptr %32, i32 2
  %33 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i18, align 1
  %conv.i19 = zext i8 %34 to i32
  %add.ptr4.i20 = getelementptr i8, ptr %add.ptr3.i17, i32 %conv.i19
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i20) #17, !srcloc !248
  %36 = and i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not = icmp eq i32 %36, 0
  br i1 %tobool.not, label %if.end, label %while.end

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #17
  %inc = add nuw nsw i32 %inc95, 1
  %exitcond.not = icmp eq i32 %inc, 5001
  br i1 %exitcond.not, label %if.end.if.end5_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %inc95)
  %cmp3 = icmp eq i32 %inc95, 5000
  br i1 %cmp3, label %if.then4, label %while.end.if.end5_crit_edge

while.end.if.end5_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then4:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 2
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %39, ptr noundef nonnull @.str.60) #20
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %while.end.if.end5_crit_edge, %if.end.if.end5_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #17
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 8
  %42 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_params.i, align 8
  %rdma_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %rdma_offset.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rdma_offset.i, align 4
  %words_per_bd.i22 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %43, i32 0, i32 14
  %46 = ptrtoint ptr %words_per_bd.i22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %words_per_bd.i22, align 4
  %mul2.i23 = shl i32 %47, 10
  %add.i24 = add i32 %mul2.i23, %45
  %add.ptr.i25 = getelementptr i8, ptr %41, i32 %add.i24
  %add.ptr3.i26 = getelementptr i8, ptr %add.ptr.i25, i32 1088
  %48 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i27 = getelementptr i8, ptr %48, i32 1
  %49 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i27, align 1
  %conv.i28 = zext i8 %50 to i32
  %add.ptr4.i29 = getelementptr i8, ptr %add.ptr3.i26, i32 %conv.i28
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i29) #17, !srcloc !248
  %52 = and i32 %51, -16777217
  %53 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv, align 8
  %55 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw_params.i, align 8
  %rdma_offset.i31 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %56, i32 0, i32 12
  %57 = ptrtoint ptr %rdma_offset.i31 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rdma_offset.i31, align 4
  %words_per_bd.i32 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %56, i32 0, i32 14
  %59 = ptrtoint ptr %words_per_bd.i32 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %words_per_bd.i32, align 4
  %mul2.i33 = shl i32 %60, 10
  %add.i34 = add i32 %mul2.i33, %58
  %add.ptr.i35 = getelementptr i8, ptr %54, i32 %add.i34
  %add.ptr3.i36 = getelementptr i8, ptr %add.ptr.i35, i32 1088
  %61 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i37 = getelementptr i8, ptr %61, i32 1
  %62 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i37, align 1
  %conv.i38 = zext i8 %63 to i32
  %add.ptr4.i39 = getelementptr i8, ptr %add.ptr3.i36, i32 %conv.i38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i39, i32 %52) #17, !srcloc !249
  br label %while.body11

while.body11:                                     ; preds = %if.end16.while.body11_crit_edge, %if.end5
  %inc996 = phi i32 [ 1, %if.end5 ], [ %inc9, %if.end16.while.body11_crit_edge ]
  %64 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv, align 8
  %66 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw_params.i, align 8
  %rdma_offset.i41 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %67, i32 0, i32 12
  %68 = ptrtoint ptr %rdma_offset.i41 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rdma_offset.i41, align 4
  %words_per_bd.i42 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %67, i32 0, i32 14
  %70 = ptrtoint ptr %words_per_bd.i42 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %words_per_bd.i42, align 4
  %mul2.i43 = shl i32 %71, 10
  %add.i44 = add i32 %mul2.i43, %69
  %add.ptr.i45 = getelementptr i8, ptr %65, i32 1088
  %add.ptr3.i46 = getelementptr i8, ptr %add.ptr.i45, i32 %add.i44
  %72 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i47 = getelementptr i8, ptr %72, i32 2
  %73 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i47, align 1
  %conv.i48 = zext i8 %74 to i32
  %add.ptr4.i49 = getelementptr i8, ptr %add.ptr3.i46, i32 %conv.i48
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i49) #17, !srcloc !248
  %76 = and i32 %75, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool14.not = icmp eq i32 %76, 0
  br i1 %tobool14.not, label %if.end16, label %while.end17

if.end16:                                         ; preds = %while.body11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748) #17
  %inc9 = add nuw nsw i32 %inc996, 1
  %exitcond108.not = icmp eq i32 %inc9, 5001
  br i1 %exitcond108.not, label %if.end16.if.end21_crit_edge, label %if.end16.while.body11_crit_edge

if.end16.while.body11_crit_edge:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body11

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

while.end17:                                      ; preds = %while.body11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %inc996)
  %cmp18 = icmp eq i32 %inc996, 5000
  br i1 %cmp18, label %if.then19, label %while.end17.if.end21_crit_edge

while.end17.if.end21_crit_edge:                   ; preds = %while.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.then19:                                        ; preds = %while.end17
  call void @__sanitizer_cov_trace_pc() #19
  %dev20 = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 2
  %78 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev20, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %79, ptr noundef nonnull @.str.61) #20
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %while.end17.if.end21_crit_edge, %if.end16.if.end21_crit_edge
  %80 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw_params.i, align 8
  %rx_queues = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %rx_queues to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %rx_queues, align 2
  %conv = zext i8 %83 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp2297.not = icmp eq i8 %83, 0
  br i1 %cmp2297.not, label %if.end21.for.end_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  br label %for.body

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end21.for.body_crit_edge
  %i.099 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.end21.for.body_crit_edge ]
  %dma_ctrl.098 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %if.end21.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.099, 1
  %shl = shl i32 2, %i.099
  %or = or i32 %shl, %dma_ctrl.098
  %exitcond109.not = icmp eq i32 %add, %conv
  br i1 %exitcond109.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %phi.bo = xor i32 %or, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end21.for.end_crit_edge
  %dma_ctrl.0.lcssa = phi i32 [ -1, %if.end21.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %84 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %priv, align 8
  %rdma_offset.i51 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %81, i32 0, i32 12
  %86 = ptrtoint ptr %rdma_offset.i51 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rdma_offset.i51, align 4
  %words_per_bd.i52 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %81, i32 0, i32 14
  %88 = ptrtoint ptr %words_per_bd.i52 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %words_per_bd.i52, align 4
  %mul2.i53 = shl i32 %89, 10
  %add.i54 = add i32 %mul2.i53, %87
  %add.ptr.i55 = getelementptr i8, ptr %85, i32 %add.i54
  %add.ptr3.i56 = getelementptr i8, ptr %add.ptr.i55, i32 1088
  %90 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i57 = getelementptr i8, ptr %90, i32 1
  %91 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i57, align 1
  %conv.i58 = zext i8 %92 to i32
  %add.ptr4.i59 = getelementptr i8, ptr %add.ptr3.i56, i32 %conv.i58
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i59) #17, !srcloc !248
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #17
  %and26 = and i32 %94, %dma_ctrl.0.lcssa
  %95 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %priv, align 8
  %97 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw_params.i, align 8
  %rdma_offset.i61 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %98, i32 0, i32 12
  %99 = ptrtoint ptr %rdma_offset.i61 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rdma_offset.i61, align 4
  %words_per_bd.i62 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %98, i32 0, i32 14
  %101 = ptrtoint ptr %words_per_bd.i62 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %words_per_bd.i62, align 4
  %mul2.i63 = shl i32 %102, 10
  %add.i64 = add i32 %mul2.i63, %100
  %add.ptr.i65 = getelementptr i8, ptr %96, i32 %add.i64
  %add.ptr3.i66 = getelementptr i8, ptr %add.ptr.i65, i32 1088
  %103 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i67 = getelementptr i8, ptr %103, i32 1
  %104 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.i67, align 1
  %conv.i68 = zext i8 %105 to i32
  %add.ptr4.i69 = getelementptr i8, ptr %add.ptr3.i66, i32 %conv.i68
  %106 = tail call i32 @llvm.bswap.i32(i32 %and26) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i69, i32 %106) #17, !srcloc !249
  %107 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hw_params.i, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %108, align 4
  %conv29 = zext i8 %110 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp30101.not = icmp eq i8 %110, 0
  br i1 %cmp30101.not, label %for.end.for.end38_crit_edge, label %for.end.for.body32_crit_edge

for.end.for.body32_crit_edge:                     ; preds = %for.end
  br label %for.body32

for.end.for.end38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end38

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %for.end.for.body32_crit_edge
  %i.1103 = phi i32 [ %add33, %for.body32.for.body32_crit_edge ], [ 0, %for.end.for.body32_crit_edge ]
  %dma_ctrl.1102 = phi i32 [ %or35, %for.body32.for.body32_crit_edge ], [ 0, %for.end.for.body32_crit_edge ]
  %add33 = add nuw nsw i32 %i.1103, 1
  %shl34 = shl i32 2, %i.1103
  %or35 = or i32 %shl34, %dma_ctrl.1102
  %exitcond110.not = icmp eq i32 %add33, %conv29
  br i1 %exitcond110.not, label %for.end38.loopexit, label %for.body32.for.body32_crit_edge

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body32

for.end38.loopexit:                               ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #19
  %phi.bo111 = xor i32 %or35, -1
  br label %for.end38

for.end38:                                        ; preds = %for.end38.loopexit, %for.end.for.end38_crit_edge
  %dma_ctrl.1.lcssa = phi i32 [ -1, %for.end.for.end38_crit_edge ], [ %phi.bo111, %for.end38.loopexit ]
  %111 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %priv, align 8
  %tdma_offset.i71 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %108, i32 0, i32 13
  %113 = ptrtoint ptr %tdma_offset.i71 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tdma_offset.i71, align 4
  %words_per_bd.i72 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %108, i32 0, i32 14
  %115 = ptrtoint ptr %words_per_bd.i72 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %words_per_bd.i72, align 4
  %mul2.i73 = shl i32 %116, 10
  %add.i74 = add i32 %mul2.i73, %114
  %add.ptr.i75 = getelementptr i8, ptr %112, i32 %add.i74
  %add.ptr3.i76 = getelementptr i8, ptr %add.ptr.i75, i32 1088
  %117 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i77 = getelementptr i8, ptr %117, i32 1
  %118 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx.i77, align 1
  %conv.i78 = zext i8 %119 to i32
  %add.ptr4.i79 = getelementptr i8, ptr %add.ptr3.i76, i32 %conv.i78
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i79) #17, !srcloc !248
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #17
  %and41 = and i32 %121, %dma_ctrl.1.lcssa
  %122 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %priv, align 8
  %124 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hw_params.i, align 8
  %tdma_offset.i81 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %125, i32 0, i32 13
  %126 = ptrtoint ptr %tdma_offset.i81 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %tdma_offset.i81, align 4
  %words_per_bd.i82 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %125, i32 0, i32 14
  %128 = ptrtoint ptr %words_per_bd.i82 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %words_per_bd.i82, align 4
  %mul2.i83 = shl i32 %129, 10
  %add.i84 = add i32 %mul2.i83, %127
  %add.ptr.i85 = getelementptr i8, ptr %123, i32 %add.i84
  %add.ptr3.i86 = getelementptr i8, ptr %add.ptr.i85, i32 1088
  %130 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i87 = getelementptr i8, ptr %130, i32 1
  %131 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx.i87, align 1
  %conv.i88 = zext i8 %132 to i32
  %add.ptr4.i89 = getelementptr i8, ptr %add.ptr3.i86, i32 %conv.i88
  %133 = tail call i32 @llvm.bswap.i32(i32 %and41) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i89, i32 %133) #17, !srcloc !249
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_fini_dma(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_params.i = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 14
  %0 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_params.i, align 8
  %rx_queues10.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rx_queues10.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_queues10.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp12.not.i = icmp eq i8 %3, 0
  br i1 %cmp12.not.i, label %entry.bcmgenet_fini_rx_napi.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.bcmgenet_fini_rx_napi.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_fini_rx_napi.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %i.013.i
  tail call void @__netif_napi_del(ptr noundef %arrayidx.i) #17
  tail call void @synchronize_net() #17
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %4 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_params.i, align 8
  %rx_queues.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rx_queues.i, align 2
  %conv.i = zext i8 %7 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.bcmgenet_fini_rx_napi.exit_crit_edge

for.body.i.bcmgenet_fini_rx_napi.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_fini_rx_napi.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

bcmgenet_fini_rx_napi.exit:                       ; preds = %for.body.i.bcmgenet_fini_rx_napi.exit_crit_edge, %entry.bcmgenet_fini_rx_napi.exit_crit_edge
  %arrayidx3.i = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 16
  tail call void @__netif_napi_del(ptr noundef %arrayidx3.i) #17
  tail call void @synchronize_net() #17
  %8 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_params.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp11.not.i = icmp eq i8 %11, 0
  br i1 %cmp11.not.i, label %bcmgenet_fini_rx_napi.exit.bcmgenet_fini_tx_napi.exit_crit_edge, label %bcmgenet_fini_rx_napi.exit.for.body.i38_crit_edge

bcmgenet_fini_rx_napi.exit.for.body.i38_crit_edge: ; preds = %bcmgenet_fini_rx_napi.exit
  br label %for.body.i38

bcmgenet_fini_rx_napi.exit.bcmgenet_fini_tx_napi.exit_crit_edge: ; preds = %bcmgenet_fini_rx_napi.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_fini_tx_napi.exit

for.body.i38:                                     ; preds = %for.body.i38.for.body.i38_crit_edge, %bcmgenet_fini_rx_napi.exit.for.body.i38_crit_edge
  %i.012.i = phi i32 [ %inc.i35, %for.body.i38.for.body.i38_crit_edge ], [ 0, %bcmgenet_fini_rx_napi.exit.for.body.i38_crit_edge ]
  %napi.i = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 6, i32 %i.012.i, i32 1
  tail call void @__netif_napi_del(ptr noundef %napi.i) #17
  tail call void @synchronize_net() #17
  %inc.i35 = add nuw nsw i32 %i.012.i, 1
  %12 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_params.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  %conv.i36 = zext i8 %15 to i32
  %cmp.i37 = icmp ult i32 %inc.i35, %conv.i36
  br i1 %cmp.i37, label %for.body.i38.for.body.i38_crit_edge, label %for.body.i38.bcmgenet_fini_tx_napi.exit_crit_edge

for.body.i38.bcmgenet_fini_tx_napi.exit_crit_edge: ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_fini_tx_napi.exit

for.body.i38.for.body.i38_crit_edge:              ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i38

bcmgenet_fini_tx_napi.exit:                       ; preds = %for.body.i38.bcmgenet_fini_tx_napi.exit_crit_edge, %bcmgenet_fini_rx_napi.exit.bcmgenet_fini_tx_napi.exit_crit_edge
  %napi4.i = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 6, i32 16, i32 1
  tail call void @__netif_napi_del(ptr noundef %napi4.i) #17
  tail call void @synchronize_net() #17
  %num_tx_bds = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 5
  %16 = ptrtoint ptr %num_tx_bds to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tx_bds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp50.not = icmp eq i32 %17, 0
  br i1 %cmp50.not, label %bcmgenet_fini_tx_napi.exit.for.cond1.preheader_crit_edge, label %for.body.lr.ph

bcmgenet_fini_tx_napi.exit.for.cond1.preheader_crit_edge: ; preds = %bcmgenet_fini_tx_napi.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond1.preheader

for.body.lr.ph:                                   ; preds = %bcmgenet_fini_tx_napi.exit
  %pdev = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 39
  %tx_cbs = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 4
  br label %for.body

for.cond1.preheader:                              ; preds = %bcmgenet_free_tx_cb.exit.for.cond1.preheader_crit_edge, %bcmgenet_fini_tx_napi.exit.for.cond1.preheader_crit_edge
  %18 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_params.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp255.not = icmp eq i8 %21, 0
  br i1 %cmp255.not, label %for.cond1.preheader.for.end9_crit_edge, label %for.body4.lr.ph

for.cond1.preheader.for.end9_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end9

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %dev5 = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 2
  br label %for.body4

for.body:                                         ; preds = %bcmgenet_free_tx_cb.exit.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %bcmgenet_free_tx_cb.exit.for.body_crit_edge ]
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %tx_cbs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_cbs, align 8
  %add.ptr = getelementptr %struct.enet_cb, ptr %25, i32 %i.051
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.else13.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %add.ptr, align 4
  %dma_addr.i = getelementptr %struct.enet_cb, ptr %25, i32 %i.051, i32 2
  %29 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_addr.i, align 4
  %dma_len.i = getelementptr %struct.enet_cb, ptr %25, i32 %i.051, i32 3
  %31 = ptrtoint ptr %dma_len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %30, i32 noundef %32, i32 noundef 1, i32 noundef 0) #17
  %33 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %dma_addr.i, align 4
  %last_cb.i = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 3, i32 4
  %34 = ptrtoint ptr %last_cb.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %last_cb.i, align 4
  %cmp10.i = icmp eq ptr %35, %add.ptr
  br i1 %cmp10.i, label %if.then.i.bcmgenet_free_tx_cb.exit_crit_edge, label %if.then.i.if.end21.i_crit_edge

if.then.i.if.end21.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21.i

if.then.i.bcmgenet_free_tx_cb.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_free_tx_cb.exit

if.else13.i:                                      ; preds = %for.body
  %dma_addr14.i = getelementptr %struct.enet_cb, ptr %25, i32 %i.051, i32 2
  %36 = ptrtoint ptr %dma_addr14.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_addr14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool15.not.i = icmp eq i32 %37, 0
  br i1 %tobool15.not.i, label %if.else13.i.if.end21.i_crit_edge, label %if.then16.i

if.else13.i.if.end21.i_crit_edge:                 ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21.i

if.then16.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #19
  %dma_len18.i = getelementptr %struct.enet_cb, ptr %25, i32 %i.051, i32 3
  %38 = ptrtoint ptr %dma_len18.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_len18.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %37, i32 noundef %39, i32 noundef 1, i32 noundef 0) #17
  %40 = ptrtoint ptr %dma_addr14.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %dma_addr14.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then16.i, %if.else13.i.if.end21.i_crit_edge, %if.then.i.if.end21.i_crit_edge
  br label %bcmgenet_free_tx_cb.exit

bcmgenet_free_tx_cb.exit:                         ; preds = %if.end21.i, %if.then.i.bcmgenet_free_tx_cb.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.end21.i ], [ %27, %if.then.i.bcmgenet_free_tx_cb.exit_crit_edge ]
  tail call void @consume_skb(ptr noundef %retval.0.i) #17
  %inc = add nuw i32 %i.051, 1
  %41 = ptrtoint ptr %num_tx_bds to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_tx_bds, align 4
  %cmp = icmp ult i32 %inc, %42
  br i1 %cmp, label %bcmgenet_free_tx_cb.exit.for.body_crit_edge, label %bcmgenet_free_tx_cb.exit.for.cond1.preheader_crit_edge

bcmgenet_free_tx_cb.exit.for.cond1.preheader_crit_edge: ; preds = %bcmgenet_free_tx_cb.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond1.preheader

bcmgenet_free_tx_cb.exit.for.body_crit_edge:      ; preds = %bcmgenet_free_tx_cb.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body4.lr.ph
  %i.156 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc8, %for.body4.for.body4_crit_edge ]
  %43 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev5, align 8
  %queue = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 6, i32 %i.156, i32 5
  %45 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %queue, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 103
  %47 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %_tx.i, align 128
  %state.i = getelementptr %struct.netdev_queue, ptr %48, i32 %46, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i) #17
  %dql.i = getelementptr %struct.netdev_queue, ptr %48, i32 %46, i32 15
  tail call void @dql_reset(ptr noundef %dql.i) #17
  %inc8 = add nuw nsw i32 %i.156, 1
  %49 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_params.i, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 4
  %conv = zext i8 %52 to i32
  %cmp2 = icmp ult i32 %inc8, %conv
  br i1 %cmp2, label %for.body4.for.body4_crit_edge, label %for.body4.for.end9_crit_edge

for.body4.for.end9_crit_edge:                     ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end9

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body4

for.end9:                                         ; preds = %for.body4.for.end9_crit_edge, %for.cond1.preheader.for.end9_crit_edge
  %dev10 = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 2
  %53 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev10, align 8
  %queue13 = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 6, i32 16, i32 5
  %55 = ptrtoint ptr %queue13 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %queue13, align 4
  %_tx.i40 = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 103
  %57 = ptrtoint ptr %_tx.i40 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %_tx.i40, align 128
  %state.i42 = getelementptr %struct.netdev_queue, ptr %58, i32 %56, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i42) #17
  %dql.i43 = getelementptr %struct.netdev_queue, ptr %58, i32 %56, i32 15
  tail call void @dql_reset(ptr noundef %dql.i43) #17
  %num_rx_bds.i = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 9
  %59 = ptrtoint ptr %num_rx_bds.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_rx_bds.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp6.not.i = icmp eq i32 %60, 0
  br i1 %cmp6.not.i, label %for.end9.bcmgenet_free_rx_buffers.exit_crit_edge, label %for.body.lr.ph.i

for.end9.bcmgenet_free_rx_buffers.exit_crit_edge: ; preds = %for.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_free_rx_buffers.exit

for.body.lr.ph.i:                                 ; preds = %for.end9
  %rx_cbs.i = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 8
  %pdev.i = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 39
  br label %for.body.i45

for.body.i45:                                     ; preds = %for.inc.i.for.body.i45_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i48, %for.inc.i.for.body.i45_crit_edge ]
  %61 = ptrtoint ptr %rx_cbs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx_cbs.i, align 4
  %arrayidx.i44 = getelementptr %struct.enet_cb, ptr %62, i32 %i.07.i
  %63 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdev.i, align 4
  %65 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i44, align 4
  store ptr null, ptr %arrayidx.i44, align 4
  %dma_addr.i.i = getelementptr %struct.enet_cb, ptr %62, i32 %i.07.i, i32 2
  %67 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma_addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i.i = icmp eq i32 %68, 0
  br i1 %tobool.not.i.i, label %for.body.i45.bcmgenet_free_rx_cb.exit.i_crit_edge, label %if.then.i.i

for.body.i45.bcmgenet_free_rx_cb.exit.i_crit_edge: ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_free_rx_cb.exit.i

if.then.i.i:                                      ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %64, i32 0, i32 3
  %dma_len.i.i = getelementptr %struct.enet_cb, ptr %62, i32 %i.07.i, i32 3
  %69 = ptrtoint ptr %dma_len.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dma_len.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %68, i32 noundef %70, i32 noundef 2, i32 noundef 0) #17
  %71 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %dma_addr.i.i, align 4
  br label %bcmgenet_free_rx_cb.exit.i

bcmgenet_free_rx_cb.exit.i:                       ; preds = %if.then.i.i, %for.body.i45.bcmgenet_free_rx_cb.exit.i_crit_edge
  %tobool.not.i46 = icmp eq ptr %66, null
  br i1 %tobool.not.i46, label %bcmgenet_free_rx_cb.exit.i.for.inc.i_crit_edge, label %if.then.i47

bcmgenet_free_rx_cb.exit.i.for.inc.i_crit_edge:   ; preds = %bcmgenet_free_rx_cb.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.then.i47:                                      ; preds = %bcmgenet_free_rx_cb.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %66, i32 noundef 0) #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i47, %bcmgenet_free_rx_cb.exit.i.for.inc.i_crit_edge
  %inc.i48 = add nuw i32 %i.07.i, 1
  %72 = ptrtoint ptr %num_rx_bds.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_rx_bds.i, align 8
  %cmp.i49 = icmp ult i32 %inc.i48, %73
  br i1 %cmp.i49, label %for.inc.i.for.body.i45_crit_edge, label %for.inc.i.bcmgenet_free_rx_buffers.exit_crit_edge

for.inc.i.bcmgenet_free_rx_buffers.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_free_rx_buffers.exit

for.inc.i.for.body.i45_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i45

bcmgenet_free_rx_buffers.exit:                    ; preds = %for.inc.i.bcmgenet_free_rx_buffers.exit_crit_edge, %for.end9.bcmgenet_free_rx_buffers.exit_crit_edge
  %rx_cbs = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 8
  %74 = ptrtoint ptr %rx_cbs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rx_cbs, align 4
  tail call void @kfree(ptr noundef %75) #17
  %tx_cbs15 = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 4
  %76 = ptrtoint ptr %tx_cbs15 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tx_cbs15, align 8
  tail call void @kfree(ptr noundef %77) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcmgenet_init_rx_ring(ptr noundef %priv, i32 noundef %index, i32 noundef %size, i32 noundef %start_ptr, i32 noundef %end_ptr) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca %struct.dim_cq_moder, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index
  %hw_params = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 14
  %0 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_params, align 8
  %words_per_bd1 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %words_per_bd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %words_per_bd1, align 4
  %priv2 = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 18
  %4 = ptrtoint ptr %priv2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %priv, ptr %priv2, align 8
  %index3 = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 5
  %5 = ptrtoint ptr %index3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %index, ptr %index3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %index)
  %cmp = icmp eq i32 %index, 16
  %spec.select = select i1 %cmp, ptr @bcmgenet_rx_ring16_int_enable, ptr @bcmgenet_rx_ring_int_enable
  %spec.select150 = select i1 %cmp, ptr @bcmgenet_rx_ring16_int_disable, ptr @bcmgenet_rx_ring_int_disable
  %6 = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 16
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select, ptr %6, align 8
  %8 = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 17
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select150, ptr %8, align 4
  %rx_cbs = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 8
  %10 = ptrtoint ptr %rx_cbs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_cbs, align 4
  %add.ptr = getelementptr %struct.enet_cb, ptr %11, i32 %start_ptr
  %cbs = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 6
  %12 = ptrtoint ptr %cbs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %cbs, align 4
  %size6 = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 7
  %13 = ptrtoint ptr %size6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %size, ptr %size6, align 8
  %c_index = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 8
  %14 = ptrtoint ptr %c_index to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %c_index, align 4
  %read_ptr = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 9
  %15 = ptrtoint ptr %read_ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %start_ptr, ptr %read_ptr, align 8
  %cb_ptr = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 10
  %16 = ptrtoint ptr %cb_ptr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %start_ptr, ptr %cb_ptr, align 4
  %sub = add i32 %end_ptr, -1
  %end_ptr7 = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 11
  %17 = ptrtoint ptr %end_ptr7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %end_ptr7, align 8
  %msg_enable.i = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 37
  %18 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end8.i_crit_edge, label %do.body1.i

entry.do.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8.i

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcmgenet_alloc_rx_buffers.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcmgenet_init_rx_ring, %if.then5.i)) #17
          to label %do.end8.i [label %if.then5.i], !srcloc !247

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 2
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcmgenet_alloc_rx_buffers.__UNIQUE_ID_ddebug492, ptr noundef %21, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.41) #17
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then5.i, %do.body1.i, %entry.do.end8.i_crit_edge
  %22 = ptrtoint ptr %size6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp27.not.i = icmp eq i32 %23, 0
  br i1 %cmp27.not.i, label %do.end8.i.if.end9_crit_edge, label %do.end8.i.for.body.i_crit_edge

do.end8.i.for.body.i_crit_edge:                   ; preds = %do.end8.i
  br label %for.body.i

do.end8.i.if.end9_crit_edge:                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

for.cond.i:                                       ; preds = %if.end12.i
  %inc.i = add nuw i32 %i.028.i, 1
  %24 = ptrtoint ptr %size6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size6, align 8
  %cmp.i = icmp ult i32 %inc.i, %25
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end9_crit_edge

for.cond.i.if.end9_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %do.end8.i.for.body.i_crit_edge
  %i.028.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %do.end8.i.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %cbs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cbs, align 4
  %add.ptr.i = getelementptr %struct.enet_cb, ptr %27, i32 %i.028.i
  %call9.i = tail call fastcc ptr @bcmgenet_rx_refill(ptr noundef %priv, ptr noundef %add.ptr.i) #17
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %for.body.i.if.end12.i_crit_edge, label %if.then11.i

for.body.i.if.end12.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

if.then11.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call9.i, i32 noundef 0) #17
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %for.body.i.if.end12.i_crit_edge
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 4
  %tobool14.not.i = icmp eq ptr %29, null
  br i1 %tobool14.not.i, label %if.end12.i.cleanup_crit_edge, label %for.cond.i

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9:                                          ; preds = %for.cond.i.if.end9_crit_edge, %do.end8.i.if.end9_crit_edge
  %work.i = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 13, i32 4, i32 4
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #17
  %30 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 13, i32 4, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @bcmgenet_init_dim.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry9.i = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 13, i32 4, i32 4, i32 1
  %31 = ptrtoint ptr %entry9.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry9.i, ptr %entry9.i, align 4
  %prev.i.i = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 13, i32 4, i32 4, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry9.i, ptr %prev.i.i, align 4
  %func.i = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 13, i32 4, i32 4, i32 2
  %33 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @bcmgenet_dim_work, ptr %func.i, align 4
  %mode.i = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 13, i32 4, i32 7
  %34 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %mode.i, align 1
  %event_ctr.i = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 13, i32 1
  %35 = ptrtoint ptr %event_ctr.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %event_ctr.i, align 2
  %packets.i = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 13, i32 2
  %36 = ptrtoint ptr %packets.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %packets.i, align 4
  %bytes.i = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 13, i32 3
  %37 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %bytes.i, align 8
  %dim1.i = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 13
  %rx_coalesce_usecs.i = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 15
  %38 = ptrtoint ptr %rx_coalesce_usecs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_coalesce_usecs.i, align 4
  %rx_max_coalesced_frames.i = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 13, i32 %index, i32 14
  %40 = ptrtoint ptr %rx_max_coalesced_frames.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_max_coalesced_frames.i, align 8
  %42 = ptrtoint ptr %dim1.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %dim1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.not.i66 = icmp eq i16 %43, 0
  br i1 %tobool.not.i66, label %if.end9.bcmgenet_init_rx_coalesce.exit_crit_edge, label %if.then.i

if.end9.bcmgenet_init_rx_coalesce.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_init_rx_coalesce.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #17
  call void @net_dim_get_def_rx_moderation(ptr nonnull sret(%struct.dim_cq_moder) align 2 %tmp.i, i8 noundef zeroext 0) #17
  %44 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %moder.sroa.0.0.copyload5.i = load i16, ptr %tmp.i, align 2
  %moder.sroa.5.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 2
  %45 = ptrtoint ptr %moder.sroa.5.0.tmp.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %moder.sroa.5.0.copyload6.i = load i16, ptr %moder.sroa.5.0.tmp.sroa_idx.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #17
  %conv.i = zext i16 %moder.sroa.0.0.copyload5.i to i32
  %conv4.i = zext i16 %moder.sroa.5.0.copyload6.i to i32
  br label %bcmgenet_init_rx_coalesce.exit

bcmgenet_init_rx_coalesce.exit:                   ; preds = %if.then.i, %if.end9.bcmgenet_init_rx_coalesce.exit_crit_edge
  %usecs.0.i = phi i32 [ %conv.i, %if.then.i ], [ %39, %if.end9.bcmgenet_init_rx_coalesce.exit_crit_edge ]
  %pkts.0.i = phi i32 [ %conv4.i, %if.then.i ], [ %41, %if.end9.bcmgenet_init_rx_coalesce.exit_crit_edge ]
  %46 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv2, align 8
  %48 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %index3, align 8
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %47, align 8
  %hw_params.i.i.i = getelementptr inbounds %struct.bcmgenet_priv, ptr %47, i32 0, i32 14
  %52 = ptrtoint ptr %hw_params.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw_params.i.i.i, align 8
  %rdma_offset.i.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %rdma_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rdma_offset.i.i.i, align 4
  %words_per_bd.i.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %53, i32 0, i32 14
  %56 = ptrtoint ptr %words_per_bd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %words_per_bd.i.i.i, align 4
  %mul2.i.i.i = shl i32 %57, 10
  %add.i.i.i = add i32 %mul2.i.i.i, %55
  %add.ptr.i.i.i = getelementptr i8, ptr %51, i32 %add.i.i.i
  %mul3.i.i.i = shl i32 %49, 6
  %add.ptr4.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul3.i.i.i
  %58 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %58, i32 9
  %59 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %60 to i32
  %add.ptr5.i.i.i = getelementptr i8, ptr %add.ptr4.i.i.i, i32 %conv.i.i.i
  %61 = call i32 @llvm.bswap.i32(i32 %pkts.0.i) #17
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i, i32 %61) #17, !srcloc !249
  %add.i.i = add i32 %49, 16
  %62 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %47, align 8
  %64 = ptrtoint ptr %hw_params.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw_params.i.i.i, align 8
  %rdma_offset.i13.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %65, i32 0, i32 12
  %66 = ptrtoint ptr %rdma_offset.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rdma_offset.i13.i.i, align 4
  %words_per_bd.i14.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %65, i32 0, i32 14
  %68 = ptrtoint ptr %words_per_bd.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %words_per_bd.i14.i.i, align 4
  %mul2.i15.i.i = shl i32 %69, 10
  %add.i16.i.i = add i32 %mul2.i15.i.i, %67
  %add.ptr.i17.i.i = getelementptr i8, ptr %63, i32 %add.i16.i.i
  %add.ptr3.i.i.i = getelementptr i8, ptr %add.ptr.i17.i.i, i32 1088
  %70 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i18.i.i = getelementptr i8, ptr %70, i32 %add.i.i
  %71 = ptrtoint ptr %arrayidx.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i18.i.i, align 1
  %conv.i19.i.i = zext i8 %72 to i32
  %add.ptr4.i20.i.i = getelementptr i8, ptr %add.ptr3.i.i.i, i32 %conv.i19.i.i
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i20.i.i) #17, !srcloc !248
  %74 = and i32 %73, 65535
  %75 = call i32 @llvm.bswap.i32(i32 %74) #17
  %mul.i.i = mul i32 %usecs.0.i, 1000
  %sub.i.i = add i32 %mul.i.i, 8191
  %div11.i.i = lshr i32 %sub.i.i, 13
  %or.i.i = or i32 %75, %div11.i.i
  %76 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %47, align 8
  %78 = ptrtoint ptr %hw_params.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw_params.i.i.i, align 8
  %rdma_offset.i22.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %79, i32 0, i32 12
  %80 = ptrtoint ptr %rdma_offset.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rdma_offset.i22.i.i, align 4
  %words_per_bd.i23.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %79, i32 0, i32 14
  %82 = ptrtoint ptr %words_per_bd.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %words_per_bd.i23.i.i, align 4
  %mul2.i24.i.i = shl i32 %83, 10
  %add.i25.i.i = add i32 %mul2.i24.i.i, %81
  %add.ptr.i26.i.i = getelementptr i8, ptr %77, i32 %add.i25.i.i
  %add.ptr3.i27.i.i = getelementptr i8, ptr %add.ptr.i26.i.i, i32 1088
  %84 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i28.i.i = getelementptr i8, ptr %84, i32 %add.i.i
  %85 = ptrtoint ptr %arrayidx.i28.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i28.i.i, align 1
  %conv.i29.i.i = zext i8 %86 to i32
  %add.ptr4.i30.i.i = getelementptr i8, ptr %add.ptr3.i27.i.i, i32 %conv.i29.i.i
  %87 = call i32 @llvm.bswap.i32(i32 %or.i.i) #17
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i30.i.i, i32 %87) #17, !srcloc !249
  %dev = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 2
  %88 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev, align 8
  call void @netif_napi_add(ptr noundef %89, ptr noundef %arrayidx, ptr noundef nonnull @bcmgenet_rx_poll, i32 noundef 64) #17
  %90 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %priv, align 8
  %92 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hw_params, align 8
  %rdma_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %93, i32 0, i32 12
  %94 = ptrtoint ptr %rdma_offset.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rdma_offset.i, align 4
  %words_per_bd.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %93, i32 0, i32 14
  %96 = ptrtoint ptr %words_per_bd.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %words_per_bd.i, align 4
  %mul2.i = shl i32 %97, 10
  %add.i = add i32 %mul2.i, %95
  %add.ptr.i68 = getelementptr i8, ptr %91, i32 %add.i
  %mul3.i = shl i32 %index, 6
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i68, i32 %mul3.i
  %98 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i = getelementptr i8, ptr %98, i32 2
  %99 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.i, align 1
  %conv.i69 = zext i8 %100 to i32
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %conv.i69
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #17, !srcloc !249
  %101 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %priv, align 8
  %103 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hw_params, align 8
  %rdma_offset.i71 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %104, i32 0, i32 12
  %105 = ptrtoint ptr %rdma_offset.i71 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rdma_offset.i71, align 4
  %words_per_bd.i72 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %104, i32 0, i32 14
  %107 = ptrtoint ptr %words_per_bd.i72 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %words_per_bd.i72, align 4
  %mul2.i73 = shl i32 %108, 10
  %add.i74 = add i32 %mul2.i73, %106
  %add.ptr.i75 = getelementptr i8, ptr %102, i32 %add.i74
  %add.ptr4.i77 = getelementptr i8, ptr %add.ptr.i75, i32 %mul3.i
  %109 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i78 = getelementptr i8, ptr %109, i32 3
  %110 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx.i78, align 1
  %conv.i79 = zext i8 %111 to i32
  %add.ptr5.i80 = getelementptr i8, ptr %add.ptr4.i77, i32 %conv.i79
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i80, i32 0) #17, !srcloc !249
  %shl = shl i32 %size, 16
  %or = or i32 %shl, 2048
  %112 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %priv, align 8
  %114 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hw_params, align 8
  %rdma_offset.i82 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %115, i32 0, i32 12
  %116 = ptrtoint ptr %rdma_offset.i82 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rdma_offset.i82, align 4
  %words_per_bd.i83 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %115, i32 0, i32 14
  %118 = ptrtoint ptr %words_per_bd.i83 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %words_per_bd.i83, align 4
  %mul2.i84 = shl i32 %119, 10
  %add.i85 = add i32 %mul2.i84, %117
  %add.ptr.i86 = getelementptr i8, ptr %113, i32 %add.i85
  %add.ptr4.i88 = getelementptr i8, ptr %add.ptr.i86, i32 %mul3.i
  %120 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i89 = getelementptr i8, ptr %120, i32 4
  %121 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx.i89, align 1
  %conv.i90 = zext i8 %122 to i32
  %add.ptr5.i91 = getelementptr i8, ptr %add.ptr4.i88, i32 %conv.i90
  %123 = call i32 @llvm.bswap.i32(i32 %or) #17
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i91, i32 %123) #17, !srcloc !249
  %124 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %priv, align 8
  %126 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hw_params, align 8
  %rdma_offset.i93 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %127, i32 0, i32 12
  %128 = ptrtoint ptr %rdma_offset.i93 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %rdma_offset.i93, align 4
  %words_per_bd.i94 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %127, i32 0, i32 14
  %130 = ptrtoint ptr %words_per_bd.i94 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %words_per_bd.i94, align 4
  %mul2.i95 = shl i32 %131, 10
  %add.i96 = add i32 %mul2.i95, %129
  %add.ptr.i97 = getelementptr i8, ptr %125, i32 %add.i96
  %add.ptr4.i99 = getelementptr i8, ptr %add.ptr.i97, i32 %mul3.i
  %132 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i100 = getelementptr i8, ptr %132, i32 10
  %133 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx.i100, align 1
  %conv.i101 = zext i8 %134 to i32
  %add.ptr5.i102 = getelementptr i8, ptr %add.ptr4.i99, i32 %conv.i101
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i102, i32 268436736) #17, !srcloc !249
  %mul = mul i32 %3, %start_ptr
  %135 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %priv, align 8
  %137 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hw_params, align 8
  %rdma_offset.i104 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %138, i32 0, i32 12
  %139 = ptrtoint ptr %rdma_offset.i104 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %rdma_offset.i104, align 4
  %words_per_bd.i105 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %138, i32 0, i32 14
  %141 = ptrtoint ptr %words_per_bd.i105 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %words_per_bd.i105, align 4
  %mul2.i106 = shl i32 %142, 10
  %add.i107 = add i32 %mul2.i106, %140
  %add.ptr.i108 = getelementptr i8, ptr %136, i32 %add.i107
  %add.ptr4.i110 = getelementptr i8, ptr %add.ptr.i108, i32 %mul3.i
  %143 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i111 = getelementptr i8, ptr %143, i32 5
  %144 = ptrtoint ptr %arrayidx.i111 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx.i111, align 1
  %conv.i112 = zext i8 %145 to i32
  %add.ptr5.i113 = getelementptr i8, ptr %add.ptr4.i110, i32 %conv.i112
  %146 = call i32 @llvm.bswap.i32(i32 %mul) #17
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i113, i32 %146) #17, !srcloc !249
  %147 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %priv, align 8
  %149 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %hw_params, align 8
  %rdma_offset.i115 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %150, i32 0, i32 12
  %151 = ptrtoint ptr %rdma_offset.i115 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %rdma_offset.i115, align 4
  %words_per_bd.i116 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %150, i32 0, i32 14
  %153 = ptrtoint ptr %words_per_bd.i116 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %words_per_bd.i116, align 4
  %mul2.i117 = shl i32 %154, 10
  %add.i118 = add i32 %mul2.i117, %152
  %add.ptr.i119 = getelementptr i8, ptr %148, i32 %add.i118
  %add.ptr4.i121 = getelementptr i8, ptr %add.ptr.i119, i32 %mul3.i
  %155 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i122 = getelementptr i8, ptr %155, i32 11
  %156 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx.i122, align 1
  %conv.i123 = zext i8 %157 to i32
  %add.ptr5.i124 = getelementptr i8, ptr %add.ptr4.i121, i32 %conv.i123
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i124, i32 %146) #17, !srcloc !249
  %158 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %priv, align 8
  %160 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hw_params, align 8
  %rdma_offset.i126 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %161, i32 0, i32 12
  %162 = ptrtoint ptr %rdma_offset.i126 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %rdma_offset.i126, align 4
  %words_per_bd.i127 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %161, i32 0, i32 14
  %164 = ptrtoint ptr %words_per_bd.i127 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %words_per_bd.i127, align 4
  %mul2.i128 = shl i32 %165, 10
  %add.i129 = add i32 %mul2.i128, %163
  %add.ptr.i130 = getelementptr i8, ptr %159, i32 %add.i129
  %add.ptr4.i132 = getelementptr i8, ptr %add.ptr.i130, i32 %mul3.i
  %166 = load ptr, ptr @genet_dma_ring_regs, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %166, align 1
  %conv.i133 = zext i8 %168 to i32
  %add.ptr5.i134 = getelementptr i8, ptr %add.ptr4.i132, i32 %conv.i133
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i134, i32 %146) #17, !srcloc !249
  %mul12 = mul i32 %3, %end_ptr
  %sub13 = add i32 %mul12, -1
  %169 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %priv, align 8
  %171 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %hw_params, align 8
  %rdma_offset.i136 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %172, i32 0, i32 12
  %173 = ptrtoint ptr %rdma_offset.i136 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %rdma_offset.i136, align 4
  %words_per_bd.i137 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %172, i32 0, i32 14
  %175 = ptrtoint ptr %words_per_bd.i137 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %words_per_bd.i137, align 4
  %mul2.i138 = shl i32 %176, 10
  %add.i139 = add i32 %mul2.i138, %174
  %add.ptr.i140 = getelementptr i8, ptr %170, i32 %add.i139
  %add.ptr4.i142 = getelementptr i8, ptr %add.ptr.i140, i32 %mul3.i
  %177 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i143 = getelementptr i8, ptr %177, i32 7
  %178 = ptrtoint ptr %arrayidx.i143 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx.i143, align 1
  %conv.i144 = zext i8 %179 to i32
  %add.ptr5.i145 = getelementptr i8, ptr %add.ptr4.i142, i32 %conv.i144
  %180 = call i32 @llvm.bswap.i32(i32 %sub13) #17
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i145, i32 %180) #17, !srcloc !249
  br label %cleanup

cleanup:                                          ; preds = %bcmgenet_init_rx_coalesce.exit, %if.end12.i.cleanup_crit_edge
  %retval.0.i148 = phi i32 [ 0, %bcmgenet_init_rx_coalesce.exit ], [ -12, %if.end12.i.cleanup_crit_edge ]
  ret i32 %retval.0.i148
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcmgenet_rx_ring16_int_enable(ptr nocapture noundef readonly %ring) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %priv = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 2097152) #17, !srcloc !249
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcmgenet_rx_ring16_int_disable(ptr nocapture noundef readonly %ring) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %priv = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 2097152) #17, !srcloc !249
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcmgenet_rx_ring_int_enable(ptr nocapture noundef readonly %ring) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %priv = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %index = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 8
  %add = add i32 %3, 16
  %shl = shl nuw i32 1, %add
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl) #17
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %add.ptr1.i = getelementptr i8, ptr %6, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %4) #17, !srcloc !249
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcmgenet_rx_ring_int_disable(ptr nocapture noundef readonly %ring) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %priv = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %index = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 8
  %add = add i32 %3, 16
  %shl = shl nuw i32 1, %add
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl) #17
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %add.ptr1.i = getelementptr i8, ptr %6, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %4) #17, !srcloc !249
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcmgenet_dim_work(ptr nocapture noundef %work) #2 align 64 {
entry:
  %cur_profile = alloca %struct.dim_cq_moder, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cur_profile) #17
  %0 = ptrtoint ptr %cur_profile to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %cur_profile, align 8, !annotation !250
  %mode = getelementptr i8, ptr %work, i32 49
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %mode, align 1
  %profile_ix = getelementptr i8, ptr %work, i32 48
  %3 = ptrtoint ptr %profile_ix to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %profile_ix, align 8
  %conv = zext i8 %4 to i32
  call void @net_dim_get_rx_moderation(ptr nonnull sret(%struct.dim_cq_moder) align 2 %cur_profile, i8 noundef zeroext %2, i32 noundef %conv) #17
  %5 = ptrtoint ptr %cur_profile to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cur_profile, align 8
  %conv7 = zext i16 %6 to i32
  %pkts = getelementptr inbounds %struct.dim_cq_moder, ptr %cur_profile, i32 0, i32 1
  %7 = ptrtoint ptr %pkts to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pkts, align 2
  %conv8 = zext i16 %8 to i32
  %priv1.i = getelementptr i8, ptr %work, i32 72
  %9 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv1.i, align 8
  %index.i = getelementptr i8, ptr %work, i32 -120
  %11 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i, align 8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 8
  %hw_params.i.i = getelementptr inbounds %struct.bcmgenet_priv, ptr %10, i32 0, i32 14
  %15 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_params.i.i, align 8
  %rdma_offset.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %rdma_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rdma_offset.i.i, align 4
  %words_per_bd.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %16, i32 0, i32 14
  %19 = ptrtoint ptr %words_per_bd.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %words_per_bd.i.i, align 4
  %mul2.i.i = shl i32 %20, 10
  %add.i.i = add i32 %mul2.i.i, %18
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %add.i.i
  %mul3.i.i = shl i32 %12, 6
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul3.i.i
  %21 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i.i = getelementptr i8, ptr %21, i32 9
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %23 to i32
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 %conv.i.i
  %24 = call i32 @llvm.bswap.i32(i32 %conv8) #17
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %24) #17, !srcloc !249
  %add.i = add i32 %12, 16
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %10, align 8
  %27 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_params.i.i, align 8
  %rdma_offset.i13.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %rdma_offset.i13.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rdma_offset.i13.i, align 4
  %words_per_bd.i14.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %28, i32 0, i32 14
  %31 = ptrtoint ptr %words_per_bd.i14.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %words_per_bd.i14.i, align 4
  %mul2.i15.i = shl i32 %32, 10
  %add.i16.i = add i32 %mul2.i15.i, %30
  %add.ptr.i17.i = getelementptr i8, ptr %26, i32 %add.i16.i
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr.i17.i, i32 1088
  %33 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i18.i = getelementptr i8, ptr %33, i32 %add.i
  %34 = ptrtoint ptr %arrayidx.i18.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i18.i, align 1
  %conv.i19.i = zext i8 %35 to i32
  %add.ptr4.i20.i = getelementptr i8, ptr %add.ptr3.i.i, i32 %conv.i19.i
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i20.i) #17, !srcloc !248
  %37 = and i32 %36, 65535
  %38 = call i32 @llvm.bswap.i32(i32 %37) #17
  %mul.i = mul nuw nsw i32 %conv7, 1000
  %sub.i = add nuw nsw i32 %mul.i, 8191
  %div11.i = lshr i32 %sub.i, 13
  %or.i = or i32 %38, %div11.i
  %39 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %10, align 8
  %41 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_params.i.i, align 8
  %rdma_offset.i22.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %42, i32 0, i32 12
  %43 = ptrtoint ptr %rdma_offset.i22.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rdma_offset.i22.i, align 4
  %words_per_bd.i23.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %42, i32 0, i32 14
  %45 = ptrtoint ptr %words_per_bd.i23.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %words_per_bd.i23.i, align 4
  %mul2.i24.i = shl i32 %46, 10
  %add.i25.i = add i32 %mul2.i24.i, %44
  %add.ptr.i26.i = getelementptr i8, ptr %40, i32 %add.i25.i
  %add.ptr3.i27.i = getelementptr i8, ptr %add.ptr.i26.i, i32 1088
  %47 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i28.i = getelementptr i8, ptr %47, i32 %add.i
  %48 = ptrtoint ptr %arrayidx.i28.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i28.i, align 1
  %conv.i29.i = zext i8 %49 to i32
  %add.ptr4.i30.i = getelementptr i8, ptr %add.ptr3.i27.i, i32 %conv.i29.i
  %50 = call i32 @llvm.bswap.i32(i32 %or.i) #17
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i30.i, i32 %50) #17, !srcloc !249
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %add.ptr, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cur_profile) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_rx_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @bcmgenet_desc_rx(ptr noundef %napi, i32 noundef %budget)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %budget)
  %cmp = icmp ult i32 %call, %budget
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %call) #17
  %int_enable = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %napi, i32 0, i32 16
  %0 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %int_enable, align 8
  tail call void %1(ptr noundef %napi) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dim = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %napi, i32 0, i32 13
  %2 = ptrtoint ptr %dim to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dim, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then2

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %event_ctr = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %napi, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %event_ctr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %event_ctr, align 2
  %packets = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %napi, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %packets, align 4
  %bytes = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %napi, i32 0, i32 13, i32 3
  %8 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytes, align 8
  %call.i = tail call i64 @ktime_get() #17
  %dim_sample.sroa.8.16.insert.ext = zext i16 %5 to i64
  %dim_sample.sroa.8.16.insert.shift = shl nuw i64 %dim_sample.sroa.8.16.insert.ext, 48
  %dim8 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %napi, i32 0, i32 13, i32 4
  %.fca.0.insert = insertvalue [3 x i64] poison, i64 %call.i, 0
  %dim_sample.sroa.5.sroa.5.0.insert.ext = zext i32 %9 to i64
  %dim_sample.sroa.5.sroa.0.0.insert.ext = zext i32 %7 to i64
  %dim_sample.sroa.5.sroa.0.0.insert.shift = shl nuw i64 %dim_sample.sroa.5.sroa.0.0.insert.ext, 32
  %dim_sample.sroa.5.sroa.0.0.insert.insert = or i64 %dim_sample.sroa.5.sroa.0.0.insert.shift, %dim_sample.sroa.5.sroa.5.0.insert.ext
  %.fca.1.insert = insertvalue [3 x i64] %.fca.0.insert, i64 %dim_sample.sroa.5.sroa.0.0.insert.insert, 1
  %.fca.2.insert = insertvalue [3 x i64] %.fca.1.insert, i64 %dim_sample.sroa.8.16.insert.shift, 2
  tail call void @net_dim(ptr noundef %dim8, [3 x i64] %.fca.2.insert) #17
  br label %if.end9

if.end9:                                          ; preds = %if.then2, %if.end.if.end9_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bcmgenet_rx_refill(ptr nocapture noundef %priv, ptr nocapture noundef %cb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 39
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %dev1 = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %rx_buf_len = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 10
  %4 = ptrtoint ptr %rx_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_buf_len, align 4
  %add = add i32 %5, 32
  %call = tail call ptr @__netdev_alloc_skb(ptr noundef %3, i32 noundef %add, i32 noundef 10784) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %alloc_rx_buff_failed = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 45, i32 9
  %6 = ptrtoint ptr %alloc_rx_buff_failed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alloc_rx_buff_failed, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %alloc_rx_buff_failed, align 4
  %msg_enable = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 37
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.bcmgenet_rx_refill) #20
  br label %cleanup

if.end5:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = ptrtoint ptr %rx_buf_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_buf_len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %13) #17
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end5
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !253

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #17
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %19, %if.end.i.i ], [ %17, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #17
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #17
  br label %if.then10

dma_map_single_attrs.exit:                        ; preds = %if.end5
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %13, i32 noundef %15) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %20 = load ptr, ptr @mem_map, align 4
  %21 = ptrtoint ptr %13 to i32
  %sub.i = add i32 %21, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %20, i32 %shr.i
  %and.i = and i32 %21, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %15, i32 noundef 2, i32 noundef 0) #17
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then10_crit_edge, label %if.end22

dma_map_single_attrs.exit.if.then10_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then10

if.then10:                                        ; preds = %dma_map_single_attrs.exit.if.then10_crit_edge, %dma_map_single_attrs.exit.thread
  %rx_dma_failed = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 45, i32 10
  %22 = ptrtoint ptr %rx_dma_failed to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_dma_failed, align 4
  %inc12 = add i32 %23, 1
  store i32 %inc12, ptr %rx_dma_failed, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #17
  %msg_enable14 = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 37
  %24 = ptrtoint ptr %msg_enable14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable14, align 4
  %and15 = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then10.cleanup_crit_edge, label %if.then17

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then17:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.bcmgenet_rx_refill) #20
  br label %cleanup

if.end22:                                         ; preds = %dma_map_single_attrs.exit
  %28 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cb, align 4
  store ptr null, ptr %cb, align 4
  %dma_addr.i = getelementptr inbounds %struct.enet_cb, ptr %cb, i32 0, i32 2
  %30 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %if.end22.bcmgenet_free_rx_cb.exit_crit_edge, label %if.then.i51

if.end22.bcmgenet_free_rx_cb.exit_crit_edge:      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_free_rx_cb.exit

if.then.i51:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  %dma_len.i = getelementptr inbounds %struct.enet_cb, ptr %cb, i32 0, i32 3
  %32 = ptrtoint ptr %dma_len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %31, i32 noundef %33, i32 noundef 2, i32 noundef 0) #17
  br label %bcmgenet_free_rx_cb.exit

bcmgenet_free_rx_cb.exit:                         ; preds = %if.then.i51, %if.end22.bcmgenet_free_rx_cb.exit_crit_edge
  %34 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call, ptr %cb, align 4
  %35 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call41.i, ptr %dma_addr.i, align 4
  %36 = ptrtoint ptr %rx_buf_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_buf_len, align 4
  %dma_len = getelementptr inbounds %struct.enet_cb, ptr %cb, i32 0, i32 3
  %38 = ptrtoint ptr %dma_len to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %dma_len, align 4
  %bd_addr = getelementptr inbounds %struct.enet_cb, ptr %cb, i32 0, i32 1
  %39 = ptrtoint ptr %bd_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bd_addr, align 4
  %add.ptr.i52 = getelementptr i8, ptr %40, i32 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %call41.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %41) #17, !srcloc !249
  br label %cleanup

cleanup:                                          ; preds = %bcmgenet_free_rx_cb.exit, %if.then17, %if.then10.cleanup_crit_edge, %if.then3, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %29, %bcmgenet_free_rx_cb.exit ], [ null, %if.then3 ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.then17 ], [ null, %if.then10.cleanup_crit_edge ]
  ret ptr %retval.0
}

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
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dim_get_rx_moderation(ptr sret(%struct.dim_cq_moder) align 2, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcmgenet_desc_rx(ptr noundef %ring, i32 noundef %budget) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 18
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %dev2 = getelementptr inbounds %struct.bcmgenet_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  %index = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp = icmp eq i32 %5, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr1.i = getelementptr i8, ptr %7, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 2097152) #17, !srcloc !249
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add = add i32 %5, 16
  %shl = shl nuw i32 1, %add
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl) #17
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %add.ptr1.i325 = getelementptr i8, ptr %10, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i325, i32 %8) #17, !srcloc !249
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %hw_params.i = getelementptr inbounds %struct.bcmgenet_priv, ptr %1, i32 0, i32 14
  %15 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_params.i, align 8
  %rdma_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %rdma_offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rdma_offset.i, align 4
  %words_per_bd.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %16, i32 0, i32 14
  %19 = ptrtoint ptr %words_per_bd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %words_per_bd.i, align 4
  %mul2.i = shl i32 %20, 10
  %add.i = add i32 %mul2.i, %18
  %add.ptr.i326 = getelementptr i8, ptr %14, i32 %add.i
  %mul3.i = shl i32 %12, 6
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i326, i32 %mul3.i
  %21 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i = getelementptr i8, ptr %21, i32 2
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %23 to i32
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %conv.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #17, !srcloc !248
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #17
  %shr = lshr i32 %25, 16
  %old_discards = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 12
  %26 = ptrtoint ptr %old_discards to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %old_discards, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %27)
  %cmp5 = icmp ugt i32 %shr, %27
  br i1 %cmp5, label %if.then6, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

if.then6:                                         ; preds = %if.end
  %sub = sub i32 %shr, %27
  %errors = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 3
  %28 = ptrtoint ptr %errors to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %errors, align 8
  %add8 = add i32 %sub, %29
  store i32 %add8, ptr %errors, align 8
  %30 = ptrtoint ptr %old_discards to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shr, ptr %old_discards, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %25)
  %cmp12 = icmp ugt i32 %25, -1073741825
  br i1 %cmp12, label %if.then13, label %if.then6.if.end17_crit_edge

if.then6.if.end17_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

if.then13:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  %31 = ptrtoint ptr %old_discards to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %old_discards, align 4
  %32 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index, align 8
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %36 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_params.i, align 8
  %rdma_offset.i328 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %rdma_offset.i328 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rdma_offset.i328, align 4
  %words_per_bd.i329 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %37, i32 0, i32 14
  %40 = ptrtoint ptr %words_per_bd.i329 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %words_per_bd.i329, align 4
  %mul2.i330 = shl i32 %41, 10
  %add.i331 = add i32 %mul2.i330, %39
  %add.ptr.i332 = getelementptr i8, ptr %35, i32 %add.i331
  %mul3.i333 = shl i32 %33, 6
  %add.ptr4.i334 = getelementptr i8, ptr %add.ptr.i332, i32 %mul3.i333
  %42 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i335 = getelementptr i8, ptr %42, i32 2
  %43 = ptrtoint ptr %arrayidx.i335 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i335, align 1
  %conv.i336 = zext i8 %44 to i32
  %add.ptr5.i337 = getelementptr i8, ptr %add.ptr4.i334, i32 %conv.i336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i337, i32 0) #17, !srcloc !249
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.then6.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %and18 = and i32 %25, 65535
  %c_index = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 8
  %45 = ptrtoint ptr %c_index to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %c_index, align 4
  %sub19 = sub i32 %25, %46
  %and20 = and i32 %sub19, 65535
  %msg_enable = getelementptr inbounds %struct.bcmgenet_priv, ptr %1, i32 0, i32 37
  %47 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msg_enable, align 4
  %and21 = and i32 %48, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool.not = icmp eq i32 %and21, 0
  br i1 %tobool.not, label %if.end17.do.end32_crit_edge, label %do.body23

if.end17.do.end32_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end32

do.body23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcmgenet_desc_rx.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcmgenet_desc_rx, %if.then28)) #17
          to label %do.end32 [label %if.then28], !srcloc !247

if.then28:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcmgenet_desc_rx.__UNIQUE_ID_ddebug489, ptr noundef %3, ptr noundef nonnull @.str.48, i32 noundef %and20) #17
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %do.body23, %if.end17.do.end32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %cmp33352 = icmp ne i32 %and20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp34353 = icmp ne i32 %budget, 0
  %or.cond354 = and i1 %cmp33352, %cmp34353
  br i1 %or.cond354, label %while.body.lr.ph, label %do.end32.while.end_crit_edge

do.end32.while.end_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end32
  %rx_cbs = getelementptr inbounds %struct.bcmgenet_priv, ptr %1, i32 0, i32 8
  %read_ptr = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 9
  %features = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %errors106 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 3
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 12
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 11
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 13
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 10
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 4
  %crc_fwd_en = getelementptr inbounds %struct.bcmgenet_priv, ptr %1, i32 0, i32 35
  %packets = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 1
  %multicast = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 8
  %dropped = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 4
  %end_ptr = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 11
  %cb_ptr = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 10
  %49 = add i32 %budget, -1
  %50 = add nsw i32 %and20, -1
  %umin = call i32 @llvm.umin.i32(i32 %49, i32 %50)
  %51 = add nuw nsw i32 %umin, 1
  br label %while.body

while.body:                                       ; preds = %if.end211.while.body_crit_edge, %while.body.lr.ph
  %bytes_processed.0356 = phi i32 [ 0, %while.body.lr.ph ], [ %bytes_processed.1, %if.end211.while.body_crit_edge ]
  %rxpktprocessed.0355 = phi i32 [ 0, %while.body.lr.ph ], [ %inc196, %if.end211.while.body_crit_edge ]
  %52 = ptrtoint ptr %rx_cbs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rx_cbs, align 4
  %54 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %read_ptr, align 8
  %arrayidx = getelementptr %struct.enet_cb, ptr %53, i32 %55
  %call35 = tail call fastcc ptr @bcmgenet_rx_refill(ptr noundef %1, ptr noundef %arrayidx)
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.then45, label %if.end46, !prof !251

if.then45:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %56 = ptrtoint ptr %dropped to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dropped, align 4
  %inc = add i32 %57, 1
  store i32 %inc, ptr %dropped, align 4
  br label %next

if.end46:                                         ; preds = %while.body
  %data = getelementptr inbounds %struct.sk_buff, ptr %call35, i32 0, i32 19
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %62 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %features, align 16
  %and47 = and i64 %63, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and47)
  %tobool48.not = icmp eq i64 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end56_crit_edge, label %if.then49

if.end46.if.end56_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56

if.then49:                                        ; preds = %if.end46
  %rx_csum50 = getelementptr inbounds %struct.status_64, ptr %59, i32 0, i32 2
  %64 = ptrtoint ptr %rx_csum50 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_csum50, align 4
  %conv = trunc i32 %65 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool52.not = icmp eq i16 %conv, 0
  br i1 %tobool52.not, label %if.then49.if.end56_crit_edge, label %if.then53

if.then49.if.end56_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56

if.then53:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #19
  %conv54 = and i32 %65, 65535
  %66 = getelementptr inbounds %struct.sk_buff, ptr %call35, i32 0, i32 15, i32 0, i32 5
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv54, ptr %66, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call35, i32 0, i32 15
  %68 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 1024
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.then49.if.end56_crit_edge, %if.end46.if.end56_crit_edge
  %and57 = and i32 %61, 65535
  %shr58 = lshr i32 %61, 16
  %69 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %msg_enable, align 4
  %and61 = and i32 %70, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end56.do.end84_crit_edge, label %do.body64

if.end56.do.end84_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end84

do.body64:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcmgenet_desc_rx.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcmgenet_desc_rx, %if.then76)) #17
          to label %do.end84 [label %if.then76], !srcloc !247

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #19
  %71 = ptrtoint ptr %c_index to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %c_index, align 4
  %73 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %read_ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcmgenet_desc_rx.__UNIQUE_ID_ddebug490, ptr noundef %3, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %and18, i32 noundef %72, i32 noundef %74, i32 noundef %61) #17
  br label %do.end84

do.end84:                                         ; preds = %if.then76, %do.body64, %if.end56.do.end84_crit_edge
  %75 = and i32 %61, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576, i32 %75)
  %.not = icmp eq i32 %75, 24576
  br i1 %.not, label %if.end108, label %do.body98, !prof !253

do.body98:                                        ; preds = %do.end84
  %76 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %msg_enable, align 4
  %and100 = and i32 %77, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %do.body98.do.end105_crit_edge, label %if.then102

do.body98.do.end105_crit_edge:                    ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end105

if.then102:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.50) #20
  br label %do.end105

do.end105:                                        ; preds = %if.then102, %do.body98.do.end105_crit_edge
  %78 = ptrtoint ptr %errors106 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %errors106, align 8
  %inc107 = add i32 %79, 1
  store i32 %inc107, ptr %errors106, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call35, i32 noundef 1) #17
  br label %next

if.end108:                                        ; preds = %do.end84
  %and109 = and i32 %61, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end151, label %do.body118, !prof !253

do.body118:                                       ; preds = %if.end108
  %80 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %msg_enable, align 4
  %and120 = and i32 %81, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %do.body118.do.end125_crit_edge, label %if.then122

do.body118.do.end125_crit_edge:                   ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end125

if.then122:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.51, i32 noundef %and57) #20
  br label %do.end125

do.end125:                                        ; preds = %if.then122, %do.body118.do.end125_crit_edge
  %and126 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %do.end125.if.end130_crit_edge, label %if.then128

do.end125.if.end130_crit_edge:                    ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end130

if.then128:                                       ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #19
  %82 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rx_crc_errors, align 8
  %inc129 = add i32 %83, 1
  store i32 %inc129, ptr %rx_crc_errors, align 8
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %do.end125.if.end130_crit_edge
  %and131 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end130.if.end136_crit_edge, label %if.then133

if.end130.if.end136_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end136

if.then133:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #19
  %84 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rx_over_errors, align 4
  %inc135 = add i32 %85, 1
  store i32 %inc135, ptr %rx_over_errors, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then133, %if.end130.if.end136_crit_edge
  %and137 = and i32 %61, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end136.if.end142_crit_edge, label %if.then139

if.end136.if.end142_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end142

if.then139:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #19
  %86 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_frame_errors, align 4
  %inc141 = add i32 %87, 1
  store i32 %inc141, ptr %rx_frame_errors, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then139, %if.end136.if.end142_crit_edge
  %and143 = and i32 %61, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.end142.if.end148_crit_edge, label %if.then145

if.end142.if.end148_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end148

if.then145:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #19
  %88 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rx_length_errors, align 8
  %inc147 = add i32 %89, 1
  store i32 %inc147, ptr %rx_length_errors, align 8
  br label %if.end148

if.end148:                                        ; preds = %if.then145, %if.end142.if.end148_crit_edge
  %90 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rx_errors, align 8
  %inc150 = add i32 %91, 1
  store i32 %inc150, ptr %rx_errors, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call35, i32 noundef 1) #17
  br label %next

if.end151:                                        ; preds = %if.end108
  %call152 = tail call ptr @skb_put(ptr noundef nonnull %call35, i32 noundef %shr58) #17
  %call153 = tail call ptr @skb_pull(ptr noundef nonnull %call35, i32 noundef 66) #17
  %sub154 = add nsw i32 %shr58, -66
  %92 = ptrtoint ptr %crc_fwd_en to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %crc_fwd_en, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool155.not = icmp eq i8 %93, 0
  br i1 %tobool155.not, label %if.end151.if.end159_crit_edge, label %if.then156

if.end151.if.end159_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end159

if.then156:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #19
  %sub157 = add nsw i32 %shr58, -70
  tail call void @skb_trim(ptr noundef nonnull %call35, i32 noundef %sub157) #17
  br label %if.end159

if.end159:                                        ; preds = %if.then156, %if.end151.if.end159_crit_edge
  %len.0 = phi i32 [ %sub157, %if.then156 ], [ %sub154, %if.end151.if.end159_crit_edge ]
  %add160 = add i32 %len.0, %bytes_processed.0356
  %94 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev2, align 8
  %call162 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call35, ptr noundef %95) #17
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call35, i32 0, i32 15, i32 0, i32 18
  %96 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %call162, ptr %protocol, align 8
  %97 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %packets, align 4
  %inc163 = add i32 %98, 1
  store i32 %inc163, ptr %packets, align 4
  %99 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bytes, align 8
  %add164 = add i32 %100, %len.0
  store i32 %add164, ptr %bytes, align 8
  %and165 = and i32 %61, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.end159.if.end170_crit_edge, label %if.then167

if.end159.if.end170_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end170

if.then167:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #19
  %101 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %multicast, align 8
  %inc169 = add i32 %102, 1
  store i32 %inc169, ptr %multicast, align 8
  br label %if.end170

if.end170:                                        ; preds = %if.then167, %if.end159.if.end170_crit_edge
  %call171 = tail call i32 @napi_gro_receive(ptr noundef %ring, ptr noundef nonnull %call35) #17
  %103 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %msg_enable, align 4
  %and174 = and i32 %104, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %if.end170.next_crit_edge, label %do.body177

if.end170.next_crit_edge:                         ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #19
  br label %next

do.body177:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcmgenet_desc_rx.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcmgenet_desc_rx, %if.then189)) #17
          to label %next [label %if.then189], !srcloc !247

if.then189:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bcmgenet_desc_rx.__UNIQUE_ID_ddebug491, ptr noundef %3, ptr noundef nonnull @.str.52) #17
  br label %next

next:                                             ; preds = %if.then189, %do.body177, %if.end170.next_crit_edge, %if.end148, %do.end105, %if.then45
  %bytes_processed.1 = phi i32 [ %bytes_processed.0356, %if.then45 ], [ %bytes_processed.0356, %do.end105 ], [ %bytes_processed.0356, %if.end148 ], [ %add160, %if.then189 ], [ %add160, %if.end170.next_crit_edge ], [ %add160, %do.body177 ]
  %inc196 = add nuw nsw i32 %rxpktprocessed.0355, 1
  %105 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %read_ptr, align 8
  %107 = ptrtoint ptr %end_ptr to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %end_ptr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %108)
  %cmp198 = icmp ult i32 %106, %108
  br i1 %cmp198, label %if.then206, label %if.else209, !prof !253

if.then206:                                       ; preds = %next
  call void @__sanitizer_cov_trace_pc() #19
  %inc208 = add nuw i32 %106, 1
  br label %if.end211

if.else209:                                       ; preds = %next
  call void @__sanitizer_cov_trace_pc() #19
  %109 = ptrtoint ptr %cb_ptr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cb_ptr, align 4
  br label %if.end211

if.end211:                                        ; preds = %if.else209, %if.then206
  %storemerge = phi i32 [ %110, %if.else209 ], [ %inc208, %if.then206 ]
  %111 = ptrtoint ptr %read_ptr to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %storemerge, ptr %read_ptr, align 8
  %112 = ptrtoint ptr %c_index to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %c_index, align 4
  %add213 = add i32 %113, 1
  %and214 = and i32 %add213, 65535
  store i32 %and214, ptr %c_index, align 4
  %114 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %index, align 8
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %1, align 8
  %118 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hw_params.i, align 8
  %rdma_offset.i339 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %119, i32 0, i32 12
  %120 = ptrtoint ptr %rdma_offset.i339 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rdma_offset.i339, align 4
  %words_per_bd.i340 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %119, i32 0, i32 14
  %122 = ptrtoint ptr %words_per_bd.i340 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %words_per_bd.i340, align 4
  %mul2.i341 = shl i32 %123, 10
  %add.i342 = add i32 %mul2.i341, %121
  %add.ptr.i343 = getelementptr i8, ptr %117, i32 %add.i342
  %mul3.i344 = shl i32 %115, 6
  %add.ptr4.i345 = getelementptr i8, ptr %add.ptr.i343, i32 %mul3.i344
  %124 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i346 = getelementptr i8, ptr %124, i32 3
  %125 = ptrtoint ptr %arrayidx.i346 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx.i346, align 1
  %conv.i347 = zext i8 %126 to i32
  %add.ptr5.i348 = getelementptr i8, ptr %add.ptr4.i345, i32 %conv.i347
  %127 = tail call i32 @llvm.bswap.i32(i32 %and214) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i348, i32 %127) #17, !srcloc !249
  %exitcond.not = icmp eq i32 %rxpktprocessed.0355, %umin
  br i1 %exitcond.not, label %if.end211.while.end_crit_edge, label %if.end211.while.body_crit_edge

if.end211.while.body_crit_edge:                   ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end211.while.end_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %if.end211.while.end_crit_edge, %do.end32.while.end_crit_edge
  %rxpktprocessed.0.lcssa = phi i32 [ 0, %do.end32.while.end_crit_edge ], [ %51, %if.end211.while.end_crit_edge ]
  %bytes_processed.0.lcssa = phi i32 [ 0, %do.end32.while.end_crit_edge ], [ %bytes_processed.1, %if.end211.while.end_crit_edge ]
  %bytes218 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 13, i32 3
  %128 = ptrtoint ptr %bytes218 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %bytes_processed.0.lcssa, ptr %bytes218, align 8
  %packets220 = getelementptr inbounds %struct.bcmgenet_rx_ring, ptr %ring, i32 0, i32 13, i32 2
  %129 = ptrtoint ptr %packets220 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %rxpktprocessed.0.lcssa, ptr %packets220, align 4
  ret i32 %rxpktprocessed.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_init_tx_ring(ptr noundef %priv, i32 noundef %index, i32 noundef %size, i32 noundef %start_ptr, i32 noundef %end_ptr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 6, i32 %index
  %hw_params = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 14
  %0 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_params, align 8
  %words_per_bd1 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %words_per_bd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %words_per_bd1, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.53, ptr noundef nonnull @bcmgenet_init_tx_ring.__key, i16 noundef signext 3) #17
  %priv2 = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 6, i32 %index, i32 17
  %4 = ptrtoint ptr %priv2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %priv, ptr %priv2, align 4
  %index3 = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 6, i32 %index, i32 4
  %5 = ptrtoint ptr %index3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %index, ptr %index3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %index)
  %cmp = icmp eq i32 %index, 16
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add = add i32 %index, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %add.sink = phi i32 [ %add, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %bcmgenet_tx_ring_int_enable.sink = phi ptr [ @bcmgenet_tx_ring_int_enable, %if.else ], [ @bcmgenet_tx_ring16_int_enable, %entry.if.end_crit_edge ]
  %bcmgenet_tx_ring_int_disable.sink = phi ptr [ @bcmgenet_tx_ring_int_disable, %if.else ], [ @bcmgenet_tx_ring16_int_disable, %entry.if.end_crit_edge ]
  %spec.select = phi i32 [ 6, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %6 = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 6, i32 %index, i32 5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add.sink, ptr %6, align 4
  %8 = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 6, i32 %index, i32 15
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bcmgenet_tx_ring_int_enable.sink, ptr %8, align 4
  %10 = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 6, i32 %index, i32 16
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %bcmgenet_tx_ring_int_disable.sink, ptr %10, align 8
  %tx_cbs = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 4
  %12 = ptrtoint ptr %tx_cbs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_cbs, align 8
  %add.ptr = getelementptr %struct.enet_cb, ptr %13, i32 %start_ptr
  %cbs = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 6, i32 %index, i32 6
  %14 = ptrtoint ptr %cbs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %cbs, align 8
  %size7 = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 6, i32 %index, i32 7
  %15 = ptrtoint ptr %size7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %size, ptr %size7, align 4
  %clean_ptr = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 6, i32 %index, i32 8
  %16 = ptrtoint ptr %clean_ptr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %start_ptr, ptr %clean_ptr, align 8
  %c_index = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 6, i32 %index, i32 9
  %17 = ptrtoint ptr %c_index to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %c_index, align 4
  %free_bds = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 6, i32 %index, i32 10
  %18 = ptrtoint ptr %free_bds to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %size, ptr %free_bds, align 8
  %write_ptr = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 6, i32 %index, i32 11
  %19 = ptrtoint ptr %write_ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %start_ptr, ptr %write_ptr, align 4
  %cb_ptr = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 6, i32 %index, i32 13
  %20 = ptrtoint ptr %cb_ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %start_ptr, ptr %cb_ptr, align 4
  %sub = add i32 %end_ptr, -1
  %end_ptr8 = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 6, i32 %index, i32 14
  %21 = ptrtoint ptr %end_ptr8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub, ptr %end_ptr8, align 8
  %prod_index = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 6, i32 %index, i32 12
  %22 = ptrtoint ptr %prod_index to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %prod_index, align 8
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 8
  %25 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_params, align 8
  %tdma_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %tdma_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tdma_offset.i, align 4
  %words_per_bd.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %26, i32 0, i32 14
  %29 = ptrtoint ptr %words_per_bd.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %words_per_bd.i, align 4
  %mul2.i = shl i32 %30, 10
  %add.i = add i32 %mul2.i, %28
  %add.ptr.i = getelementptr i8, ptr %24, i32 %add.i
  %mul3.i = shl i32 %index, 6
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul3.i
  %31 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i = getelementptr i8, ptr %31, i32 3
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %33 to i32
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #17, !srcloc !249
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 8
  %36 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_params, align 8
  %tdma_offset.i73 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %tdma_offset.i73 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tdma_offset.i73, align 4
  %words_per_bd.i74 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %37, i32 0, i32 14
  %40 = ptrtoint ptr %words_per_bd.i74 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %words_per_bd.i74, align 4
  %mul2.i75 = shl i32 %41, 10
  %add.i76 = add i32 %mul2.i75, %39
  %add.ptr.i77 = getelementptr i8, ptr %35, i32 %add.i76
  %add.ptr4.i79 = getelementptr i8, ptr %add.ptr.i77, i32 %mul3.i
  %42 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i80 = getelementptr i8, ptr %42, i32 2
  %43 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i80, align 1
  %conv.i81 = zext i8 %44 to i32
  %add.ptr5.i82 = getelementptr i8, ptr %add.ptr4.i79, i32 %conv.i81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i82, i32 0) #17, !srcloc !249
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 8
  %47 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw_params, align 8
  %tdma_offset.i84 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %48, i32 0, i32 13
  %49 = ptrtoint ptr %tdma_offset.i84 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tdma_offset.i84, align 4
  %words_per_bd.i85 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %48, i32 0, i32 14
  %51 = ptrtoint ptr %words_per_bd.i85 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %words_per_bd.i85, align 4
  %mul2.i86 = shl i32 %52, 10
  %add.i87 = add i32 %mul2.i86, %50
  %add.ptr.i88 = getelementptr i8, ptr %46, i32 %add.i87
  %add.ptr4.i90 = getelementptr i8, ptr %add.ptr.i88, i32 %mul3.i
  %53 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i91 = getelementptr i8, ptr %53, i32 9
  %54 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i91, align 1
  %conv.i92 = zext i8 %55 to i32
  %add.ptr5.i93 = getelementptr i8, ptr %add.ptr4.i90, i32 %conv.i92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i93, i32 16777216) #17, !srcloc !249
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv, align 8
  %58 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw_params, align 8
  %tdma_offset.i95 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %59, i32 0, i32 13
  %60 = ptrtoint ptr %tdma_offset.i95 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tdma_offset.i95, align 4
  %words_per_bd.i96 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %59, i32 0, i32 14
  %62 = ptrtoint ptr %words_per_bd.i96 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %words_per_bd.i96, align 4
  %mul2.i97 = shl i32 %63, 10
  %add.i98 = add i32 %mul2.i97, %61
  %add.ptr.i99 = getelementptr i8, ptr %57, i32 %add.i98
  %add.ptr4.i101 = getelementptr i8, ptr %add.ptr.i99, i32 %mul3.i
  %64 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i102 = getelementptr i8, ptr %64, i32 10
  %65 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i102, align 1
  %conv.i103 = zext i8 %66 to i32
  %add.ptr5.i104 = getelementptr i8, ptr %add.ptr4.i101, i32 %conv.i103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i104, i32 %spec.select) #17, !srcloc !249
  %shl = shl i32 %size, 16
  %or = or i32 %shl, 2048
  %67 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv, align 8
  %69 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw_params, align 8
  %tdma_offset.i106 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %70, i32 0, i32 13
  %71 = ptrtoint ptr %tdma_offset.i106 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tdma_offset.i106, align 4
  %words_per_bd.i107 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %70, i32 0, i32 14
  %73 = ptrtoint ptr %words_per_bd.i107 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %words_per_bd.i107, align 4
  %mul2.i108 = shl i32 %74, 10
  %add.i109 = add i32 %mul2.i108, %72
  %add.ptr.i110 = getelementptr i8, ptr %68, i32 %add.i109
  %add.ptr4.i112 = getelementptr i8, ptr %add.ptr.i110, i32 %mul3.i
  %75 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i113 = getelementptr i8, ptr %75, i32 4
  %76 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i113, align 1
  %conv.i114 = zext i8 %77 to i32
  %add.ptr5.i115 = getelementptr i8, ptr %add.ptr4.i112, i32 %conv.i114
  %78 = tail call i32 @llvm.bswap.i32(i32 %or) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i115, i32 %78) #17, !srcloc !249
  %mul = mul i32 %3, %start_ptr
  %79 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %priv, align 8
  %81 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hw_params, align 8
  %tdma_offset.i117 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %82, i32 0, i32 13
  %83 = ptrtoint ptr %tdma_offset.i117 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tdma_offset.i117, align 4
  %words_per_bd.i118 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %82, i32 0, i32 14
  %85 = ptrtoint ptr %words_per_bd.i118 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %words_per_bd.i118, align 4
  %mul2.i119 = shl i32 %86, 10
  %add.i120 = add i32 %mul2.i119, %84
  %add.ptr.i121 = getelementptr i8, ptr %80, i32 %add.i120
  %add.ptr4.i123 = getelementptr i8, ptr %add.ptr.i121, i32 %mul3.i
  %87 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i124 = getelementptr i8, ptr %87, i32 5
  %88 = ptrtoint ptr %arrayidx.i124 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i124, align 1
  %conv.i125 = zext i8 %89 to i32
  %add.ptr5.i126 = getelementptr i8, ptr %add.ptr4.i123, i32 %conv.i125
  %90 = tail call i32 @llvm.bswap.i32(i32 %mul) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i126, i32 %90) #17, !srcloc !249
  %91 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %priv, align 8
  %93 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw_params, align 8
  %tdma_offset.i128 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %94, i32 0, i32 13
  %95 = ptrtoint ptr %tdma_offset.i128 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tdma_offset.i128, align 4
  %words_per_bd.i129 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %94, i32 0, i32 14
  %97 = ptrtoint ptr %words_per_bd.i129 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %words_per_bd.i129, align 4
  %mul2.i130 = shl i32 %98, 10
  %add.i131 = add i32 %mul2.i130, %96
  %add.ptr.i132 = getelementptr i8, ptr %92, i32 %add.i131
  %add.ptr4.i134 = getelementptr i8, ptr %add.ptr.i132, i32 %mul3.i
  %99 = load ptr, ptr @genet_dma_ring_regs, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %99, align 1
  %conv.i135 = zext i8 %101 to i32
  %add.ptr5.i136 = getelementptr i8, ptr %add.ptr4.i134, i32 %conv.i135
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i136, i32 %90) #17, !srcloc !249
  %102 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %priv, align 8
  %104 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hw_params, align 8
  %tdma_offset.i138 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %105, i32 0, i32 13
  %106 = ptrtoint ptr %tdma_offset.i138 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tdma_offset.i138, align 4
  %words_per_bd.i139 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %105, i32 0, i32 14
  %108 = ptrtoint ptr %words_per_bd.i139 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %words_per_bd.i139, align 4
  %mul2.i140 = shl i32 %109, 10
  %add.i141 = add i32 %mul2.i140, %107
  %add.ptr.i142 = getelementptr i8, ptr %103, i32 %add.i141
  %add.ptr4.i144 = getelementptr i8, ptr %add.ptr.i142, i32 %mul3.i
  %110 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i145 = getelementptr i8, ptr %110, i32 11
  %111 = ptrtoint ptr %arrayidx.i145 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.i145, align 1
  %conv.i146 = zext i8 %112 to i32
  %add.ptr5.i147 = getelementptr i8, ptr %add.ptr4.i144, i32 %conv.i146
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i147, i32 %90) #17, !srcloc !249
  %mul14 = mul i32 %3, %end_ptr
  %sub15 = add i32 %mul14, -1
  %113 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %priv, align 8
  %115 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hw_params, align 8
  %tdma_offset.i149 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %116, i32 0, i32 13
  %117 = ptrtoint ptr %tdma_offset.i149 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tdma_offset.i149, align 4
  %words_per_bd.i150 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %116, i32 0, i32 14
  %119 = ptrtoint ptr %words_per_bd.i150 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %words_per_bd.i150, align 4
  %mul2.i151 = shl i32 %120, 10
  %add.i152 = add i32 %mul2.i151, %118
  %add.ptr.i153 = getelementptr i8, ptr %114, i32 %add.i152
  %add.ptr4.i155 = getelementptr i8, ptr %add.ptr.i153, i32 %mul3.i
  %121 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i156 = getelementptr i8, ptr %121, i32 7
  %122 = ptrtoint ptr %arrayidx.i156 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx.i156, align 1
  %conv.i157 = zext i8 %123 to i32
  %add.ptr5.i158 = getelementptr i8, ptr %add.ptr4.i155, i32 %conv.i157
  %124 = tail call i32 @llvm.bswap.i32(i32 %sub15) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i158, i32 %124) #17, !srcloc !249
  %dev = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 2
  %125 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev, align 8
  %napi = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 6, i32 %index, i32 1
  %state.i = getelementptr %struct.bcmgenet_priv, ptr %priv, i32 0, i32 6, i32 %index, i32 1, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state.i) #17
  tail call void @netif_napi_add(ptr noundef %126, ptr noundef %napi, ptr noundef nonnull @bcmgenet_tx_poll, i32 noundef 64) #17
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcmgenet_tx_ring16_int_enable(ptr nocapture noundef readonly %ring) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %priv = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 17
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 256) #17, !srcloc !249
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcmgenet_tx_ring16_int_disable(ptr nocapture noundef readonly %ring) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %priv = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 17
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 256) #17, !srcloc !249
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcmgenet_tx_ring_int_enable(ptr nocapture noundef readonly %ring) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %priv = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 17
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %index = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 4
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 8
  %shl = shl nuw i32 1, %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl) #17
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %add.ptr1.i = getelementptr i8, ptr %6, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %4) #17, !srcloc !249
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcmgenet_tx_ring_int_disable(ptr nocapture noundef readonly %ring) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %priv = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 17
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %index = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 4
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 8
  %shl = shl nuw i32 1, %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl) #17
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %add.ptr1.i = getelementptr i8, ptr %6, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %4) #17, !srcloc !249
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_tx_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -48
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #17
  %priv = getelementptr i8, ptr %napi, i32 284
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.bcmgenet_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %call = tail call fastcc i32 @__bcmgenet_tx_reclaim(ptr noundef %3, ptr noundef %add.ptr)
  %free_bds = getelementptr i8, ptr %napi, i32 256
  %4 = ptrtoint ptr %free_bds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %free_bds, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %5)
  %cmp = icmp ugt i32 %5, 18
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %dev2 = getelementptr inbounds %struct.bcmgenet_priv, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 8
  %queue = getelementptr i8, ptr %napi, i32 236
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %queue, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %13, i32 %11
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #17
  %int_enable = getelementptr i8, ptr %napi, i32 276
  %14 = ptrtoint ptr %int_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %int_enable, align 4
  tail call void %15(ptr noundef %add.ptr) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ %budget, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__bcmgenet_tx_reclaim(ptr noundef %dev, ptr nocapture noundef %ring) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %index = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 4
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp eq i32 %1, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 256) #17, !srcloc !249
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %shl = shl nuw i32 1, %1
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl) #17
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i84 = getelementptr i8, ptr %6, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i84, i32 %4) #17, !srcloc !249
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %hw_params.i = getelementptr i8, ptr %dev, i32 18488
  %11 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_params.i, align 8
  %tdma_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %tdma_offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tdma_offset.i, align 4
  %words_per_bd.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %12, i32 0, i32 14
  %15 = ptrtoint ptr %words_per_bd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %words_per_bd.i, align 4
  %mul2.i = shl i32 %16, 10
  %add.i = add i32 %mul2.i, %14
  %add.ptr.i85 = getelementptr i8, ptr %10, i32 %add.i
  %mul3.i = shl i32 %8, 6
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i85, i32 %mul3.i
  %17 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i = getelementptr i8, ptr %17, i32 2
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %19 to i32
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %conv.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #17, !srcloc !248
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #17
  %and = and i32 %21, 65535
  %c_index4 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 9
  %22 = ptrtoint ptr %c_index4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %c_index4, align 4
  %sub = sub i32 %21, %23
  %and5 = and i32 %sub, 65535
  %msg_enable = getelementptr i8, ptr %dev, i32 18708
  %24 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable, align 4
  %and6 = and i32 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end.do.end19_crit_edge, label %do.body8

if.end.do.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end19

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__bcmgenet_tx_reclaim.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__bcmgenet_tx_reclaim, %if.then13)) #17
          to label %do.end19 [label %if.then13], !srcloc !247

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index, align 8
  %28 = ptrtoint ptr %c_index4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %c_index4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__bcmgenet_tx_reclaim.__UNIQUE_ID_ddebug488, ptr noundef %dev, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54, i32 noundef %27, i32 noundef %29, i32 noundef %and, i32 noundef %and5) #17
  br label %do.end19

do.end19:                                         ; preds = %if.then13, %do.body8, %if.end.do.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp2092.not = icmp eq i32 %and5, 0
  br i1 %cmp2092.not, label %do.end19.while.end_crit_edge, label %while.body.lr.ph

do.end19.while.end_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end19
  %pdev = getelementptr i8, ptr %dev, i32 18716
  %tx_cbs = getelementptr i8, ptr %dev, i32 2320
  %clean_ptr = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 8
  %end_ptr = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 14
  %cb_ptr = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 13
  br label %while.body

while.body:                                       ; preds = %if.end40.while.body_crit_edge, %while.body.lr.ph
  %txbds_processed.095 = phi i32 [ 0, %while.body.lr.ph ], [ %inc26, %if.end40.while.body_crit_edge ]
  %pkts_compl.094 = phi i32 [ 0, %while.body.lr.ph ], [ %pkts_compl.1, %if.end40.while.body_crit_edge ]
  %bytes_compl.093 = phi i32 [ 0, %while.body.lr.ph ], [ %bytes_compl.1, %if.end40.while.body_crit_edge ]
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 4
  %dev21 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %tx_cbs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_cbs, align 8
  %34 = ptrtoint ptr %clean_ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %clean_ptr, align 8
  %arrayidx = getelementptr %struct.enet_cb, ptr %33, i32 %35
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.else13.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx, align 4
  %dma_addr.i = getelementptr %struct.enet_cb, ptr %33, i32 %35, i32 2
  %39 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_addr.i, align 4
  %dma_len.i = getelementptr %struct.enet_cb, ptr %33, i32 %35, i32 3
  %41 = ptrtoint ptr %dma_len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma_len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev21, i32 noundef %40, i32 noundef %42, i32 noundef 1, i32 noundef 0) #17
  %43 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %dma_addr.i, align 4
  %last_cb.i = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 3, i32 4
  %44 = ptrtoint ptr %last_cb.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %last_cb.i, align 4
  %cmp10.i = icmp eq ptr %45, %arrayidx
  br i1 %cmp10.i, label %if.then24, label %if.then.i.if.end25_crit_edge

if.then.i.if.end25_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.else13.i:                                      ; preds = %while.body
  %dma_addr14.i = getelementptr %struct.enet_cb, ptr %33, i32 %35, i32 2
  %46 = ptrtoint ptr %dma_addr14.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_addr14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool15.not.i = icmp eq i32 %47, 0
  br i1 %tobool15.not.i, label %if.else13.i.if.end25_crit_edge, label %if.then16.i

if.else13.i.if.end25_crit_edge:                   ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then16.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #19
  %dma_len18.i = getelementptr %struct.enet_cb, ptr %33, i32 %35, i32 3
  %48 = ptrtoint ptr %dma_len18.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dma_len18.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev21, i32 noundef %47, i32 noundef %49, i32 noundef 1, i32 noundef 0) #17
  %50 = ptrtoint ptr %dma_addr14.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %dma_addr14.i, align 4
  br label %if.end25

if.then24:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %inc = add i32 %pkts_compl.094, 1
  %bytes_sent = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 3, i32 8
  %51 = ptrtoint ptr %bytes_sent to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bytes_sent, align 8
  %add = add i32 %52, %bytes_compl.093
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %37, i32 noundef 0) #17
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then16.i, %if.else13.i.if.end25_crit_edge, %if.then.i.if.end25_crit_edge
  %bytes_compl.1 = phi i32 [ %add, %if.then24 ], [ %bytes_compl.093, %if.then.i.if.end25_crit_edge ], [ %bytes_compl.093, %if.else13.i.if.end25_crit_edge ], [ %bytes_compl.093, %if.then16.i ]
  %pkts_compl.1 = phi i32 [ %inc, %if.then24 ], [ %pkts_compl.094, %if.then.i.if.end25_crit_edge ], [ %pkts_compl.094, %if.else13.i.if.end25_crit_edge ], [ %pkts_compl.094, %if.then16.i ]
  %inc26 = add nuw nsw i32 %txbds_processed.095, 1
  %53 = ptrtoint ptr %clean_ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %clean_ptr, align 8
  %55 = ptrtoint ptr %end_ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %end_ptr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp28 = icmp ult i32 %54, %56
  br i1 %cmp28, label %if.then35, label %if.else38, !prof !253

if.then35:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  %inc37 = add nuw i32 %54, 1
  br label %if.end40

if.else38:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  %57 = ptrtoint ptr %cb_ptr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cb_ptr, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.then35
  %storemerge = phi i32 [ %58, %if.else38 ], [ %inc37, %if.then35 ]
  %59 = ptrtoint ptr %clean_ptr to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %storemerge, ptr %clean_ptr, align 8
  %exitcond.not = icmp eq i32 %inc26, %and5
  br i1 %exitcond.not, label %if.end40.while.end_crit_edge, label %if.end40.while.body_crit_edge

if.end40.while.body_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %if.end40.while.end_crit_edge, %do.end19.while.end_crit_edge
  %bytes_compl.0.lcssa = phi i32 [ 0, %do.end19.while.end_crit_edge ], [ %bytes_compl.1, %if.end40.while.end_crit_edge ]
  %pkts_compl.0.lcssa = phi i32 [ 0, %do.end19.while.end_crit_edge ], [ %pkts_compl.1, %if.end40.while.end_crit_edge ]
  %free_bds = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 10
  %60 = ptrtoint ptr %free_bds to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %free_bds, align 8
  %add41 = add i32 %61, %and5
  store i32 %add41, ptr %free_bds, align 8
  %62 = ptrtoint ptr %c_index4 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %and, ptr %c_index4, align 4
  %packets = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 2
  %63 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %packets, align 8
  %add43 = add i32 %64, %pkts_compl.0.lcssa
  store i32 %add43, ptr %packets, align 8
  %bytes = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 3
  %65 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bytes, align 4
  %add44 = add i32 %66, %bytes_compl.0.lcssa
  store i32 %add44, ptr %bytes, align 4
  %queue = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 5
  %67 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %queue, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %69 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i87 = getelementptr %struct.netdev_queue, ptr %70, i32 %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_compl.0.lcssa)
  %tobool.not.i88 = icmp eq i32 %bytes_compl.0.lcssa, 0
  br i1 %tobool.not.i88, label %while.end.netdev_tx_completed_queue.exit_crit_edge, label %if.end.i, !prof !251

while.end.netdev_tx_completed_queue.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %netdev_tx_completed_queue.exit

if.end.i:                                         ; preds = %while.end
  %dql.i = getelementptr %struct.netdev_queue, ptr %70, i32 %68, i32 15
  tail call void @dql_completed(ptr noundef %dql.i, i32 noundef %bytes_compl.0.lcssa) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !257
  %adj_limit.i.i = getelementptr %struct.netdev_queue, ptr %70, i32 %68, i32 15, i32 1
  %71 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %adj_limit.i.i, align 4
  %73 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %dql.i, align 128
  %sub.i.i = sub i32 %72, %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i, label %if.end.i.netdev_tx_completed_queue.exit_crit_edge, label %if.end14.i, !prof !251

if.end.i.netdev_tx_completed_queue.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %netdev_tx_completed_queue.exit

if.end14.i:                                       ; preds = %if.end.i
  %state.i = getelementptr %struct.netdev_queue, ptr %70, i32 %68, i32 13
  %call15.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.netdev_tx_completed_queue.exit_crit_edge, label %if.then17.i

if.end14.i.netdev_tx_completed_queue.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %netdev_tx_completed_queue.exit

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @netif_schedule_queue(ptr noundef %arrayidx.i87) #17
  br label %netdev_tx_completed_queue.exit

netdev_tx_completed_queue.exit:                   ; preds = %if.then17.i, %if.end14.i.netdev_tx_completed_queue.exit_crit_edge, %if.end.i.netdev_tx_completed_queue.exit_crit_edge, %while.end.netdev_tx_completed_queue.exit_crit_edge
  ret i32 %and5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_hfb_clear(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %hw_params.i = getelementptr inbounds %struct.bcmgenet_priv, ptr %priv, i32 0, i32 14
  %4 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_params.i, align 8
  %hfb_reg_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %hfb_reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hfb_reg_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #17, !srcloc !249
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %10 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_params.i, align 8
  %hfb_reg_offset.i39 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %hfb_reg_offset.i39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hfb_reg_offset.i39, align 4
  %add.ptr.i40 = getelementptr i8, ptr %9, i32 %13
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i40, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 0) #17, !srcloc !249
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %16 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_params.i, align 8
  %hfb_reg_offset.i42 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %hfb_reg_offset.i42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hfb_reg_offset.i42, align 4
  %add.ptr.i43 = getelementptr i8, ptr %15, i32 %19
  %add.ptr1.i44 = getelementptr i8, ptr %add.ptr.i43, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i44, i32 0) #17, !srcloc !249
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 8
  %22 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_params.i, align 8
  %rdma_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %rdma_offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rdma_offset.i, align 4
  %words_per_bd.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %23, i32 0, i32 14
  %26 = ptrtoint ptr %words_per_bd.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %words_per_bd.i, align 4
  %mul2.i = shl i32 %27, 10
  %add.i = add i32 %mul2.i, %25
  %add.ptr.i46 = getelementptr i8, ptr %21, i32 %add.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i46, i32 1088
  %28 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i = getelementptr i8, ptr %28, i32 8
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %30 to i32
  %add.ptr4.i = getelementptr i8, ptr %add.ptr3.i, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #17, !srcloc !249
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  %33 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_params.i, align 8
  %rdma_offset.i.1 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %rdma_offset.i.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rdma_offset.i.1, align 4
  %words_per_bd.i.1 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %34, i32 0, i32 14
  %37 = ptrtoint ptr %words_per_bd.i.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %words_per_bd.i.1, align 4
  %mul2.i.1 = shl i32 %38, 10
  %add.i.1 = add i32 %mul2.i.1, %36
  %add.ptr.i46.1 = getelementptr i8, ptr %32, i32 %add.i.1
  %add.ptr3.i.1 = getelementptr i8, ptr %add.ptr.i46.1, i32 1088
  %39 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i.1 = getelementptr i8, ptr %39, i32 9
  %40 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.1, align 1
  %conv.i.1 = zext i8 %41 to i32
  %add.ptr4.i.1 = getelementptr i8, ptr %add.ptr3.i.1, i32 %conv.i.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.1, i32 0) #17, !srcloc !249
  %42 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv, align 8
  %44 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw_params.i, align 8
  %rdma_offset.i.2 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %rdma_offset.i.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rdma_offset.i.2, align 4
  %words_per_bd.i.2 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %45, i32 0, i32 14
  %48 = ptrtoint ptr %words_per_bd.i.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %words_per_bd.i.2, align 4
  %mul2.i.2 = shl i32 %49, 10
  %add.i.2 = add i32 %mul2.i.2, %47
  %add.ptr.i46.2 = getelementptr i8, ptr %43, i32 %add.i.2
  %add.ptr3.i.2 = getelementptr i8, ptr %add.ptr.i46.2, i32 1088
  %50 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i.2 = getelementptr i8, ptr %50, i32 10
  %51 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i.2, align 1
  %conv.i.2 = zext i8 %52 to i32
  %add.ptr4.i.2 = getelementptr i8, ptr %add.ptr3.i.2, i32 %conv.i.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.2, i32 0) #17, !srcloc !249
  %53 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv, align 8
  %55 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw_params.i, align 8
  %rdma_offset.i.3 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %56, i32 0, i32 12
  %57 = ptrtoint ptr %rdma_offset.i.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rdma_offset.i.3, align 4
  %words_per_bd.i.3 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %56, i32 0, i32 14
  %59 = ptrtoint ptr %words_per_bd.i.3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %words_per_bd.i.3, align 4
  %mul2.i.3 = shl i32 %60, 10
  %add.i.3 = add i32 %mul2.i.3, %58
  %add.ptr.i46.3 = getelementptr i8, ptr %54, i32 %add.i.3
  %add.ptr3.i.3 = getelementptr i8, ptr %add.ptr.i46.3, i32 1088
  %61 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i.3 = getelementptr i8, ptr %61, i32 11
  %62 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i.3, align 1
  %conv.i.3 = zext i8 %63 to i32
  %add.ptr4.i.3 = getelementptr i8, ptr %add.ptr3.i.3, i32 %conv.i.3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.3, i32 0) #17, !srcloc !249
  %64 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv, align 8
  %66 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw_params.i, align 8
  %rdma_offset.i.4 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %67, i32 0, i32 12
  %68 = ptrtoint ptr %rdma_offset.i.4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rdma_offset.i.4, align 4
  %words_per_bd.i.4 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %67, i32 0, i32 14
  %70 = ptrtoint ptr %words_per_bd.i.4 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %words_per_bd.i.4, align 4
  %mul2.i.4 = shl i32 %71, 10
  %add.i.4 = add i32 %mul2.i.4, %69
  %add.ptr.i46.4 = getelementptr i8, ptr %65, i32 %add.i.4
  %add.ptr3.i.4 = getelementptr i8, ptr %add.ptr.i46.4, i32 1088
  %72 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i.4 = getelementptr i8, ptr %72, i32 12
  %73 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i.4, align 1
  %conv.i.4 = zext i8 %74 to i32
  %add.ptr4.i.4 = getelementptr i8, ptr %add.ptr3.i.4, i32 %conv.i.4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.4, i32 0) #17, !srcloc !249
  %75 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %priv, align 8
  %77 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw_params.i, align 8
  %rdma_offset.i.5 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %78, i32 0, i32 12
  %79 = ptrtoint ptr %rdma_offset.i.5 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rdma_offset.i.5, align 4
  %words_per_bd.i.5 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %78, i32 0, i32 14
  %81 = ptrtoint ptr %words_per_bd.i.5 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %words_per_bd.i.5, align 4
  %mul2.i.5 = shl i32 %82, 10
  %add.i.5 = add i32 %mul2.i.5, %80
  %add.ptr.i46.5 = getelementptr i8, ptr %76, i32 %add.i.5
  %add.ptr3.i.5 = getelementptr i8, ptr %add.ptr.i46.5, i32 1088
  %83 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i.5 = getelementptr i8, ptr %83, i32 13
  %84 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i.5, align 1
  %conv.i.5 = zext i8 %85 to i32
  %add.ptr4.i.5 = getelementptr i8, ptr %add.ptr3.i.5, i32 %conv.i.5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.5, i32 0) #17, !srcloc !249
  %86 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %priv, align 8
  %88 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hw_params.i, align 8
  %rdma_offset.i.6 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %89, i32 0, i32 12
  %90 = ptrtoint ptr %rdma_offset.i.6 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rdma_offset.i.6, align 4
  %words_per_bd.i.6 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %89, i32 0, i32 14
  %92 = ptrtoint ptr %words_per_bd.i.6 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %words_per_bd.i.6, align 4
  %mul2.i.6 = shl i32 %93, 10
  %add.i.6 = add i32 %mul2.i.6, %91
  %add.ptr.i46.6 = getelementptr i8, ptr %87, i32 %add.i.6
  %add.ptr3.i.6 = getelementptr i8, ptr %add.ptr.i46.6, i32 1088
  %94 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i.6 = getelementptr i8, ptr %94, i32 14
  %95 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i.6, align 1
  %conv.i.6 = zext i8 %96 to i32
  %add.ptr4.i.6 = getelementptr i8, ptr %add.ptr3.i.6, i32 %conv.i.6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.6, i32 0) #17, !srcloc !249
  %97 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %priv, align 8
  %99 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hw_params.i, align 8
  %rdma_offset.i.7 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %100, i32 0, i32 12
  %101 = ptrtoint ptr %rdma_offset.i.7 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rdma_offset.i.7, align 4
  %words_per_bd.i.7 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %100, i32 0, i32 14
  %103 = ptrtoint ptr %words_per_bd.i.7 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %words_per_bd.i.7, align 4
  %mul2.i.7 = shl i32 %104, 10
  %add.i.7 = add i32 %mul2.i.7, %102
  %add.ptr.i46.7 = getelementptr i8, ptr %98, i32 %add.i.7
  %add.ptr3.i.7 = getelementptr i8, ptr %add.ptr.i46.7, i32 1088
  %105 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i.7 = getelementptr i8, ptr %105, i32 15
  %106 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx.i.7, align 1
  %conv.i.7 = zext i8 %107 to i32
  %add.ptr4.i.7 = getelementptr i8, ptr %add.ptr3.i.7, i32 %conv.i.7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.7, i32 0) #17, !srcloc !249
  %108 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hw_params.i, align 8
  %hfb_filter_cnt55 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %109, i32 0, i32 6
  %110 = ptrtoint ptr %hfb_filter_cnt55 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %hfb_filter_cnt55, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %111)
  %cmp557.not = icmp ult i8 %111, 4
  br i1 %cmp557.not, label %if.end.for.cond11.preheader_crit_edge, label %if.end.for.body7_crit_edge

if.end.for.body7_crit_edge:                       ; preds = %if.end
  br label %for.body7

if.end.for.cond11.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.body7.for.cond11.preheader_crit_edge, %if.end.for.cond11.preheader_crit_edge
  %112 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hw_params.i, align 8
  %hfb_filter_cnt1359 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %113, i32 0, i32 6
  %114 = ptrtoint ptr %hfb_filter_cnt1359 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %hfb_filter_cnt1359, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %cmp1561.not = icmp eq i8 %115, 0
  br i1 %cmp1561.not, label %for.cond11.preheader.cleanup_crit_edge, label %for.cond11.preheader.for.body17_crit_edge

for.cond11.preheader.for.body17_crit_edge:        ; preds = %for.cond11.preheader
  br label %for.body17

for.cond11.preheader.cleanup_crit_edge:           ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %if.end.for.body7_crit_edge
  %116 = phi ptr [ %122, %for.body7.for.body7_crit_edge ], [ %109, %if.end.for.body7_crit_edge ]
  %i.158 = phi i32 [ %inc9, %for.body7.for.body7_crit_edge ], [ 0, %if.end.for.body7_crit_edge ]
  %mul = shl i32 %i.158, 2
  %add = add nuw nsw i32 %mul, 28
  %117 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %priv, align 8
  %hfb_reg_offset.i48 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %116, i32 0, i32 11
  %119 = ptrtoint ptr %hfb_reg_offset.i48 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %hfb_reg_offset.i48, align 4
  %add.ptr.i49 = getelementptr i8, ptr %118, i32 %120
  %add.ptr1.i50 = getelementptr i8, ptr %add.ptr.i49, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i50, i32 0) #17, !srcloc !249
  %inc9 = add nuw nsw i32 %i.158, 1
  %121 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hw_params.i, align 8
  %hfb_filter_cnt = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %122, i32 0, i32 6
  %123 = ptrtoint ptr %hfb_filter_cnt to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %hfb_filter_cnt, align 4
  %125 = lshr i8 %124, 2
  %div = zext i8 %125 to i32
  %cmp5 = icmp ult i32 %inc9, %div
  br i1 %cmp5, label %for.body7.for.body7_crit_edge, label %for.body7.for.cond11.preheader_crit_edge

for.body7.for.cond11.preheader_crit_edge:         ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond11.preheader

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body7

for.body17:                                       ; preds = %bcmgenet_hfb_clear_filter.exit.for.body17_crit_edge, %for.cond11.preheader.for.body17_crit_edge
  %126 = phi ptr [ %139, %bcmgenet_hfb_clear_filter.exit.for.body17_crit_edge ], [ %113, %for.cond11.preheader.for.body17_crit_edge ]
  %i.262 = phi i32 [ %inc19, %bcmgenet_hfb_clear_filter.exit.for.body17_crit_edge ], [ 0, %for.cond11.preheader.for.body17_crit_edge ]
  %hfb_filter_size.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %126, i32 0, i32 7
  %127 = ptrtoint ptr %hfb_filter_size.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %hfb_filter_size.i, align 1
  %conv.i52 = zext i8 %128 to i32
  %mul.i = mul i32 %i.262, %conv.i52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %cmp12.not.i = icmp eq i8 %128, 0
  br i1 %cmp12.not.i, label %for.body17.bcmgenet_hfb_clear_filter.exit_crit_edge, label %for.body17.for.body.i_crit_edge

for.body17.for.body.i_crit_edge:                  ; preds = %for.body17
  br label %for.body.i

for.body17.bcmgenet_hfb_clear_filter.exit_crit_edge: ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_hfb_clear_filter.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body17.for.body.i_crit_edge
  %129 = phi ptr [ %135, %for.body.i.for.body.i_crit_edge ], [ %126, %for.body17.for.body.i_crit_edge ]
  %i.013.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body17.for.body.i_crit_edge ]
  %add.i53 = add nuw nsw i32 %i.013.i, %mul.i
  %mul5.i = shl i32 %add.i53, 2
  %130 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %priv, align 8
  %hfb_offset.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %129, i32 0, i32 10
  %132 = ptrtoint ptr %hfb_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %hfb_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %131, i32 %133
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul5.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #17, !srcloc !249
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %134 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hw_params.i, align 8
  %hfb_filter_size2.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %135, i32 0, i32 7
  %136 = ptrtoint ptr %hfb_filter_size2.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %hfb_filter_size2.i, align 1
  %conv3.i = zext i8 %137 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv3.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.bcmgenet_hfb_clear_filter.exit_crit_edge

for.body.i.bcmgenet_hfb_clear_filter.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_hfb_clear_filter.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

bcmgenet_hfb_clear_filter.exit:                   ; preds = %for.body.i.bcmgenet_hfb_clear_filter.exit_crit_edge, %for.body17.bcmgenet_hfb_clear_filter.exit_crit_edge
  %inc19 = add nuw nsw i32 %i.262, 1
  %138 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %hw_params.i, align 8
  %hfb_filter_cnt13 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %139, i32 0, i32 6
  %140 = ptrtoint ptr %hfb_filter_cnt13 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %hfb_filter_cnt13, align 4
  %conv14 = zext i8 %141 to i32
  %cmp15 = icmp ult i32 %inc19, %conv14
  br i1 %cmp15, label %bcmgenet_hfb_clear_filter.exit.for.body17_crit_edge, label %bcmgenet_hfb_clear_filter.exit.cleanup_crit_edge

bcmgenet_hfb_clear_filter.exit.cleanup_crit_edge: ; preds = %bcmgenet_hfb_clear_filter.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

bcmgenet_hfb_clear_filter.exit.for.body17_crit_edge: ; preds = %bcmgenet_hfb_clear_filter.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body17

cleanup:                                          ; preds = %bcmgenet_hfb_clear_filter.exit.cleanup_crit_edge, %for.cond11.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule_irqoff(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcmgenet_wol_power_down_cfg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcmgenet_phy_power_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_netif_stop(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %hw_params.i = getelementptr i8, ptr %dev, i32 18488
  %0 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_params.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp11.not.i = icmp eq i8 %3, 0
  br i1 %cmp11.not.i, label %entry.bcmgenet_disable_tx_napi.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.bcmgenet_disable_tx_napi.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_disable_tx_napi.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %napi.i = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %i.012.i, i32 1
  tail call void @napi_disable(ptr noundef %napi.i) #17
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %4 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_params.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %conv.i = zext i8 %7 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.bcmgenet_disable_tx_napi.exit_crit_edge

for.body.i.bcmgenet_disable_tx_napi.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_disable_tx_napi.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

bcmgenet_disable_tx_napi.exit:                    ; preds = %for.body.i.bcmgenet_disable_tx_napi.exit_crit_edge, %entry.bcmgenet_disable_tx_napi.exit_crit_edge
  %napi4.i = getelementptr i8, ptr %dev, i32 7752
  tail call void @napi_disable(ptr noundef %napi4.i) #17
  tail call fastcc void @local_bh_disable() #17
  %8 = tail call i32 @llvm.read_register.i32(metadata !236) #17
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #17
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %12 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp13.not.i = icmp eq i32 %13, 0
  br i1 %cmp13.not.i, label %bcmgenet_disable_tx_napi.exit.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

bcmgenet_disable_tx_napi.exit.netif_tx_disable.exit_crit_edge: ; preds = %bcmgenet_disable_tx_napi.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %bcmgenet_disable_tx_napi.exit
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i15

for.body.i15:                                     ; preds = %for.body.i15.for.body.i15_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i13, %for.body.i15.for.body.i15_crit_edge ]
  %14 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %15, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #17
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %15, i32 %i.014.i, i32 11
  %16 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %11, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %15, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #17
  %17 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #17
  %inc.i13 = add nuw i32 %i.014.i, 1
  %18 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i14 = icmp ult i32 %inc.i13, %19
  br i1 %cmp.i14, label %for.body.i15.for.body.i15_crit_edge, label %for.body.i15.netif_tx_disable.exit_crit_edge

for.body.i15.netif_tx_disable.exit_crit_edge:     ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #19
  br label %netif_tx_disable.exit

for.body.i15.for.body.i15_crit_edge:              ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i15

netif_tx_disable.exit:                            ; preds = %for.body.i15.netif_tx_disable.exit_crit_edge, %bcmgenet_disable_tx_napi.exit.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #17
  tail call fastcc void @local_bh_enable() #17
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %21, i32 2056
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #17, !srcloc !248
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #17
  %and.i = and i32 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %netif_tx_disable.exit.umac_enable_set.exit_crit_edge

netif_tx_disable.exit.umac_enable_set.exit_crit_edge: ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %umac_enable_set.exit

if.end.i:                                         ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #19
  %and3.i = and i32 %23, -3
  %24 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #17
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i16.i = getelementptr i8, ptr %26, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i16.i, i32 %24) #17, !srcloc !249
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #17
  br label %umac_enable_set.exit

umac_enable_set.exit:                             ; preds = %if.end.i, %netif_tx_disable.exit.umac_enable_set.exit_crit_edge
  tail call fastcc void @bcmgenet_dma_teardown(ptr noundef %add.ptr.i)
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i.i16 = getelementptr i8, ptr %28, i32 2056
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i16) #17, !srcloc !248
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #17
  %and.i17 = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i18 = icmp eq i32 %and.i17, 0
  br i1 %tobool.not.i18, label %if.end.i22, label %umac_enable_set.exit.umac_enable_set.exit23_crit_edge

umac_enable_set.exit.umac_enable_set.exit23_crit_edge: ; preds = %umac_enable_set.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %umac_enable_set.exit23

if.end.i22:                                       ; preds = %umac_enable_set.exit
  call void @__sanitizer_cov_trace_pc() #19
  %and3.i20 = and i32 %30, -2
  %31 = tail call i32 @llvm.bswap.i32(i32 %and3.i20) #17
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i16.i21 = getelementptr i8, ptr %33, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i16.i21, i32 %31) #17, !srcloc !249
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #17
  br label %umac_enable_set.exit23

umac_enable_set.exit23:                           ; preds = %if.end.i22, %umac_enable_set.exit.umac_enable_set.exit23_crit_edge
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %34 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phydev, align 16
  tail call void @phy_stop(ptr noundef %35) #17
  %36 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_params.i, align 8
  %rx_queues17.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %rx_queues17.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rx_queues17.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp19.not.i = icmp eq i8 %39, 0
  br i1 %cmp19.not.i, label %umac_enable_set.exit23.bcmgenet_disable_rx_napi.exit_crit_edge, label %umac_enable_set.exit23.for.body.i28_crit_edge

umac_enable_set.exit23.for.body.i28_crit_edge:    ; preds = %umac_enable_set.exit23
  br label %for.body.i28

umac_enable_set.exit23.bcmgenet_disable_rx_napi.exit_crit_edge: ; preds = %umac_enable_set.exit23
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_disable_rx_napi.exit

for.body.i28:                                     ; preds = %for.body.i28.for.body.i28_crit_edge, %umac_enable_set.exit23.for.body.i28_crit_edge
  %i.020.i = phi i32 [ %inc.i25, %for.body.i28.for.body.i28_crit_edge ], [ 0, %umac_enable_set.exit23.for.body.i28_crit_edge ]
  %arrayidx.i = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.020.i
  tail call void @napi_disable(ptr noundef %arrayidx.i) #17
  %work.i = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.020.i, i32 13, i32 4, i32 4
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.i) #17
  %inc.i25 = add nuw nsw i32 %i.020.i, 1
  %40 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw_params.i, align 8
  %rx_queues.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %rx_queues.i, align 2
  %conv.i26 = zext i8 %43 to i32
  %cmp.i27 = icmp ult i32 %inc.i25, %conv.i26
  br i1 %cmp.i27, label %for.body.i28.for.body.i28_crit_edge, label %for.body.i28.bcmgenet_disable_rx_napi.exit_crit_edge

for.body.i28.bcmgenet_disable_rx_napi.exit_crit_edge: ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_disable_rx_napi.exit

for.body.i28.for.body.i28_crit_edge:              ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i28

bcmgenet_disable_rx_napi.exit:                    ; preds = %for.body.i28.bcmgenet_disable_rx_napi.exit_crit_edge, %umac_enable_set.exit23.bcmgenet_disable_rx_napi.exit_crit_edge
  %arrayidx4.i = getelementptr i8, ptr %dev, i32 18048
  tail call void @napi_disable(ptr noundef %arrayidx4.i) #17
  %work8.i = getelementptr i8, ptr %dev, i32 18408
  %call9.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work8.i) #17
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i.i29 = getelementptr i8, ptr %45, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i29, i32 -1) #17, !srcloc !249
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i5.i = getelementptr i8, ptr %47, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i5.i, i32 -1) #17, !srcloc !249
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i7.i = getelementptr i8, ptr %49, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i, i32 -1) #17, !srcloc !249
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i9.i = getelementptr i8, ptr %51, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i9.i, i32 -1) #17, !srcloc !249
  %bcmgenet_irq_work = getelementptr i8, ptr %dev, i32 18592
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %bcmgenet_irq_work) #17
  tail call fastcc void @bcmgenet_tx_reclaim_all(ptr noundef %dev)
  tail call fastcc void @bcmgenet_fini_dma(ptr noundef %add.ptr.i)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_tx_reclaim_all(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %0 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp ugt i32 %1, 1
  br i1 %cmp.i, label %for.cond.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %hw_params = getelementptr i8, ptr %dev, i32 18488
  %2 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_params, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp16.not = icmp eq i8 %5, 0
  br i1 %cmp16.not, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bcmgenet_priv, ptr %add.ptr.i, i32 0, i32 6, i32 %i.017
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #17
  %call.i = tail call fastcc i32 @__bcmgenet_tx_reclaim(ptr noundef %dev, ptr noundef %arrayidx) #17
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx) #17
  %inc = add nuw nsw i32 %i.017, 1
  %6 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_params, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %conv = zext i8 %9 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx5 = getelementptr i8, ptr %dev, i32 7704
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx5) #17
  %call.i14 = tail call fastcc i32 @__bcmgenet_tx_reclaim(ptr noundef %dev, ptr noundef %arrayidx5) #17
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx5) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #17
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcmgenet_dump_tx_queue(ptr noundef %ring) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 17
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %msg_enable = getelementptr inbounds %struct.bcmgenet_priv, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.bcmgenet_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %queue = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 5
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i, align 128
  tail call void @_raw_spin_lock(ptr noundef %ring) #17
  %index = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 4
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp = icmp eq i32 %11, 16
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr1.i = getelementptr i8, ptr %13, i32 524
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #17, !srcloc !248
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #17
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr1.i62 = getelementptr i8, ptr %13, i32 588
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i62) #17, !srcloc !248
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #17
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 8
  %shl = shl nuw i32 1, %19
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then2
  %intsts.0.in = phi i32 [ %15, %if.then2 ], [ %17, %if.else ]
  %intmsk.0 = phi i32 [ 65536, %if.then2 ], [ %shl, %if.else ]
  %20 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index, align 8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %hw_params.i = getelementptr inbounds %struct.bcmgenet_priv, ptr %1, i32 0, i32 14
  %24 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_params.i, align 8
  %tdma_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %tdma_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tdma_offset.i, align 4
  %words_per_bd.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %25, i32 0, i32 14
  %28 = ptrtoint ptr %words_per_bd.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %words_per_bd.i, align 4
  %mul2.i = shl i32 %29, 10
  %add.i = add i32 %mul2.i, %27
  %add.ptr.i63 = getelementptr i8, ptr %23, i32 %add.i
  %mul3.i = shl i32 %21, 6
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i63, i32 %mul3.i
  %30 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i64 = getelementptr i8, ptr %30, i32 2
  %31 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i64, align 1
  %conv.i = zext i8 %32 to i32
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %conv.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #17, !srcloc !248
  %34 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index, align 8
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %38 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_params.i, align 8
  %tdma_offset.i66 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %39, i32 0, i32 13
  %40 = ptrtoint ptr %tdma_offset.i66 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tdma_offset.i66, align 4
  %words_per_bd.i67 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %39, i32 0, i32 14
  %42 = ptrtoint ptr %words_per_bd.i67 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %words_per_bd.i67, align 4
  %mul2.i68 = shl i32 %43, 10
  %add.i69 = add i32 %mul2.i68, %41
  %add.ptr.i70 = getelementptr i8, ptr %37, i32 %add.i69
  %mul3.i71 = shl i32 %35, 6
  %add.ptr4.i72 = getelementptr i8, ptr %add.ptr.i70, i32 %mul3.i71
  %44 = load ptr, ptr @genet_dma_ring_regs, align 4
  %arrayidx.i73 = getelementptr i8, ptr %44, i32 3
  %45 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i73, align 1
  %conv.i74 = zext i8 %46 to i32
  %add.ptr5.i75 = getelementptr i8, ptr %add.ptr4.i72, i32 %conv.i74
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i75) #17, !srcloc !248
  %state.i = getelementptr %struct.netdev_queue, ptr %9, i32 %7, i32 13
  %48 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %state.i, align 4
  %free_bds13 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 10
  %50 = ptrtoint ptr %free_bds13 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %free_bds13, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ring) #17
  %52 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %msg_enable, align 4
  %and16 = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end7.cleanup_crit_edge, label %if.then18

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then18:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  %and1.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %intsts.0 = xor i32 %intsts.0.in, -1
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 8
  %56 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %index, align 8
  %58 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %queue, align 4
  %cond = select i1 %tobool.i.not, ptr @.str.73, ptr @.str.72
  %and23 = and i32 %intmsk.0, %intsts.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %cond25 = select i1 %tobool24.not, ptr @.str.75, ptr @.str.74
  %size = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 7
  %60 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size, align 4
  %prod_index = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 12
  %62 = ptrtoint ptr %prod_index to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %prod_index, align 8
  %64 = and i32 %47, -65536
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %c_index27 = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 9
  %66 = ptrtoint ptr %c_index27 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %c_index27, align 4
  %68 = and i32 %33, -65536
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  %clean_ptr = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 8
  %70 = ptrtoint ptr %clean_ptr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %clean_ptr, align 8
  %write_ptr = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 11
  %72 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %write_ptr, align 4
  %cb_ptr = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 13
  %74 = ptrtoint ptr %cb_ptr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cb_ptr, align 4
  %end_ptr = getelementptr inbounds %struct.bcmgenet_tx_ring, ptr %ring, i32 0, i32 14
  %76 = ptrtoint ptr %end_ptr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %end_ptr, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %55, ptr noundef nonnull @.str.71, i32 noundef %57, i32 noundef %59, ptr noundef nonnull %cond, ptr noundef nonnull %cond25, i32 noundef %51, i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %77) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_mac_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcmgenet_wol_power_up_cfg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_suspend(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @netif_device_detach(ptr noundef %1) #17
  tail call fastcc void @bcmgenet_netif_stop(ptr noundef %1)
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %device_may_wakeup.exit

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then4

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then4_crit_edge, label %device_may_wakeup.exit.if.end6_crit_edge

device_may_wakeup.exit.if.end6_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

device_may_wakeup.exit.if.then4_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then4

if.then4:                                         ; preds = %device_may_wakeup.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %7 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phydev, align 16
  %call5 = tail call i32 @phy_suspend(ptr noundef %8) #17
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %device_may_wakeup.exit.if.end6_crit_edge
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %hw_params.i = getelementptr i8, ptr %1, i32 18488
  %11 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_params.i, align 8
  %hfb_reg_offset.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %hfb_reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hfb_reg_offset.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %10, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 0) #17, !srcloc !249
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_resume(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.end5_crit_edge, label %device_may_wakeup.exit

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end5_crit_edge, label %land.lhs.true

device_may_wakeup.exit.if.end5_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %wolopts = getelementptr i8, ptr %1, i32 18728
  %7 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wolopts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %land.lhs.true.if.end5_crit_edge, label %if.then4

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  %hw_params.i = getelementptr i8, ptr %1, i32 18488
  %9 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_params.i, align 8
  %flags.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i81 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i81, label %if.then4.if.end5_crit_edge, label %if.end.i

if.then4.if.end5_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 128
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !248
  tail call void @bcmgenet_wol_power_up_cfg(ptr noundef %add.ptr.i, i32 noundef 2) #17
  br label %if.end5

if.end5:                                          ; preds = %if.end.i, %if.then4.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %device_may_wakeup.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %internal_phy = getelementptr i8, ptr %1, i32 18548
  %16 = ptrtoint ptr %internal_phy to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %internal_phy, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool6.not = icmp eq i8 %17, 0
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  %hw_params.i82 = getelementptr i8, ptr %1, i32 18488
  %18 = ptrtoint ptr %hw_params.i82 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_params.i82, align 8
  %flags.i83 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %flags.i83 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i83, align 4
  %and.i84 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool.not.i85 = icmp eq i32 %and.i84, 0
  br i1 %tobool.not.i85, label %if.then7.if.end8_crit_edge, label %if.end.i87

if.then7.if.end8_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.end.i87:                                       ; preds = %if.then7
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i86 = getelementptr i8, ptr %23, i32 128
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i86) #17, !srcloc !248
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #17
  %version.i = getelementptr i8, ptr %1, i32 2308
  %26 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %27)
  %cmp.i = icmp eq i32 %27, 5
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i87.if.else.i_crit_edge

if.end.i87.if.else.i_crit_edge:                   ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i87
  %ephy_16nm.i = getelementptr i8, ptr %1, i32 18588
  %28 = ptrtoint ptr %ephy_16nm.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ephy_16nm.i, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool2.not.i = icmp eq i8 %29, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %and4.i = and i32 %25, -2036100
  %or.i = or i32 %and4.i, 256
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i) #17
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i35.i = getelementptr i8, ptr %32, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 %30) #17, !srcloc !249
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #17
  br label %if.end8.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i87.if.else.i_crit_edge
  %and6.i = and i32 %25, -4112
  %or7.i = or i32 %and6.i, 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then3.i
  %reg.0.i = phi i32 [ %or7.i, %if.else.i ], [ %and4.i, %if.then3.i ]
  %34 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #17
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i36.i = getelementptr i8, ptr %36, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 %34) #17, !srcloc !249
  %dev.i = getelementptr i8, ptr %1, i32 2312
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 8
  tail call void @bcmgenet_phy_power_set(ptr noundef %38, i1 noundef zeroext true) #17
  br label %if.end8

if.end8:                                          ; preds = %if.end8.i, %if.then7.if.end8_crit_edge, %if.end5.if.end8_crit_edge
  %version.i.i = getelementptr i8, ptr %1, i32 2308
  %39 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i.i = icmp eq i32 %40, 1
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 8
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr1.i.i.i = getelementptr i8, ptr %42, i32 772
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #17, !srcloc !248
  br label %bcmgenet_rbuf_ctrl_get.exit.i

if.else.i.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr1.i4.i.i = getelementptr i8, ptr %42, i32 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i4.i.i) #17, !srcloc !248
  br label %bcmgenet_rbuf_ctrl_get.exit.i

bcmgenet_rbuf_ctrl_get.exit.i:                    ; preds = %if.else.i.i, %if.then.i.i
  %.sink.i.i = phi i32 [ %44, %if.else.i.i ], [ %43, %if.then.i.i ]
  %45 = tail call i32 @llvm.bswap.i32(i32 %.sink.i.i) #17
  %or.i89 = or i32 %45, 2
  %46 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp.i7.i = icmp eq i32 %47, 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %or.i89) #17
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i, align 8
  br i1 %cmp.i7.i, label %if.then.i9.i, label %if.else.i11.i

if.then.i9.i:                                     ; preds = %bcmgenet_rbuf_ctrl_get.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr1.i.i8.i = getelementptr i8, ptr %50, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i8.i, i32 %48) #17, !srcloc !249
  br label %bcmgenet_rbuf_ctrl_set.exit.i

if.else.i11.i:                                    ; preds = %bcmgenet_rbuf_ctrl_get.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr1.i4.i10.i = getelementptr i8, ptr %50, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i4.i10.i, i32 %48) #17, !srcloc !249
  br label %bcmgenet_rbuf_ctrl_set.exit.i

bcmgenet_rbuf_ctrl_set.exit.i:                    ; preds = %if.else.i11.i, %if.then.i9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 2147480) #17
  %and.i90 = and i32 %45, -3
  %52 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.i13.i = icmp eq i32 %53, 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %and.i90) #17
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i, align 8
  br i1 %cmp.i13.i, label %if.then.i15.i, label %if.else.i17.i

if.then.i15.i:                                    ; preds = %bcmgenet_rbuf_ctrl_set.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr1.i.i14.i = getelementptr i8, ptr %56, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i14.i, i32 %54) #17, !srcloc !249
  br label %bcmgenet_umac_reset.exit

if.else.i17.i:                                    ; preds = %bcmgenet_rbuf_ctrl_set.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr1.i4.i16.i = getelementptr i8, ptr %56, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i4.i16.i, i32 %54) #17, !srcloc !249
  br label %bcmgenet_umac_reset.exit

bcmgenet_umac_reset.exit:                         ; preds = %if.else.i17.i, %if.then.i15.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 2147480) #17
  tail call fastcc void @init_umac(ptr noundef %add.ptr.i)
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %58 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %phydev, align 16
  %call9 = tail call i32 @phy_init_hw(ptr noundef %59) #17
  %60 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %phydev, align 16
  %call.i = tail call i32 @__genphy_config_aneg(ptr noundef %61, i1 noundef zeroext false) #17
  %dev12 = getelementptr i8, ptr %1, i32 2312
  %62 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev12, align 8
  %call13 = tail call i32 @bcmgenet_mii_config(ptr noundef %63, i1 noundef zeroext false) #17
  %clk.i = getelementptr i8, ptr %1, i32 18712
  %64 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk.i, align 8
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %65) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %bcmgenet_umac_reset.exit.bcmgenet_set_features.exit_crit_edge

bcmgenet_umac_reset.exit.bcmgenet_set_features.exit_crit_edge: ; preds = %bcmgenet_umac_reset.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %bcmgenet_set_features.exit

if.end.i.i:                                       ; preds = %bcmgenet_umac_reset.exit
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %65) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i92, label %if.end.i.i.cleanup.sink.split.i_crit_edge

if.end.i.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.i

if.end.i92:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %67, i32 2056
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #17, !srcloc !248
  %crc_fwd_en.i = getelementptr i8, ptr %1, i32 18700
  %sum.shift.i = lshr i32 %68, 30
  %69 = trunc i32 %sum.shift.i to i8
  %70 = and i8 %69, 1
  %71 = ptrtoint ptr %crc_fwd_en.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %crc_fwd_en.i, align 4
  %72 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %clk.i, align 8
  tail call void @clk_disable(ptr noundef %73) #17
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end.i92, %if.end.i.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %73, %if.end.i92 ], [ %65, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink.i) #17
  br label %bcmgenet_set_features.exit

bcmgenet_set_features.exit:                       ; preds = %cleanup.sink.split.i, %bcmgenet_umac_reset.exit.bcmgenet_set_features.exit_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %74 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_addr, align 64
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %75, align 1
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #17
  %79 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i.i93 = getelementptr i8, ptr %80, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i93, i32 %78) #17, !srcloc !249
  %arrayidx1.i = getelementptr i8, ptr %75, i32 4
  %81 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %arrayidx1.i, align 1
  %conv.i = zext i16 %82 to i32
  %83 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #17
  %84 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i6.i = getelementptr i8, ptr %85, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i6.i, i32 %83) #17, !srcloc !249
  tail call fastcc void @bcmgenet_hfb_clear(ptr noundef %add.ptr.i)
  %rxnfc_list = getelementptr i8, ptr %1, i32 11000
  %86 = ptrtoint ptr %rxnfc_list to i32
  call void @__asan_load4_noabort(i32 %86)
  %rule.0116 = load ptr, ptr %rxnfc_list, align 8
  %cmp.not117 = icmp eq ptr %rule.0116, %rxnfc_list
  br i1 %cmp.not117, label %bcmgenet_set_features.exit.for.end_crit_edge, label %bcmgenet_set_features.exit.for.body_crit_edge

bcmgenet_set_features.exit.for.body_crit_edge:    ; preds = %bcmgenet_set_features.exit
  br label %for.body

bcmgenet_set_features.exit.for.end_crit_edge:     ; preds = %bcmgenet_set_features.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %bcmgenet_set_features.exit.for.body_crit_edge
  %rule.0118 = phi ptr [ %rule.0, %for.inc.for.body_crit_edge ], [ %rule.0116, %bcmgenet_set_features.exit.for.body_crit_edge ]
  %state = getelementptr inbounds %struct.bcmgenet_rxnfc_rule, ptr %rule.0118, i32 0, i32 2
  %87 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp16.not = icmp eq i32 %88, 0
  br i1 %cmp16.not, label %for.body.for.inc_crit_edge, label %if.then17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @bcmgenet_hfb_create_rxnfc_filter(ptr noundef %add.ptr.i, ptr noundef %rule.0118)
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %for.body.for.inc_crit_edge
  %89 = ptrtoint ptr %rule.0118 to i32
  call void @__asan_load4_noabort(i32 %89)
  %rule.0 = load ptr, ptr %rule.0118, align 8
  %cmp.not = icmp eq ptr %rule.0, %rxnfc_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %bcmgenet_set_features.exit.for.end_crit_edge
  %call24 = tail call fastcc i32 @bcmgenet_dma_disable(ptr noundef %add.ptr.i)
  %call25 = tail call fastcc i32 @bcmgenet_init_dma(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %for.end
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.32) #20
  %90 = ptrtoint ptr %internal_phy to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %internal_phy, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool38.not = icmp eq i8 %91, 0
  br i1 %tobool38.not, label %if.then27.if.end41_crit_edge, label %if.then39

if.then27.if.end41_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.end28:                                         ; preds = %for.end
  %92 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %add.ptr.i, align 8
  %hw_params.i.i = getelementptr i8, ptr %1, i32 18488
  %94 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw_params.i.i, align 8
  %rdma_offset.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %95, i32 0, i32 12
  %96 = ptrtoint ptr %rdma_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rdma_offset.i.i, align 4
  %words_per_bd.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %95, i32 0, i32 14
  %98 = ptrtoint ptr %words_per_bd.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %words_per_bd.i.i, align 4
  %mul2.i.i = shl i32 %99, 10
  %add.i.i = add i32 %mul2.i.i, %97
  %add.ptr.i.i94 = getelementptr i8, ptr %93, i32 %add.i.i
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr.i.i94, i32 1088
  %100 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i.i = getelementptr i8, ptr %100, i32 1
  %101 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %102 to i32
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr3.i.i, i32 %conv.i.i
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #17, !srcloc !248
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #17
  %or.i95 = or i32 %104, %call24
  %105 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %add.ptr.i, align 8
  %107 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hw_params.i.i, align 8
  %rdma_offset.i11.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %108, i32 0, i32 12
  %109 = ptrtoint ptr %rdma_offset.i11.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rdma_offset.i11.i, align 4
  %words_per_bd.i12.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %108, i32 0, i32 14
  %111 = ptrtoint ptr %words_per_bd.i12.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %words_per_bd.i12.i, align 4
  %mul2.i13.i = shl i32 %112, 10
  %add.i14.i = add i32 %mul2.i13.i, %110
  %add.ptr.i15.i = getelementptr i8, ptr %106, i32 %add.i14.i
  %add.ptr3.i16.i = getelementptr i8, ptr %add.ptr.i15.i, i32 1088
  %113 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i17.i = getelementptr i8, ptr %113, i32 1
  %114 = ptrtoint ptr %arrayidx.i17.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.i17.i, align 1
  %conv.i18.i = zext i8 %115 to i32
  %add.ptr4.i19.i = getelementptr i8, ptr %add.ptr3.i16.i, i32 %conv.i18.i
  %116 = tail call i32 @llvm.bswap.i32(i32 %or.i95) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i19.i, i32 %116) #17, !srcloc !249
  %117 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %add.ptr.i, align 8
  %119 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hw_params.i.i, align 8
  %tdma_offset.i.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %120, i32 0, i32 13
  %121 = ptrtoint ptr %tdma_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %tdma_offset.i.i, align 4
  %words_per_bd.i21.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %120, i32 0, i32 14
  %123 = ptrtoint ptr %words_per_bd.i21.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %words_per_bd.i21.i, align 4
  %mul2.i22.i = shl i32 %124, 10
  %add.i23.i = add i32 %mul2.i22.i, %122
  %add.ptr.i24.i = getelementptr i8, ptr %118, i32 %add.i23.i
  %add.ptr3.i25.i = getelementptr i8, ptr %add.ptr.i24.i, i32 1088
  %125 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i26.i = getelementptr i8, ptr %125, i32 1
  %126 = ptrtoint ptr %arrayidx.i26.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx.i26.i, align 1
  %conv.i27.i = zext i8 %127 to i32
  %add.ptr4.i28.i = getelementptr i8, ptr %add.ptr3.i25.i, i32 %conv.i27.i
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i28.i) #17, !srcloc !248
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #17
  %or2.i = or i32 %129, %call24
  %130 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %add.ptr.i, align 8
  %132 = ptrtoint ptr %hw_params.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hw_params.i.i, align 8
  %tdma_offset.i30.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %133, i32 0, i32 13
  %134 = ptrtoint ptr %tdma_offset.i30.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %tdma_offset.i30.i, align 4
  %words_per_bd.i31.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %133, i32 0, i32 14
  %136 = ptrtoint ptr %words_per_bd.i31.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %words_per_bd.i31.i, align 4
  %mul2.i32.i = shl i32 %137, 10
  %add.i33.i = add i32 %mul2.i32.i, %135
  %add.ptr.i34.i = getelementptr i8, ptr %131, i32 %add.i33.i
  %add.ptr3.i35.i = getelementptr i8, ptr %add.ptr.i34.i, i32 1088
  %138 = load ptr, ptr @bcmgenet_dma_regs, align 4
  %arrayidx.i36.i = getelementptr i8, ptr %138, i32 1
  %139 = ptrtoint ptr %arrayidx.i36.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx.i36.i, align 1
  %conv.i37.i = zext i8 %140 to i32
  %add.ptr4.i38.i = getelementptr i8, ptr %add.ptr3.i35.i, i32 %conv.i37.i
  %141 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i38.i, i32 %141) #17, !srcloc !249
  %142 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %bf.load.i97 = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i97)
  %tobool.not.i98 = icmp sgt i16 %bf.load.i97, -1
  br i1 %tobool.not.i98, label %if.end28.if.then30_crit_edge, label %device_may_wakeup.exit102

if.end28.if.then30_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then30

device_may_wakeup.exit102:                        ; preds = %if.end28
  %wakeup.i99 = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 12, i32 6
  %143 = ptrtoint ptr %wakeup.i99 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %wakeup.i99, align 8
  %tobool2.i100.not = icmp eq ptr %144, null
  br i1 %tobool2.i100.not, label %device_may_wakeup.exit102.if.then30_crit_edge, label %device_may_wakeup.exit102.if.end33_crit_edge

device_may_wakeup.exit102.if.end33_crit_edge:     ; preds = %device_may_wakeup.exit102
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33

device_may_wakeup.exit102.if.then30_crit_edge:    ; preds = %device_may_wakeup.exit102
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then30

if.then30:                                        ; preds = %device_may_wakeup.exit102.if.then30_crit_edge, %if.end28.if.then30_crit_edge
  %145 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %phydev, align 16
  %call32 = tail call i32 @phy_resume(ptr noundef %146) #17
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %device_may_wakeup.exit102.if.end33_crit_edge
  %eee_enabled = getelementptr i8, ptr %1, i32 19040
  %147 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %eee_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool34.not = icmp eq i32 %148, 0
  br i1 %tobool34.not, label %if.end33.if.end36_crit_edge, label %if.then35

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @bcmgenet_eee_enable_set(ptr noundef %1, i1 noundef zeroext true)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end33.if.end36_crit_edge
  tail call fastcc void @bcmgenet_netif_start(ptr noundef %1)
  tail call void @netif_device_attach(ptr noundef %1) #17
  br label %cleanup

if.then39:                                        ; preds = %if.then27
  %hw_params.i103 = getelementptr i8, ptr %1, i32 18488
  %149 = ptrtoint ptr %hw_params.i103 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %hw_params.i103, align 8
  %flags.i104 = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %150, i32 0, i32 15
  %151 = ptrtoint ptr %flags.i104 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %flags.i104, align 4
  %and.i105 = and i32 %152, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105)
  %tobool.not.i106 = icmp eq i32 %and.i105, 0
  br i1 %tobool.not.i106, label %if.then39.if.end41_crit_edge, label %if.then.i

if.then39.if.end41_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.then.i:                                        ; preds = %if.then39
  %153 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i107 = getelementptr i8, ptr %154, i32 128
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i107) #17, !srcloc !248
  %156 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %157)
  %cmp.i109 = icmp eq i32 %157, 5
  br i1 %cmp.i109, label %land.lhs.true.i111, label %if.then.i.if.else.i112_crit_edge

if.then.i.if.else.i112_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i112

land.lhs.true.i111:                               ; preds = %if.then.i
  %ephy_16nm.i110 = getelementptr i8, ptr %1, i32 18588
  %158 = ptrtoint ptr %ephy_16nm.i110 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %ephy_16nm.i110, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool4.not.i = icmp eq i8 %159, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i111.if.end.i115_crit_edge, label %land.lhs.true.i111.if.else.i112_crit_edge

land.lhs.true.i111.if.else.i112_crit_edge:        ; preds = %land.lhs.true.i111
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i112

land.lhs.true.i111.if.end.i115_crit_edge:         ; preds = %land.lhs.true.i111
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i115

if.else.i112:                                     ; preds = %land.lhs.true.i111.if.else.i112_crit_edge, %if.then.i.if.else.i112_crit_edge
  br label %if.end.i115

if.end.i115:                                      ; preds = %if.else.i112, %land.lhs.true.i111.if.end.i115_crit_edge
  %.sink.i113 = phi i32 [ 4, %if.else.i112 ], [ 2031744, %land.lhs.true.i111.if.end.i115_crit_edge ]
  %160 = or i32 %155, 50331648
  %161 = call i32 @llvm.bswap.i32(i32 %160)
  %or7.i114 = or i32 %161, %.sink.i113
  %162 = tail call i32 @llvm.bswap.i32(i32 %or7.i114) #17
  %163 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %164, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %162) #17, !srcloc !249
  %165 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev12, align 8
  tail call void @bcmgenet_phy_power_set(ptr noundef %166, i1 noundef zeroext false) #17
  br label %if.end41

if.end41:                                         ; preds = %if.end.i115, %if.then39.if.end41_crit_edge, %if.then27.if.end41_crit_edge
  %167 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %clk.i, align 8
  tail call void @clk_disable(ptr noundef %168) #17
  tail call void @clk_unprepare(ptr noundef %168) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end36, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end41 ], [ 0, %if.end36 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_suspend_noirq(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.else_crit_edge, label %device_may_wakeup.exit

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %land.lhs.true

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %wolopts = getelementptr i8, ptr %1, i32 18728
  %7 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wolopts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.end10

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %device_may_wakeup.exit.if.else_crit_edge, %if.end.if.else_crit_edge
  %internal_phy = getelementptr i8, ptr %1, i32 18548
  %9 = ptrtoint ptr %internal_phy to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %internal_phy, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  br i1 %tobool6.not, label %if.else.if.end13_crit_edge, label %if.then7

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then7:                                         ; preds = %if.else
  %hw_params.i = getelementptr i8, ptr %1, i32 18488
  %11 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_params.i, align 8
  %flags.i = getelementptr inbounds %struct.bcmgenet_hw_params, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i23 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i23, label %if.then7.if.end13_crit_edge, label %if.then.i

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then.i:                                        ; preds = %if.then7
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 128
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !248
  %version.i = getelementptr i8, ptr %1, i32 2308
  %18 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %cmp.i = icmp eq i32 %19, 5
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.i.if.else.i_crit_edge

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %ephy_16nm.i = getelementptr i8, ptr %1, i32 18588
  %20 = ptrtoint ptr %ephy_16nm.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ephy_16nm.i, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool4.not.i = icmp eq i8 %21, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %land.lhs.true.i.if.end.i_crit_edge
  %.sink.i = phi i32 [ 4, %if.else.i ], [ 2031744, %land.lhs.true.i.if.end.i_crit_edge ]
  %22 = or i32 %17, 50331648
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %or7.i = or i32 %23, %.sink.i
  %24 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #17
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %26, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %24) #17, !srcloc !249
  %dev8.i = getelementptr i8, ptr %1, i32 2312
  %27 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev8.i, align 8
  tail call void @bcmgenet_phy_power_set(ptr noundef %28, i1 noundef zeroext false) #17
  br label %if.end13

if.end10:                                         ; preds = %land.lhs.true
  %call.i = tail call i32 @bcmgenet_wol_power_down_cfg(ptr noundef %add.ptr.i, i32 noundef 2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end10.if.end13_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.end13:                                         ; preds = %if.end10.if.end13_crit_edge, %if.end.i, %if.then7.if.end13_crit_edge, %if.else.if.end13_crit_edge
  %clk = getelementptr i8, ptr %1, i32 18712
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %30) #17
  tail call void @clk_unprepare(ptr noundef %30) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcmgenet_resume_noirq(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr i8, ptr %1, i32 18712
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end5, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @clk_unprepare(ptr noundef %5) #17
  br label %cleanup

if.end5:                                          ; preds = %if.end.i
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i27 = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i27, label %if.end5.if.end15_crit_edge, label %device_may_wakeup.exit

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

device_may_wakeup.exit:                           ; preds = %if.end5
  %wakeup.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 12, i32 6
  %7 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %8, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end15_crit_edge, label %land.lhs.true

device_may_wakeup.exit.if.end15_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %wolopts = getelementptr i8, ptr %1, i32 18728
  %9 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wolopts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end15_crit_edge, label %if.then8

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.then8:                                         ; preds = %land.lhs.true
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i28 = getelementptr i8, ptr %12, i32 512
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #17, !srcloc !248
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i29 = getelementptr i8, ptr %15, i32 512
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #17, !srcloc !248
  %17 = and i32 %16, 1835008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not = icmp eq i32 %17, 0
  br i1 %tobool11.not, label %if.then8.if.end15_crit_edge, label %if.then12

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  %pdev = getelementptr i8, ptr %1, i32 18716
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %dev13 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  tail call void @pm_wakeup_dev_event(ptr noundef %dev13, i32 noundef 0, i1 noundef zeroext false) #17
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then8.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %device_may_wakeup.exit.if.end15_crit_edge, %if.end5.if.end15_crit_edge
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %21, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 1835008) #17, !srcloc !249
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then3.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 0, %entry.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcmgenet_mii_config(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind readonly }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !31, !33, !34, !35, !37, !38, !40, !41, !43, !45, !46, !48, !50, !51, !53, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !88, !90, !92, !94, !95, !96, !98, !99, !101, !102, !103, !105, !107, !108, !110, !111, !113, !115, !116, !117, !119, !120, !122, !123, !124, !126, !127, !129, !131, !133, !134, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !153, !155, !156, !157, !159, !161, !163, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !205, !207, !209, !211, !213, !215, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234}
!llvm.named.register.sp = !{!236}
!llvm.module.flags = !{!237, !238, !239, !240, !241, !242, !243, !244}
!llvm.ident = !{!245}

!0 = !{ptr @__initcall__kmod_genet__507_4351_bcmgenet_driver_init6, !1, !"__initcall__kmod_genet__507_4351_bcmgenet_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 4351, i32 1}
!2 = !{ptr @__exitcall_bcmgenet_driver_exit, !1, !"__exitcall_bcmgenet_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author508, !4, !"__UNIQUE_ID_author508", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 4353, i32 1}
!5 = !{ptr @__UNIQUE_ID_description509, !6, !"__UNIQUE_ID_description509", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 4354, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias510, !8, !"__UNIQUE_ID_alias510", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 4355, i32 1}
!9 = !{ptr @__UNIQUE_ID_file511, !10, !"__UNIQUE_ID_file511", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 4356, i32 1}
!11 = !{ptr @__UNIQUE_ID_license512, !10, !"__UNIQUE_ID_license512", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_softdep513, !13, !"__UNIQUE_ID_softdep513", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 4357, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 4345, i32 11}
!16 = !{ptr @bcmgenet_driver, !17, !"bcmgenet_driver", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 4340, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3979, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @bcmgenet_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @bcmgenet_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @bcmgenet_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 4002, i32 2}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 4050, i32 54}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 4052, i32 3}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @bcmgenet_probe.__UNIQUE_ID_ddebug504, !32, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!35 = !{ptr @bcmgenet_probe.__key.10, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 4072, i32 2}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @bcmgenet_probe.__key.12, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 4075, i32 2}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 4077, i32 58}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 4079, i32 3}
!45 = !{ptr @bcmgenet_probe.__UNIQUE_ID_ddebug505, !44, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 4084, i32 58}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 4086, i32 3}
!50 = !{ptr @bcmgenet_probe.__UNIQUE_ID_ddebug506, !49, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 4109, i32 3}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @bcmgenet_probe._entry.18, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @bcmgenet_probe._entry_ptr.21, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @bcmgenet_ethtool_ops, !57, !"bcmgenet_ethtool_ops", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 1607, i32 33}
!58 = !{ptr @genet_dma_ring_regs, !59, !"genet_dma_ring_regs", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 424, i32 18}
!60 = !{ptr @bcmgenet_dma_regs, !61, !"bcmgenet_dma_regs", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 328, i32 18}
!62 = !{ptr @bcmgenet_gstrings_stats, !63, !"bcmgenet_gstrings_stats", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 1048, i32 36}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 1533, i32 26}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 1458, i32 19}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 1464, i32 19}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 1391, i32 19}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 1406, i32 20}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 1421, i32 19}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 1434, i32 20}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 1373, i32 4}
!80 = !{ptr @bcmgenet_netdev_ops, !81, !"bcmgenet_netdev_ops", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3702, i32 36}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3354, i32 2}
!84 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @bcmgenet_open.__UNIQUE_ID_ddebug499, !83, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3383, i32 19}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3396, i32 19}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3409, i32 19}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 2519, i32 2}
!94 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @init_umac.__UNIQUE_ID_ddebug493, !93, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 2577, i32 2}
!98 = !{ptr @init_umac.__UNIQUE_ID_ddebug494, !97, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3048, i32 2}
!101 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @bcmgenet_init_dma.__UNIQUE_ID_ddebug495, !100, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3085, i32 25}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 2423, i32 2}
!107 = !{ptr @bcmgenet_alloc_rx_buffers.__UNIQUE_ID_ddebug492, !106, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 2192, i32 3}
!110 = !{ptr @__func__.bcmgenet_rx_refill, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 2203, i32 3}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!115 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @bcmgenet_init_dim.__key, !118, !"__key", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 2585, i32 2}
!119 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 2270, i32 2}
!122 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @bcmgenet_desc_rx.__UNIQUE_ID_ddebug489, !121, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 2302, i32 3}
!126 = !{ptr @bcmgenet_desc_rx.__UNIQUE_ID_ddebug490, !125, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 2308, i32 4}
!129 = !{ptr @.str.51, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 2321, i32 4}
!131 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 2358, i32 3}
!133 = !{ptr @bcmgenet_desc_rx.__UNIQUE_ID_ddebug491, !132, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!134 = !{ptr @bcmgenet_init_tx_ring.__key, !135, !"__key", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 2620, i32 2}
!136 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 1892, i32 2}
!139 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @__bcmgenet_tx_reclaim.__UNIQUE_ID_ddebug488, !138, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!141 = !{ptr @.str.56, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3192, i32 2}
!143 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @bcmgenet_isr0.__UNIQUE_ID_ddebug498, !142, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!145 = !{ptr @.str.58, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3143, i32 2}
!147 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @bcmgenet_isr1.__UNIQUE_ID_ddebug497, !146, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!149 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 2972, i32 26}
!151 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 2995, i32 26}
!153 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3469, i32 2}
!155 = !{ptr @.str.63, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @bcmgenet_close.__UNIQUE_ID_ddebug500, !154, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!157 = !{ptr @.str.64, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 2076, i32 8}
!159 = !{ptr @__func__.bcmgenet_xmit, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 2077, i32 8}
!161 = !{ptr @.str.65, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 2117, i32 4}
!163 = distinct !{null, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../include/linux/netdevice.h", i32 4690, i32 9}
!165 = !{ptr @.str.67, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3583, i32 2}
!167 = !{ptr @.str.68, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @bcmgenet_set_rx_mode.__UNIQUE_ID_ddebug502, !166, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!169 = !{ptr @.str.69, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3538, i32 2}
!171 = !{ptr @.str.70, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @bcmgenet_timeout.__UNIQUE_ID_ddebug501, !170, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!173 = !{ptr @.str.71, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3514, i32 2}
!175 = !{ptr @.str.72, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.73, !174, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.74, !174, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.75, !174, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.76, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3846, i32 3}
!181 = !{ptr @.str.77, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @bcmgenet_set_hw_params._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @bcmgenet_set_hw_params._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.79, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3852, i32 2}
!186 = !{ptr @.str.80, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @bcmgenet_set_hw_params._entry.78, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @bcmgenet_set_hw_params._entry_ptr.81, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.83, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3874, i32 4}
!191 = !{ptr @bcmgenet_set_hw_params._entry.82, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @bcmgenet_set_hw_params._entry_ptr.84, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.86, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3879, i32 3}
!195 = !{ptr @bcmgenet_set_hw_params._entry.85, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @bcmgenet_set_hw_params._entry_ptr.87, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.88, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3894, i32 2}
!199 = !{ptr @bcmgenet_set_hw_params.__UNIQUE_ID_ddebug503, !198, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!200 = !{ptr @.str.89, !198, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @bcmgenet_dma_regs_v3plus, !202, !"bcmgenet_dma_regs_v3plus", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 236, i32 17}
!203 = !{ptr @genet_dma_ring_regs_v4, !204, !"genet_dma_ring_regs_v4", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 395, i32 17}
!205 = !{ptr @genet_dma_ring_regs_v123, !206, !"genet_dma_ring_regs_v123", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 411, i32 17}
!207 = !{ptr @bcmgenet_dma_regs_v2, !208, !"bcmgenet_dma_regs_v2", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 272, i32 17}
!209 = !{ptr @bcmgenet_dma_regs_v1, !210, !"bcmgenet_dma_regs_v1", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 300, i32 17}
!211 = !{ptr @bcmgenet_hw_params, !212, !"bcmgenet_hw_params", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3719, i32 34}
!213 = !{ptr @.str.90, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3109, i32 2}
!215 = !{ptr @bcmgenet_irq_task.__UNIQUE_ID_ddebug496, !214, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!216 = !{ptr @bcmgenet_match, !217, !"bcmgenet_match", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3954, i32 34}
!218 = !{ptr @v1_plat_data, !219, !"v1_plat_data", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3918, i32 40}
!220 = !{ptr @v2_plat_data, !221, !"v2_plat_data", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3923, i32 40}
!222 = !{ptr @v3_plat_data, !223, !"v3_plat_data", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3928, i32 40}
!224 = !{ptr @v4_plat_data, !225, !"v4_plat_data", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3933, i32 40}
!226 = !{ptr @v5_plat_data, !227, !"v5_plat_data", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3938, i32 40}
!228 = !{ptr @bcm2711_plat_data, !229, !"bcm2711_plat_data", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3943, i32 40}
!230 = !{ptr @bcm7712_plat_data, !231, !"bcm7712_plat_data", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 3948, i32 40}
!232 = !{ptr @genet_acpi_match, !233, !"genet_acpi_match", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 4334, i32 36}
!234 = !{ptr @bcmgenet_pm_ops, !235, !"bcmgenet_pm_ops", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/broadcom/genet/bcmgenet.c", i32 4327, i32 32}
!236 = !{!"sp"}
!237 = !{i32 1, !"wchar_size", i32 2}
!238 = !{i32 1, !"min_enum_size", i32 4}
!239 = !{i32 8, !"branch-target-enforcement", i32 0}
!240 = !{i32 8, !"sign-return-address", i32 0}
!241 = !{i32 8, !"sign-return-address-all", i32 0}
!242 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!243 = !{i32 7, !"uwtable", i32 1}
!244 = !{i32 7, !"frame-pointer", i32 2}
!245 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!246 = !{i8 0, i8 2}
!247 = !{i64 2149063014, i64 2149063019, i64 2149063032, i64 2149063076, i64 2149063110, i64 2149063131}
!248 = !{i64 5997951}
!249 = !{i64 5997533}
!250 = !{!"auto-init"}
!251 = !{!"branch_weights", i32 1, i32 2000}
!252 = !{i64 2158475613, i64 2158476125, i64 2158475650, i64 2158475706, i64 2158475740, i64 2158475764, i64 2158475805, i64 2158475826, i64 2158475854, i64 2158475888}
!253 = !{!"branch_weights", i32 2000, i32 1}
!254 = !{i64 2155700845, i64 2155701345, i64 2155700882, i64 2155700938, i64 2155700972, i64 2155700996, i64 2155701037, i64 2155701058, i64 2155701086, i64 2155701120}
!255 = !{i64 2155702189}
!256 = !{i64 2156529151}
!257 = !{i64 2156530222}
