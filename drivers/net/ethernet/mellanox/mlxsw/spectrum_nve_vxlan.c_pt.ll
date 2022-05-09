; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_nve_vxlan.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve_vxlan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_sp_nve_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_nve_params = type { i32, i32, ptr, i16 }
%struct.mlxsw_sp_nve_config = type { i32, i8, i8, i16, i32, i32, i32, %union.mlxsw_sp_l3addr }
%union.mlxsw_sp_l3addr = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.mlxsw_sp_nve = type { %struct.mlxsw_sp_nve_config, %struct.rhashtable, %struct.rhashtable, %struct.list_head, ptr, ptr, i32, [2 x i32], i32, i16 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.160, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.160 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vxlan_config = type { %union.vxlan_addr, %union.vxlan_addr, i32, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i32, i8, i32 }
%union.vxlan_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }

@mlxsw_sp1_nve_vxlan_ops = dso_local constant { %struct.mlxsw_sp_nve_ops, [36 x i8] } { %struct.mlxsw_sp_nve_ops { i32 0, ptr @mlxsw_sp1_nve_vxlan_can_offload, ptr @mlxsw_sp_nve_vxlan_config, ptr @mlxsw_sp1_nve_vxlan_init, ptr @mlxsw_sp1_nve_vxlan_fini, ptr @mlxsw_sp_nve_vxlan_fdb_replay, ptr @mlxsw_sp_nve_vxlan_clear_offload }, [36 x i8] zeroinitializer }, align 32
@mlxsw_sp2_nve_vxlan_ops = dso_local constant { %struct.mlxsw_sp_nve_ops, [36 x i8] } { %struct.mlxsw_sp_nve_ops { i32 0, ptr @mlxsw_sp_nve_vxlan_can_offload, ptr @mlxsw_sp_nve_vxlan_config, ptr @mlxsw_sp2_nve_vxlan_init, ptr @mlxsw_sp2_nve_vxlan_fini, ptr @mlxsw_sp_nve_vxlan_fdb_replay, ptr @mlxsw_sp_nve_vxlan_clear_offload }, [36 x i8] zeroinitializer }, align 32
@mlxsw_sp1_nve_vxlan_can_offload.__msg = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"mlxsw_spectrum: VxLAN: 802.1ad bridge is not supported with VxLAN\00", [62 x i8] zeroinitializer }, align 32
@mlxsw_reg_tngcr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -24575, i16 68, ptr @.str.30 }, [24 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 35, ptr null, ptr null }, align 1
@.str = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_tngcr_type\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_tngcr_nve_valid\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_tngcr_nve_ttl_uc\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_tngcr_nve_ttl_mc\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_tngcr_nve_flc\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_tngcr_nve_flh\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"reg_tngcr_nve_udp_sport_type\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg_tngcr_nve_group_size_mc\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"reg_tngcr_nve_group_size_flood\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"reg_tngcr_nve_udp_sport_prefix\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_tngcr_usipv4\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_tngcr_learn_enable\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reg_tngcr_underlay_virtual_router\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tngcr\00", [26 x i8] zeroinitializer }, align 32
@mlxsw_reg_rtdp = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -32736, i16 68, ptr @.str.35 }, [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_rtdp_type\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_rtdp_tunnel_index\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtdp\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_nve_vxlan.c\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_sp_switchdev_notifier = external dso_local global %struct.notifier_block, align 4
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vxlan\00", [26 x i8] zeroinitializer }, align 32
@mlxsw_sp_nve_vxlan_can_offload.__msg = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"mlxsw_spectrum: VxLAN: Multicast destination IP is not supported\00", [63 x i8] zeroinitializer }, align 32
@mlxsw_sp_nve_vxlan_can_offload.__msg.38 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"mlxsw_spectrum: VxLAN: Source address must be specified\00", [40 x i8] zeroinitializer }, align 32
@mlxsw_sp_nve_vxlan_can_offload.__msg.39 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"mlxsw_spectrum: VxLAN: Local interface is not supported\00", [40 x i8] zeroinitializer }, align 32
@mlxsw_sp_nve_vxlan_can_offload.__msg.40 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"mlxsw_spectrum: VxLAN: Only default UDP source port range is supported\00", [57 x i8] zeroinitializer }, align 32
@mlxsw_sp_nve_vxlan_can_offload.__msg.41 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"mlxsw_spectrum: VxLAN: TOS must be configured to inherit\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_sp_nve_vxlan_can_offload.__msg.42 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"mlxsw_spectrum: VxLAN: TTL must not be configured to inherit\00", [35 x i8] zeroinitializer }, align 32
@mlxsw_sp_nve_vxlan_can_offload.__msg.43 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"mlxsw_spectrum: VxLAN: TTL must not be configured to 0\00", [41 x i8] zeroinitializer }, align 32
@mlxsw_sp_nve_vxlan_can_offload.__msg.44 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"mlxsw_spectrum: VxLAN: Flow label must be configured to 0\00", [38 x i8] zeroinitializer }, align 32
@mlxsw_sp_nve_vxlan_ipv4_flags_check.__msg = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"mlxsw_spectrum: VxLAN: Zero UDP checksum must be allowed for TX\00", [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_nve_vxlan_ipv4_flags_check.__msg.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mlxsw_spectrum: VxLAN: Unsupported flag\00", [56 x i8] zeroinitializer }, align 32
@mlxsw_sp_nve_vxlan_ipv6_flags_check.__msg = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"mlxsw_spectrum: VxLAN: Zero UDP checksum must be allowed for TX\00", [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_nve_vxlan_ipv6_flags_check.__msg.46 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"mlxsw_spectrum: VxLAN: Zero UDP checksum must be allowed for RX\00", [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_nve_vxlan_ipv6_flags_check.__msg.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mlxsw_spectrum: VxLAN: Unsupported flag\00", [56 x i8] zeroinitializer }, align 32
@mlxsw_reg_spvtr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 8221, i16 16, ptr @.str.67 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_reg_tnpc = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -24544, i16 24, ptr @.str.54 }, [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_tnpc_tunnel_port\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_tnpc_learn_enable_v4\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_tnpc_learn_enable_v6\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tnpc\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_tngcr_underlay_rif\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_spvtr_tport\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_spvtr_local_port\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_spvtr_lp_msb\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_spvtr_ipvid_mode\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_spvtr_ipve\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spvtr\00", [26 x i8] zeroinitializer }, align 32
@mlxsw_reg_spvid = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 8206, i16 8, ptr @.str.76 }, [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_spvid_tport\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_spvid_local_port\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_spvid_lp_msb\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_spvid_egr_et_set\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spvid\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"reg_rtdp_egress_router_interface\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.81 = private unnamed_addr constant [24 x i8] c"mlxsw_sp1_nve_vxlan_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 301, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant [24 x i8] c"mlxsw_sp2_nve_vxlan_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 465, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 122, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_tngcr\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 33, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 11525, i32 1 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 11531, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 11537, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 11543, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 11559, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 11576, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 11606, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 11623, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 11633, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 11613, i32 1 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 11660, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 11640, i32 1 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 11647, i32 1 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 11510, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_rtdp\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 8186, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 8193, i32 1 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 8175, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 287, i32 6 }
@___asan_gen_.160 = private unnamed_addr constant [23 x i8] c"../include/net/vxlan.h\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 420, i32 43 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 64, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 69, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 74, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 79, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 84, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 89, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 105, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 110, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 23, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 28, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 39, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 44, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.199 = private constant [60 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve_vxlan.c\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 49, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_spvtr\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_tnpc\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 11924, i32 1 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 11936, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 11930, i32 1 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 11918, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 11654, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1619, i32 1 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1626, i32 1 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1679, i32 1 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1643, i32 1 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 1611, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_spvid\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 789, i32 1 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 796, i32 1 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 811, i32 1 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 782, i32 1 }
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 8200, i32 1 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp1_nve_vxlan_ops, ptr @mlxsw_sp2_nve_vxlan_ops, ptr @mlxsw_sp1_nve_vxlan_can_offload.__msg, ptr @mlxsw_reg_tngcr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @mlxsw_reg_rtdp, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @mlxsw_sp_nve_vxlan_can_offload.__msg, ptr @mlxsw_sp_nve_vxlan_can_offload.__msg.38, ptr @mlxsw_sp_nve_vxlan_can_offload.__msg.39, ptr @mlxsw_sp_nve_vxlan_can_offload.__msg.40, ptr @mlxsw_sp_nve_vxlan_can_offload.__msg.41, ptr @mlxsw_sp_nve_vxlan_can_offload.__msg.42, ptr @mlxsw_sp_nve_vxlan_can_offload.__msg.43, ptr @mlxsw_sp_nve_vxlan_can_offload.__msg.44, ptr @mlxsw_sp_nve_vxlan_ipv4_flags_check.__msg, ptr @mlxsw_sp_nve_vxlan_ipv4_flags_check.__msg.45, ptr @mlxsw_sp_nve_vxlan_ipv6_flags_check.__msg, ptr @mlxsw_sp_nve_vxlan_ipv6_flags_check.__msg.46, ptr @mlxsw_sp_nve_vxlan_ipv6_flags_check.__msg.47, ptr @mlxsw_reg_spvtr, ptr @mlxsw_reg_tnpc, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @mlxsw_reg_spvid, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_nve_vxlan_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_nve_vxlan_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_nve_vxlan_can_offload.__msg to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_tngcr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_rtdp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_nve_vxlan_can_offload.__msg to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_nve_vxlan_can_offload.__msg.38 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_nve_vxlan_can_offload.__msg.39 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_nve_vxlan_can_offload.__msg.40 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_nve_vxlan_can_offload.__msg.41 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_nve_vxlan_can_offload.__msg.42 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_nve_vxlan_can_offload.__msg.43 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_nve_vxlan_can_offload.__msg.44 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_nve_vxlan_ipv4_flags_check.__msg to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_nve_vxlan_ipv4_flags_check.__msg.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_nve_vxlan_ipv6_flags_check.__msg to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_nve_vxlan_ipv6_flags_check.__msg.46 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_nve_vxlan_ipv6_flags_check.__msg.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_spvtr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_tnpc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_spvid to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mlxsw_sp1_nve_vxlan_can_offload(ptr nocapture noundef readnone %nve, ptr nocapture noundef readonly %params, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ethertype = getelementptr inbounds %struct.mlxsw_sp_nve_params, ptr %params, i32 0, i32 3
  %0 = ptrtoint ptr %ethertype to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ethertype, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30552, i16 %1)
  %cmp = icmp eq i16 %1, -30552
  br i1 %cmp, label %do.body, label %if.end3

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp1_nve_vxlan_can_offload.__msg) #6
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.return_crit_edge, label %if.then2

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mlxsw_sp1_nve_vxlan_can_offload.__msg, ptr %extack, align 4
  br label %return

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i1 @mlxsw_sp_nve_vxlan_can_offload(ptr noundef %nve, ptr noundef %params, ptr noundef %extack)
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %do.body.return_crit_edge
  %retval.0 = phi i1 [ %call, %if.end3 ], [ false, %if.then2 ], [ false, %do.body.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp_nve_vxlan_config(ptr nocapture noundef readnone %nve, ptr nocapture noundef readonly %params, ptr nocapture noundef %config) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mlxsw_sp_nve_params, ptr %params, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %config, align 4
  %ttl = getelementptr i8, ptr %1, i32 13815
  %3 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ttl, align 1
  %ttl2 = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 1
  %5 = ptrtoint ptr %ttl2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %ttl2, align 4
  %label = getelementptr i8, ptr %1, i32 13816
  %6 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %label, align 4
  %flowlabel = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 4
  %8 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %flowlabel, align 4
  %flags = getelementptr i8, ptr %1, i32 13820
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %11 = trunc i32 %10 to i8
  %learning_en = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 2
  %12 = ptrtoint ptr %learning_en to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %learning_en, align 1
  %bf.shl = shl i8 %11, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %learning_en, align 1
  %ul_tb_id = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 5
  %13 = ptrtoint ptr %ul_tb_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 254, ptr %ul_tb_id, align 4
  %saddr.i = getelementptr i8, ptr %1, i32 13768
  %14 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %saddr.i, align 4
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i16 %15, label %entry.mlxsw_sp_nve_vxlan_ul_proto_sip_config.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb2.i
  ]

entry.mlxsw_sp_nve_vxlan_ul_proto_sip_config.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxsw_sp_nve_vxlan_ul_proto_sip_config.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ul_proto.i = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 6
  %17 = ptrtoint ptr %ul_proto.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %ul_proto.i, align 4
  %sin_addr.i = getelementptr i8, ptr %1, i32 13772
  %18 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sin_addr.i, align 4
  %ul_sip.i = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 7
  %20 = ptrtoint ptr %ul_sip.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ul_sip.i, align 4
  br label %mlxsw_sp_nve_vxlan_ul_proto_sip_config.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ul_proto3.i = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 6
  %21 = ptrtoint ptr %ul_proto3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %ul_proto3.i, align 4
  %ul_sip4.i = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 7
  %sin6_addr.i = getelementptr i8, ptr %1, i32 13776
  %22 = call ptr @memcpy(ptr %ul_sip4.i, ptr %sin6_addr.i, i32 16)
  br label %mlxsw_sp_nve_vxlan_ul_proto_sip_config.exit

mlxsw_sp_nve_vxlan_ul_proto_sip_config.exit:      ; preds = %sw.bb2.i, %sw.bb.i, %entry.mlxsw_sp_nve_vxlan_ul_proto_sip_config.exit_crit_edge
  %dst_port = getelementptr i8, ptr %1, i32 13808
  %23 = ptrtoint ptr %dst_port to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dst_port, align 4
  %udp_dport = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 3
  %25 = ptrtoint ptr %udp_dport to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %udp_dport, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_nve_vxlan_init(ptr nocapture noundef readonly %nve, ptr noundef %config) #0 align 64 {
entry:
  %tngcr_pl.i42 = alloca [68 x i8], align 1
  %rtdp_pl.i = alloca [68 x i8], align 1
  %tngcr_pl.i = alloca [68 x i8], align 1
  %ul_vr_id.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %nve, i32 0, i32 4
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 4
  %udp_dport = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 3
  %2 = ptrtoint ptr %udp_dport to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %udp_dport, align 2
  %call = tail call i32 @mlxsw_sp_parsing_vxlan_udp_dport_set(ptr noundef %1, i16 noundef zeroext %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @mlxsw_sp_parsing_depth_inc(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_parsing_depth_inc_crit_edge

if.end.err_parsing_depth_inc_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_parsing_depth_inc

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tngcr_pl.i) #6
  %4 = call ptr @memset(ptr %tngcr_pl.i, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ul_vr_id.i) #6
  %5 = ptrtoint ptr %ul_vr_id.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %ul_vr_id.i, align 2, !annotation !154
  %ul_tb_id.i = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 5
  %6 = ptrtoint ptr %ul_tb_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ul_tb_id.i, align 4
  %call.i = call i32 @mlxsw_sp_router_tb_id_vr_id(ptr noundef %1, i32 noundef %7, ptr noundef nonnull %ul_vr_id.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %mlxsw_sp1_nve_vxlan_config_set.exit.thread

mlxsw_sp1_nve_vxlan_config_set.exit.thread:       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ul_vr_id.i) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tngcr_pl.i) #6
  br label %err_config_set

if.end.i:                                         ; preds = %if.end5
  call fastcc void @mlxsw_sp_nve_vxlan_config_prepare(ptr noundef nonnull %tngcr_pl.i, ptr noundef %config) #6
  %learning_en.i = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 2
  %8 = ptrtoint ptr %learning_en.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %learning_en.i, align 1
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %conv.i = zext i8 %bf.lshr.i to i32
  %spec.select.i.i.i = shl nuw i32 %conv.i, 31
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %tngcr_pl.i, i32 8
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %10, 2147483647
  %or.i.i.i = or i32 %spec.select.i.i.i, %and7.i.i.i
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %11 = ptrtoint ptr %ul_vr_id.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ul_vr_id.i, align 2
  %conv3.i = zext i16 %12 to i32
  %arrayidx.i.i36.i = getelementptr inbounds i32, ptr %tngcr_pl.i, i32 8
  %and7.i.i38.i = and i32 %or.i.i.i, -65536
  %or.i.i39.i = or i32 %and7.i.i38.i, %conv3.i
  %13 = ptrtoint ptr %arrayidx.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i.i39.i, ptr %arrayidx.i.i36.i, align 4
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core.i, align 4
  %call5.i = call i32 @mlxsw_reg_write(ptr noundef %15, ptr noundef nonnull @mlxsw_reg_tngcr, ptr noundef nonnull %tngcr_pl.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ul_vr_id.i) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tngcr_pl.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool7.not = icmp eq i32 %call5.i, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.i.err_config_set_crit_edge

if.end.i.err_config_set_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_config_set

if.end9:                                          ; preds = %if.end.i
  %tunnel_index = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %nve, i32 0, i32 8
  %16 = ptrtoint ptr %tunnel_index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tunnel_index, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %rtdp_pl.i) #6
  %18 = call ptr @memset(ptr %rtdp_pl.i, i32 255, i32 68)
  call fastcc void @mlxsw_reg_rtdp_pack(ptr noundef nonnull %rtdp_pl.i, i32 noundef %17) #6
  %19 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core.i, align 4
  %call.i41 = call i32 @mlxsw_reg_write(ptr noundef %20, ptr noundef nonnull @mlxsw_reg_rtdp, ptr noundef nonnull %rtdp_pl.i) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %rtdp_pl.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool11.not = icmp eq i32 %call.i41, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.err_rtdp_set_crit_edge

if.end9.err_rtdp_set_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_rtdp_set

if.end13:                                         ; preds = %if.end9
  %21 = ptrtoint ptr %ul_tb_id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ul_tb_id.i, align 4
  %ul_proto = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 6
  %23 = ptrtoint ptr %ul_proto to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ul_proto, align 4
  %ul_sip = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 7
  %25 = ptrtoint ptr %tunnel_index to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tunnel_index, align 4
  %call15 = call i32 @mlxsw_sp_router_nve_promote_decap(ptr noundef %1, i32 noundef %22, i32 noundef %24, ptr noundef %ul_sip, i32 noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.end13.err_rtdp_set_crit_edge

if.end13.err_rtdp_set_crit_edge:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_rtdp_set

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_rtdp_set:                                     ; preds = %if.end13.err_rtdp_set_crit_edge, %if.end9.err_rtdp_set_crit_edge
  %err.0 = phi i32 [ %call.i41, %if.end9.err_rtdp_set_crit_edge ], [ %call15, %if.end13.err_rtdp_set_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tngcr_pl.i42) #6
  %27 = call ptr @memset(ptr %tngcr_pl.i42, i32 255, i32 68)
  call fastcc void @mlxsw_reg_tngcr_pack(ptr noundef nonnull %tngcr_pl.i42, i1 noundef zeroext false, i8 noundef zeroext 0) #6
  %28 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core.i, align 4
  %call.i44 = call i32 @mlxsw_reg_write(ptr noundef %29, ptr noundef nonnull @mlxsw_reg_tngcr, ptr noundef nonnull %tngcr_pl.i42) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tngcr_pl.i42) #6
  br label %err_config_set

err_config_set:                                   ; preds = %err_rtdp_set, %if.end.i.err_config_set_crit_edge, %mlxsw_sp1_nve_vxlan_config_set.exit.thread
  %err.1 = phi i32 [ %call5.i, %if.end.i.err_config_set_crit_edge ], [ %err.0, %err_rtdp_set ], [ %call.i, %mlxsw_sp1_nve_vxlan_config_set.exit.thread ]
  call void @mlxsw_sp_parsing_depth_dec(ptr noundef %1) #6
  br label %err_parsing_depth_inc

err_parsing_depth_inc:                            ; preds = %err_config_set, %if.end.err_parsing_depth_inc_crit_edge
  %err.2 = phi i32 [ %call2, %if.end.err_parsing_depth_inc_crit_edge ], [ %err.1, %err_config_set ]
  %call19 = call i32 @mlxsw_sp_parsing_vxlan_udp_dport_set(ptr noundef %1, i16 noundef zeroext 0) #6
  br label %cleanup

cleanup:                                          ; preds = %err_parsing_depth_inc, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_parsing_depth_inc ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp1_nve_vxlan_fini(ptr noundef %nve) #0 align 64 {
entry:
  %tngcr_pl.i = alloca [68 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp2 = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %nve, i32 0, i32 4
  %0 = ptrtoint ptr %mlxsw_sp2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp2, align 4
  %ul_tb_id = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %nve, i32 0, i32 5
  %2 = ptrtoint ptr %ul_tb_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ul_tb_id, align 4
  %ul_proto = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %nve, i32 0, i32 6
  %4 = ptrtoint ptr %ul_proto to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ul_proto, align 4
  %ul_sip = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %nve, i32 0, i32 7
  tail call void @mlxsw_sp_router_nve_demote_decap(ptr noundef %1, i32 noundef %3, i32 noundef %5, ptr noundef %ul_sip) #6
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tngcr_pl.i) #6
  %6 = call ptr @memset(ptr %tngcr_pl.i, i32 255, i32 68)
  call fastcc void @mlxsw_reg_tngcr_pack(ptr noundef nonnull %tngcr_pl.i, i1 noundef zeroext false, i8 noundef zeroext 0) #6
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_write(ptr noundef %8, ptr noundef nonnull @mlxsw_reg_tngcr, ptr noundef nonnull %tngcr_pl.i) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tngcr_pl.i) #6
  call void @mlxsw_sp_parsing_depth_dec(ptr noundef %1) #6
  %call = call i32 @mlxsw_sp_parsing_vxlan_udp_dport_set(ptr noundef %1, i16 noundef zeroext 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_nve_vxlan_fdb_replay(ptr noundef %nve_dev, i32 noundef %vni, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rtnl_link_ops.i = getelementptr inbounds %struct.net_device, ptr %nve_dev, i32 0, i32 136
  %0 = ptrtoint ptr %rtnl_link_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtnl_link_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %netif_is_vxlan.exit, !prof !155

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

netif_is_vxlan.exit:                              ; preds = %entry
  %kind.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kind.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(6) @.str.37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end22, label %netif_is_vxlan.exit.do.end_crit_edge, !prof !156

netif_is_vxlan.exit.do.end_crit_edge:             ; preds = %netif_is_vxlan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %netif_is_vxlan.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 287, i32 noundef 9, ptr noundef null) #6
  br label %return

if.end22:                                         ; preds = %netif_is_vxlan.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call i32 @vxlan_fdb_replay(ptr noundef %nve_dev, i32 noundef %vni, ptr noundef nonnull @mlxsw_sp_switchdev_notifier, ptr noundef %extack) #6
  br label %return

return:                                           ; preds = %if.end22, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call23, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_nve_vxlan_clear_offload(ptr noundef %nve_dev, i32 noundef %vni) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rtnl_link_ops.i = getelementptr inbounds %struct.net_device, ptr %nve_dev, i32 0, i32 136
  %0 = ptrtoint ptr %rtnl_link_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtnl_link_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %netif_is_vxlan.exit, !prof !155

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

netif_is_vxlan.exit:                              ; preds = %entry
  %kind.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kind.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(6) @.str.37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end22.critedge, label %netif_is_vxlan.exit.do.end_crit_edge, !prof !156

netif_is_vxlan.exit.do.end_crit_edge:             ; preds = %netif_is_vxlan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %netif_is_vxlan.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 296, i32 noundef 9, ptr noundef null) #6
  br label %return

