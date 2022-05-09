; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_ipip.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_ipip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_sp_ipip_ops = type { i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ip_tunnel_parm = type { [16 x i8], i32, i16, i16, i32, i32, %struct.iphdr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.__ip6_tnl_parm = type { [16 x i8], i32, i8, i8, i8, i8, i32, i32, %struct.in6_addr, %struct.in6_addr, i16, i16, i32, i32, i32, i32, i8, i8, i16 }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%union.mlxsw_sp_l3addr = type { %struct.in6_addr }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.160, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
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
%struct.mlxsw_sp_ipip_parms = type { i32, %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr, i32, i32, i32 }
%struct.mlxsw_sp_ipip_entry = type { i32, ptr, ptr, ptr, %struct.list_head, %struct.mlxsw_sp_ipip_parms, i32 }
%struct.mlxsw_sp_rif_ipip_lb_config = type { i32, i32, i32, %union.mlxsw_sp_l3addr }

@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_ipip.c\00", [44 x i8] zeroinitializer }, align 32
@__const.mlxsw_sp_l3addr_is_zero.naddr = private unnamed_addr constant { i32, [12 x i8] } { i32 0, [12 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 4
@mlxsw_sp_ipip_gre4_ops = internal constant { %struct.mlxsw_sp_ipip_ops, [52 x i8] } { %struct.mlxsw_sp_ipip_ops { i32 778, i32 0, i8 0, ptr @mlxsw_sp_ipip_netdev_parms_init_gre4, ptr @mlxsw_sp_ipip_nexthop_update_gre4, ptr @mlxsw_sp_ipip_can_offload_gre4, ptr @mlxsw_sp_ipip_ol_loopback_config_gre4, ptr @mlxsw_sp_ipip_decap_config_gre4, ptr @mlxsw_sp_ipip_ol_netdev_change_gre4, ptr @mlxsw_sp_ipip_rem_addr_set_gre4, ptr @mlxsw_sp_ipip_rem_addr_unset_gre4 }, [52 x i8] zeroinitializer }, align 32
@mlxsw_sp1_ipip_gre6_ops = internal constant { %struct.mlxsw_sp_ipip_ops, [52 x i8] } { %struct.mlxsw_sp_ipip_ops { i32 823, i32 1, i8 1, ptr @mlxsw_sp1_ipip_netdev_parms_init_gre6, ptr @mlxsw_sp1_ipip_nexthop_update_gre6, ptr @mlxsw_sp1_ipip_can_offload_gre6, ptr @mlxsw_sp1_ipip_ol_loopback_config_gre6, ptr @mlxsw_sp1_ipip_decap_config_gre6, ptr @mlxsw_sp1_ipip_ol_netdev_change_gre6, ptr @mlxsw_sp1_ipip_rem_addr_set_gre6, ptr @mlxsw_sp1_ipip_rem_addr_unset_gre6 }, [52 x i8] zeroinitializer }, align 32
@mlxsw_sp1_ipip_ops_arr = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mlxsw_sp_ipip_gre4_ops, ptr @mlxsw_sp1_ipip_gre6_ops], [24 x i8] zeroinitializer }, align 32
@mlxsw_sp2_ipip_gre6_ops = internal constant { %struct.mlxsw_sp_ipip_ops, [52 x i8] } { %struct.mlxsw_sp_ipip_ops { i32 823, i32 1, i8 1, ptr @mlxsw_sp2_ipip_netdev_parms_init_gre6, ptr @mlxsw_sp2_ipip_nexthop_update_gre6, ptr @mlxsw_sp2_ipip_can_offload_gre6, ptr @mlxsw_sp2_ipip_ol_loopback_config_gre6, ptr @mlxsw_sp2_ipip_decap_config_gre6, ptr @mlxsw_sp2_ipip_ol_netdev_change_gre6, ptr @mlxsw_sp2_ipip_rem_addr_set_gre6, ptr @mlxsw_sp2_ipip_rem_addr_unset_gre6 }, [52 x i8] zeroinitializer }, align 32
@mlxsw_sp2_ipip_ops_arr = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mlxsw_sp_ipip_gre4_ops, ptr @mlxsw_sp2_ipip_gre6_ops], [24 x i8] zeroinitializer }, align 32
@mlxsw_reg_ratr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -32760, i16 44, ptr @.str.20 }, [24 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 35, ptr null, ptr null }, align 1
@.str.1 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_ratr_op\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reg_ratr_v\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_ratr_type\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"reg_ratr_adjacency_index_low\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reg_ratr_adjacency_index_high\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"reg_ratr_egress_router_interface\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_ratr_ipip_type\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_ratr_ipip_ipv4_udip\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ratr\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_reg_rtdp = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -32736, i16 68, ptr @.str.39 }, [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_rtdp_type\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_rtdp_tunnel_index\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"reg_rtdp_egress_router_interface\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_rtdp_ipip_irif\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_rtdp_ipip_sip_check\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_rtdp_ipip_type_check\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg_rtdp_ipip_gre_key_check\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"reg_rtdp_ipip_expected_gre_key\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_rtdp_ipip_ipv4_usip\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtdp\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_sp1_ipip_netdev_parms_init_gre6.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp1_ipip_nexthop_update_gre6.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp1_ipip_ol_loopback_config_gre6.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp1_ipip_decap_config_gre6.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp1_ipip_ol_netdev_change_gre6.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp1_ipip_rem_addr_set_gre6.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp1_ipip_rem_addr_unset_gre6.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_ratr_ipip_ipv6_ptr\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg_rtdp_ipip_ipv6_usip_ptr\00", [36 x i8] zeroinitializer }, align 32
@mlxsw_reg_tieem = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -22510, i16 12, ptr @.str.48 }, [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_tieem_overlay_ecn\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_tieem_underlay_ecn\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tieem\00", [26 x i8] zeroinitializer }, align 32
@mlxsw_reg_tidem = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -22509, i16 12, ptr @.str.59 }, [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_tidem_underlay_ecn\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_tidem_overlay_ecn\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_tidem_eip_ecn\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_tidem_trap_en\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_tidem_trap_id\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tidem\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 16, i64 778, i64 823]
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 111, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [23 x i8] c"mlxsw_sp_ipip_gre4_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 351, i32 39 }
@___asan_gen_.67 = private unnamed_addr constant [24 x i8] c"mlxsw_sp1_ipip_gre6_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 432, i32 39 }
@___asan_gen_.70 = private unnamed_addr constant [23 x i8] c"mlxsw_sp1_ipip_ops_arr\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 446, i32 33 }
@___asan_gen_.73 = private unnamed_addr constant [24 x i8] c"mlxsw_sp2_ipip_gre6_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 588, i32 39 }
@___asan_gen_.76 = private unnamed_addr constant [23 x i8] c"mlxsw_sp2_ipip_ops_arr\00", align 1
@___asan_gen_.77 = private constant [55 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ipip.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 602, i32 33 }
@___asan_gen_.79 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_ratr\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 33, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 6912, i32 1 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 6926, i32 1 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 6965, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 6974, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 7000, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 6980, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 7033, i32 1 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 7040, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 6888, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_rtdp\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 8186, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 8193, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 8200, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 8208, i32 1 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 8228, i32 1 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 8242, i32 1 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 8253, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 8276, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 8260, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 8175, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 7047, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 8269, i32 1 }
@___asan_gen_.157 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_tieem\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 11992, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 11998, i32 1 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 11986, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_tidem\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 12022, i32 1 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 12028, i32 1 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 12035, i32 1 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 12043, i32 1 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 12050, i32 1 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 12016, i32 1 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @.str, ptr @mlxsw_sp_ipip_gre4_ops, ptr @mlxsw_sp1_ipip_gre6_ops, ptr @mlxsw_sp1_ipip_ops_arr, ptr @mlxsw_sp2_ipip_gre6_ops, ptr @mlxsw_sp2_ipip_ops_arr, ptr @mlxsw_reg_ratr, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @mlxsw_reg_rtdp, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @mlxsw_reg_tieem, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @mlxsw_reg_tidem, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.59], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_ipip_gre4_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_ipip_gre6_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_ipip_ops_arr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_ipip_gre6_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_ipip_ops_arr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_ratr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_rtdp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_tieem to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_tidem to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlxsw_sp_ipip_netdev_parms4(ptr noalias nocapture writeonly sret(%struct.ip_tunnel_parm) align 4 %agg.result, ptr nocapture noundef readonly %ol_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parms = getelementptr i8, ptr %ol_dev, i32 2364
  %0 = call ptr @memcpy(ptr %agg.result, ptr %parms, i32 52)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlxsw_sp_ipip_netdev_parms6(ptr noalias nocapture writeonly sret(%struct.__ip6_tnl_parm) align 4 %agg.result, ptr nocapture noundef readonly %ol_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parms = getelementptr i8, ptr %ol_dev, i32 2320
  %0 = call ptr @memcpy(ptr %agg.result, ptr %parms, i32 88)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_ipip_netdev_saddr(ptr noalias nocapture writeonly sret(%union.mlxsw_sp_l3addr) align 4 %agg.result, i32 noundef %proto, ptr nocapture noundef readonly %ol_dev) local_unnamed_addr #2 align 64 {
entry:
  %parms6 = alloca %struct.__ip6_tnl_parm, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %parms6)
  %0 = zext i32 %proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %proto, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tmp.sroa.4.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2408
  %1 = ptrtoint ptr %tmp.sroa.4.0.parms.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.sroa.4.0.copyload = load i32, ptr %tmp.sroa.4.0.parms.i.sroa_idx, align 4
  %2 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %tmp.sroa.4.0.copyload, ptr %agg.result, align 4, !alias.scope !131
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %parms.i21 = getelementptr i8, ptr %ol_dev, i32 2320
  %3 = call ptr @memcpy(ptr %parms6, ptr %parms.i21, i32 88)
  %laddr.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms6, i32 0, i32 8
  %4 = call ptr @memcpy(ptr %agg.result, ptr %laddr.i, i32 16)
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #12
  %5 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %agg.result, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb1, %sw.bb
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %parms6)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlxsw_sp_l3addr_is_zero([4 x i32] %addr.coerce) local_unnamed_addr #4 align 64 {
entry:
  %addr = alloca %union.mlxsw_sp_l3addr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %addr.coerce.fca.0.extract = extractvalue [4 x i32] %addr.coerce, 0
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %addr.coerce.fca.0.extract, ptr %addr, align 4
  %addr.coerce.fca.1.extract = extractvalue [4 x i32] %addr.coerce, 1
  %addr.coerce.fca.1.gep = getelementptr inbounds [4 x i32], ptr %addr, i32 0, i32 1
  %1 = ptrtoint ptr %addr.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %addr.coerce.fca.1.extract, ptr %addr.coerce.fca.1.gep, align 4
  %addr.coerce.fca.2.extract = extractvalue [4 x i32] %addr.coerce, 2
  %addr.coerce.fca.2.gep = getelementptr inbounds [4 x i32], ptr %addr, i32 0, i32 2
  %2 = ptrtoint ptr %addr.coerce.fca.2.gep to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %addr.coerce.fca.2.extract, ptr %addr.coerce.fca.2.gep, align 4
  %addr.coerce.fca.3.extract = extractvalue [4 x i32] %addr.coerce, 3
  %addr.coerce.fca.3.gep = getelementptr inbounds [4 x i32], ptr %addr, i32 0, i32 3
  %3 = ptrtoint ptr %addr.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %addr.coerce.fca.3.extract, ptr %addr.coerce.fca.3.gep, align 4
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %addr, ptr noundef nonnull dereferenceable(16) @__const.mlxsw_sp_l3addr_is_zero.naddr, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_ipip_ecn_encap_init(ptr nocapture noundef readonly %mlxsw_sp) local_unnamed_addr #2 align 64 {
entry:
  %tieem_pl.i = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tieem_pl.i) #12
  %0 = call ptr @memset(ptr %tieem_pl.i, i32 0, i32 12)
  %arrayidx.i.i.i.i = getelementptr inbounds i32, ptr %tieem_pl.i, i32 1
  %1 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %arrayidx.i.i29.i.i = getelementptr inbounds i32, ptr %tieem_pl.i, i32 1
  %and7.i.i31.i.i = and i32 %2, -50528257
  %3 = ptrtoint ptr %arrayidx.i.i29.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and7.i.i31.i.i, ptr %arrayidx.i.i29.i.i, align 4
  %4 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_write(ptr noundef %5, ptr noundef nonnull @mlxsw_reg_tieem, ptr noundef nonnull %tieem_pl.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tieem_pl.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not.not, label %for.body.1, label %entry.cleanup4_crit_edge

entry.cleanup4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup4

for.body.1:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tieem_pl.i) #12
  %6 = call ptr @memset(ptr %tieem_pl.i, i32 0, i32 12)
  %arrayidx.i.i.i.i.1 = getelementptr inbounds i32, ptr %tieem_pl.i, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i.i.i.1, align 4
  %arrayidx.i.i29.i.i.1 = getelementptr inbounds i32, ptr %tieem_pl.i, i32 1
  %or.i.i.i.i.1 = and i32 %8, -50528257
  %or.i.i32.i.i.1 = or i32 %or.i.i.i.i.1, 16842752
  %9 = ptrtoint ptr %arrayidx.i.i29.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i.i32.i.i.1, ptr %arrayidx.i.i29.i.i.1, align 4
  %10 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core.i, align 4
  %call.i.1 = call i32 @mlxsw_reg_write(ptr noundef %11, ptr noundef nonnull @mlxsw_reg_tieem, ptr noundef nonnull %tieem_pl.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tieem_pl.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.1.not = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.1.not, label %for.body.2, label %for.body.1.cleanup4_crit_edge

for.body.1.cleanup4_crit_edge:                    ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup4

for.body.2:                                       ; preds = %for.body.1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tieem_pl.i) #12
  %12 = call ptr @memset(ptr %tieem_pl.i, i32 0, i32 12)
  %arrayidx.i.i.i.i.2 = getelementptr inbounds i32, ptr %tieem_pl.i, i32 1
  %13 = ptrtoint ptr %arrayidx.i.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i.i.i.2, align 4
  %arrayidx.i.i29.i.i.2 = getelementptr inbounds i32, ptr %tieem_pl.i, i32 1
  %or.i.i.i.i.2 = and i32 %14, -50528257
  %or.i.i32.i.i.2 = or i32 %or.i.i.i.i.2, 33685504
  %15 = ptrtoint ptr %arrayidx.i.i29.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i.i32.i.i.2, ptr %arrayidx.i.i29.i.i.2, align 4
  %16 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core.i, align 4
  %call.i.2 = call i32 @mlxsw_reg_write(ptr noundef %17, ptr noundef nonnull @mlxsw_reg_tieem, ptr noundef nonnull %tieem_pl.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tieem_pl.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.2.not = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.2.not, label %for.body.3, label %for.body.2.cleanup4_crit_edge

for.body.2.cleanup4_crit_edge:                    ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup4

for.body.3:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tieem_pl.i) #12
  %18 = call ptr @memset(ptr %tieem_pl.i, i32 0, i32 12)
  %arrayidx.i.i.i.i.3 = getelementptr inbounds i32, ptr %tieem_pl.i, i32 1
  %19 = ptrtoint ptr %arrayidx.i.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i.i.i.3, align 4
  %arrayidx.i.i29.i.i.3 = getelementptr inbounds i32, ptr %tieem_pl.i, i32 1
  %or.i.i.i.i.3 = and i32 %20, -50528257
  %or.i.i32.i.i.3 = or i32 %or.i.i.i.i.3, 50462720
  %21 = ptrtoint ptr %arrayidx.i.i29.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i.i32.i.i.3, ptr %arrayidx.i.i29.i.i.3, align 4
  %22 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %core.i, align 4
  %call.i.3 = call i32 @mlxsw_reg_write(ptr noundef %23, ptr noundef nonnull @mlxsw_reg_tieem, ptr noundef nonnull %tieem_pl.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tieem_pl.i) #12
  br label %cleanup4

cleanup4:                                         ; preds = %for.body.3, %for.body.2.cleanup4_crit_edge, %for.body.1.cleanup4_crit_edge, %entry.cleanup4_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %entry.cleanup4_crit_edge ], [ %call.i.1, %for.body.1.cleanup4_crit_edge ], [ %call.i.2, %for.body.2.cleanup4_crit_edge ], [ %call.i.3, %for.body.3 ]
  ret i32 %call.i.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_ipip_ecn_decap_init(ptr nocapture noundef readonly %mlxsw_sp) local_unnamed_addr #2 align 64 {
entry:
  %tidem_pl.i = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %arrayidx.i.i.i.i = getelementptr inbounds i32, ptr %tidem_pl.i, i32 1
  %arrayidx.i.i63.i.i = getelementptr inbounds i32, ptr %tidem_pl.i, i32 1
  %arrayidx.i.i91.i.i = getelementptr inbounds i32, ptr %tidem_pl.i, i32 2
  %arrayidx.i.i119.i.i = getelementptr inbounds i32, ptr %tidem_pl.i, i32 2
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc5.for.cond1.preheader_crit_edge, %entry
  %i.036 = phi i32 [ 0, %entry ], [ %inc6, %for.inc5.for.cond1.preheader_crit_edge ]
  %conv = trunc i32 %i.036 to i8
  %0 = and i8 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp.i.not.i.i.i = icmp eq i8 %0, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv)
  %cmp5.i.i = icmp eq i8 %conv, 2
  %spec.select.i.i29.i.i = shl i32 %i.036, 16
  %and6.i.i34.i.i = and i32 %spec.select.i.i29.i.i, 196608
  br label %for.body3

for.cond1:                                        ; preds = %mlxsw_sp_tunnel_ecn_decap.exit.i
  %inc = add nuw nsw i32 %j.035, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc5, label %for.cond1.for.body3_crit_edge

for.cond1.for.body3_crit_edge:                    ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3

for.body3:                                        ; preds = %for.cond1.for.body3_crit_edge, %for.cond1.preheader
  %j.035 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %for.cond1.for.body3_crit_edge ]
  %conv4 = trunc i32 %j.035 to i8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tidem_pl.i) #12
  %1 = and i8 %conv4, 3
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %__INET_ECN_decapsulate.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #14
  %switch.cast = trunc i8 %1 to i4
  %switch.downshift = lshr i4 -2, %switch.cast
  %2 = and i4 %switch.downshift, 1
  %3 = zext i4 %2 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv4)
  %cmp16.i.i = icmp eq i8 %conv4, 1
  %or.cond18.i.i = and i1 %cmp5.i.i, %cmp16.i.i
  %spec.select19.i.i = select i1 %or.cond18.i.i, i32 1, i32 %i.036
  br label %4

__INET_ECN_decapsulate.exit.i.i:                  ; preds = %for.body3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp.i6.i.not.i.i = icmp eq i8 %1, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv4)
  %cmp.i.i = icmp eq i8 %conv4, 1
  %or.cond.i.i = and i1 %cmp5.i.i, %cmp.i.i
  %spec.select.i.i = select i1 %or.cond.i.i, i32 1, i32 %i.036
  br i1 %cmp.i6.i.not.i.i, label %__INET_ECN_decapsulate.exit.i.i.mlxsw_sp_tunnel_ecn_decap.exit.i_crit_edge, label %__INET_ECN_decapsulate.exit.i.i._crit_edge

__INET_ECN_decapsulate.exit.i.i._crit_edge:       ; preds = %__INET_ECN_decapsulate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %4

__INET_ECN_decapsulate.exit.i.i.mlxsw_sp_tunnel_ecn_decap.exit.i_crit_edge: ; preds = %__INET_ECN_decapsulate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_tunnel_ecn_decap.exit.i

4:                                                ; preds = %__INET_ECN_decapsulate.exit.i.i._crit_edge, %if.then.i.i.i
  %trap_en.0.i = phi i8 [ %3, %if.then.i.i.i ], [ 0, %__INET_ECN_decapsulate.exit.i.i._crit_edge ]
  %spec.select20.i.i = phi i32 [ %spec.select19.i.i, %if.then.i.i.i ], [ %spec.select.i.i, %__INET_ECN_decapsulate.exit.i.i._crit_edge ]
  br label %mlxsw_sp_tunnel_ecn_decap.exit.i