if.end22.critedge:                                ; preds = %netif_is_vxlan.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @vxlan_fdb_clear_offload(ptr noundef %nve_dev, i32 noundef %vni) #6
  br label %return

return:                                           ; preds = %if.end22.critedge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mlxsw_sp_nve_vxlan_can_offload(ptr nocapture noundef readnone %nve, ptr nocapture noundef readonly %params, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mlxsw_sp_nve_params, ptr %params, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %cfg1 = getelementptr i8, ptr %1, i32 13740
  %2 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cfg1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp.i = icmp eq i16 %3, 10
  br i1 %cmp.i, label %if.then.i, label %vxlan_addr_multicast.exit

if.then.i:                                        ; preds = %entry
  %sin6_addr.i = getelementptr i8, ptr %1, i32 13748
  %4 = ptrtoint ptr %sin6_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sin6_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %5)
  %cmp.i.i = icmp ugt i32 %5, -16777217
  br i1 %cmp.i.i, label %if.then.i.do.body_crit_edge, label %if.then.i.if.end4_crit_edge

if.then.i.if.end4_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then.i.do.body_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

vxlan_addr_multicast.exit:                        ; preds = %entry
  %sin_addr.i = getelementptr i8, ptr %1, i32 13744
  %6 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sin_addr.i, align 4
  %and.i.i = and i32 %7, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i)
  %cmp.i5.i = icmp eq i32 %and.i.i, -536870912
  br i1 %cmp.i5.i, label %vxlan_addr_multicast.exit.do.body_crit_edge, label %vxlan_addr_multicast.exit.if.end4_crit_edge