mlxsw_sp_tunnel_ecn_decap.exit.i:                 ; preds = %4, %__INET_ECN_decapsulate.exit.i.i.mlxsw_sp_tunnel_ecn_decap.exit.i_crit_edge
  %trap_en.1.i = phi i8 [ %trap_en.0.i, %4 ], [ 0, %__INET_ECN_decapsulate.exit.i.i.mlxsw_sp_tunnel_ecn_decap.exit.i_crit_edge ]
  %5 = phi i32 [ %spec.select20.i.i, %4 ], [ 3, %__INET_ECN_decapsulate.exit.i.i.mlxsw_sp_tunnel_ecn_decap.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %trap_en.1.i)
  %tobool.i.not = icmp eq i8 %trap_en.1.i, 0
  %6 = call ptr @memset(ptr %tidem_pl.i, i32 0, i32 12)
  %spec.select.i.i.i.i = shl i32 %j.035, 24
  %and6.i.i.i.i = and i32 %spec.select.i.i.i.i, 50331648
  %7 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %and7.i.i.i.i = and i32 %8, -50529025
  %or.i.i.i.i = or i32 %and6.i.i.i.i, %and7.i.i.i.i
  %or.i.i38.i.i = or i32 %and6.i.i34.i.i, %or.i.i.i.i
  %conv3.i.i = shl i32 %5, 8
  %and6.i.i62.i.i = and i32 %conv3.i.i, 768
  %or.i.i66.i.i = or i32 %and6.i.i62.i.i, %or.i.i38.i.i
  %9 = ptrtoint ptr %arrayidx.i.i63.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i.i66.i.i, ptr %arrayidx.i.i63.i.i, align 4
  %spec.select.i.i85.i.i = select i1 %tobool.i.not, i32 0, i32 268435456
  %10 = ptrtoint ptr %arrayidx.i.i91.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i91.i.i, align 4
  %and7.i.i93.i.i = and i32 %11, 268434944
  %or.i.i94.i.i = or i32 %spec.select.i.i85.i.i, %and7.i.i93.i.i
  %conv5.i.i = select i1 %tobool.i.not, i32 0, i32 64
  %or.i.i122.i.i = or i32 %conv5.i.i, %or.i.i94.i.i
  %12 = ptrtoint ptr %arrayidx.i.i119.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i.i122.i.i, ptr %arrayidx.i.i119.i.i, align 4
  %13 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %core.i, align 4
  %call3.i = call i32 @mlxsw_reg_write(ptr noundef %14, ptr noundef nonnull @mlxsw_reg_tidem, ptr noundef nonnull %tidem_pl.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tidem_pl.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %for.cond1, label %mlxsw_sp_tunnel_ecn_decap.exit.i.cleanup_crit_edge

mlxsw_sp_tunnel_ecn_decap.exit.i.cleanup_crit_edge: ; preds = %mlxsw_sp_tunnel_ecn_decap.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc5:                                         ; preds = %for.cond1
  %inc6 = add nuw nsw i32 %i.036, 1
  %exitcond63.not = icmp eq i32 %inc6, 4
  br i1 %exitcond63.not, label %for.inc5.cleanup_crit_edge, label %for.inc5.for.cond1.preheader_crit_edge

for.inc5.for.cond1.preheader_crit_edge:           ; preds = %for.inc5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.preheader

for.inc5.cleanup_crit_edge:                       ; preds = %for.inc5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc5.cleanup_crit_edge, %mlxsw_sp_tunnel_ecn_decap.exit.i.cleanup_crit_edge
  ret i32 %call3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_ipip_netdev_ul_dev_get(ptr nocapture noundef readonly %ol_dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %ol_dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %ol_dev, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 16
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %3, label %entry.cleanup_crit_edge [
    i16 778, label %entry.cleanup.sink.split_crit_edge
    i16 823, label %sw.bb3
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3, %entry.cleanup.sink.split_crit_edge
  %.sink15 = phi i32 [ 2336, %sw.bb3 ], [ 2380, %entry.cleanup.sink.split_crit_edge ]
  %link = getelementptr i8, ptr %ol_dev, i32 %.sink15
  %5 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %5)
  %.sink = load i32, ptr %link, align 4
  %call7 = tail call ptr @dev_get_by_index_rcu(ptr noundef %1, i32 noundef %.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call7, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp_ipip_netdev_parms_init_gre4(ptr noalias nocapture writeonly sret(%struct.mlxsw_sp_ipip_parms) align 4 %agg.result, ptr nocapture noundef readonly %ol_dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parms.sroa.4.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2380
  %0 = ptrtoint ptr %parms.sroa.4.0.parms.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %parms.sroa.4.0.copyload = load i32, ptr %parms.sroa.4.0.parms.i.sroa_idx, align 4
  %parms.sroa.5.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2384
  %1 = ptrtoint ptr %parms.sroa.5.0.parms.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %1)
  %parms.sroa.5.0.copyload = load i16, ptr %parms.sroa.5.0.parms.i.sroa_idx, align 4
  %parms.sroa.6.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2386
  %2 = ptrtoint ptr %parms.sroa.6.0.parms.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %parms.sroa.6.0.copyload = load i16, ptr %parms.sroa.6.0.parms.i.sroa_idx, align 2
  %parms.sroa.7.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2388
  %3 = ptrtoint ptr %parms.sroa.7.0.parms.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %parms.sroa.7.0.copyload = load i32, ptr %parms.sroa.7.0.parms.i.sroa_idx, align 4
  %parms.sroa.8.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2392
  %4 = ptrtoint ptr %parms.sroa.8.0.parms.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %parms.sroa.8.0.copyload = load i32, ptr %parms.sroa.8.0.parms.i.sroa_idx, align 4
  %parms.sroa.96.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2408
  %5 = ptrtoint ptr %parms.sroa.96.0.parms.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %parms.sroa.96.0.copyload = load i32, ptr %parms.sroa.96.0.parms.i.sroa_idx, align 4
  %parms.sroa.10.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2412
  %6 = ptrtoint ptr %parms.sroa.10.0.parms.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %parms.sroa.10.0.copyload = load i32, ptr %parms.sroa.10.0.parms.i.sroa_idx, align 4
  %7 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %agg.result, align 4
  %saddr = getelementptr inbounds %struct.mlxsw_sp_ipip_parms, ptr %agg.result, i32 0, i32 1
  %8 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %parms.sroa.96.0.copyload, ptr %saddr, align 4, !alias.scope !134
  %daddr = getelementptr inbounds %struct.mlxsw_sp_ipip_parms, ptr %agg.result, i32 0, i32 2
  %9 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %parms.sroa.10.0.copyload, ptr %daddr, align 4, !alias.scope !137
  %link = getelementptr inbounds %struct.mlxsw_sp_ipip_parms, ptr %agg.result, i32 0, i32 3
  %10 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %parms.sroa.4.0.copyload, ptr %link, align 4
  %ikey = getelementptr inbounds %struct.mlxsw_sp_ipip_parms, ptr %agg.result, i32 0, i32 4
  %11 = and i16 %parms.sroa.5.0.copyload, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.i.not.i = icmp eq i16 %11, 0
  %spec.select = select i1 %tobool.i.not.i, i32 0, i32 %parms.sroa.7.0.copyload
  %12 = ptrtoint ptr %ikey to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select, ptr %ikey, align 4
  %okey = getelementptr inbounds %struct.mlxsw_sp_ipip_parms, ptr %agg.result, i32 0, i32 5
  %13 = and i16 %parms.sroa.6.0.copyload, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.i.not.i3 = icmp eq i16 %13, 0
  %cond.i5 = select i1 %tobool.i.not.i3, i32 0, i32 %parms.sroa.8.0.copyload
  %14 = ptrtoint ptr %okey to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond.i5, ptr %okey, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_ipip_nexthop_update_gre4(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %adj_index, ptr nocapture noundef readonly %ipip_entry, i1 noundef zeroext %force, ptr noundef %ratr_pl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ol_lb = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, ptr %ipip_entry, i32 0, i32 2
  %0 = ptrtoint ptr %ol_lb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ol_lb, align 4
  %call = tail call zeroext i16 @mlxsw_sp_ipip_lb_rif_index(ptr noundef %1) #12
  %ol_dev = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, ptr %ipip_entry, i32 0, i32 1
  %2 = ptrtoint ptr %ol_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ol_dev, align 4
  %parms4.sroa.4.0.parms.i.sroa_idx.i = getelementptr i8, ptr %3, i32 2412
  %4 = ptrtoint ptr %parms4.sroa.4.0.parms.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %parms4.sroa.4.0.copyload.i = load i32, ptr %parms4.sroa.4.0.parms.i.sroa_idx.i, align 4
  %cond = select i1 %force, i32 1, i32 3
  tail call fastcc void @mlxsw_reg_ratr_pack(ptr noundef %ratr_pl, i32 noundef %cond, i32 noundef %adj_index, i16 noundef zeroext %call)
  %arrayidx.i.i.i = getelementptr i32, ptr %ratr_pl, i32 4
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %6, -983041
  store i32 %and7.i.i.i, ptr %arrayidx.i.i.i, align 4
  %arrayidx.i.i24.i = getelementptr i32, ptr %ratr_pl, i32 6
  %7 = ptrtoint ptr %arrayidx.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %parms4.sroa.4.0.copyload.i, ptr %arrayidx.i.i24.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %call2 = tail call i32 @mlxsw_reg_write(ptr noundef %9, ptr noundef nonnull @mlxsw_reg_ratr, ptr noundef %ratr_pl) #12
  ret i32 %call2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxsw_sp_ipip_can_offload_gre4(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readonly %ol_dev) #6 align 64 {
entry:
  %addr.i28.i = alloca %union.mlxsw_sp_l3addr, align 4
  %addr.i.i = alloca %union.mlxsw_sp_l3addr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr i8, ptr %ol_dev, i32 2384
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_flags, align 4
  %2 = and i16 %1, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp10 = icmp eq i16 %2, 0
  br i1 %cmp10, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %tos = getelementptr i8, ptr %ol_dev, i32 2397
  %3 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tos, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %ttl = getelementptr i8, ptr %ol_dev, i32 2404
  %6 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ttl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp ne i8 %7, 0
  %o_flags = getelementptr i8, ptr %ol_dev, i32 2386
  %8 = ptrtoint ptr %o_flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %o_flags, align 2
  %10 = and i16 %9, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp17 = icmp ne i16 %10, 0
  %brmerge = select i1 %cmp17, i1 true, i1 %cmp
  %brmerge32 = select i1 %brmerge, i1 true, i1 %tobool.not
  br i1 %brmerge32, label %land.lhs.true.land.end_crit_edge, label %land.rhs

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %tmp.sroa.4.0.parms.i.sroa_idx.i.i = getelementptr i8, ptr %ol_dev, i32 2408
  %11 = ptrtoint ptr %tmp.sroa.4.0.parms.i.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %tmp.sroa.4.0.copyload.i.i = load i32, ptr %tmp.sroa.4.0.parms.i.sroa_idx.i.i, align 4, !noalias !140
  %tmp.sroa.4.0.parms.i.sroa_idx.i22.i = getelementptr i8, ptr %ol_dev, i32 2412
  %12 = ptrtoint ptr %tmp.sroa.4.0.parms.i.sroa_idx.i22.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %tmp.sroa.4.0.copyload.i23.i = load i32, ptr %tmp.sroa.4.0.parms.i.sroa_idx.i22.i, align 4, !noalias !143
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr.i.i) #12
  %13 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %tmp.sroa.4.0.copyload.i.i, ptr %addr.i.i, align 4
  %addr.coerce.fca.1.gep.i.i = getelementptr inbounds [4 x i32], ptr %addr.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %addr.coerce.fca.1.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %addr.coerce.fca.1.gep.i.i, align 4
  %addr.coerce.fca.2.gep.i.i = getelementptr inbounds [4 x i32], ptr %addr.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %addr.coerce.fca.2.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %addr.coerce.fca.2.gep.i.i, align 4
  %addr.coerce.fca.3.gep.i.i = getelementptr inbounds [4 x i32], ptr %addr.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %addr.coerce.fca.3.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %addr.coerce.fca.3.gep.i.i, align 4
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %addr.i.i, ptr noundef nonnull dereferenceable(16) @__const.mlxsw_sp_l3addr_is_zero.naddr, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr.i.i) #12
  br i1 %tobool.not.i.i, label %land.rhs.land.end_crit_edge, label %land.rhs.i

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs.i:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr.i28.i) #12
  %17 = ptrtoint ptr %addr.i28.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %tmp.sroa.4.0.copyload.i23.i, ptr %addr.i28.i, align 4
  %addr.coerce.fca.1.gep.i29.i = getelementptr inbounds [4 x i32], ptr %addr.i28.i, i32 0, i32 1
  %18 = ptrtoint ptr %addr.coerce.fca.1.gep.i29.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %addr.coerce.fca.1.gep.i29.i, align 4
  %addr.coerce.fca.2.gep.i30.i = getelementptr inbounds [4 x i32], ptr %addr.i28.i, i32 0, i32 2
  %19 = ptrtoint ptr %addr.coerce.fca.2.gep.i30.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %addr.coerce.fca.2.gep.i30.i, align 4
  %addr.coerce.fca.3.gep.i31.i = getelementptr inbounds [4 x i32], ptr %addr.i28.i, i32 0, i32 3
  %20 = ptrtoint ptr %addr.coerce.fca.3.gep.i31.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %addr.coerce.fca.3.gep.i31.i, align 4
  %bcmp.i32.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %addr.i28.i, ptr noundef nonnull dereferenceable(16) @__const.mlxsw_sp_l3addr_is_zero.naddr, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i32.i)
  %tobool.not.i33.i = icmp ne i32 %bcmp.i32.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr.i28.i) #12
  br label %land.end

land.end:                                         ; preds = %land.rhs.i, %land.rhs.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %21 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ false, %land.rhs.land.end_crit_edge ], [ %tobool.not.i33.i, %land.rhs.i ]
  ret i1 %21
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp_ipip_ol_loopback_config_gre4(ptr noalias nocapture writeonly sret(%struct.mlxsw_sp_rif_ipip_lb_config) align 4 %agg.result, ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readonly %ol_dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parms.sroa.4.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2386
  %0 = ptrtoint ptr %parms.sroa.4.0.parms.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %parms.sroa.4.0.copyload = load i16, ptr %parms.sroa.4.0.parms.i.sroa_idx, align 2
  %parms.sroa.65.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2392
  %1 = ptrtoint ptr %parms.sroa.65.0.parms.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %parms.sroa.65.0.copyload = load i32, ptr %parms.sroa.65.0.parms.i.sroa_idx, align 4
  %2 = and i16 %parms.sroa.4.0.copyload, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.i.not = icmp eq i16 %2, 0
  %cond = select i1 %tobool.i.not, i32 1, i32 2
  %3 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond, ptr %agg.result, align 4
  %okey = getelementptr inbounds %struct.mlxsw_sp_rif_ipip_lb_config, ptr %agg.result, i32 0, i32 1
  %spec.select = select i1 %tobool.i.not, i32 0, i32 %parms.sroa.65.0.copyload
  %4 = ptrtoint ptr %okey to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %okey, align 4
  %ul_protocol = getelementptr inbounds %struct.mlxsw_sp_rif_ipip_lb_config, ptr %agg.result, i32 0, i32 2
  %5 = ptrtoint ptr %ul_protocol to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ul_protocol, align 4
  %saddr = getelementptr inbounds %struct.mlxsw_sp_rif_ipip_lb_config, ptr %agg.result, i32 0, i32 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %tmp.sroa.4.0.parms.i.sroa_idx.i = getelementptr i8, ptr %ol_dev, i32 2408
  %6 = ptrtoint ptr %tmp.sroa.4.0.parms.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.sroa.4.0.copyload.i = load i32, ptr %tmp.sroa.4.0.parms.i.sroa_idx.i, align 4, !noalias !146
  %7 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %tmp.sroa.4.0.copyload.i, ptr %saddr, align 4, !alias.scope !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_ipip_decap_config_gre4(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %ipip_entry, i32 noundef %tunnel_index) #2 align 64 {
entry:
  %rtdp_pl = alloca [68 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ol_lb = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, ptr %ipip_entry, i32 0, i32 2
  %0 = ptrtoint ptr %ol_lb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ol_lb, align 4
  %call = tail call zeroext i16 @mlxsw_sp_ipip_lb_rif_index(ptr noundef %1) #12
  %2 = ptrtoint ptr %ol_lb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ol_lb, align 4
  %call2 = tail call zeroext i16 @mlxsw_sp_ipip_lb_ul_rif_id(ptr noundef %3) #12
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %rtdp_pl) #12
  %4 = call ptr @memset(ptr %rtdp_pl, i32 255, i32 68)
  %ol_dev = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, ptr %ipip_entry, i32 0, i32 1
  %5 = ptrtoint ptr %ol_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ol_dev, align 4
  %tmp.sroa.4.0.parms.i.sroa_idx = getelementptr i8, ptr %6, i32 2384
  %7 = ptrtoint ptr %tmp.sroa.4.0.parms.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %7)
  %tmp.sroa.4.0.copyload = load i16, ptr %tmp.sroa.4.0.parms.i.sroa_idx, align 4
  %tmp.sroa.6.0.parms.i.sroa_idx = getelementptr i8, ptr %6, i32 2388
  %8 = ptrtoint ptr %tmp.sroa.6.0.parms.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.sroa.6.0.copyload = load i32, ptr %tmp.sroa.6.0.parms.i.sroa_idx, align 4
  %9 = and i16 %tmp.sroa.4.0.copyload, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.i = icmp ne i16 %9, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.i.not.i = icmp eq i16 %9, 0
  %spec.select = select i1 %tobool.i.not.i, i32 0, i32 %tmp.sroa.6.0.copyload
  call fastcc void @mlxsw_reg_rtdp_pack(ptr noundef nonnull %rtdp_pl, i32 noundef %tunnel_index)
  %conv = zext i16 %call2 to i32
  %arrayidx.i.i = getelementptr inbounds i32, ptr %rtdp_pl, i32 16
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %and7.i.i = and i32 %11, -65536
  %or.i.i = or i32 %and7.i.i, %conv
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %cond = select i1 %tobool.i, i32 4, i32 2
  %12 = ptrtoint ptr %ol_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ol_dev, align 4
  %parms4.sroa.4.0.parms.i.sroa_idx.i = getelementptr i8, ptr %13, i32 2412
  %14 = ptrtoint ptr %parms4.sroa.4.0.parms.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %parms4.sroa.4.0.copyload.i = load i32, ptr %parms4.sroa.4.0.parms.i.sroa_idx.i, align 4
  call fastcc void @mlxsw_reg_rtdp_ipip_pack(ptr noundef nonnull %rtdp_pl, i16 noundef zeroext %call, i32 noundef 1, i32 noundef %cond, i1 noundef zeroext %tobool.i, i32 noundef %spec.select) #12
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %rtdp_pl, i32 3
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %parms4.sroa.4.0.copyload.i, ptr %arrayidx.i.i.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %16 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core, align 4
  %call12 = call i32 @mlxsw_reg_write(ptr noundef %17, ptr noundef nonnull @mlxsw_reg_rtdp, ptr noundef nonnull %rtdp_pl) #12
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %rtdp_pl) #12
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_ipip_ol_netdev_change_gre4(ptr noundef %mlxsw_sp, ptr noundef %ipip_entry, ptr noundef %extack) #2 align 64 {
entry:
  %new_parms = alloca %struct.mlxsw_sp_ipip_parms, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %new_parms) #12
  %0 = getelementptr inbounds i8, ptr %new_parms, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 28)
  %ol_dev = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, ptr %ipip_entry, i32 0, i32 1
  %2 = ptrtoint ptr %ol_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ol_dev, align 4
  %parms.sroa.4.0.parms.i.sroa_idx.i = getelementptr i8, ptr %3, i32 2380
  %4 = ptrtoint ptr %parms.sroa.4.0.parms.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %parms.sroa.4.0.copyload.i = load i32, ptr %parms.sroa.4.0.parms.i.sroa_idx.i, align 4, !noalias !152
  %parms.sroa.5.0.parms.i.sroa_idx.i = getelementptr i8, ptr %3, i32 2384
  %5 = ptrtoint ptr %parms.sroa.5.0.parms.i.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %parms.sroa.5.0.copyload.i = load i16, ptr %parms.sroa.5.0.parms.i.sroa_idx.i, align 4, !noalias !152
  %parms.sroa.6.0.parms.i.sroa_idx.i = getelementptr i8, ptr %3, i32 2386
  %6 = ptrtoint ptr %parms.sroa.6.0.parms.i.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %parms.sroa.6.0.copyload.i = load i16, ptr %parms.sroa.6.0.parms.i.sroa_idx.i, align 2, !noalias !152
  %parms.sroa.7.0.parms.i.sroa_idx.i = getelementptr i8, ptr %3, i32 2388
  %7 = ptrtoint ptr %parms.sroa.7.0.parms.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %parms.sroa.7.0.copyload.i = load i32, ptr %parms.sroa.7.0.parms.i.sroa_idx.i, align 4, !noalias !152
  %parms.sroa.8.0.parms.i.sroa_idx.i = getelementptr i8, ptr %3, i32 2392
  %8 = ptrtoint ptr %parms.sroa.8.0.parms.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %parms.sroa.8.0.copyload.i = load i32, ptr %parms.sroa.8.0.parms.i.sroa_idx.i, align 4, !noalias !152
  %parms.sroa.96.0.parms.i.sroa_idx.i = getelementptr i8, ptr %3, i32 2408
  %9 = ptrtoint ptr %parms.sroa.96.0.parms.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %parms.sroa.96.0.copyload.i = load i32, ptr %parms.sroa.96.0.parms.i.sroa_idx.i, align 4, !noalias !152
  %parms.sroa.10.0.parms.i.sroa_idx.i = getelementptr i8, ptr %3, i32 2412
  %10 = ptrtoint ptr %parms.sroa.10.0.parms.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %parms.sroa.10.0.copyload.i = load i32, ptr %parms.sroa.10.0.parms.i.sroa_idx.i, align 4, !noalias !152
  %11 = and i16 %parms.sroa.5.0.copyload.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.i.not.i.i = icmp eq i16 %11, 0
  %spec.select.i = select i1 %tobool.i.not.i.i, i32 0, i32 %parms.sroa.7.0.copyload.i
  %12 = and i16 %parms.sroa.6.0.copyload.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.i.not.i3.i = icmp eq i16 %12, 0
  %cond.i5.i = select i1 %tobool.i.not.i3.i, i32 0, i32 %parms.sroa.8.0.copyload.i
  %13 = ptrtoint ptr %new_parms to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %new_parms, align 4
  %tmp.sroa.4.0.new_parms.sroa_idx = getelementptr inbounds i8, ptr %new_parms, i32 4
  %14 = ptrtoint ptr %tmp.sroa.4.0.new_parms.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %parms.sroa.96.0.copyload.i, ptr %tmp.sroa.4.0.new_parms.sroa_idx, align 4
  %tmp.sroa.52.0.new_parms.sroa_idx = getelementptr inbounds i8, ptr %new_parms, i32 20
  %15 = ptrtoint ptr %tmp.sroa.52.0.new_parms.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %parms.sroa.10.0.copyload.i, ptr %tmp.sroa.52.0.new_parms.sroa_idx, align 4
  %tmp.sroa.63.0.new_parms.sroa_idx = getelementptr inbounds i8, ptr %new_parms, i32 36
  %16 = ptrtoint ptr %tmp.sroa.63.0.new_parms.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %parms.sroa.4.0.copyload.i, ptr %tmp.sroa.63.0.new_parms.sroa_idx, align 4
  %tmp.sroa.7.0.new_parms.sroa_idx = getelementptr inbounds i8, ptr %new_parms, i32 40
  %17 = ptrtoint ptr %tmp.sroa.7.0.new_parms.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select.i, ptr %tmp.sroa.7.0.new_parms.sroa_idx, align 4
  %tmp.sroa.8.0.new_parms.sroa_idx = getelementptr inbounds i8, ptr %new_parms, i32 44
  %18 = ptrtoint ptr %tmp.sroa.8.0.new_parms.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond.i5.i, ptr %tmp.sroa.8.0.new_parms.sroa_idx, align 4
  %call = call fastcc i32 @mlxsw_sp_ipip_ol_netdev_change_gre(ptr noundef %mlxsw_sp, ptr noundef %ipip_entry, ptr noundef nonnull %new_parms, ptr noundef %extack)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %new_parms) #12
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp_ipip_rem_addr_set_gre4(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readnone %ipip_entry) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp_ipip_rem_addr_unset_gre4(ptr nocapture noundef %mlxsw_sp, ptr nocapture noundef %ipip_entry) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlxsw_sp_ipip_lb_rif_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_ratr_pack(ptr nocapture noundef %payload, i32 noundef %op, i32 noundef %adjacency_index, i16 noundef zeroext %egress_rif) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = call ptr @memset(ptr %payload, i32 0, i32 44)
  %spec.select.i.i = shl i32 %op, 28
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %2, 251658239
  %or.i.i = or i32 %spec.select.i.i, %and7.i.i
  %or.i.i27 = or i32 %or.i.i, 16777216
  store i32 %or.i.i27, ptr %payload, align 4
  %arrayidx.i.i52 = getelementptr i32, ptr %payload, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i52 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i52, align 4
  %and6.i.i79 = and i32 %adjacency_index, 65535
  %arrayidx.i.i80 = getelementptr i32, ptr %payload, i32 1
  %or.i.i55 = and i32 %4, 268369920
  %and7.i.i82 = or i32 %or.i.i55, 1342177280
  %or.i.i83 = or i32 %and6.i.i79, %and7.i.i82
  %5 = ptrtoint ptr %arrayidx.i.i80 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i.i83, ptr %arrayidx.i.i80, align 4
  %and6.i.i107 = and i32 %adjacency_index, 16711680
  %arrayidx.i.i108 = getelementptr i32, ptr %payload, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i108 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i108, align 4
  %and7.i.i110 = and i32 %7, -16711681
  %or.i.i111 = or i32 %and6.i.i107, %and7.i.i110
  store i32 %or.i.i111, ptr %arrayidx.i.i108, align 4
  %conv2 = zext i16 %egress_rif to i32
  %arrayidx.i.i136 = getelementptr i32, ptr %payload, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i136 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i136, align 4
  %and7.i.i138 = and i32 %9, -65536
  %or.i.i139 = or i32 %and7.i.i138, %conv2
  store i32 %or.i.i139, ptr %arrayidx.i.i136, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlxsw_sp_ipip_lb_ul_rif_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_rtdp_pack(ptr nocapture noundef %payload, i32 noundef %tunnel_index) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = call ptr @memset(ptr %payload, i32 0, i32 68)
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and6.i.i23 = and i32 %tunnel_index, 16777215
  %or.i.i = and i32 %2, 251658240
  %and7.i.i26 = or i32 %or.i.i, 268435456
  %or.i.i27 = or i32 %and6.i.i23, %and7.i.i26
  store i32 %or.i.i27, ptr %payload, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_rtdp_ipip_pack(ptr nocapture noundef %payload, i16 noundef zeroext %irif, i32 noundef %sip_check, i32 noundef %type_check, i1 noundef zeroext %gre_key_check, i32 noundef %expected_gre_key) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %irif to i32
  %spec.select.i.i = shl nuw i32 %conv, 16
  %arrayidx.i.i = getelementptr i32, ptr %payload, i32 1
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %and7.i.i = and i32 %1, 65528
  %or.i.i = or i32 %spec.select.i.i, %and7.i.i
  %and6.i.i29 = and i32 %sip_check, 7
  %arrayidx.i.i30 = getelementptr i32, ptr %payload, i32 1
  %or.i.i33 = or i32 %and6.i.i29, %or.i.i
  %2 = ptrtoint ptr %arrayidx.i.i30 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i.i33, ptr %arrayidx.i.i30, align 4
  %spec.select.i.i52 = shl i32 %type_check, 24
  %and6.i.i57 = and i32 %spec.select.i.i52, 117440512
  %arrayidx.i.i58 = getelementptr i32, ptr %payload, i32 2
  %3 = ptrtoint ptr %arrayidx.i.i58 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i58, align 4
  %and7.i.i60 = and i32 %4, -125829121
  %or.i.i61 = or i32 %and6.i.i57, %and7.i.i60
  %spec.select.i.i80 = select i1 %gre_key_check, i32 8388608, i32 0
  %arrayidx.i.i86 = getelementptr i32, ptr %payload, i32 2
  %or.i.i89 = or i32 %spec.select.i.i80, %or.i.i61
  %5 = ptrtoint ptr %arrayidx.i.i86 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i.i89, ptr %arrayidx.i.i86, align 4
  %arrayidx.i.i114 = getelementptr i32, ptr %payload, i32 5
  %6 = ptrtoint ptr %arrayidx.i.i114 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %expected_gre_key, ptr %arrayidx.i.i114, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_ipip_ol_netdev_change_gre(ptr noundef %mlxsw_sp, ptr noundef %ipip_entry, ptr nocapture noundef readonly %new_parms, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parms = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, ptr %ipip_entry, i32 0, i32 5
  %saddr = getelementptr inbounds %struct.mlxsw_sp_ipip_parms, ptr %new_parms, i32 0, i32 1
  %saddr1 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, ptr %ipip_entry, i32 0, i32 5, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %saddr, ptr noundef dereferenceable(16) %saddr1, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %ol_dev = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, ptr %ipip_entry, i32 0, i32 1
  %0 = ptrtoint ptr %ol_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ol_dev, align 4
  %call2 = tail call i32 @mlxsw_sp_ipip_dev_ul_tb_id(ptr noundef %1) #12
  %2 = ptrtoint ptr %new_parms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %new_parms, align 4
  %conv4 = and i32 %call2, 65535
  %4 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %saddr, align 4
  %5 = insertvalue [4 x i32] undef, i32 %.unpack, 0
  %.elt75 = getelementptr inbounds %struct.mlxsw_sp_ipip_parms, ptr %new_parms, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %.elt75 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack76 = load i32, ptr %.elt75, align 4
  %7 = insertvalue [4 x i32] %5, i32 %.unpack76, 1
  %.elt77 = getelementptr inbounds %struct.mlxsw_sp_ipip_parms, ptr %new_parms, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %.elt77 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack78 = load i32, ptr %.elt77, align 4
  %9 = insertvalue [4 x i32] %7, i32 %.unpack78, 2
  %.elt79 = getelementptr inbounds %struct.mlxsw_sp_ipip_parms, ptr %new_parms, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %10 = ptrtoint ptr %.elt79 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack80 = load i32, ptr %.elt79, align 4
  %11 = insertvalue [4 x i32] %9, i32 %.unpack80, 3
  %call7 = tail call zeroext i1 @mlxsw_sp_ipip_demote_tunnel_by_saddr(ptr noundef %mlxsw_sp, i32 noundef %3, [4 x i32] %11, i32 noundef %conv4, ptr noundef %ipip_entry) #12
  br i1 %call7, label %cleanup.thread, label %if.then.if.then28_crit_edge

if.then.if.then28_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlxsw_sp_ipip_entry_demote_tunnel(ptr noundef %mlxsw_sp, ptr noundef %ipip_entry) #12
  br label %cleanup45

if.else:                                          ; preds = %entry
  %okey = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, ptr %ipip_entry, i32 0, i32 5, i32 5
  %12 = ptrtoint ptr %okey to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %okey, align 4
  %okey9 = getelementptr inbounds %struct.mlxsw_sp_ipip_parms, ptr %new_parms, i32 0, i32 5
  %14 = ptrtoint ptr %okey9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %okey9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not = icmp eq i32 %13, %15
  br i1 %cmp.not, label %lor.lhs.false, label %if.else.if.then28_crit_edge

if.else.if.then28_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

lor.lhs.false:                                    ; preds = %if.else
  %link = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, ptr %ipip_entry, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %link, align 4
  %link11 = getelementptr inbounds %struct.mlxsw_sp_ipip_parms, ptr %new_parms, i32 0, i32 3
  %18 = ptrtoint ptr %link11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %link11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp12.not = icmp eq i32 %17, %19
  br i1 %cmp12.not, label %if.else15, label %lor.lhs.false.if.then28_crit_edge

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

if.else15:                                        ; preds = %lor.lhs.false
  %daddr = getelementptr inbounds %struct.mlxsw_sp_ipip_parms, ptr %new_parms, i32 0, i32 2
  %daddr16 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, ptr %ipip_entry, i32 0, i32 5, i32 2
  %bcmp.i81 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %daddr, ptr noundef dereferenceable(16) %daddr16, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i81)
  %tobool.not.i82 = icmp eq i32 %bcmp.i81, 0
  br i1 %tobool.not.i82, label %if.else34, label %if.then32

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %if.else.if.then28_crit_edge, %if.then.if.then28_crit_edge
  %call29 = tail call i32 @__mlxsw_sp_ipip_entry_update_tunnel(ptr noundef %mlxsw_sp, ptr noundef %ipip_entry, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %extack) #12
  br label %if.end40