vxlan_addr_multicast.exit.if.end4_crit_edge:      ; preds = %vxlan_addr_multicast.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

vxlan_addr_multicast.exit.do.body_crit_edge:      ; preds = %vxlan_addr_multicast.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %vxlan_addr_multicast.exit.do.body_crit_edge, %if.then.i.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_nve_vxlan_can_offload.__msg) #6
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %vxlan_addr_multicast.exit.if.end4_crit_edge, %if.then.i.if.end4_crit_edge
  %saddr = getelementptr i8, ptr %1, i32 13768
  %8 = ptrtoint ptr %saddr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %saddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %9)
  %cmp.i126 = icmp eq i16 %9, 10
  br i1 %cmp.i126, label %if.then.i128, label %if.else.i130

if.then.i128:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %sin6_addr.i127 = getelementptr i8, ptr %1, i32 13776
  %10 = ptrtoint ptr %sin6_addr.i127 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sin6_addr.i127, align 4
  %arrayidx2.i.i = getelementptr i8, ptr %1, i32 13780
  %12 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %13, %11
  %arrayidx4.i.i = getelementptr i8, ptr %1, i32 13784
  %14 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i.i, align 4
  %or5.i.i = or i32 %or.i.i, %15
  %arrayidx7.i.i = getelementptr i8, ptr %1, i32 13788
  %16 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx7.i.i, align 4
  %or8.i.i = or i32 %or5.i.i, %17
  br label %vxlan_addr_any.exit

if.else.i130:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %sin_addr.i129 = getelementptr i8, ptr %1, i32 13772
  %18 = ptrtoint ptr %sin_addr.i129 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sin_addr.i129, align 4
  br label %vxlan_addr_any.exit

vxlan_addr_any.exit:                              ; preds = %if.else.i130, %if.then.i128
  %retval.0.in.i = phi i32 [ %or8.i.i, %if.then.i128 ], [ %19, %if.else.i130 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.i)
  %retval.0.i131 = icmp eq i32 %retval.0.in.i, 0
  br i1 %retval.0.i131, label %do.body7, label %if.end15

do.body7:                                         ; preds = %vxlan_addr_any.exit
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_nve_vxlan_can_offload.__msg.38) #6
  %tobool9.not = icmp eq ptr %extack, null
  br i1 %tobool9.not, label %do.body7.cleanup_crit_edge, label %do.body7.cleanup.sink.split_crit_edge

do.body7.cleanup.sink.split_crit_edge:            ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %vxlan_addr_any.exit
  %remote_ifindex = getelementptr i8, ptr %1, i32 13800
  %20 = ptrtoint ptr %remote_ifindex to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %remote_ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool16.not = icmp eq i32 %21, 0
  br i1 %tobool16.not, label %if.end26, label %do.body18

do.body18:                                        ; preds = %if.end15
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_nve_vxlan_can_offload.__msg.39) #6
  %tobool20.not = icmp eq ptr %extack, null
  br i1 %tobool20.not, label %do.body18.cleanup_crit_edge, label %do.body18.cleanup.sink.split_crit_edge

do.body18.cleanup.sink.split_crit_edge:           ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end15
  %port_min = getelementptr i8, ptr %1, i32 13810
  %22 = ptrtoint ptr %port_min to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %port_min, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool27.not = icmp eq i16 %23, 0
  br i1 %tobool27.not, label %lor.lhs.false, label %if.end26.do.body31_crit_edge

if.end26.do.body31_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31

lor.lhs.false:                                    ; preds = %if.end26
  %port_max = getelementptr i8, ptr %1, i32 13812
  %24 = ptrtoint ptr %port_max to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %port_max, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool29.not = icmp eq i16 %25, 0
  br i1 %tobool29.not, label %if.end39, label %lor.lhs.false.do.body31_crit_edge

lor.lhs.false.do.body31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31

do.body31:                                        ; preds = %lor.lhs.false.do.body31_crit_edge, %if.end26.do.body31_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_nve_vxlan_can_offload.__msg.40) #6
  %tobool33.not = icmp eq ptr %extack, null
  br i1 %tobool33.not, label %do.body31.cleanup_crit_edge, label %do.body31.cleanup.sink.split_crit_edge

do.body31.cleanup.sink.split_crit_edge:           ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body31.cleanup_crit_edge:                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %lor.lhs.false
  %tos = getelementptr i8, ptr %1, i32 13814
  %26 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tos, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp.not = icmp eq i8 %27, 1
  br i1 %cmp.not, label %if.end51, label %do.body43

do.body43:                                        ; preds = %if.end39
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_nve_vxlan_can_offload.__msg.41) #6
  %tobool45.not = icmp eq ptr %extack, null
  br i1 %tobool45.not, label %do.body43.cleanup_crit_edge, label %do.body43.cleanup.sink.split_crit_edge

do.body43.cleanup.sink.split_crit_edge:           ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %if.end39
  %flags = getelementptr i8, ptr %1, i32 13820
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %and = and i32 %29, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool52.not = icmp eq i32 %and, 0
  br i1 %tobool52.not, label %if.end62, label %do.body54

do.body54:                                        ; preds = %if.end51
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_nve_vxlan_can_offload.__msg.42) #6
  %tobool56.not = icmp eq ptr %extack, null
  br i1 %tobool56.not, label %do.body54.cleanup_crit_edge, label %do.body54.cleanup.sink.split_crit_edge

do.body54.cleanup.sink.split_crit_edge:           ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body54.cleanup_crit_edge:                      ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end62:                                         ; preds = %if.end51
  %30 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.79)
  switch i16 %9, label %if.end62.sw.epilog_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb68
  ]

if.end62.sw.epilog_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end62
  %call65 = tail call fastcc zeroext i1 @mlxsw_sp_nve_vxlan_ipv4_flags_check(ptr noundef %cfg1, ptr noundef %extack)
  br i1 %call65, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end62
  %call69 = tail call fastcc zeroext i1 @mlxsw_sp_nve_vxlan_ipv6_flags_check(ptr noundef %cfg1, ptr noundef %extack)
  br i1 %call69, label %sw.bb68.sw.epilog_crit_edge, label %sw.bb68.cleanup_crit_edge

sw.bb68.cleanup_crit_edge:                        ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb68.sw.epilog_crit_edge:                      ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb68.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end62.sw.epilog_crit_edge
  %ttl = getelementptr i8, ptr %1, i32 13815
  %31 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ttl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp73 = icmp eq i8 %32, 0
  br i1 %cmp73, label %do.body76, label %if.end84

do.body76:                                        ; preds = %sw.epilog
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_nve_vxlan_can_offload.__msg.43) #6
  %tobool78.not = icmp eq ptr %extack, null
  br i1 %tobool78.not, label %do.body76.cleanup_crit_edge, label %do.body76.cleanup.sink.split_crit_edge

do.body76.cleanup.sink.split_crit_edge:           ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body76.cleanup_crit_edge:                      ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end84:                                         ; preds = %sw.epilog
  %label = getelementptr i8, ptr %1, i32 13816
  %33 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %label, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp85.not = icmp eq i32 %34, 0
  br i1 %cmp85.not, label %if.end84.cleanup_crit_edge, label %do.body88

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body88:                                        ; preds = %if.end84
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_nve_vxlan_can_offload.__msg.44) #6
  %tobool90.not = icmp eq ptr %extack, null
  br i1 %tobool90.not, label %do.body88.cleanup_crit_edge, label %do.body88.cleanup.sink.split_crit_edge