if.then32:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = tail call i32 @__mlxsw_sp_ipip_entry_update_tunnel(ptr noundef %mlxsw_sp, ptr noundef %ipip_entry, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %extack) #12
  br label %if.end40

if.else34:                                        ; preds = %if.else15
  %ikey = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, ptr %ipip_entry, i32 0, i32 5, i32 4
  %20 = ptrtoint ptr %ikey to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ikey, align 4
  %ikey20 = getelementptr inbounds %struct.mlxsw_sp_ipip_parms, ptr %new_parms, i32 0, i32 4
  %22 = ptrtoint ptr %ikey20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ikey20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp21.not.not = icmp eq i32 %21, %23
  br i1 %cmp21.not.not, label %if.else34.if.end43_crit_edge, label %if.then36

if.else34.if.end43_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then36:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #14
  %call37 = tail call i32 @__mlxsw_sp_ipip_entry_update_tunnel(ptr noundef %mlxsw_sp, ptr noundef %ipip_entry, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %extack) #12
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.then32, %if.then28
  %err.0 = phi i32 [ %call29, %if.then28 ], [ %call33, %if.then32 ], [ %call37, %if.then36 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool41.not = icmp eq i32 %err.0, 0
  br i1 %tobool41.not, label %if.end40.if.end43_crit_edge, label %if.end40.cleanup45_crit_edge

if.end40.cleanup45_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup45

if.end40.if.end43_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.end43:                                         ; preds = %if.end40.if.end43_crit_edge, %if.else34.if.end43_crit_edge
  %24 = call ptr @memcpy(ptr %parms, ptr %new_parms, i32 48)
  br label %cleanup45

cleanup45:                                        ; preds = %if.end43, %if.end40.cleanup45_crit_edge, %cleanup.thread
  %retval.1 = phi i32 [ 0, %if.end43 ], [ %err.0, %if.end40.cleanup45_crit_edge ], [ 0, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_ipip_dev_ul_tb_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_sp_ipip_demote_tunnel_by_saddr(ptr noundef, i32 noundef, [4 x i32], i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_ipip_entry_demote_tunnel(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mlxsw_sp_ipip_entry_update_tunnel(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp1_ipip_netdev_parms_init_gre6(ptr noalias nocapture writeonly sret(%struct.mlxsw_sp_ipip_parms) align 4 %agg.result, ptr nocapture noundef readnone %ol_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %agg.result, i32 0, i32 48)
  %.b35 = load i1, ptr @mlxsw_sp1_ipip_netdev_parms_init_gre6.__already_done, align 1
  br i1 %.b35, label %entry.if.end25_crit_edge, label %if.then, !prof !155

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlxsw_sp1_ipip_netdev_parms_init_gre6.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 370, i32 noundef 9, ptr noundef null) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_ipip_nexthop_update_gre6(ptr nocapture noundef readnone %mlxsw_sp, i32 noundef %adj_index, ptr nocapture noundef readnone %ipip_entry, i1 noundef zeroext %force, ptr nocapture noundef readnone %ratr_pl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %.b35 = load i1, ptr @mlxsw_sp1_ipip_nexthop_update_gre6.__already_done, align 1
  br i1 %.b35, label %entry.if.end25_crit_edge, label %if.then, !prof !155

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlxsw_sp1_ipip_nexthop_update_gre6.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 379, i32 noundef 9, ptr noundef null) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxsw_sp1_ipip_can_offload_gre6(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readnone %ol_dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp1_ipip_ol_loopback_config_gre6(ptr noalias nocapture writeonly sret(%struct.mlxsw_sp_rif_ipip_lb_config) align 4 %agg.result, ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readnone %ol_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %agg.result, i32 0, i32 28)
  %.b35 = load i1, ptr @mlxsw_sp1_ipip_ol_loopback_config_gre6.__already_done, align 1
  br i1 %.b35, label %entry.if.end25_crit_edge, label %if.then, !prof !155

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlxsw_sp1_ipip_ol_loopback_config_gre6.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 404, i32 noundef 9, ptr noundef null) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_ipip_decap_config_gre6(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readnone %ipip_entry, i32 noundef %tunnel_index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %.b35 = load i1, ptr @mlxsw_sp1_ipip_decap_config_gre6.__already_done, align 1
  br i1 %.b35, label %entry.if.end25_crit_edge, label %if.then, !prof !155

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlxsw_sp1_ipip_decap_config_gre6.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 388, i32 noundef 9, ptr noundef null) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_ipip_ol_netdev_change_gre6(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readnone %ipip_entry, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %.b35 = load i1, ptr @mlxsw_sp1_ipip_ol_netdev_change_gre6.__already_done, align 1
  br i1 %.b35, label %entry.if.end25_crit_edge, label %if.then, !prof !155

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlxsw_sp1_ipip_ol_netdev_change_gre6.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 413, i32 noundef 9, ptr noundef null) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_ipip_rem_addr_set_gre6(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readnone %ipip_entry) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %.b35 = load i1, ptr @mlxsw_sp1_ipip_rem_addr_set_gre6.__already_done, align 1
  br i1 %.b35, label %entry.if.end25_crit_edge, label %if.then, !prof !155

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlxsw_sp1_ipip_rem_addr_set_gre6.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 421, i32 noundef 9, ptr noundef null) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp1_ipip_rem_addr_unset_gre6(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readnone %ipip_entry) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %.b35 = load i1, ptr @mlxsw_sp1_ipip_rem_addr_unset_gre6.__already_done, align 1
  br i1 %.b35, label %entry.if.end25_crit_edge, label %if.then, !prof !155

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlxsw_sp1_ipip_rem_addr_unset_gre6.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 429, i32 noundef 9, ptr noundef null) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp2_ipip_netdev_parms_init_gre6(ptr noalias nocapture writeonly sret(%struct.mlxsw_sp_ipip_parms) align 4 %agg.result, ptr nocapture noundef readonly %ol_dev) #5 align 64 {
entry:
  %parms.sroa.5 = alloca { i8, i8, i8, i8, i32, i32, %struct.in6_addr }, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %parms.sroa.5)
  %parms.sroa.4.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2336
  %0 = ptrtoint ptr %parms.sroa.4.0.parms.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %parms.sroa.4.0.copyload = load i32, ptr %parms.sroa.4.0.parms.i.sroa_idx, align 8
  %parms.sroa.5.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2340
  %1 = call ptr @memcpy(ptr %parms.sroa.5, ptr %parms.sroa.5.0.parms.i.sroa_idx, i32 28)
  %parms.sroa.6.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2368
  %daddr = getelementptr inbounds %struct.mlxsw_sp_ipip_parms, ptr %agg.result, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %daddr, ptr %parms.sroa.6.0.parms.i.sroa_idx, i32 16)
  %parms.sroa.7.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2384
  %3 = ptrtoint ptr %parms.sroa.7.0.parms.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %3)
  %parms.sroa.7.0.copyload = load i16, ptr %parms.sroa.7.0.parms.i.sroa_idx, align 8
  %parms.sroa.8.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2386
  %4 = ptrtoint ptr %parms.sroa.8.0.parms.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %parms.sroa.8.0.copyload = load i16, ptr %parms.sroa.8.0.parms.i.sroa_idx, align 2
  %parms.sroa.9.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2388
  %5 = ptrtoint ptr %parms.sroa.9.0.parms.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %parms.sroa.9.0.copyload = load i32, ptr %parms.sroa.9.0.parms.i.sroa_idx, align 4
  %parms.sroa.10.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2392
  %6 = ptrtoint ptr %parms.sroa.10.0.parms.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %parms.sroa.10.0.copyload = load i32, ptr %parms.sroa.10.0.parms.i.sroa_idx, align 8
  %7 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %agg.result, align 4
  %saddr = getelementptr inbounds %struct.mlxsw_sp_ipip_parms, ptr %agg.result, i32 0, i32 1
  %parms.sroa.5.32.laddr.i.sroa_idx = getelementptr inbounds i8, ptr %parms.sroa.5, i32 12
  %8 = call ptr @memcpy(ptr %saddr, ptr %parms.sroa.5.32.laddr.i.sroa_idx, i32 16)
  %link = getelementptr inbounds %struct.mlxsw_sp_ipip_parms, ptr %agg.result, i32 0, i32 3
  %9 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %parms.sroa.4.0.copyload, ptr %link, align 4
  %ikey = getelementptr inbounds %struct.mlxsw_sp_ipip_parms, ptr %agg.result, i32 0, i32 4
  %10 = and i16 %parms.sroa.7.0.copyload, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.i.not.i = icmp eq i16 %10, 0
  %spec.select = select i1 %tobool.i.not.i, i32 0, i32 %parms.sroa.9.0.copyload
  %11 = ptrtoint ptr %ikey to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %ikey, align 4
  %okey = getelementptr inbounds %struct.mlxsw_sp_ipip_parms, ptr %agg.result, i32 0, i32 5
  %12 = and i16 %parms.sroa.8.0.copyload, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.i.not.i3 = icmp eq i16 %12, 0
  %cond.i5 = select i1 %tobool.i.not.i3, i32 0, i32 %parms.sroa.10.0.copyload
  %13 = ptrtoint ptr %okey to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond.i5, ptr %okey, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %parms.sroa.5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_ipip_nexthop_update_gre6(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %adj_index, ptr nocapture noundef readonly %ipip_entry, i1 noundef zeroext %force, ptr noundef %ratr_pl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ol_lb = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, ptr %ipip_entry, i32 0, i32 2
  %0 = ptrtoint ptr %ol_lb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ol_lb, align 4
  %call = tail call zeroext i16 @mlxsw_sp_ipip_lb_rif_index(ptr noundef %1) #12
  %cond = select i1 %force, i32 1, i32 3
  tail call fastcc void @mlxsw_reg_ratr_pack(ptr noundef %ratr_pl, i32 noundef %cond, i32 noundef %adj_index, i16 noundef zeroext %call)
  %dip_kvdl_index = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, ptr %ipip_entry, i32 0, i32 6
  %2 = ptrtoint ptr %dip_kvdl_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dip_kvdl_index, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %ratr_pl, i32 4
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %5, -983041
  %or.i.i.i = or i32 %and7.i.i.i, 65536
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %and6.i.i25.i = and i32 %3, 16777215
  %arrayidx.i.i26.i = getelementptr i32, ptr %ratr_pl, i32 7
  %6 = ptrtoint ptr %arrayidx.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i26.i, align 4
  %and7.i.i28.i = and i32 %7, -16777216
  %or.i.i29.i = or i32 %and6.i.i25.i, %and7.i.i28.i
  store i32 %or.i.i29.i, ptr %arrayidx.i.i26.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %call1 = tail call i32 @mlxsw_reg_write(ptr noundef %9, ptr noundef nonnull @mlxsw_reg_ratr, ptr noundef %ratr_pl) #12
  ret i32 %call1
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxsw_sp2_ipip_can_offload_gre6(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readonly %ol_dev) #9 align 64 {
entry:
  %addr.i28.i = alloca %union.mlxsw_sp_l3addr, align 4
  %addr.i.i = alloca %union.mlxsw_sp_l3addr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tparm.sroa.625.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2384
  %0 = ptrtoint ptr %tparm.sroa.625.0.parms.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %tparm.sroa.625.0.copyload = load i16, ptr %tparm.sroa.625.0.parms.i.sroa_idx, align 8
  %1 = and i16 %tparm.sroa.625.0.copyload, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp6 = icmp eq i16 %1, 0
  br i1 %cmp6, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %tparm.sroa.4.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2342
  %2 = ptrtoint ptr %tparm.sroa.4.0.parms.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %tparm.sroa.4.0.copyload = load i8, ptr %tparm.sroa.4.0.parms.i.sroa_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tparm.sroa.4.0.copyload)
  %cmp = icmp ne i8 %tparm.sroa.4.0.copyload, 0
  %tparm.sroa.524.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2348
  %3 = ptrtoint ptr %tparm.sroa.524.0.parms.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %tparm.sroa.524.0.copyload = load i32, ptr %tparm.sroa.524.0.parms.i.sroa_idx, align 4
  %and = and i32 %tparm.sroa.524.0.copyload, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tparm.sroa.7.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2386
  %4 = ptrtoint ptr %tparm.sroa.7.0.parms.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %tparm.sroa.7.0.copyload = load i16, ptr %tparm.sroa.7.0.parms.i.sroa_idx, align 2
  %5 = and i16 %tparm.sroa.7.0.copyload, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp12 = icmp ne i16 %5, 0
  %brmerge = select i1 %cmp12, i1 true, i1 %cmp
  %brmerge23 = select i1 %brmerge, i1 true, i1 %tobool.not
  br i1 %brmerge23, label %land.lhs.true.land.end_crit_edge, label %land.rhs

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %parms6.i.sroa.3.0.parms.i21.i.sroa_idx.i = getelementptr i8, ptr %ol_dev, i32 2352
  %6 = ptrtoint ptr %parms6.i.sroa.3.0.parms.i21.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %parms6.i.sroa.3.0.copyload.i = load i32, ptr %parms6.i.sroa.3.0.parms.i21.i.sroa_idx.i, align 8, !noalias !156
  %parms6.i.sroa.4.0.parms.i21.i.sroa_idx.i = getelementptr i8, ptr %ol_dev, i32 2356
  %7 = ptrtoint ptr %parms6.i.sroa.4.0.parms.i21.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %parms6.i.sroa.4.0.copyload.i = load i32, ptr %parms6.i.sroa.4.0.parms.i21.i.sroa_idx.i, align 4, !noalias !156
  %parms6.i.sroa.5.0.parms.i21.i.sroa_idx.i = getelementptr i8, ptr %ol_dev, i32 2360
  %8 = ptrtoint ptr %parms6.i.sroa.5.0.parms.i21.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %parms6.i.sroa.5.0.copyload.i = load i32, ptr %parms6.i.sroa.5.0.parms.i21.i.sroa_idx.i, align 8, !noalias !156
  %parms6.i.sroa.6.0.parms.i21.i.sroa_idx.i = getelementptr i8, ptr %ol_dev, i32 2364
  %9 = ptrtoint ptr %parms6.i.sroa.6.0.parms.i21.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %parms6.i.sroa.6.0.copyload.i = load i32, ptr %parms6.i.sroa.6.0.parms.i21.i.sroa_idx.i, align 4, !noalias !156
  %parms6.i21.sroa.3.0.parms.i21.i25.sroa_idx.i = getelementptr i8, ptr %ol_dev, i32 2368
  %10 = ptrtoint ptr %parms6.i21.sroa.3.0.parms.i21.i25.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %parms6.i21.sroa.3.0.copyload.i = load i32, ptr %parms6.i21.sroa.3.0.parms.i21.i25.sroa_idx.i, align 8, !noalias !159
  %parms6.i21.sroa.4.0.parms.i21.i25.sroa_idx.i = getelementptr i8, ptr %ol_dev, i32 2372
  %11 = ptrtoint ptr %parms6.i21.sroa.4.0.parms.i21.i25.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %parms6.i21.sroa.4.0.copyload.i = load i32, ptr %parms6.i21.sroa.4.0.parms.i21.i25.sroa_idx.i, align 4, !noalias !159
  %parms6.i21.sroa.5.0.parms.i21.i25.sroa_idx.i = getelementptr i8, ptr %ol_dev, i32 2376
  %12 = ptrtoint ptr %parms6.i21.sroa.5.0.parms.i21.i25.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %parms6.i21.sroa.5.0.copyload.i = load i32, ptr %parms6.i21.sroa.5.0.parms.i21.i25.sroa_idx.i, align 8, !noalias !159
  %parms6.i21.sroa.6.0.parms.i21.i25.sroa_idx.i = getelementptr i8, ptr %ol_dev, i32 2380
  %13 = ptrtoint ptr %parms6.i21.sroa.6.0.parms.i21.i25.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %parms6.i21.sroa.6.0.copyload.i = load i32, ptr %parms6.i21.sroa.6.0.parms.i21.i25.sroa_idx.i, align 4, !noalias !159
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr.i.i) #12
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %parms6.i.sroa.3.0.copyload.i, ptr %addr.i.i, align 4
  %addr.coerce.fca.1.gep.i.i = getelementptr inbounds [4 x i32], ptr %addr.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %addr.coerce.fca.1.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %parms6.i.sroa.4.0.copyload.i, ptr %addr.coerce.fca.1.gep.i.i, align 4
  %addr.coerce.fca.2.gep.i.i = getelementptr inbounds [4 x i32], ptr %addr.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %addr.coerce.fca.2.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %parms6.i.sroa.5.0.copyload.i, ptr %addr.coerce.fca.2.gep.i.i, align 4
  %addr.coerce.fca.3.gep.i.i = getelementptr inbounds [4 x i32], ptr %addr.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %addr.coerce.fca.3.gep.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %parms6.i.sroa.6.0.copyload.i, ptr %addr.coerce.fca.3.gep.i.i, align 4
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %addr.i.i, ptr noundef nonnull dereferenceable(16) @__const.mlxsw_sp_l3addr_is_zero.naddr, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr.i.i) #12
  br i1 %tobool.not.i.i, label %land.rhs.land.end_crit_edge, label %land.rhs.i

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs.i:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr.i28.i) #12
  %18 = ptrtoint ptr %addr.i28.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %parms6.i21.sroa.3.0.copyload.i, ptr %addr.i28.i, align 4
  %addr.coerce.fca.1.gep.i29.i = getelementptr inbounds [4 x i32], ptr %addr.i28.i, i32 0, i32 1
  %19 = ptrtoint ptr %addr.coerce.fca.1.gep.i29.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %parms6.i21.sroa.4.0.copyload.i, ptr %addr.coerce.fca.1.gep.i29.i, align 4
  %addr.coerce.fca.2.gep.i30.i = getelementptr inbounds [4 x i32], ptr %addr.i28.i, i32 0, i32 2
  %20 = ptrtoint ptr %addr.coerce.fca.2.gep.i30.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %parms6.i21.sroa.5.0.copyload.i, ptr %addr.coerce.fca.2.gep.i30.i, align 4
  %addr.coerce.fca.3.gep.i31.i = getelementptr inbounds [4 x i32], ptr %addr.i28.i, i32 0, i32 3
  %21 = ptrtoint ptr %addr.coerce.fca.3.gep.i31.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %parms6.i21.sroa.6.0.copyload.i, ptr %addr.coerce.fca.3.gep.i31.i, align 4
  %bcmp.i32.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %addr.i28.i, ptr noundef nonnull dereferenceable(16) @__const.mlxsw_sp_l3addr_is_zero.naddr, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i32.i)
  %tobool.not.i33.i = icmp ne i32 %bcmp.i32.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr.i28.i) #12
  br label %land.end

land.end:                                         ; preds = %land.rhs.i, %land.rhs.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %22 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ false, %land.rhs.land.end_crit_edge ], [ %tobool.not.i33.i, %land.rhs.i ]
  ret i1 %22
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp2_ipip_ol_loopback_config_gre6(ptr noalias nocapture writeonly sret(%struct.mlxsw_sp_rif_ipip_lb_config) align 4 %agg.result, ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readonly %ol_dev) #5 align 64 {
entry:
  %parms6.i = alloca %struct.__ip6_tnl_parm, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parms.i = getelementptr i8, ptr %ol_dev, i32 2320
  %parms.sroa.4.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2386
  %0 = ptrtoint ptr %parms.sroa.4.0.parms.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %parms.sroa.4.0.copyload = load i16, ptr %parms.sroa.4.0.parms.i.sroa_idx, align 2
  %parms.sroa.65.0.parms.i.sroa_idx = getelementptr i8, ptr %ol_dev, i32 2392
  %1 = ptrtoint ptr %parms.sroa.65.0.parms.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %parms.sroa.65.0.copyload = load i32, ptr %parms.sroa.65.0.parms.i.sroa_idx, align 8
  %2 = and i16 %parms.sroa.4.0.copyload, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.i.not = icmp eq i16 %2, 0
  %cond = select i1 %tobool.i.not, i32 1, i32 2
  %3 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond, ptr %agg.result, align 4
  %okey = getelementptr inbounds %struct.mlxsw_sp_rif_ipip_lb_config, ptr %agg.result, i32 0, i32 1
  %spec.select = select i1 %tobool.i.not, i32 0, i32 %parms.sroa.65.0.copyload
  %4 = ptrtoint ptr %okey to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %okey, align 4
  %ul_protocol = getelementptr inbounds %struct.mlxsw_sp_rif_ipip_lb_config, ptr %agg.result, i32 0, i32 2
  %5 = ptrtoint ptr %ul_protocol to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %ul_protocol, align 4
  %saddr = getelementptr inbounds %struct.mlxsw_sp_rif_ipip_lb_config, ptr %agg.result, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %parms6.i)
  %6 = call ptr @memcpy(ptr %parms6.i, ptr %parms.i, i32 88)
  %laddr.i.i = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms6.i, i32 0, i32 8
  %7 = call ptr @memcpy(ptr %saddr, ptr %laddr.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %parms6.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_ipip_decap_config_gre6(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %ipip_entry, i32 noundef %tunnel_index) #2 align 64 {
entry:
  %rtdp_pl = alloca [68 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ol_lb = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, ptr %ipip_entry, i32 0, i32 2
  %0 = ptrtoint ptr %ol_lb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ol_lb, align 4
  %call = tail call zeroext i16 @mlxsw_sp_ipip_lb_rif_index(ptr noundef %1) #12
  %2 = ptrtoint ptr %ol_lb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ol_lb, align 4
  %call2 = tail call zeroext i16 @mlxsw_sp_ipip_lb_ul_rif_id(ptr noundef %3) #12
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %rtdp_pl) #12
  %4 = call ptr @memset(ptr %rtdp_pl, i32 255, i32 68)
  %ol_dev = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, ptr %ipip_entry, i32 0, i32 1
  %5 = ptrtoint ptr %ol_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ol_dev, align 4
  %tmp.sroa.4.0.parms.i.sroa_idx = getelementptr i8, ptr %6, i32 2384
  %7 = ptrtoint ptr %tmp.sroa.4.0.parms.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %7)
  %tmp.sroa.4.0.copyload = load i16, ptr %tmp.sroa.4.0.parms.i.sroa_idx, align 8
  %tmp.sroa.6.0.parms.i.sroa_idx = getelementptr i8, ptr %6, i32 2388
  %8 = ptrtoint ptr %tmp.sroa.6.0.parms.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.sroa.6.0.copyload = load i32, ptr %tmp.sroa.6.0.parms.i.sroa_idx, align 4
  %9 = and i16 %tmp.sroa.4.0.copyload, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.i = icmp ne i16 %9, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.i.not.i = icmp eq i16 %9, 0
  %spec.select = select i1 %tobool.i.not.i, i32 0, i32 %tmp.sroa.6.0.copyload
  call fastcc void @mlxsw_reg_rtdp_pack(ptr noundef nonnull %rtdp_pl, i32 noundef %tunnel_index)
  %conv = zext i16 %call2 to i32
  %arrayidx.i.i = getelementptr inbounds i32, ptr %rtdp_pl, i32 16
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %and7.i.i = and i32 %11, -65536
  %or.i.i = or i32 %and7.i.i, %conv
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %cond = select i1 %tobool.i, i32 4, i32 2
  %dip_kvdl_index = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, ptr %ipip_entry, i32 0, i32 6
  %12 = ptrtoint ptr %dip_kvdl_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dip_kvdl_index, align 4
  call fastcc void @mlxsw_reg_rtdp_ipip_pack(ptr noundef nonnull %rtdp_pl, i16 noundef zeroext %call, i32 noundef 3, i32 noundef %cond, i1 noundef zeroext %tobool.i, i32 noundef %spec.select) #12
  %and6.i.i.i = and i32 %13, 16777215
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %rtdp_pl, i32 4
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %15, -16777216
  %or.i.i.i = or i32 %and6.i.i.i, %and7.i.i.i
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %16 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core, align 4
  %call10 = call i32 @mlxsw_reg_write(ptr noundef %17, ptr noundef nonnull @mlxsw_reg_rtdp, ptr noundef nonnull %rtdp_pl) #12
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %rtdp_pl) #12
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_ipip_ol_netdev_change_gre6(ptr noundef %mlxsw_sp, ptr noundef %ipip_entry, ptr noundef %extack) #2 align 64 {
entry:
  %parms.sroa.5.i = alloca { i8, i8, i8, i8, i32, i32, %struct.in6_addr }, align 4
  %new_parms = alloca %struct.mlxsw_sp_ipip_parms, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %new_parms) #12
  %ol_dev = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, ptr %ipip_entry, i32 0, i32 1
  %0 = ptrtoint ptr %ol_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ol_dev, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %parms.sroa.5.i)
  %parms.sroa.4.0.parms.i.sroa_idx.i = getelementptr i8, ptr %1, i32 2336
  %2 = ptrtoint ptr %parms.sroa.4.0.parms.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %parms.sroa.4.0.copyload.i = load i32, ptr %parms.sroa.4.0.parms.i.sroa_idx.i, align 8, !noalias !162
  %parms.sroa.5.0.parms.i.sroa_idx.i = getelementptr i8, ptr %1, i32 2340
  %3 = call ptr @memcpy(ptr %parms.sroa.5.i, ptr %parms.sroa.5.0.parms.i.sroa_idx.i, i32 28)
  %parms.sroa.6.0.parms.i.sroa_idx.i = getelementptr i8, ptr %1, i32 2368
  %tmp.sroa.5.0.new_parms.sroa_idx = getelementptr inbounds i8, ptr %new_parms, i32 20
  %4 = call ptr @memcpy(ptr %tmp.sroa.5.0.new_parms.sroa_idx, ptr %parms.sroa.6.0.parms.i.sroa_idx.i, i32 16)
  %parms.sroa.7.0.parms.i.sroa_idx.i = getelementptr i8, ptr %1, i32 2384
  %5 = ptrtoint ptr %parms.sroa.7.0.parms.i.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %parms.sroa.7.0.copyload.i = load i16, ptr %parms.sroa.7.0.parms.i.sroa_idx.i, align 8, !noalias !162
  %parms.sroa.8.0.parms.i.sroa_idx.i = getelementptr i8, ptr %1, i32 2386
  %6 = ptrtoint ptr %parms.sroa.8.0.parms.i.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %parms.sroa.8.0.copyload.i = load i16, ptr %parms.sroa.8.0.parms.i.sroa_idx.i, align 2, !noalias !162
  %parms.sroa.9.0.parms.i.sroa_idx.i = getelementptr i8, ptr %1, i32 2388
  %7 = ptrtoint ptr %parms.sroa.9.0.parms.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %parms.sroa.9.0.copyload.i = load i32, ptr %parms.sroa.9.0.parms.i.sroa_idx.i, align 4, !noalias !162
  %parms.sroa.10.0.parms.i.sroa_idx.i = getelementptr i8, ptr %1, i32 2392
  %8 = ptrtoint ptr %parms.sroa.10.0.parms.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %parms.sroa.10.0.copyload.i = load i32, ptr %parms.sroa.10.0.parms.i.sroa_idx.i, align 8, !noalias !162
  %parms.sroa.5.32.laddr.i.sroa_idx.i = getelementptr inbounds i8, ptr %parms.sroa.5.i, i32 12
  %tmp.sroa.4.0.new_parms.sroa_idx = getelementptr inbounds i8, ptr %new_parms, i32 4
  %9 = call ptr @memcpy(ptr %tmp.sroa.4.0.new_parms.sroa_idx, ptr %parms.sroa.5.32.laddr.i.sroa_idx.i, i32 16)
  %10 = and i16 %parms.sroa.7.0.copyload.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.i.not.i.i = icmp eq i16 %10, 0
  %spec.select.i = select i1 %tobool.i.not.i.i, i32 0, i32 %parms.sroa.9.0.copyload.i
  %11 = and i16 %parms.sroa.8.0.copyload.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.i.not.i3.i = icmp eq i16 %11, 0
  %cond.i5.i = select i1 %tobool.i.not.i3.i, i32 0, i32 %parms.sroa.10.0.copyload.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %parms.sroa.5.i)
  %12 = ptrtoint ptr %new_parms to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %new_parms, align 4
  %tmp.sroa.6.0.new_parms.sroa_idx = getelementptr inbounds i8, ptr %new_parms, i32 36
  %13 = ptrtoint ptr %tmp.sroa.6.0.new_parms.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %parms.sroa.4.0.copyload.i, ptr %tmp.sroa.6.0.new_parms.sroa_idx, align 4
  %tmp.sroa.7.0.new_parms.sroa_idx = getelementptr inbounds i8, ptr %new_parms, i32 40
  %14 = ptrtoint ptr %tmp.sroa.7.0.new_parms.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select.i, ptr %tmp.sroa.7.0.new_parms.sroa_idx, align 4
  %tmp.sroa.8.0.new_parms.sroa_idx = getelementptr inbounds i8, ptr %new_parms, i32 44
  %15 = ptrtoint ptr %tmp.sroa.8.0.new_parms.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond.i5.i, ptr %tmp.sroa.8.0.new_parms.sroa_idx, align 4
  %call = call fastcc i32 @mlxsw_sp_ipip_ol_netdev_change_gre(ptr noundef %mlxsw_sp, ptr noundef %ipip_entry, ptr noundef nonnull %new_parms, ptr noundef %extack)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %new_parms) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_ipip_rem_addr_set_gre6(ptr noundef %mlxsw_sp, ptr noundef %ipip_entry) #2 align 64 {