do.body88.cleanup.sink.split_crit_edge:           ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body88.cleanup_crit_edge:                      ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body88.cleanup.sink.split_crit_edge, %do.body76.cleanup.sink.split_crit_edge, %do.body54.cleanup.sink.split_crit_edge, %do.body43.cleanup.sink.split_crit_edge, %do.body31.cleanup.sink.split_crit_edge, %do.body18.cleanup.sink.split_crit_edge, %do.body7.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %mlxsw_sp_nve_vxlan_can_offload.__msg.44.sink = phi ptr [ @mlxsw_sp_nve_vxlan_can_offload.__msg, %do.body.cleanup.sink.split_crit_edge ], [ @mlxsw_sp_nve_vxlan_can_offload.__msg.38, %do.body7.cleanup.sink.split_crit_edge ], [ @mlxsw_sp_nve_vxlan_can_offload.__msg.39, %do.body18.cleanup.sink.split_crit_edge ], [ @mlxsw_sp_nve_vxlan_can_offload.__msg.40, %do.body31.cleanup.sink.split_crit_edge ], [ @mlxsw_sp_nve_vxlan_can_offload.__msg.41, %do.body43.cleanup.sink.split_crit_edge ], [ @mlxsw_sp_nve_vxlan_can_offload.__msg.42, %do.body54.cleanup.sink.split_crit_edge ], [ @mlxsw_sp_nve_vxlan_can_offload.__msg.43, %do.body76.cleanup.sink.split_crit_edge ], [ @mlxsw_sp_nve_vxlan_can_offload.__msg.44, %do.body88.cleanup.sink.split_crit_edge ]
  %35 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %mlxsw_sp_nve_vxlan_can_offload.__msg.44.sink, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body88.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %do.body76.cleanup_crit_edge, %sw.bb68.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %do.body54.cleanup_crit_edge, %do.body43.cleanup_crit_edge, %do.body31.cleanup_crit_edge, %do.body18.cleanup_crit_edge, %do.body7.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.body.cleanup_crit_edge ], [ false, %do.body7.cleanup_crit_edge ], [ false, %do.body18.cleanup_crit_edge ], [ false, %do.body31.cleanup_crit_edge ], [ false, %do.body43.cleanup_crit_edge ], [ false, %do.body54.cleanup_crit_edge ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %sw.bb68.cleanup_crit_edge ], [ false, %do.body76.cleanup_crit_edge ], [ false, %do.body88.cleanup_crit_edge ], [ true, %if.end84.cleanup_crit_edge ], [ false, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_nve_vxlan_init(ptr nocapture noundef readonly %nve, ptr noundef %config) #0 align 64 {
entry:
  %spvtr_pl.i71 = alloca [16 x i8], align 1
  %tngcr_pl.i72 = alloca [68 x i8], align 1
  %rtdp_pl.i = alloca [68 x i8], align 1
  %spvid_pl.i.i = alloca [8 x i8], align 8
  %tngcr_pl.i = alloca [68 x i8], align 1
  %spvtr_pl.i = alloca [16 x i8], align 1
  %ul_rif_index.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %nve, i32 0, i32 4
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 4
  %udp_dport = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 3
  %2 = ptrtoint ptr %udp_dport to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %udp_dport, align 2
  %call = tail call i32 @mlxsw_sp_parsing_vxlan_udp_dport_set(ptr noundef %1, i16 noundef zeroext %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @mlxsw_sp_parsing_depth_inc(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_parsing_depth_inc_crit_edge

if.end.err_parsing_depth_inc_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_parsing_depth_inc

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tngcr_pl.i) #6
  %4 = call ptr @memset(ptr %tngcr_pl.i, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %spvtr_pl.i) #6
  %5 = call ptr @memset(ptr %spvtr_pl.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ul_rif_index.i) #6
  %6 = ptrtoint ptr %ul_rif_index.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %ul_rif_index.i, align 2, !annotation !154
  %ul_tb_id.i = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 5
  %7 = ptrtoint ptr %ul_tb_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ul_tb_id.i, align 4
  %call.i = call i32 @mlxsw_sp_router_ul_rif_get(ptr noundef %1, i32 noundef %8, ptr noundef nonnull %ul_rif_index.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.mlxsw_sp2_nve_vxlan_config_set.exit.thread_crit_edge

if.end5.mlxsw_sp2_nve_vxlan_config_set.exit.thread_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxsw_sp2_nve_vxlan_config_set.exit.thread

if.end.i:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %ul_rif_index.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ul_rif_index.i, align 2
  %nve.i = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %nve.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nve.i, align 4
  %ul_rif_index1.i = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %ul_rif_index1.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %10, ptr %ul_rif_index1.i, align 4
  %learning_en.i = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 2
  %14 = ptrtoint ptr %learning_en.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %learning_en.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool2.i = icmp slt i8 %bf.load.i, 0
  %call3.i = call fastcc zeroext i1 @mlxsw_sp2_nve_vxlan_learning_set(ptr noundef %1, i1 noundef zeroext %tobool2.i) #6
  br i1 %call3.i, label %if.end.i.err_vxlan_learning_set.i_crit_edge, label %if.end6.i

if.end.i.err_vxlan_learning_set.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_vxlan_learning_set.i

if.end6.i:                                        ; preds = %if.end.i
  call fastcc void @mlxsw_sp_nve_vxlan_config_prepare(ptr noundef nonnull %tngcr_pl.i, ptr noundef %config) #6
  %15 = ptrtoint ptr %ul_rif_index.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ul_rif_index.i, align 2
  %conv8.i = zext i16 %16 to i32
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %tngcr_pl.i, i32 9
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %18, -65536
  %or.i.i.i = or i32 %and7.i.i.i, %conv8.i
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core.i, align 4
  %call10.i = call i32 @mlxsw_reg_write(ptr noundef %20, ptr noundef nonnull @mlxsw_reg_tngcr, ptr noundef nonnull %tngcr_pl.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end6.i.err_tngcr_write.i_crit_edge

if.end6.i.err_tngcr_write.i_crit_edge:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_tngcr_write.i

if.end13.i:                                       ; preds = %if.end6.i
  call fastcc void @mlxsw_reg_spvtr_pack(ptr noundef nonnull %spvtr_pl.i, i32 noundef 2) #6
  %21 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %core.i, align 4
  %call17.i = call i32 @mlxsw_reg_write(ptr noundef %22, ptr noundef nonnull @mlxsw_reg_spvtr, ptr noundef nonnull %spvtr_pl.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end13.i.err_spvtr_write.i_crit_edge

if.end13.i.err_spvtr_write.i_crit_edge:           ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_spvtr_write.i

if.end20.i:                                       ; preds = %if.end13.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %spvid_pl.i.i) #6
  %23 = ptrtoint ptr %spvid_pl.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %spvid_pl.i.i, align 8
  store i32 16777216, ptr %spvid_pl.i.i, align 8
  %arrayidx.i.i51.i.i = getelementptr inbounds i32, ptr %spvid_pl.i.i, i32 1
  %24 = ptrtoint ptr %arrayidx.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i51.i.i, align 4
  %or.i.i54.i.i = or i32 %25, 16777216
  store i32 %or.i.i54.i.i, ptr %arrayidx.i.i51.i.i, align 4
  %26 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %core.i, align 4
  %call.i.i = call i32 @mlxsw_reg_write(ptr noundef %27, ptr noundef nonnull @mlxsw_reg_spvid, ptr noundef nonnull %spvid_pl.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %spvid_pl.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool22.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool22.not.i, label %if.end9, label %err_decap_ethertype_set.i

err_decap_ethertype_set.i:                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @mlxsw_reg_spvtr_pack(ptr noundef nonnull %spvtr_pl.i, i32 noundef 0) #6
  %28 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core.i, align 4
  %call28.i = call i32 @mlxsw_reg_write(ptr noundef %29, ptr noundef nonnull @mlxsw_reg_spvtr, ptr noundef nonnull %spvtr_pl.i) #6
  br label %err_spvtr_write.i

err_spvtr_write.i:                                ; preds = %err_decap_ethertype_set.i, %if.end13.i.err_spvtr_write.i_crit_edge
  %err.0.i = phi i32 [ %call17.i, %if.end13.i.err_spvtr_write.i_crit_edge ], [ %call.i.i, %err_decap_ethertype_set.i ]
  call fastcc void @mlxsw_reg_tngcr_pack(ptr noundef nonnull %tngcr_pl.i, i1 noundef zeroext false, i8 noundef zeroext 0) #6
  %30 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %core.i, align 4
  %call32.i = call i32 @mlxsw_reg_write(ptr noundef %31, ptr noundef nonnull @mlxsw_reg_tngcr, ptr noundef nonnull %tngcr_pl.i) #6
  br label %err_tngcr_write.i

err_tngcr_write.i:                                ; preds = %err_spvtr_write.i, %if.end6.i.err_tngcr_write.i_crit_edge
  %err.1.i = phi i32 [ %call10.i, %if.end6.i.err_tngcr_write.i_crit_edge ], [ %err.0.i, %err_spvtr_write.i ]
  %call33.i = call fastcc zeroext i1 @mlxsw_sp2_nve_vxlan_learning_set(ptr noundef %1, i1 noundef zeroext false) #6
  br label %err_vxlan_learning_set.i

err_vxlan_learning_set.i:                         ; preds = %err_tngcr_write.i, %if.end.i.err_vxlan_learning_set.i_crit_edge
  %err.2.i = phi i32 [ 1, %if.end.i.err_vxlan_learning_set.i_crit_edge ], [ %err.1.i, %err_tngcr_write.i ]
  %32 = ptrtoint ptr %ul_rif_index.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ul_rif_index.i, align 2
  call void @mlxsw_sp_router_ul_rif_put(ptr noundef %1, i16 noundef zeroext %33) #6
  br label %mlxsw_sp2_nve_vxlan_config_set.exit.thread

mlxsw_sp2_nve_vxlan_config_set.exit.thread:       ; preds = %err_vxlan_learning_set.i, %if.end5.mlxsw_sp2_nve_vxlan_config_set.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.end5.mlxsw_sp2_nve_vxlan_config_set.exit.thread_crit_edge ], [ %err.2.i, %err_vxlan_learning_set.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ul_rif_index.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %spvtr_pl.i) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tngcr_pl.i) #6
  br label %err_config_set

if.end9:                                          ; preds = %if.end20.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ul_rif_index.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %spvtr_pl.i) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tngcr_pl.i) #6
  %tunnel_index = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %nve, i32 0, i32 8
  %34 = ptrtoint ptr %tunnel_index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tunnel_index, align 4
  %ul_rif_index = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %nve, i32 0, i32 9
  %36 = ptrtoint ptr %ul_rif_index to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ul_rif_index, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %rtdp_pl.i) #6
  %38 = call ptr @memset(ptr %rtdp_pl.i, i32 255, i32 68)
  call fastcc void @mlxsw_reg_rtdp_pack(ptr noundef nonnull %rtdp_pl.i, i32 noundef %35) #6
  %conv.i = zext i16 %37 to i32
  %arrayidx.i.i.i65 = getelementptr inbounds i32, ptr %rtdp_pl.i, i32 16
  %39 = ptrtoint ptr %arrayidx.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i.i65, align 4
  %and7.i.i.i67 = and i32 %40, -65536
  %or.i.i.i68 = or i32 %and7.i.i.i67, %conv.i
  store i32 %or.i.i.i68, ptr %arrayidx.i.i.i65, align 4
  %41 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %core.i, align 4
  %call.i70 = call i32 @mlxsw_reg_write(ptr noundef %42, ptr noundef nonnull @mlxsw_reg_rtdp, ptr noundef nonnull %rtdp_pl.i) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %rtdp_pl.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool11.not = icmp eq i32 %call.i70, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.err_rtdp_set_crit_edge