entry:
  %parms6 = alloca %struct.__ip6_tnl_parm, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %parms6) #12
  %ol_dev = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, ptr %ipip_entry, i32 0, i32 1
  %0 = ptrtoint ptr %ol_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ol_dev, align 4
  %parms.i = getelementptr i8, ptr %1, i32 2320
  %2 = call ptr @memmove(ptr %parms6, ptr %parms.i, i32 88)
  %raddr = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms6, i32 0, i32 9
  %dip_kvdl_index = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, ptr %ipip_entry, i32 0, i32 6
  %call = call i32 @mlxsw_sp_ipv6_addr_kvdl_index_get(ptr noundef %mlxsw_sp, ptr noundef %raddr, ptr noundef %dip_kvdl_index) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %parms6) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_ipip_rem_addr_unset_gre6(ptr noundef %mlxsw_sp, ptr nocapture noundef readonly %ipip_entry) #2 align 64 {
entry:
  %parms6 = alloca %struct.__ip6_tnl_parm, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %parms6) #12
  %ol_dev = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, ptr %ipip_entry, i32 0, i32 1
  %0 = ptrtoint ptr %ol_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ol_dev, align 4
  %parms.i = getelementptr i8, ptr %1, i32 2320
  %2 = call ptr @memmove(ptr %parms6, ptr %parms.i, i32 88)
  %raddr = getelementptr inbounds %struct.__ip6_tnl_parm, ptr %parms6, i32 0, i32 9
  call void @mlxsw_sp_ipv6_addr_put(ptr noundef %mlxsw_sp, ptr noundef %raddr) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %parms6) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_ipv6_addr_kvdl_index_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_ipv6_addr_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ipip.c", i32 111, i32 2}
!2 = !{ptr @mlxsw_sp1_ipip_ops_arr, !3, !"mlxsw_sp1_ipip_ops_arr", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ipip.c", i32 446, i32 33}
!4 = !{ptr @mlxsw_sp2_ipip_ops_arr, !5, !"mlxsw_sp2_ipip_ops_arr", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ipip.c", i32 602, i32 33}
!6 = !{ptr @mlxsw_sp_ipip_gre4_ops, !7, !"mlxsw_sp_ipip_gre4_ops", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ipip.c", i32 351, i32 39}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__mlxsw_item_offset._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @__mlxsw_item_offset._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 6912, i32 1}
!16 = distinct !{null, !15, !"mlxsw_reg_ratr_op_item", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 6926, i32 1}
!19 = distinct !{null, !18, !"mlxsw_reg_ratr_v_item", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 6965, i32 1}
!22 = distinct !{null, !21, !"mlxsw_reg_ratr_type_item", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 6974, i32 1}
!25 = distinct !{null, !24, !"mlxsw_reg_ratr_adjacency_index_low_item", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 7000, i32 1}
!28 = distinct !{null, !27, !"mlxsw_reg_ratr_adjacency_index_high_item", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 6980, i32 1}
!31 = distinct !{null, !30, !"mlxsw_reg_ratr_egress_router_interface_item", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 7033, i32 1}
!34 = distinct !{null, !33, !"mlxsw_reg_ratr_ipip_type_item", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 7040, i32 1}
!37 = distinct !{null, !36, !"mlxsw_reg_ratr_ipip_ipv4_udip_item", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 6888, i32 1}
!40 = !{ptr @mlxsw_reg_ratr, !39, !"mlxsw_reg_ratr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8186, i32 1}
!43 = distinct !{null, !42, !"mlxsw_reg_rtdp_type_item", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8193, i32 1}
!46 = distinct !{null, !45, !"mlxsw_reg_rtdp_tunnel_index_item", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8200, i32 1}
!49 = distinct !{null, !48, !"mlxsw_reg_rtdp_egress_router_interface_item", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8208, i32 1}
!52 = distinct !{null, !51, !"mlxsw_reg_rtdp_ipip_irif_item", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8228, i32 1}
!55 = distinct !{null, !54, !"mlxsw_reg_rtdp_ipip_sip_check_item", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8242, i32 1}
!58 = distinct !{null, !57, !"mlxsw_reg_rtdp_ipip_type_check_item", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8253, i32 1}
!61 = distinct !{null, !60, !"mlxsw_reg_rtdp_ipip_gre_key_check_item", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8276, i32 1}
!64 = distinct !{null, !63, !"mlxsw_reg_rtdp_ipip_expected_gre_key_item", i1 false, i1 false}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8260, i32 1}
!67 = distinct !{null, !66, !"mlxsw_reg_rtdp_ipip_ipv4_usip_item", i1 false, i1 false}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8175, i32 1}
!70 = !{ptr @mlxsw_reg_rtdp, !69, !"mlxsw_reg_rtdp", i1 false, i1 false}
!71 = !{ptr @mlxsw_sp1_ipip_gre6_ops, !72, !"mlxsw_sp1_ipip_gre6_ops", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ipip.c", i32 432, i32 39}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ipip.c", i32 370, i32 2}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ipip.c", i32 379, i32 2}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ipip.c", i32 404, i32 2}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ipip.c", i32 388, i32 2}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ipip.c", i32 413, i32 2}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ipip.c", i32 421, i32 2}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ipip.c", i32 429, i32 2}
!87 = !{ptr @mlxsw_sp2_ipip_gre6_ops, !88, !"mlxsw_sp2_ipip_gre6_ops", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_ipip.c", i32 588, i32 39}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 7047, i32 1}
!91 = distinct !{null, !90, !"mlxsw_reg_ratr_ipip_ipv6_ptr_item", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8269, i32 1}
!94 = distinct !{null, !93, !"mlxsw_reg_rtdp_ipip_ipv6_usip_ptr_item", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11992, i32 1}
!97 = distinct !{null, !96, !"mlxsw_reg_tieem_overlay_ecn_item", i1 false, i1 false}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11998, i32 1}
!100 = distinct !{null, !99, !"mlxsw_reg_tieem_underlay_ecn_item", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11986, i32 1}
!103 = !{ptr @mlxsw_reg_tieem, !102, !"mlxsw_reg_tieem", i1 false, i1 false}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12022, i32 1}
!106 = distinct !{null, !105, !"mlxsw_reg_tidem_underlay_ecn_item", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12028, i32 1}
!109 = distinct !{null, !108, !"mlxsw_reg_tidem_overlay_ecn_item", i1 false, i1 false}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12035, i32 1}
!112 = distinct !{null, !111, !"mlxsw_reg_tidem_eip_ecn_item", i1 false, i1 false}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12043, i32 1}
!115 = distinct !{null, !114, !"mlxsw_reg_tidem_trap_en_item", i1 false, i1 false}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12050, i32 1}
!118 = distinct !{null, !117, !"mlxsw_reg_tidem_trap_id_item", i1 false, i1 false}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 12016, i32 1}
!121 = !{ptr @mlxsw_reg_tidem, !120, !"mlxsw_reg_tidem", i1 false, i1 false}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"mlxsw_sp_ipip_parms4_saddr: %agg.result"}
!133 = distinct !{!133, !"mlxsw_sp_ipip_parms4_saddr"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"mlxsw_sp_ipip_parms4_saddr: %agg.result"}
!136 = distinct !{!136, !"mlxsw_sp_ipip_parms4_saddr"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"mlxsw_sp_ipip_parms4_daddr: %agg.result"}
!139 = distinct !{!139, !"mlxsw_sp_ipip_parms4_daddr"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"mlxsw_sp_ipip_netdev_saddr: %agg.result"}
!142 = distinct !{!142, !"mlxsw_sp_ipip_netdev_saddr"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"mlxsw_sp_ipip_netdev_daddr: %agg.result"}
!145 = distinct !{!145, !"mlxsw_sp_ipip_netdev_daddr"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"mlxsw_sp_ipip_netdev_saddr: %agg.result"}
!148 = distinct !{!148, !"mlxsw_sp_ipip_netdev_saddr"}
!149 = !{!150, !147}
!150 = distinct !{!150, !151, !"mlxsw_sp_ipip_parms4_saddr: %agg.result"}
!151 = distinct !{!151, !"mlxsw_sp_ipip_parms4_saddr"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"mlxsw_sp_ipip_netdev_parms_init_gre4: %agg.result"}
!154 = distinct !{!154, !"mlxsw_sp_ipip_netdev_parms_init_gre4"}
!155 = !{!"branch_weights", i32 2000, i32 1}
!156 = !{!157}
!157 = distinct !{!157, !158, !"mlxsw_sp_ipip_netdev_saddr: %agg.result"}
!158 = distinct !{!158, !"mlxsw_sp_ipip_netdev_saddr"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"mlxsw_sp_ipip_netdev_daddr: %agg.result"}
!161 = distinct !{!161, !"mlxsw_sp_ipip_netdev_daddr"}
!162 = !{!163}
!163 = distinct !{!163, !164, !"mlxsw_sp2_ipip_netdev_parms_init_gre6: %agg.result"}
!164 = distinct !{!164, !"mlxsw_sp2_ipip_netdev_parms_init_gre6"}