if.end9.err_rtdp_set_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_rtdp_set

if.end13:                                         ; preds = %if.end9
  %43 = ptrtoint ptr %ul_tb_id.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ul_tb_id.i, align 4
  %ul_proto = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 6
  %45 = ptrtoint ptr %ul_proto to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ul_proto, align 4
  %ul_sip = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 7
  %47 = ptrtoint ptr %tunnel_index to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tunnel_index, align 4
  %call15 = call i32 @mlxsw_sp_router_nve_promote_decap(ptr noundef %1, i32 noundef %44, i32 noundef %46, ptr noundef %ul_sip, i32 noundef %48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.end13.err_rtdp_set_crit_edge

if.end13.err_rtdp_set_crit_edge:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_rtdp_set

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_rtdp_set:                                     ; preds = %if.end13.err_rtdp_set_crit_edge, %if.end9.err_rtdp_set_crit_edge
  %err.0 = phi i32 [ %call.i70, %if.end9.err_rtdp_set_crit_edge ], [ %call15, %if.end13.err_rtdp_set_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %spvtr_pl.i71) #6
  %49 = call ptr @memset(ptr %spvtr_pl.i71, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tngcr_pl.i72) #6
  %50 = call ptr @memset(ptr %tngcr_pl.i72, i32 255, i32 68)
  call fastcc void @mlxsw_reg_spvtr_pack(ptr noundef nonnull %spvtr_pl.i71, i32 noundef 0) #6
  %51 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %core.i, align 4
  %call.i74 = call i32 @mlxsw_reg_write(ptr noundef %52, ptr noundef nonnull @mlxsw_reg_spvtr, ptr noundef nonnull %spvtr_pl.i71) #6
  call fastcc void @mlxsw_reg_tngcr_pack(ptr noundef nonnull %tngcr_pl.i72, i1 noundef zeroext false, i8 noundef zeroext 0) #6
  %53 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %core.i, align 4
  %call5.i = call i32 @mlxsw_reg_write(ptr noundef %54, ptr noundef nonnull @mlxsw_reg_tngcr, ptr noundef nonnull %tngcr_pl.i72) #6
  %call6.i = call fastcc zeroext i1 @mlxsw_sp2_nve_vxlan_learning_set(ptr noundef %1, i1 noundef zeroext false) #6
  %55 = ptrtoint ptr %nve.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %nve.i, align 4
  %ul_rif_index.i76 = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %ul_rif_index.i76 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ul_rif_index.i76, align 4
  call void @mlxsw_sp_router_ul_rif_put(ptr noundef %1, i16 noundef zeroext %58) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tngcr_pl.i72) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %spvtr_pl.i71) #6
  br label %err_config_set

err_config_set:                                   ; preds = %err_rtdp_set, %mlxsw_sp2_nve_vxlan_config_set.exit.thread
  %err.1 = phi i32 [ %err.0, %err_rtdp_set ], [ %retval.0.i.ph, %mlxsw_sp2_nve_vxlan_config_set.exit.thread ]
  call void @mlxsw_sp_parsing_depth_dec(ptr noundef %1) #6
  br label %err_parsing_depth_inc

err_parsing_depth_inc:                            ; preds = %err_config_set, %if.end.err_parsing_depth_inc_crit_edge
  %err.2 = phi i32 [ %call2, %if.end.err_parsing_depth_inc_crit_edge ], [ %err.1, %err_config_set ]
  %call19 = call i32 @mlxsw_sp_parsing_vxlan_udp_dport_set(ptr noundef %1, i16 noundef zeroext 0) #6
  br label %cleanup

cleanup:                                          ; preds = %err_parsing_depth_inc, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_parsing_depth_inc ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_nve_vxlan_fini(ptr noundef %nve) #0 align 64 {
entry:
  %spvtr_pl.i = alloca [16 x i8], align 1
  %tngcr_pl.i = alloca [68 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp2 = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %nve, i32 0, i32 4
  %0 = ptrtoint ptr %mlxsw_sp2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp2, align 4
  %ul_tb_id = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %nve, i32 0, i32 5
  %2 = ptrtoint ptr %ul_tb_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ul_tb_id, align 4
  %ul_proto = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %nve, i32 0, i32 6
  %4 = ptrtoint ptr %ul_proto to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ul_proto, align 4
  %ul_sip = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %nve, i32 0, i32 7
  tail call void @mlxsw_sp_router_nve_demote_decap(ptr noundef %1, i32 noundef %3, i32 noundef %5, ptr noundef %ul_sip) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %spvtr_pl.i) #6
  %6 = call ptr @memset(ptr %spvtr_pl.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tngcr_pl.i) #6
  %7 = call ptr @memset(ptr %tngcr_pl.i, i32 255, i32 68)
  call fastcc void @mlxsw_reg_spvtr_pack(ptr noundef nonnull %spvtr_pl.i, i32 noundef 0) #6
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_write(ptr noundef %9, ptr noundef nonnull @mlxsw_reg_spvtr, ptr noundef nonnull %spvtr_pl.i) #6
  call fastcc void @mlxsw_reg_tngcr_pack(ptr noundef nonnull %tngcr_pl.i, i1 noundef zeroext false, i8 noundef zeroext 0) #6
  %10 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core.i, align 4
  %call5.i = call i32 @mlxsw_reg_write(ptr noundef %11, ptr noundef nonnull @mlxsw_reg_tngcr, ptr noundef nonnull %tngcr_pl.i) #6
  %call6.i = call fastcc zeroext i1 @mlxsw_sp2_nve_vxlan_learning_set(ptr noundef %1, i1 noundef zeroext false) #6
  %nve.i = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %nve.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nve.i, align 4
  %ul_rif_index.i = getelementptr inbounds %struct.mlxsw_sp_nve, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %ul_rif_index.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ul_rif_index.i, align 4
  call void @mlxsw_sp_router_ul_rif_put(ptr noundef %1, i16 noundef zeroext %15) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tngcr_pl.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %spvtr_pl.i) #6
  call void @mlxsw_sp_parsing_depth_dec(ptr noundef %1) #6
  %call = call i32 @mlxsw_sp_parsing_vxlan_udp_dport_set(ptr noundef %1, i16 noundef zeroext 0) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_parsing_vxlan_udp_dport_set(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_parsing_depth_inc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_router_nve_promote_decap(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_parsing_depth_dec(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_router_tb_id_vr_id(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_nve_vxlan_config_prepare(ptr nocapture noundef %tngcr_pl, ptr nocapture noundef readonly %config) unnamed_addr #0 align 64 {
entry:
  %addr6.sroa.0 = alloca [4 x i32], align 4
  %udp_sport = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr6.sroa.0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %udp_sport) #6
  %0 = ptrtoint ptr %udp_sport to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %udp_sport, align 1, !annotation !154
  %ttl = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 1
  %1 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ttl, align 4
  tail call fastcc void @mlxsw_reg_tngcr_pack(ptr noundef %tngcr_pl, i1 noundef zeroext true, i8 noundef zeroext %2)
  call void @get_random_bytes(ptr noundef nonnull %udp_sport, i32 noundef 1) #6
  %3 = ptrtoint ptr %udp_sport to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %udp_sport, align 1
  %5 = urem i8 %4, 111
  %6 = or i8 %5, -128
  store i8 %6, ptr %udp_sport, align 1
  %conv2 = zext i8 %6 to i32
  %spec.select.i.i = shl nuw nsw i32 %conv2, 8
  %arrayidx.i.i = getelementptr i32, ptr %tngcr_pl, i32 4
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  %and7.i.i = and i32 %8, -65281
  %or.i.i = or i32 %spec.select.i.i, %and7.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %ul_proto = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 6
  %9 = ptrtoint ptr %ul_proto to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ul_proto, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %10, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ul_sip = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 7
  %12 = ptrtoint ptr %ul_sip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ul_sip, align 4
  %arrayidx.i.i35 = getelementptr i32, ptr %tngcr_pl, i32 10
  %14 = ptrtoint ptr %arrayidx.i.i35 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx.i.i35, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ul_sip4 = getelementptr inbounds %struct.mlxsw_sp_nve_config, ptr %config, i32 0, i32 7
  %15 = call ptr @memcpy(ptr %addr6.sroa.0, ptr %ul_sip4, i32 16)
  %arrayidx.i.i42 = getelementptr i8, ptr %tngcr_pl, i32 48
  %16 = call ptr @memcpy(ptr %arrayidx.i.i42, ptr %addr6.sroa.0, i32 16)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %udp_sport) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr6.sroa.0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_tngcr_pack(ptr nocapture noundef %payload, i1 noundef zeroext %valid, i8 noundef zeroext %ttl) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = call ptr @memset(ptr %payload, i32 0, i32 68)
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %2, -16
  store i32 %and7.i.i, ptr %payload, align 4
  %spec.select.i.i = select i1 %valid, i32 -2147483648, i32 0
  %arrayidx.i.i21 = getelementptr i32, ptr %payload, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i21 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i21, align 4
  %and7.i.i23 = and i32 %4, 2147483392
  %or.i.i = or i32 %spec.select.i.i, %and7.i.i23
  %conv2 = zext i8 %ttl to i32
  %arrayidx.i.i48 = getelementptr i32, ptr %payload, i32 1
  %or.i.i51 = or i32 %or.i.i, %conv2
  %5 = ptrtoint ptr %arrayidx.i.i48 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i.i51, ptr %arrayidx.i.i48, align 4
  %arrayidx.i.i76 = getelementptr i32, ptr %payload, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i76 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i76, align 4
  %and7.i.i78 = and i32 %7, -256
  %or.i.i79 = or i32 %and7.i.i78, %conv2
  store i32 %or.i.i79, ptr %arrayidx.i.i76, align 4
  %arrayidx.i.i100 = getelementptr i32, ptr %payload, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i100 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i100, align 4
  %arrayidx.i.i123 = getelementptr i32, ptr %payload, i32 3
  %and7.i.i125 = and i32 %9, -50331649
  %10 = ptrtoint ptr %arrayidx.i.i123 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and7.i.i125, ptr %arrayidx.i.i123, align 4
  %arrayidx.i.i149 = getelementptr i32, ptr %payload, i32 4
  %11 = ptrtoint ptr %arrayidx.i.i149 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i149, align 4
  %arrayidx.i.i175 = getelementptr i32, ptr %payload, i32 4
  %or.i.i152 = and i32 %12, -16842497
  %and7.i.i177 = or i32 %or.i.i152, 16777216
  %13 = ptrtoint ptr %arrayidx.i.i175 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and7.i.i177, ptr %arrayidx.i.i175, align 4
  %arrayidx.i.i202 = getelementptr i32, ptr %payload, i32 6
  %14 = ptrtoint ptr %arrayidx.i.i202 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i202, align 4
  %and7.i.i204 = and i32 %15, -256
  %or.i.i205 = or i32 %and7.i.i204, 1
  store i32 %or.i.i205, ptr %arrayidx.i.i202, align 4
  %arrayidx.i.i230 = getelementptr i32, ptr %payload, i32 7
  %16 = ptrtoint ptr %arrayidx.i.i230 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i230, align 4
  %and7.i.i232 = and i32 %17, -256
  %or.i.i233 = or i32 %and7.i.i232, 1
  store i32 %or.i.i233, ptr %arrayidx.i.i230, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_rtdp_pack(ptr nocapture noundef %payload, i32 noundef %tunnel_index) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = call ptr @memset(ptr %payload, i32 0, i32 68)
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and6.i.i = and i32 %tunnel_index, 16777215
  %and7.i.i23 = and i32 %2, 251658240
  %or.i.i = or i32 %and6.i.i, %and7.i.i23
  store i32 %or.i.i, ptr %payload, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_router_nve_demote_decap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vxlan_fdb_replay(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vxlan_fdb_clear_offload(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mlxsw_sp_nve_vxlan_ipv4_flags_check(ptr nocapture noundef readonly %cfg, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.vxlan_config, ptr %cfg, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end3

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_nve_vxlan_ipv4_flags_check.__msg) #6
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.return_crit_edge, label %do.body.return.sink.split_crit_edge

do.body.return.sink.split_crit_edge:              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end3:                                          ; preds = %entry
  %and5 = and i32 %1, -66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end3.return_crit_edge, label %do.body8

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body8:                                         ; preds = %if.end3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_nve_vxlan_ipv4_flags_check.__msg.45) #6
  %tobool10.not = icmp eq ptr %extack, null
  br i1 %tobool10.not, label %do.body8.return_crit_edge, label %do.body8.return.sink.split_crit_edge

do.body8.return.sink.split_crit_edge:             ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

do.body8.return_crit_edge:                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return.sink.split:                                ; preds = %do.body8.return.sink.split_crit_edge, %do.body.return.sink.split_crit_edge
  %mlxsw_sp_nve_vxlan_ipv4_flags_check.__msg.45.sink = phi ptr [ @mlxsw_sp_nve_vxlan_ipv4_flags_check.__msg, %do.body.return.sink.split_crit_edge ], [ @mlxsw_sp_nve_vxlan_ipv4_flags_check.__msg.45, %do.body8.return.sink.split_crit_edge ]
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mlxsw_sp_nve_vxlan_ipv4_flags_check.__msg.45.sink, ptr %extack, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %do.body8.return_crit_edge, %if.end3.return_crit_edge, %do.body.return_crit_edge
  %retval.0 = phi i1 [ false, %do.body.return_crit_edge ], [ false, %do.body8.return_crit_edge ], [ true, %if.end3.return_crit_edge ], [ false, %return.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mlxsw_sp_nve_vxlan_ipv6_flags_check(ptr nocapture noundef readonly %cfg, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.vxlan_config, ptr %cfg, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end3

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_nve_vxlan_ipv6_flags_check.__msg) #6
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.return_crit_edge, label %do.body.return.sink.split_crit_edge

do.body.return.sink.split_crit_edge:              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end3:                                          ; preds = %entry
  %and5 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.body8, label %if.end15

do.body8:                                         ; preds = %if.end3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_nve_vxlan_ipv6_flags_check.__msg.46) #6
  %tobool10.not = icmp eq ptr %extack, null
  br i1 %tobool10.not, label %do.body8.return_crit_edge, label %do.body8.return.sink.split_crit_edge

do.body8.return.sink.split_crit_edge:             ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

do.body8.return_crit_edge:                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end15:                                         ; preds = %if.end3
  %and17 = and i32 %1, -417
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.return_crit_edge, label %do.body20

if.end15.return_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body20:                                        ; preds = %if.end15
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_nve_vxlan_ipv6_flags_check.__msg.47) #6
  %tobool22.not = icmp eq ptr %extack, null
  br i1 %tobool22.not, label %do.body20.return_crit_edge, label %do.body20.return.sink.split_crit_edge

do.body20.return.sink.split_crit_edge:            ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

do.body20.return_crit_edge:                       ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return.sink.split:                                ; preds = %do.body20.return.sink.split_crit_edge, %do.body8.return.sink.split_crit_edge, %do.body.return.sink.split_crit_edge
  %mlxsw_sp_nve_vxlan_ipv6_flags_check.__msg.47.sink = phi ptr [ @mlxsw_sp_nve_vxlan_ipv6_flags_check.__msg, %do.body.return.sink.split_crit_edge ], [ @mlxsw_sp_nve_vxlan_ipv6_flags_check.__msg.46, %do.body8.return.sink.split_crit_edge ], [ @mlxsw_sp_nve_vxlan_ipv6_flags_check.__msg.47, %do.body20.return.sink.split_crit_edge ]
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mlxsw_sp_nve_vxlan_ipv6_flags_check.__msg.47.sink, ptr %extack, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %do.body20.return_crit_edge, %if.end15.return_crit_edge, %do.body8.return_crit_edge, %do.body.return_crit_edge
  %retval.0 = phi i1 [ false, %do.body.return_crit_edge ], [ false, %do.body8.return_crit_edge ], [ false, %do.body20.return_crit_edge ], [ true, %if.end15.return_crit_edge ], [ false, %return.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_router_ul_rif_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mlxsw_sp2_nve_vxlan_learning_set(ptr nocapture noundef readonly %mlxsw_sp, i1 noundef zeroext %learning_en) unnamed_addr #0 align 64 {
entry:
  %tnpc_pl = alloca [24 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tnpc_pl) #6
  %0 = call ptr @memset(ptr %tnpc_pl, i32 0, i32 24)
  %1 = ptrtoint ptr %tnpc_pl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tnpc_pl, align 4
  %and7.i.i.i = and i32 %2, -16
  store i32 %and7.i.i.i, ptr %tnpc_pl, align 4
  %conv1.i = zext i1 %learning_en to i32
  %arrayidx.i.i21.i = getelementptr inbounds i32, ptr %tnpc_pl, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i21.i, align 4
  %and7.i.i23.i = and i32 %4, -4
  %or.i.i.i = or i32 %and7.i.i23.i, %conv1.i
  %spec.select.i.i42.i = select i1 %learning_en, i32 2, i32 0
  %arrayidx.i.i48.i = getelementptr inbounds i32, ptr %tnpc_pl, i32 1
  %or.i.i51.i = or i32 %spec.select.i.i42.i, %or.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i48.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i.i51.i, ptr %arrayidx.i.i48.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %7, ptr noundef nonnull @mlxsw_reg_tnpc, ptr noundef nonnull %tnpc_pl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2 = icmp ne i32 %call, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tnpc_pl) #6
  ret i1 %tobool2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_spvtr_pack(ptr nocapture noundef %payload, i32 noundef %ipvid_mode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = call ptr @memset(ptr %payload, i32 0, i32 16)
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %or.i.i = and i32 %2, -33501185
  %and7.i25.i = or i32 %or.i.i, 16777216
  store i32 %and7.i25.i, ptr %payload, align 4
  %spec.select.i.i41 = shl i32 %ipvid_mode, 16
  %and6.i.i46 = and i32 %spec.select.i.i41, 983040
  %arrayidx.i.i47 = getelementptr i32, ptr %payload, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i47 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i47, align 4
  %and7.i.i49 = and i32 %4, -1074724865
  %or.i.i50 = or i32 %and6.i.i46, %and7.i.i49
  %arrayidx.i.i76 = getelementptr i32, ptr %payload, i32 1
  %or.i.i79 = or i32 %or.i.i50, 1073741824
  %5 = ptrtoint ptr %arrayidx.i.i76 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i.i79, ptr %arrayidx.i.i76, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_router_ul_rif_put(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !135, !136, !138, !139, !141, !142, !144}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @mlxsw_sp1_nve_vxlan_ops, !1, !"mlxsw_sp1_nve_vxlan_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve_vxlan.c", i32 301, i32 31}
!2 = !{ptr @mlxsw_sp2_nve_vxlan_ops, !3, !"mlxsw_sp2_nve_vxlan_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve_vxlan.c", i32 465, i32 31}
!4 = !{ptr @mlxsw_sp1_nve_vxlan_can_offload.__msg, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve_vxlan.c", i32 122, i32 3}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__mlxsw_item_offset._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @__mlxsw_item_offset._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11525, i32 1}
!14 = distinct !{null, !13, !"mlxsw_reg_tngcr_type_item", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11531, i32 1}
!17 = distinct !{null, !16, !"mlxsw_reg_tngcr_nve_valid_item", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11537, i32 1}
!20 = distinct !{null, !19, !"mlxsw_reg_tngcr_nve_ttl_uc_item", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11543, i32 1}
!23 = distinct !{null, !22, !"mlxsw_reg_tngcr_nve_ttl_mc_item", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11559, i32 1}
!26 = distinct !{null, !25, !"mlxsw_reg_tngcr_nve_flc_item", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11576, i32 1}
!29 = distinct !{null, !28, !"mlxsw_reg_tngcr_nve_flh_item", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11606, i32 1}
!32 = distinct !{null, !31, !"mlxsw_reg_tngcr_nve_udp_sport_type_item", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11623, i32 1}
!35 = distinct !{null, !34, !"mlxsw_reg_tngcr_nve_group_size_mc_item", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11633, i32 1}
!38 = distinct !{null, !37, !"mlxsw_reg_tngcr_nve_group_size_flood_item", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11613, i32 1}
!41 = distinct !{null, !40, !"mlxsw_reg_tngcr_nve_udp_sport_prefix_item", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11660, i32 1}
!44 = distinct !{null, !43, !"mlxsw_reg_tngcr_usipv4_item", i1 false, i1 false}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11667, i32 1}
!47 = distinct !{null, !46, !"mlxsw_reg_tngcr_usipv6_item", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11640, i32 1}
!50 = distinct !{null, !49, !"mlxsw_reg_tngcr_learn_enable_item", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11647, i32 1}
!53 = distinct !{null, !52, !"mlxsw_reg_tngcr_underlay_virtual_router_item", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11510, i32 1}
!56 = !{ptr @mlxsw_reg_tngcr, !55, !"mlxsw_reg_tngcr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8186, i32 1}
!59 = distinct !{null, !58, !"mlxsw_reg_rtdp_type_item", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8193, i32 1}
!62 = distinct !{null, !61, !"mlxsw_reg_rtdp_tunnel_index_item", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8175, i32 1}
!65 = !{ptr @mlxsw_reg_rtdp, !64, !"mlxsw_reg_rtdp", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve_vxlan.c", i32 287, i32 6}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/net/vxlan.h", i32 420, i32 43}
!70 = !{ptr @mlxsw_sp_nve_vxlan_can_offload.__msg, !71, !"__msg", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve_vxlan.c", i32 64, i32 3}
!72 = !{ptr @mlxsw_sp_nve_vxlan_can_offload.__msg.38, !73, !"__msg", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve_vxlan.c", i32 69, i32 3}
!74 = !{ptr @mlxsw_sp_nve_vxlan_can_offload.__msg.39, !75, !"__msg", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve_vxlan.c", i32 74, i32 3}
!76 = !{ptr @mlxsw_sp_nve_vxlan_can_offload.__msg.40, !77, !"__msg", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve_vxlan.c", i32 79, i32 3}
!78 = !{ptr @mlxsw_sp_nve_vxlan_can_offload.__msg.41, !79, !"__msg", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve_vxlan.c", i32 84, i32 3}
!80 = !{ptr @mlxsw_sp_nve_vxlan_can_offload.__msg.42, !81, !"__msg", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve_vxlan.c", i32 89, i32 3}
!82 = !{ptr @mlxsw_sp_nve_vxlan_can_offload.__msg.43, !83, !"__msg", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve_vxlan.c", i32 105, i32 3}
!84 = !{ptr @mlxsw_sp_nve_vxlan_can_offload.__msg.44, !85, !"__msg", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve_vxlan.c", i32 110, i32 3}
!86 = !{ptr @mlxsw_sp_nve_vxlan_ipv4_flags_check.__msg, !87, !"__msg", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve_vxlan.c", i32 23, i32 3}
!88 = !{ptr @mlxsw_sp_nve_vxlan_ipv4_flags_check.__msg.45, !89, !"__msg", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve_vxlan.c", i32 28, i32 3}
!90 = !{ptr @mlxsw_sp_nve_vxlan_ipv6_flags_check.__msg, !91, !"__msg", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve_vxlan.c", i32 39, i32 3}
!92 = !{ptr @mlxsw_sp_nve_vxlan_ipv6_flags_check.__msg.46, !93, !"__msg", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve_vxlan.c", i32 44, i32 3}
!94 = !{ptr @mlxsw_sp_nve_vxlan_ipv6_flags_check.__msg.47, !95, !"__msg", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_nve_vxlan.c", i32 49, i32 3}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11924, i32 1}
!98 = distinct !{null, !97, !"mlxsw_reg_tnpc_tunnel_port_item", i1 false, i1 false}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11936, i32 1}
!101 = distinct !{null, !100, !"mlxsw_reg_tnpc_learn_enable_v4_item", i1 false, i1 false}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11930, i32 1}
!104 = distinct !{null, !103, !"mlxsw_reg_tnpc_learn_enable_v6_item", i1 false, i1 false}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11918, i32 1}
!107 = !{ptr @mlxsw_reg_tnpc, !106, !"mlxsw_reg_tnpc", i1 false, i1 false}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11654, i32 1}
!110 = distinct !{null, !109, !"mlxsw_reg_tngcr_underlay_rif_item", i1 false, i1 false}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1619, i32 1}
!113 = distinct !{null, !112, !"mlxsw_reg_spvtr_tport_item", i1 false, i1 false}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1626, i32 1}
!116 = distinct !{null, !115, !"mlxsw_reg_spvtr_local_port_item", i1 false, i1 false}
!117 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!118 = distinct !{null, !115, !"mlxsw_reg_spvtr_lp_msb_item", i1 false, i1 false}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1679, i32 1}
!121 = distinct !{null, !120, !"mlxsw_reg_spvtr_ipvid_mode_item", i1 false, i1 false}
!122 = !{ptr @.str.65, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1643, i32 1}
!124 = distinct !{null, !123, !"mlxsw_reg_spvtr_ipve_item", i1 false, i1 false}
!125 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1611, i32 1}
!127 = !{ptr @mlxsw_reg_spvtr, !126, !"mlxsw_reg_spvtr", i1 false, i1 false}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 789, i32 1}
!130 = distinct !{null, !129, !"mlxsw_reg_spvid_tport_item", i1 false, i1 false}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 796, i32 1}
!133 = distinct !{null, !132, !"mlxsw_reg_spvid_local_port_item", i1 false, i1 false}
!134 = !{ptr @.str.72, !132, !"<string literal>", i1 false, i1 false}
!135 = distinct !{null, !132, !"mlxsw_reg_spvid_lp_msb_item", i1 false, i1 false}
!136 = !{ptr @.str.74, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 811, i32 1}
!138 = distinct !{null, !137, !"mlxsw_reg_spvid_egr_et_set_item", i1 false, i1 false}
!139 = !{ptr @.str.76, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 782, i32 1}
!141 = !{ptr @mlxsw_reg_spvid, !140, !"mlxsw_reg_spvid", i1 false, i1 false}
!142 = !{ptr @.str.77, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8200, i32 1}
!144 = distinct !{null, !143, !"mlxsw_reg_rtdp_egress_router_interface_item", i1 false, i1 false}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{!"auto-init"}
!155 = !{!"branch_weights", i32 1073205, i32 2146410443}
!156 = !{!"branch_weights", i32 2000, i32 1}
