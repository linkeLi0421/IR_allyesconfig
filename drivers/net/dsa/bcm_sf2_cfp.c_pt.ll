; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/bcm_sf2_cfp.c_pt.bc'
source_filename = "../drivers/net/dsa/bcm_sf2_cfp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bcm_sf2_cfp_stat = type { i32, i32, ptr }
%struct.cfp_udf_layout = type { [4 x %struct.cfp_udf_slice_layout] }
%struct.cfp_udf_slice_layout = type { [9 x i8], i32, i32 }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dsa_port = type { %union.anon.146, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.146 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.135 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.135 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.b53_device = type { ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, ptr, i32, i8, [3 x i8], i8, i8, i8, i32, i8, i16, i32, i16, i32, i8, ptr, i8, ptr, ptr, i8, i32, ptr, i8, i32, ptr }
%struct.bcm_sf2_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, ptr, %struct.bcm_sf2_hw_params, [12 x %struct.bcm_sf2_port_status], i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, %struct.bcm_sf2_cfp_priv }
%struct.bcm_sf2_hw_params = type { i16, i16, i16, i32, i8, i8, i8, i8 }
%struct.bcm_sf2_port_status = type { i32, i32, i8 }
%struct.bcm_sf2_cfp_priv = type { %struct.mutex, [8 x i32], [8 x i32], i32, %struct.list_head }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.144, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.144 = type { i32 }
%struct.cfp_rule = type { i32, %struct.ethtool_rx_flow_spec, %struct.list_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.126, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.126 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_rx_flow_spec_input = type { ptr, i32 }
%struct.flow_match_ipv6_addrs = type { ptr, ptr }
%struct.flow_match_ports = type { ptr, ptr }
%struct.flow_match_ipv4_addrs = type { ptr, ptr }
%struct.flow_match_ip = type { ptr, ptr }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.anon.166 = type { i16, i16 }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }

@bcm_sf2_cfp_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1246, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to remove rule\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm_sf2_cfp_resume\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/dsa/bcm_sf2_cfp.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm_sf2_cfp_resume._entry_ptr = internal global ptr @bcm_sf2_cfp_resume._entry, section ".printk_index", align 4
@bcm_sf2_cfp_resume._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1252, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to restore rule\0A\00", [40 x i8] zeroinitializer }, align 32
@bcm_sf2_cfp_resume._entry_ptr.7 = internal global ptr @bcm_sf2_cfp_resume._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CFP%03d_%sCntr\00", [17 x i8] zeroinitializer }, align 32
@bcm_sf2_cfp_stats = internal constant { [3 x %struct.bcm_sf2_cfp_stat], [60 x i8] } { [3 x %struct.bcm_sf2_cfp_stat] [%struct.bcm_sf2_cfp_stat { i32 164352, i32 8192, ptr @.str.19 }, %struct.bcm_sf2_cfp_stat { i32 164368, i32 16384, ptr @.str.20 }, %struct.bcm_sf2_cfp_stat { i32 164384, i32 24576, ptr @.str.21 }], [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@udf_tcpip4_layout = internal constant { %struct.cfp_udf_layout, [48 x i8] } { %struct.cfp_udf_layout { [4 x %struct.cfp_udf_slice_layout] [%struct.cfp_udf_slice_layout zeroinitializer, %struct.cfp_udf_slice_layout { [9 x i8] c"FGHI`a\00\00\00", i32 50397056, i32 164992 }, %struct.cfp_udf_slice_layout zeroinitializer, %struct.cfp_udf_slice_layout zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@bcm_sf2_cfp_ipv4_rule_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013TCAM entry at addr %d failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bcm_sf2_cfp_ipv4_rule_set\00", [38 x i8] zeroinitializer }, align 32
@bcm_sf2_cfp_ipv4_rule_set._entry_ptr = internal global ptr @bcm_sf2_cfp_ipv4_rule_set._entry, section ".printk_index", align 4
@zero_slice = internal constant { [9 x i8], [23 x i8] } zeroinitializer, align 32
@bcm_sf2_cfp_act_pol_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Policer entry at %d failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bcm_sf2_cfp_act_pol_set\00", [40 x i8] zeroinitializer }, align 32
@bcm_sf2_cfp_act_pol_set._entry_ptr = internal global ptr @bcm_sf2_cfp_act_pol_set._entry, section ".printk_index", align 4
@bcm_sf2_cfp_act_pol_set._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Meter entry at %d failed\0A\00", [36 x i8] zeroinitializer }, align 32
@bcm_sf2_cfp_act_pol_set._entry_ptr.15 = internal global ptr @bcm_sf2_cfp_act_pol_set._entry.13, section ".printk_index", align 4
@udf_tcpip6_layout = internal constant { %struct.cfp_udf_layout, [48 x i8] } { %struct.cfp_udf_layout { [4 x %struct.cfp_udf_slice_layout] [%struct.cfp_udf_slice_layout { [9 x i8] c"DEFGHIJK`", i32 50397056, i32 165120 }, %struct.cfp_udf_slice_layout zeroinitializer, %struct.cfp_udf_slice_layout zeroinitializer, %struct.cfp_udf_slice_layout { [9 x i8] c"LMNOPQRSa", i32 50397056, i32 165504 }] }, [48 x i8] zeroinitializer }, align 32
@bcm_sf2_cfp_ipv6_rule_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.16, ptr @.str.2, i32 757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bcm_sf2_cfp_ipv6_rule_set\00", [38 x i8] zeroinitializer }, align 32
@bcm_sf2_cfp_ipv6_rule_set._entry_ptr = internal global ptr @bcm_sf2_cfp_ipv6_rule_set._entry, section ".printk_index", align 4
@bcm_sf2_cfp_ipv6_rule_set._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.16, ptr @.str.2, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bcm_sf2_cfp_ipv6_rule_set._entry_ptr.18 = internal global ptr @bcm_sf2_cfp_ipv6_rule_set._entry.17, section ".printk_index", align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Green\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Yellow\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Red\00", [28 x i8] zeroinitializer }, align 32
@switch.table.bcm_sf2_set_rxnfc = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 16, i32 16, i32 40, i32 40, i32 40, i32 40], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 49, i64 50]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1246, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1252, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1296, i32 6 }
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"bcm_sf2_cfp_stats\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1264, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"udf_tcpip4_layout\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 41, i32 36 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 455, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [11 x i8] c"zero_slice\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 38, i32 17 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 246, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 256, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [18 x i8] c"udf_tcpip6_layout\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 66, i32 36 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 757, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 813, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1268, i32 11 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1273, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [33 x i8] c"../drivers/net/dsa/bcm_sf2_cfp.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1278, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant [31 x i8] c"switch.table.bcm_sf2_set_rxnfc\00", align 1
@llvm.compiler.used = appending global [35 x ptr] [ptr @bcm_sf2_cfp_act_pol_set._entry, ptr @bcm_sf2_cfp_act_pol_set._entry.13, ptr @bcm_sf2_cfp_act_pol_set._entry_ptr, ptr @bcm_sf2_cfp_act_pol_set._entry_ptr.15, ptr @bcm_sf2_cfp_ipv4_rule_set._entry, ptr @bcm_sf2_cfp_ipv4_rule_set._entry_ptr, ptr @bcm_sf2_cfp_ipv6_rule_set._entry, ptr @bcm_sf2_cfp_ipv6_rule_set._entry.17, ptr @bcm_sf2_cfp_ipv6_rule_set._entry_ptr, ptr @bcm_sf2_cfp_ipv6_rule_set._entry_ptr.18, ptr @bcm_sf2_cfp_resume._entry, ptr @bcm_sf2_cfp_resume._entry.5, ptr @bcm_sf2_cfp_resume._entry_ptr, ptr @bcm_sf2_cfp_resume._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @bcm_sf2_cfp_stats, ptr @udf_tcpip4_layout, ptr @.str.9, ptr @.str.10, ptr @zero_slice, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @udf_tcpip6_layout, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @switch.table.bcm_sf2_set_rxnfc], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_cfp_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_cfp_resume._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_cfp_stats to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_tcpip4_layout to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_cfp_ipv4_rule_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zero_slice to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_cfp_act_pol_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_cfp_act_pol_set._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_tcpip6_layout to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_cfp_ipv6_rule_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_cfp_ipv6_rule_set._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bcm_sf2_set_rxnfc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_sf2_get_rxnfc(ptr noundef readonly %ds, i32 noundef %port, ptr noundef %nfc, ptr noundef %rule_locs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %3 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %4, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %5 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %port)
  %cmp5.i = icmp eq i32 %6, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i39 = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %cpu_dp = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i39, i32 0, i32 8
  %8 = ptrtoint ptr %cpu_dp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpu_dp, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv1.i, align 4
  %cfp = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %cfp, i32 noundef 0) #15
  %16 = ptrtoint ptr %nfc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nfc, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %dsa_to_port.exit.sw.epilog_crit_edge [
    i32 46, label %if.end.i
    i32 47, label %sw.bb4
    i32 48, label %sw.bb6
  ]

dsa_to_port.exit.sw.epilog_crit_edge:             ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end.i:                                         ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #17
  %num_cfp_rules = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 10
  %19 = ptrtoint ptr %num_cfp_rules to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_cfp_rules, align 4
  %unique = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 32, i32 2
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %unique, i32 noundef %20) #15
  %sub = add i32 %call4.i, -1
  %21 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %21, align 8
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 2
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %data, align 8
  %or = or i64 %24, 2147483648
  store i64 %or, ptr %data, align 8
  br label %if.end

sw.bb4:                                           ; preds = %dsa_to_port.exit
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3, i32 6
  %25 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %location.i, align 8
  %rules_list.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 32, i32 4
  %27 = ptrtoint ptr %rules_list.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn18.i.i = load ptr, ptr %rules_list.i.i, align 4
  %rule.019.i.i = getelementptr i8, ptr %.pn18.i.i, i32 -176
  %cmp.not20.i.i = icmp eq ptr %.pn18.i.i, %rules_list.i.i
  br i1 %cmp.not20.i.i, label %sw.bb4.bcm_sf2_cfp_rule_find.exit.i_crit_edge, label %sw.bb4.for.body.i.i_crit_edge

sw.bb4.for.body.i.i_crit_edge:                    ; preds = %sw.bb4
  br label %for.body.i.i

sw.bb4.bcm_sf2_cfp_rule_find.exit.i_crit_edge:    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_rule_find.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.bb4.for.body.i.i_crit_edge
  %rule.022.i.i = phi ptr [ %rule.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %rule.019.i.i, %sw.bb4.for.body.i.i_crit_edge ]
  %.pn21.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn18.i.i, %sw.bb4.for.body.i.i_crit_edge ]
  %28 = ptrtoint ptr %rule.022.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rule.022.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %port)
  %cmp5.i.i = icmp eq i32 %29, %port
  br i1 %cmp5.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %location6.i.i = getelementptr i8, ptr %.pn21.i.i, i32 -8
  %30 = ptrtoint ptr %location6.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %location6.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %26)
  %cmp7.i.i = icmp eq i32 %31, %26
  br i1 %cmp7.i.i, label %land.lhs.true.i.i.bcm_sf2_cfp_rule_find.exit.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

land.lhs.true.i.i.bcm_sf2_cfp_rule_find.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_rule_find.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %32 = ptrtoint ptr %.pn21.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.i.i = load ptr, ptr %.pn21.i.i, align 4
  %rule.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -176
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %rules_list.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.bcm_sf2_cfp_rule_find.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.bcm_sf2_cfp_rule_find.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_rule_find.exit.i

bcm_sf2_cfp_rule_find.exit.i:                     ; preds = %for.inc.i.i.bcm_sf2_cfp_rule_find.exit.i_crit_edge, %land.lhs.true.i.i.bcm_sf2_cfp_rule_find.exit.i_crit_edge, %sw.bb4.bcm_sf2_cfp_rule_find.exit.i_crit_edge
  %rule.0.lcssa.i.i = phi ptr [ %rule.019.i.i, %sw.bb4.bcm_sf2_cfp_rule_find.exit.i_crit_edge ], [ %rule.022.i.i, %land.lhs.true.i.i.bcm_sf2_cfp_rule_find.exit.i_crit_edge ], [ %rule.0.i.i, %for.inc.i.i.bcm_sf2_cfp_rule_find.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %rule.0.lcssa.i.i, null
  br i1 %tobool.not.i, label %bcm_sf2_cfp_rule_find.exit.i.sw.epilog_crit_edge, label %if.end.i40

bcm_sf2_cfp_rule_find.exit.i.sw.epilog_crit_edge: ; preds = %bcm_sf2_cfp_rule_find.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end.i40:                                       ; preds = %bcm_sf2_cfp_rule_find.exit.i
  %fs.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3
  %fs2.i = getelementptr inbounds %struct.cfp_rule, ptr %rule.0.lcssa.i.i, i32 0, i32 1
  %33 = call ptr @memcpy(ptr %fs.i, ptr %fs2.i, i32 168)
  %m_u.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3, i32 3
  br label %for.body.i10.i

for.body.i10.i:                                   ; preds = %for.body.i10.i.for.body.i10.i_crit_edge, %if.end.i40
  %i.022.i.i = phi i32 [ 0, %if.end.i40 ], [ %inc.i.i, %for.body.i10.i.for.body.i10.i_crit_edge ]
  %arrayidx.i.i = getelementptr [52 x i8], ptr %m_u.i.i, i32 0, i32 %i.022.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.i, align 1
  %36 = xor i8 %35, -1
  store i8 %36, ptr %arrayidx.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.022.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 52
  br i1 %exitcond.not.i.i, label %bcm_sf2_invert_masks.exit.i, label %for.body.i10.i.for.body.i10.i_crit_edge

for.body.i10.i.for.body.i10.i_crit_edge:          ; preds = %for.body.i10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i10.i

bcm_sf2_invert_masks.exit.i:                      ; preds = %for.body.i10.i
  call void @__sanitizer_cov_trace_pc() #17
  %vlan_etype.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3, i32 4, i32 2
  %37 = ptrtoint ptr %vlan_etype.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vlan_etype.i.i, align 8
  %39 = xor i16 %38, -1
  store i16 %39, ptr %vlan_etype.i.i, align 8
  %vlan_tci.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3, i32 4, i32 3
  %40 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vlan_tci.i.i, align 2
  %42 = xor i16 %41, -1
  store i16 %42, ptr %vlan_tci.i.i, align 2
  %data.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3, i32 4, i32 4
  %43 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data.i.i, align 4
  %xor11.i.i = xor i32 %44, -1
  store i32 %xor11.i.i, ptr %data.i.i, align 4
  %arrayidx14.i.i = getelementptr %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3, i32 4, i32 4, i32 1
  %45 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx14.i.i, align 4
  %xor15.i.i = xor i32 %46, -1
  store i32 %xor15.i.i, ptr %arrayidx14.i.i, align 4
  %num_cfp_rules.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 10
  %47 = ptrtoint ptr %num_cfp_rules.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_cfp_rules.i.i, align 4
  %sub.i.i = add i32 %48, -1
  %conv.i = zext i32 %sub.i.i to i64
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 2
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv.i, ptr %data.i, align 8
  br label %if.end

sw.bb6:                                           ; preds = %dsa_to_port.exit
  %unique.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 32, i32 2
  %num_cfp_rules.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 10
  %50 = ptrtoint ptr %num_cfp_rules.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_cfp_rules.i, align 4
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %unique.i, i32 noundef %51, i32 noundef 1) #15
  %52 = ptrtoint ptr %num_cfp_rules.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_cfp_rules.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %53)
  %cmp1.i = icmp ult i32 %call.i, %53
  br i1 %cmp1.i, label %sw.bb6.for.body.i42_crit_edge, label %sw.bb6.bcm_sf2_cfp_rule_get_all.exit_crit_edge

sw.bb6.bcm_sf2_cfp_rule_get_all.exit_crit_edge:   ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_rule_get_all.exit

sw.bb6.for.body.i42_crit_edge:                    ; preds = %sw.bb6
  br label %for.body.i42

for.body.i42:                                     ; preds = %for.body.i42.for.body.i42_crit_edge, %sw.bb6.for.body.i42_crit_edge
  %rules_cnt.03.i = phi i32 [ %inc.i, %for.body.i42.for.body.i42_crit_edge ], [ 0, %sw.bb6.for.body.i42_crit_edge ]
  %index.02.i = phi i32 [ %call6.i, %for.body.i42.for.body.i42_crit_edge ], [ %call.i, %sw.bb6.for.body.i42_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %rule_locs, i32 %rules_cnt.03.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %index.02.i, ptr %arrayidx.i, align 4
  %inc.i = add i32 %rules_cnt.03.i, 1
  %55 = ptrtoint ptr %num_cfp_rules.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_cfp_rules.i, align 4
  %add.i = add nuw i32 %index.02.i, 1
  %call6.i = tail call i32 @_find_next_bit_be(ptr noundef %unique.i, i32 noundef %56, i32 noundef %add.i) #15
  %57 = ptrtoint ptr %num_cfp_rules.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_cfp_rules.i, align 4
  %cmp.i = icmp ult i32 %call6.i, %58
  br i1 %cmp.i, label %for.body.i42.for.body.i42_crit_edge, label %for.body.i42.bcm_sf2_cfp_rule_get_all.exit_crit_edge

for.body.i42.bcm_sf2_cfp_rule_get_all.exit_crit_edge: ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_rule_get_all.exit

for.body.i42.for.body.i42_crit_edge:              ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i42

bcm_sf2_cfp_rule_get_all.exit:                    ; preds = %for.body.i42.bcm_sf2_cfp_rule_get_all.exit_crit_edge, %sw.bb6.bcm_sf2_cfp_rule_get_all.exit_crit_edge
  %rules_cnt.0.lcssa.i = phi i32 [ 0, %sw.bb6.bcm_sf2_cfp_rule_get_all.exit_crit_edge ], [ %inc.i, %for.body.i42.bcm_sf2_cfp_rule_get_all.exit_crit_edge ]
  %.lcssa.i = phi i32 [ %53, %sw.bb6.bcm_sf2_cfp_rule_get_all.exit_crit_edge ], [ %58, %for.body.i42.bcm_sf2_cfp_rule_get_all.exit_crit_edge ]
  %sub.i.i43 = add i32 %.lcssa.i, -1
  %conv.i44 = zext i32 %sub.i.i43 to i64
  %data.i45 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 2
  %59 = ptrtoint ptr %data.i45 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv.i44, ptr %data.i45, align 8
  %60 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %rules_cnt.0.lcssa.i, ptr %60, align 8
  br label %if.end

sw.epilog:                                        ; preds = %bcm_sf2_cfp_rule_find.exit.i.sw.epilog_crit_edge, %dsa_to_port.exit.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %dsa_to_port.exit.sw.epilog_crit_edge ], [ -22, %bcm_sf2_cfp_rule_find.exit.i.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %cfp) #15
  br label %cleanup

if.end:                                           ; preds = %bcm_sf2_cfp_rule_get_all.exit, %bcm_sf2_invert_masks.exit.i, %if.end.i
  tail call void @mutex_unlock(ptr noundef %cfp) #15
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 44
  %62 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ethtool_ops, align 16
  %get_rxnfc = getelementptr inbounds %struct.ethtool_ops, ptr %63, i32 0, i32 32
  %64 = ptrtoint ptr %get_rxnfc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %get_rxnfc, align 4
  %tobool10.not = icmp eq ptr %65, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.then11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = tail call i32 %65(ptr noundef %11, ptr noundef %nfc, ptr noundef %rule_locs) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call14)
  %cmp = icmp eq i32 %call14, -95
  %spec.store.select = select i1 %cmp, i32 0, i32 %call14
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %sw.epilog
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %spec.store.select, %if.then11 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_sf2_set_rxnfc(ptr noundef %ds, i32 noundef %port, ptr noundef %nfc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %3 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %4, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %5 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %port)
  %cmp5.i = icmp eq i32 %6, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %cpu_dp = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 8
  %8 = ptrtoint ptr %cpu_dp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpu_dp, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv1.i, align 4
  %cfp = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %cfp, i32 noundef 0) #15
  %16 = ptrtoint ptr %nfc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nfc, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %17, label %dsa_to_port.exit.cleanup.sink.split_crit_edge [
    i32 50, label %sw.bb
    i32 49, label %sw.epilog
  ]

dsa_to_port.exit.cleanup.sink.split_crit_edge:    ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %dsa_to_port.exit
  %fs = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3
  %19 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i, align 4
  %priv1.i.i = getelementptr inbounds %struct.b53_device, ptr %20, i32 0, i32 23
  %21 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv1.i.i, align 4
  %23 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fs, align 8
  %and.i = and i32 %24, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %sw.bb
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3, i32 6
  %25 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %location.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp.not.i46 = icmp eq i32 %26, -1
  br i1 %cmp.not.i46, label %if.end.i.if.end5.i_crit_edge, label %land.lhs.true.i47

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i

land.lhs.true.i47:                                ; preds = %if.end.i
  %num_cfp_rules.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %22, i32 0, i32 10
  %27 = ptrtoint ptr %num_cfp_rules.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_cfp_rules.i.i, align 4
  %sub.i.i = add i32 %28, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %sub.i.i)
  %cmp3.i = icmp ugt i32 %26, %sub.i.i
  br i1 %cmp3.i, label %land.lhs.true.i47.cleanup.sink.split_crit_edge, label %land.lhs.true.i47.if.end5.i_crit_edge

land.lhs.true.i47.if.end5.i_crit_edge:            ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i

land.lhs.true.i47.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end5.i:                                        ; preds = %land.lhs.true.i47.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %tobool8.not.i = icmp sgt i32 %24, -1
  br i1 %tobool8.not.i, label %if.end5.i.if.end14.i_crit_edge, label %land.lhs.true9.i

if.end5.i.if.end14.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i

land.lhs.true9.i:                                 ; preds = %if.end5.i
  %ops.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 8
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  %port_vlan_add.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %30, i32 0, i32 52
  %31 = ptrtoint ptr %port_vlan_add.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port_vlan_add.i, align 4
  %tobool10.not.i = icmp eq ptr %32, null
  br i1 %tobool10.not.i, label %lor.lhs.false.i, label %land.lhs.true9.i.if.end14.i_crit_edge

land.lhs.true9.i.if.end14.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true9.i
  %port_vlan_del.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %30, i32 0, i32 53
  %33 = ptrtoint ptr %port_vlan_del.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %port_vlan_del.i, align 4
  %tobool12.not.i = icmp eq ptr %34, null
  br i1 %tobool12.not.i, label %lor.lhs.false.i.cleanup.sink.split_crit_edge, label %lor.lhs.false.i.if.end14.i_crit_edge

lor.lhs.false.i.if.end14.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i

lor.lhs.false.i.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end14.i:                                       ; preds = %lor.lhs.false.i.if.end14.i_crit_edge, %land.lhs.true9.i.if.end14.i_crit_edge, %if.end5.i.if.end14.i_crit_edge
  br i1 %cmp.not.i46, label %if.end14.i.if.end22.i_crit_edge, label %land.lhs.true17.i

if.end14.i.if.end22.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22.i

land.lhs.true17.i:                                ; preds = %if.end14.i
  %used.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %22, i32 0, i32 32, i32 1
  %div3.i.i = lshr i32 %26, 5
  %arrayidx.i.i = getelementptr i32, ptr %used.i, i32 %div3.i.i
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %26, 31
  %37 = shl nuw i32 1, %and.i.i
  %38 = and i32 %36, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool20.not.i = icmp eq i32 %38, 0
  br i1 %tobool20.not.i, label %land.lhs.true17.i.if.end22.i_crit_edge, label %land.lhs.true17.i.cleanup.sink.split_crit_edge

land.lhs.true17.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

land.lhs.true17.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22.i

if.end22.i:                                       ; preds = %land.lhs.true17.i.if.end22.i_crit_edge, %if.end14.i.if.end22.i_crit_edge
  %rules_list.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %22, i32 0, i32 32, i32 4
  %39 = ptrtoint ptr %rules_list.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %rules_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %40, %rules_list.i.i
  br i1 %cmp.i.not.i.i, label %if.end22.i.if.end26.i_crit_edge, label %for.body.lr.ph.i.i

if.end22.i.if.end26.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i

for.body.lr.ph.i.i:                               ; preds = %if.end22.i
  %ring_cookie14.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3, i32 5
  %data19.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3, i32 2, i32 4
  %h_u27.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3, i32 1
  %m_u30.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3, i32 3
  %vlan_tci40.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3, i32 2, i32 3
  %vlan_tci49.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3, i32 4, i32 3
  %and.i64.i = and i32 %24, 2147483647
  %switch.tableidx = add nsw i32 %and.i64.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %41 = icmp ult i32 %switch.tableidx, 6
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 51, %switch.maskindex
  %42 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %switch.lobit.not = icmp eq i8 %42, 0
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.bcm_sf2_set_rxnfc, i32 0, i32 %switch.tableidx
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn93.i.i = phi ptr [ %40, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %rule.0.i.i = getelementptr i8, ptr %.pn93.i.i, i32 -176
  %43 = ptrtoint ptr %rule.0.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rule.0.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %port)
  %cmp7.not.i.i = icmp eq i32 %44, %port
  br i1 %cmp7.not.i.i, label %if.end9.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.end9.i.i:                                      ; preds = %for.body.i.i
  %fs10.i.i = getelementptr i8, ptr %.pn93.i.i, i32 -168
  %45 = ptrtoint ptr %fs10.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fs10.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %24)
  %cmp12.not.i.i = icmp eq i32 %46, %24
  br i1 %cmp12.not.i.i, label %lor.lhs.false.i.i, label %if.end9.i.i.for.inc.i.i_crit_edge

if.end9.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

lor.lhs.false.i.i:                                ; preds = %if.end9.i.i
  %ring_cookie.i.i = getelementptr i8, ptr %.pn93.i.i, i32 -16
  %47 = ptrtoint ptr %ring_cookie.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %ring_cookie.i.i, align 8
  %49 = ptrtoint ptr %ring_cookie14.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ring_cookie14.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %50)
  %cmp15.not.i.i = icmp eq i64 %48, %50
  br i1 %cmp15.not.i.i, label %lor.lhs.false16.i.i, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

lor.lhs.false16.i.i:                              ; preds = %lor.lhs.false.i.i
  %data.i.i = getelementptr i8, ptr %.pn93.i.i, i32 -100
  %51 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data.i.i, align 4
  %53 = ptrtoint ptr %data19.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data19.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp21.not.i.i = icmp eq i32 %52, %54
  %cmp21.not.i.i.not = xor i1 %cmp21.not.i.i, true
  %.not = xor i1 %41, true
  %brmerge = select i1 %cmp21.not.i.i.not, i1 true, i1 %.not
  %brmerge61 = select i1 %brmerge, i1 true, i1 %switch.lobit.not
  br i1 %brmerge61, label %lor.lhs.false16.i.i.for.inc.i.i_crit_edge, label %switch.lookup

lor.lhs.false16.i.i.for.inc.i.i_crit_edge:        ; preds = %lor.lhs.false16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

switch.lookup:                                    ; preds = %lor.lhs.false16.i.i
  %55 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %55)
  %switch.load = load i32, ptr %switch.gep, align 4
  %h_u.i.i = getelementptr i8, ptr %.pn93.i.i, i32 -164
  %call28.i.i = tail call i32 @memcmp(ptr noundef %h_u.i.i, ptr noundef %h_u27.i.i, i32 noundef %switch.load) #18
  %m_u.i.i = getelementptr i8, ptr %.pn93.i.i, i32 -92
  %call31.i.i = tail call i32 @memcmp(ptr noundef %m_u.i.i, ptr noundef %m_u30.i.i, i32 noundef %switch.load) #18
  %or.i.i = or i32 %call31.i.i, %call28.i.i
  br i1 %tobool8.not.i, label %switch.lookup.if.end54.i.i_crit_edge, label %if.then36.i.i

switch.lookup.if.end54.i.i_crit_edge:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54.i.i

if.then36.i.i:                                    ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  %vlan_tci.i.i = getelementptr i8, ptr %.pn93.i.i, i32 -102
  %56 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %vlan_tci.i.i, align 2
  %58 = ptrtoint ptr %vlan_tci40.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vlan_tci40.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %59)
  %cmp42.i.i = icmp ne i16 %57, %59
  %conv43.i.i = zext i1 %cmp42.i.i to i32
  %or44.i.i = or i32 %or.i.i, %conv43.i.i
  %vlan_tci46.i.i = getelementptr i8, ptr %.pn93.i.i, i32 -30
  %60 = ptrtoint ptr %vlan_tci46.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vlan_tci46.i.i, align 2
  %62 = ptrtoint ptr %vlan_tci49.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vlan_tci49.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %61, i16 %63)
  %cmp51.i.i = icmp ne i16 %61, %63
  %conv52.i.i = zext i1 %cmp51.i.i to i32
  %or53.i.i = or i32 %or44.i.i, %conv52.i.i
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then36.i.i, %switch.lookup.if.end54.i.i_crit_edge
  %ret.1.i.i = phi i32 [ %or53.i.i, %if.then36.i.i ], [ %or.i.i, %switch.lookup.if.end54.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i)
  %cmp55.i.i = icmp eq i32 %ret.1.i.i, 0
  br i1 %cmp55.i.i, label %if.end54.i.i.cleanup.sink.split_crit_edge, label %if.end54.i.i.for.inc.i.i_crit_edge

if.end54.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.end54.i.i.cleanup.sink.split_crit_edge:        ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

for.inc.i.i:                                      ; preds = %if.end54.i.i.for.inc.i.i_crit_edge, %lor.lhs.false16.i.i.for.inc.i.i_crit_edge, %lor.lhs.false.i.i.for.inc.i.i_crit_edge, %if.end9.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %64 = ptrtoint ptr %.pn93.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn.i.i = load ptr, ptr %.pn93.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %rules_list.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end26.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.if.end26.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i

if.end26.i:                                       ; preds = %for.inc.i.i.if.end26.i_crit_edge, %if.end22.i.if.end26.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %65 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3520, i32 noundef 184) #19
  %tobool28.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool28.not.i, label %if.end26.i.cleanup.sink.split_crit_edge, label %if.end30.i

if.end26.i.cleanup.sink.split_crit_edge:          ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end30.i:                                       ; preds = %if.end26.i
  %call31.i = tail call fastcc i32 @bcm_sf2_cfp_rule_insert(ptr noundef %ds, i32 noundef %port, ptr noundef %fs) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #15
  br label %cleanup.sink.split

if.end34.i:                                       ; preds = %if.end30.i
  %66 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %port, ptr %call7.i.i.i, align 8
  %fs36.i = getelementptr inbounds %struct.cfp_rule, ptr %call7.i.i.i, i32 0, i32 1
  %67 = call ptr @memcpy(ptr %fs36.i, ptr %fs, i32 168)
  %next.i = getelementptr inbounds %struct.cfp_rule, ptr %call7.i.i.i, i32 0, i32 2
  %prev.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %22, i32 0, i32 32, i32 4, i32 1
  %68 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %next.i, ptr noundef %69, ptr noundef %rules_list.i.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end34.i.sw.epilog.thread52_crit_edge

if.end34.i.sw.epilog.thread52_crit_edge:          ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread52

if.end.i.i.i:                                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #17
  %70 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %next.i, ptr %prev.i.i, align 4
  %71 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %rules_list.i.i, ptr %next.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.cfp_rule, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %72 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev3.i.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %next.i, ptr %69, align 4
  br label %sw.epilog.thread52

sw.epilog.thread52:                               ; preds = %if.end.i.i.i, %if.end34.i.sw.epilog.thread52_crit_edge
  tail call void @mutex_unlock(ptr noundef %cfp) #15
  br label %if.end

sw.epilog:                                        ; preds = %dsa_to_port.exit
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3, i32 6
  %74 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %location, align 8
  %call5 = tail call fastcc i32 @bcm_sf2_cfp_rule_del(ptr noundef %15, i32 noundef %port, i32 noundef %75)
  tail call void @mutex_unlock(ptr noundef %cfp) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %sw.epilog.if.end_crit_edge, %sw.epilog.thread52
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 44
  %76 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ethtool_ops, align 16
  %set_rxnfc = getelementptr inbounds %struct.ethtool_ops, ptr %77, i32 0, i32 33
  %78 = ptrtoint ptr %set_rxnfc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %set_rxnfc, align 4
  %tobool8.not = icmp eq ptr %79, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then9:                                         ; preds = %if.end
  %call12 = tail call i32 %79(ptr noundef %11, ptr noundef %nfc) #15
  %80 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call12, label %if.then14 [
    i32 0, label %if.then9.cleanup_crit_edge
    i32 -95, label %if.then9.cleanup_crit_edge62
  ]

if.then9.cleanup_crit_edge62:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_lock_nested(ptr noundef %cfp, i32 noundef 0) #15
  %location18 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %nfc, i32 0, i32 3, i32 6
  %81 = ptrtoint ptr %location18 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %location18, align 8
  %call19 = tail call fastcc i32 @bcm_sf2_cfp_rule_del(ptr noundef %15, i32 noundef %port, i32 noundef %82)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then14, %if.then33.i, %if.end26.i.cleanup.sink.split_crit_edge, %if.end54.i.i.cleanup.sink.split_crit_edge, %land.lhs.true17.i.cleanup.sink.split_crit_edge, %lor.lhs.false.i.cleanup.sink.split_crit_edge, %land.lhs.true.i47.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge, %dsa_to_port.exit.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call12, %if.then14 ], [ -12, %if.end26.i.cleanup.sink.split_crit_edge ], [ -16, %land.lhs.true17.i.cleanup.sink.split_crit_edge ], [ -95, %lor.lhs.false.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.i47.cleanup.sink.split_crit_edge ], [ -22, %sw.bb.cleanup.sink.split_crit_edge ], [ %call31.i, %if.then33.i ], [ -95, %dsa_to_port.exit.cleanup.sink.split_crit_edge ], [ -17, %if.end54.i.i.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %cfp) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then9.cleanup_crit_edge, %if.then9.cleanup_crit_edge62, %if.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge62 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sf2_cfp_rule_del(ptr noundef %priv, i32 noundef %port, i32 noundef %loc) unnamed_addr #0 align 64 {
entry:
  %next_loc.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %num_cfp_rules.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %num_cfp_rules.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_cfp_rules.i, align 4
  %sub.i = add i32 %1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %loc)
  %cmp = icmp ult i32 %sub.i, %loc
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %unique = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 32, i32 2
  %div3.i = lshr i32 %loc, 5
  %arrayidx.i = getelementptr i32, ptr %unique, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %loc, 31
  %4 = shl nuw i32 1, %and.i
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loc)
  %cmp2 = icmp eq i32 %loc, 0
  %or.cond = or i1 %cmp2, %tobool.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rules_list.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 32, i32 4
  %6 = ptrtoint ptr %rules_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn18.i = load ptr, ptr %rules_list.i, align 4
  %rule.019.i = getelementptr i8, ptr %.pn18.i, i32 -176
  %cmp.not20.i = icmp eq ptr %.pn18.i, %rules_list.i
  br i1 %cmp.not20.i, label %if.end4.bcm_sf2_cfp_rule_find.exit_crit_edge, label %if.end4.for.body.i_crit_edge

if.end4.for.body.i_crit_edge:                     ; preds = %if.end4
  br label %for.body.i

if.end4.bcm_sf2_cfp_rule_find.exit_crit_edge:     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_rule_find.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end4.for.body.i_crit_edge
  %rule.022.i = phi ptr [ %rule.0.i, %for.inc.i.for.body.i_crit_edge ], [ %rule.019.i, %if.end4.for.body.i_crit_edge ]
  %.pn21.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn18.i, %if.end4.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %rule.022.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rule.022.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %port)
  %cmp5.i = icmp eq i32 %8, %port
  br i1 %cmp5.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %location6.i = getelementptr i8, ptr %.pn21.i, i32 -8
  %9 = ptrtoint ptr %location6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %location6.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %loc)
  %cmp7.i = icmp eq i32 %10, %loc
  br i1 %cmp7.i, label %land.lhs.true.i.bcm_sf2_cfp_rule_find.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i.bcm_sf2_cfp_rule_find.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_rule_find.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %.pn21.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn21.i, align 4
  %rule.0.i = getelementptr i8, ptr %.pn.i, i32 -176
  %cmp.not.i = icmp eq ptr %.pn.i, %rules_list.i
  br i1 %cmp.not.i, label %for.inc.i.bcm_sf2_cfp_rule_find.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.bcm_sf2_cfp_rule_find.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_rule_find.exit

bcm_sf2_cfp_rule_find.exit:                       ; preds = %for.inc.i.bcm_sf2_cfp_rule_find.exit_crit_edge, %land.lhs.true.i.bcm_sf2_cfp_rule_find.exit_crit_edge, %if.end4.bcm_sf2_cfp_rule_find.exit_crit_edge
  %rule.0.lcssa.i = phi ptr [ %rule.019.i, %if.end4.bcm_sf2_cfp_rule_find.exit_crit_edge ], [ %rule.0.i, %for.inc.i.bcm_sf2_cfp_rule_find.exit_crit_edge ], [ %rule.022.i, %land.lhs.true.i.bcm_sf2_cfp_rule_find.exit_crit_edge ]
  %tobool6.not = icmp eq ptr %rule.0.lcssa.i, null
  br i1 %tobool6.not, label %bcm_sf2_cfp_rule_find.exit.cleanup_crit_edge, label %if.end8

bcm_sf2_cfp_rule_find.exit.cleanup_crit_edge:     ; preds = %bcm_sf2_cfp_rule_find.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %bcm_sf2_cfp_rule_find.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next_loc.i) #15
  %12 = ptrtoint ptr %next_loc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %next_loc.i, align 4
  %call.i = call fastcc i32 @bcm_sf2_cfp_rule_del_one(ptr noundef %priv, i32 noundef %loc, ptr noundef nonnull %next_loc.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.bcm_sf2_cfp_rule_remove.exit_crit_edge

if.end8.bcm_sf2_cfp_rule_remove.exit_crit_edge:   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_rule_remove.exit

if.end.i:                                         ; preds = %if.end8
  %13 = ptrtoint ptr %next_loc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %next_loc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not.i = icmp eq i32 %14, 0
  br i1 %tobool1.not.i, label %if.end.i.bcm_sf2_cfp_rule_remove.exit_crit_edge, label %if.then2.i

if.end.i.bcm_sf2_cfp_rule_remove.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_rule_remove.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i = call fastcc i32 @bcm_sf2_cfp_rule_del_one(ptr noundef %priv, i32 noundef %14, ptr noundef null) #15
  br label %bcm_sf2_cfp_rule_remove.exit

bcm_sf2_cfp_rule_remove.exit:                     ; preds = %if.then2.i, %if.end.i.bcm_sf2_cfp_rule_remove.exit_crit_edge, %if.end8.bcm_sf2_cfp_rule_remove.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end8.bcm_sf2_cfp_rule_remove.exit_crit_edge ], [ %call3.i, %if.then2.i ], [ 0, %if.end.i.bcm_sf2_cfp_rule_remove.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_loc.i) #15
  %next = getelementptr inbounds %struct.cfp_rule, ptr %rule.0.lcssa.i, i32 0, i32 2
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %next) #15
  br i1 %call.i.i, label %if.end.i.i, label %bcm_sf2_cfp_rule_remove.exit.list_del.exit_crit_edge

bcm_sf2_cfp_rule_remove.exit.list_del.exit_crit_edge: ; preds = %bcm_sf2_cfp_rule_remove.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %bcm_sf2_cfp_rule_remove.exit
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.cfp_rule, ptr %rule.0.lcssa.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %next, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %bcm_sf2_cfp_rule_remove.exit.list_del.exit_crit_edge
  %21 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %next, align 4
  %prev.i = getelementptr inbounds %struct.cfp_rule, ptr %rule.0.lcssa.i, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef nonnull %rule.0.lcssa.i) #15
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %bcm_sf2_cfp_rule_find.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %list_del.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %bcm_sf2_cfp_rule_find.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_sf2_cfp_rst(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %core_reg_align.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i = shl i32 163840, %1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !58
  %5 = or i32 %4, 8388608
  %6 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i22 = shl i32 163840, %7
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %add.ptr.i23 = getelementptr i8, ptr %9, i32 %shl.i.i22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %5) #15, !srcloc !59
  br label %do.body

do.body:                                          ; preds = %do.end.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 1000, %entry ], [ %dec, %do.end.do.body_crit_edge ]
  %10 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i25 = shl i32 163840, %11
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %add.ptr.i26 = getelementptr i8, ptr %13, i32 %shl.i.i25
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #15, !srcloc !58
  %15 = and i32 %14, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %do.end11, label %do.end

do.end:                                           ; preds = %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !60
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !61
  %dec = add nsw i32 %timeout.0, -1
  %tobool10.not = icmp eq i32 %timeout.0, 0
  br i1 %tobool10.not, label %do.end.do.end11.thread_crit_edge, label %do.end.do.body_crit_edge

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.end.do.end11.thread_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end11.thread

do.end11:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %tobool12.not = icmp eq i32 %timeout.0, 0
  %spec.select = select i1 %tobool12.not, i32 -110, i32 0
  br label %do.end11.thread

do.end11.thread:                                  ; preds = %do.end11, %do.end.do.end11.thread_crit_edge
  %16 = phi i32 [ %spec.select, %do.end11 ], [ 0, %do.end.do.end11.thread_crit_edge ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcm_sf2_cfp_exit(ptr nocapture noundef readonly %ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  %rules_list = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 32, i32 4
  %4 = ptrtoint ptr %rules_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %rules_list, align 4
  %cmp.i.not = icmp eq ptr %5, %rules_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %prev = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 32, i32 4, i32 1
  %6 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev, align 4
  %cmp.not28 = icmp eq ptr %7, %rules_list
  br i1 %cmp.not28, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn2629 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %7, %if.end.for.body_crit_edge ]
  %rule.0 = getelementptr i8, ptr %.pn2629, i32 -176
  %.pn.in = getelementptr inbounds %struct.list_head, ptr %.pn2629, i32 0, i32 1
  %8 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn.in, align 4
  %9 = ptrtoint ptr %rule.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rule.0, align 8
  %location = getelementptr i8, ptr %.pn2629, i32 -8
  %11 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %location, align 8
  %call11 = tail call fastcc i32 @bcm_sf2_cfp_rule_del(ptr noundef %3, i32 noundef %10, i32 noundef %12)
  %cmp.not = icmp eq ptr %.pn, %rules_list
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_sf2_cfp_resume(ptr noundef %ds) local_unnamed_addr #0 align 64 {
entry:
  %next_loc.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  %rules_list = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 32, i32 4
  %4 = ptrtoint ptr %rules_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %rules_list, align 4
  %cmp.i.not = icmp eq ptr %5, %rules_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %core_reg_align.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i = shl i32 164864, %7
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %shl.i.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !58
  %11 = and i32 %10, 16711679
  %12 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i57 = shl i32 164864, %13
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr.i58 = getelementptr i8, ptr %15, i32 %shl.i.i57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %11) #15, !srcloc !59
  %16 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i.i = shl i32 163840, %17
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %shl.i.i.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !58
  %21 = or i32 %20, 8388608
  %22 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i22.i = shl i32 163840, %23
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %25, i32 %shl.i.i22.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %21) #15, !srcloc !59
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %if.end
  %timeout.0.i = phi i32 [ 1000, %if.end ], [ %dec.i, %do.end.i.do.body.i_crit_edge ]
  %26 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i25.i = shl i32 163840, %27
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %29, i32 %shl.i.i25.i
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i) #15, !srcloc !58
  %31 = and i32 %30, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %do.end11.i, label %do.end.i

do.end.i:                                         ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !60
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !61
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool10.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %tobool10.not.i, label %do.end.i.for.cond.preheader_crit_edge, label %do.end.i.do.body.i_crit_edge

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

do.end.i.for.cond.preheader_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader

do.end11.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %tobool12.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %tobool12.not.i, label %do.end11.i.cleanup_crit_edge, label %do.end11.i.for.cond.preheader_crit_edge

do.end11.i.for.cond.preheader_crit_edge:          ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader

do.end11.i.cleanup_crit_edge:                     ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end11.i.for.cond.preheader_crit_edge, %do.end.i.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %if.end15.for.cond_crit_edge, %for.cond.preheader
  %.pn.in = phi ptr [ %.pn, %if.end15.for.cond_crit_edge ], [ %rules_list, %for.cond.preheader ]
  %32 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn = load ptr, ptr %.pn.in, align 4
  %rule.0 = getelementptr i8, ptr %.pn, i32 -176
  %cmp.not = icmp eq ptr %.pn, %rules_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %location = getelementptr i8, ptr %.pn, i32 -8
  %33 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %location, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next_loc.i) #15
  %35 = ptrtoint ptr %next_loc.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %next_loc.i, align 4
  %call.i = call fastcc i32 @bcm_sf2_cfp_rule_del_one(ptr noundef %3, i32 noundef %34, ptr noundef nonnull %next_loc.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i59 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i59, label %if.end.i, label %bcm_sf2_cfp_rule_remove.exit.thread63

bcm_sf2_cfp_rule_remove.exit.thread63:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_loc.i) #15
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %for.body
  %36 = ptrtoint ptr %next_loc.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %next_loc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool1.not.i = icmp eq i32 %37, 0
  br i1 %tobool1.not.i, label %bcm_sf2_cfp_rule_remove.exit.thread, label %bcm_sf2_cfp_rule_remove.exit

bcm_sf2_cfp_rule_remove.exit.thread:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_loc.i) #15
  br label %if.end15

bcm_sf2_cfp_rule_remove.exit:                     ; preds = %if.end.i
  %call3.i = call fastcc i32 @bcm_sf2_cfp_rule_del_one(ptr noundef %3, i32 noundef %37, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_loc.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool13.not = icmp eq i32 %call3.i, 0
  br i1 %tobool13.not, label %bcm_sf2_cfp_rule_remove.exit.if.end15_crit_edge, label %bcm_sf2_cfp_rule_remove.exit.cleanup.sink.split_crit_edge

bcm_sf2_cfp_rule_remove.exit.cleanup.sink.split_crit_edge: ; preds = %bcm_sf2_cfp_rule_remove.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

bcm_sf2_cfp_rule_remove.exit.if.end15_crit_edge:  ; preds = %bcm_sf2_cfp_rule_remove.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.end15:                                         ; preds = %bcm_sf2_cfp_rule_remove.exit.if.end15_crit_edge, %bcm_sf2_cfp_rule_remove.exit.thread
  %fs = getelementptr i8, ptr %.pn, i32 -168
  %38 = ptrtoint ptr %rule.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rule.0, align 8
  %call18 = call fastcc i32 @bcm_sf2_cfp_rule_insert(ptr noundef %ds, i32 noundef %39, ptr noundef %fs)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end15.for.cond_crit_edge, label %if.end15.cleanup.sink.split_crit_edge

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end15.for.cond_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

cleanup.sink.split:                               ; preds = %if.end15.cleanup.sink.split_crit_edge, %bcm_sf2_cfp_rule_remove.exit.cleanup.sink.split_crit_edge, %bcm_sf2_cfp_rule_remove.exit.thread63
  %.str.6.sink = phi ptr [ @.str, %bcm_sf2_cfp_rule_remove.exit.thread63 ], [ @.str, %bcm_sf2_cfp_rule_remove.exit.cleanup.sink.split_crit_edge ], [ @.str.6, %if.end15.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %bcm_sf2_cfp_rule_remove.exit.thread63 ], [ %call3.i, %bcm_sf2_cfp_rule_remove.exit.cleanup.sink.split_crit_edge ], [ %call18, %if.end15.cleanup.sink.split_crit_edge ]
  %40 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ds, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull %.str.6.sink) #20
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.cond.cleanup_crit_edge, %do.end11.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -110, %do.end11.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sf2_cfp_rule_insert(ptr noundef %ds, i32 noundef %port, ptr noundef %fs) unnamed_addr #0 align 64 {
entry:
  %input.i114 = alloca %struct.ethtool_rx_flow_spec_input, align 8
  %ipv6.i = alloca %struct.flow_match_ipv6_addrs, align 4
  %ports.i115 = alloca %struct.flow_match_ports, align 4
  %input.i = alloca %struct.ethtool_rx_flow_spec_input, align 8
  %ipv4.i = alloca %struct.flow_match_ipv4_addrs, align 4
  %ports.i109 = alloca %struct.flow_match_ports, align 4
  %ip.i = alloca %struct.flow_match_ip, align 4
  %vlan = alloca %struct.switchdev_obj_port_vlan, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %4 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %7 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %8, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %9 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %port)
  %cmp5.i = icmp eq i32 %10, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %cpu_dp = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 8
  %12 = ptrtoint ptr %cpu_dp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpu_dp, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %ring_cookie2 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 5
  %16 = ptrtoint ptr %ring_cookie2 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ring_cookie2, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vlan) #15
  %18 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 1
  %19 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %17)
  %cmp = icmp eq i64 %17, -2
  %sext = shl i32 %15, 24
  %mul = ashr exact i32 %sext, 21
  %conv5 = sext i32 %mul to i64
  %ring_cookie.0 = select i1 %cmp, i64 %conv5, i64 %17
  %div89 = lshr i64 %ring_cookie.0, 3
  %conv6 = trunc i64 %div89 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %ring_cookie.0)
  %cmp7 = icmp eq i64 %ring_cookie.0, -1
  %20 = call ptr @memset(ptr %vlan, i32 255, i32 32)
  br i1 %cmp7, label %dsa_to_port.exit.cleanup_crit_edge, label %lor.lhs.false

dsa_to_port.exit.cleanup_crit_edge:               ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %dsa_to_port.exit
  %21 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn20.i.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i
  br i1 %cmp.not21.i.i, label %dsa_is_user_port.exit.thread, label %lor.lhs.false.for.body.i.i_crit_edge

lor.lhs.false.for.body.i.i_crit_edge:             ; preds = %lor.lhs.false
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %lor.lhs.false.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %lor.lhs.false.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %22 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %23, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %24 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv6)
  %cmp5.i.i = icmp eq i32 %25, %conv6
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %26 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_user_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.dsa_is_user_port.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dsa_is_user_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_user_port.exit

dsa_is_user_port.exit:                            ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_user_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.inc.i.i.dsa_is_user_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp.i = icmp eq i32 %28, 3
  br i1 %cmp.i, label %dsa_is_user_port.exit.lor.lhs.false14_crit_edge, label %dsa_is_user_port.exit.for.body.i.i97_crit_edge

dsa_is_user_port.exit.for.body.i.i97_crit_edge:   ; preds = %dsa_is_user_port.exit
  br label %for.body.i.i97

dsa_is_user_port.exit.lor.lhs.false14_crit_edge:  ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false14

dsa_is_user_port.exit.thread:                     ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 24)
  %29 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp.i199 = icmp eq i32 %29, 3
  br i1 %cmp.i199, label %dsa_is_user_port.exit.thread.lor.lhs.false14_crit_edge, label %dsa_is_user_port.exit.thread.dsa_is_cpu_port.exit_crit_edge

dsa_is_user_port.exit.thread.dsa_is_cpu_port.exit_crit_edge: ; preds = %dsa_is_user_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %dsa_is_cpu_port.exit

dsa_is_user_port.exit.thread.lor.lhs.false14_crit_edge: ; preds = %dsa_is_user_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false14

for.body.i.i97:                                   ; preds = %for.inc.i.i103.for.body.i.i97_crit_edge, %dsa_is_user_port.exit.for.body.i.i97_crit_edge
  %.pn22.i.i94 = phi ptr [ %.pn.i.i101, %for.inc.i.i103.for.body.i.i97_crit_edge ], [ %.pn20.i.i, %dsa_is_user_port.exit.for.body.i.i97_crit_edge ]
  %ds3.i.i95 = getelementptr i8, ptr %.pn22.i.i94, i32 -432
  %30 = ptrtoint ptr %ds3.i.i95 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ds3.i.i95, align 4
  %cmp4.i.i96 = icmp eq ptr %31, %ds
  br i1 %cmp4.i.i96, label %land.lhs.true.i.i100, label %for.body.i.i97.for.inc.i.i103_crit_edge

for.body.i.i97.for.inc.i.i103_crit_edge:          ; preds = %for.body.i.i97
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i103

land.lhs.true.i.i100:                             ; preds = %for.body.i.i97
  %index.i.i98 = getelementptr i8, ptr %.pn22.i.i94, i32 -428
  %32 = ptrtoint ptr %index.i.i98 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index.i.i98, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv6)
  %cmp5.i.i99 = icmp eq i32 %33, %conv6
  br i1 %cmp5.i.i99, label %cleanup.split.loop.exit18.i.i105, label %land.lhs.true.i.i100.for.inc.i.i103_crit_edge

land.lhs.true.i.i100.for.inc.i.i103_crit_edge:    ; preds = %land.lhs.true.i.i100
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i103

for.inc.i.i103:                                   ; preds = %land.lhs.true.i.i100.for.inc.i.i103_crit_edge, %for.body.i.i97.for.inc.i.i103_crit_edge
  %34 = ptrtoint ptr %.pn22.i.i94 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn.i.i101 = load ptr, ptr %.pn22.i.i94, align 4
  %cmp.not.i.i102 = icmp eq ptr %.pn.i.i101, %ports.i
  br i1 %cmp.not.i.i102, label %for.inc.i.i103.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i103.for.body.i.i97_crit_edge

for.inc.i.i103.for.body.i.i97_crit_edge:          ; preds = %for.inc.i.i103
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i97

for.inc.i.i103.dsa_is_cpu_port.exit_crit_edge:    ; preds = %for.inc.i.i103
  call void @__sanitizer_cov_trace_pc() #17
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i105:                 ; preds = %land.lhs.true.i.i100
  call void @__sanitizer_cov_trace_pc() #17
  %dp.0.le.i.i104 = getelementptr i8, ptr %.pn22.i.i94, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i105, %for.inc.i.i103.dsa_is_cpu_port.exit_crit_edge, %dsa_is_user_port.exit.thread.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i106 = phi ptr [ %dp.0.le.i.i104, %cleanup.split.loop.exit18.i.i105 ], [ null, %dsa_is_user_port.exit.thread.dsa_is_cpu_port.exit_crit_edge ], [ null, %for.inc.i.i103.dsa_is_cpu_port.exit_crit_edge ]
  %type.i107 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i106, i32 0, i32 6
  %35 = ptrtoint ptr %type.i107 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %type.i107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.i108 = icmp eq i32 %36, 1
  br i1 %cmp.i108, label %dsa_is_cpu_port.exit.lor.lhs.false14_crit_edge, label %dsa_is_cpu_port.exit.cleanup_crit_edge

dsa_is_cpu_port.exit.cleanup_crit_edge:           ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

dsa_is_cpu_port.exit.lor.lhs.false14_crit_edge:   ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %dsa_is_cpu_port.exit.lor.lhs.false14_crit_edge, %dsa_is_user_port.exit.thread.lor.lhs.false14_crit_edge, %dsa_is_user_port.exit.lor.lhs.false14_crit_edge
  %num_ports = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 20, i32 6
  %37 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_ports, align 2
  %conv15 = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6, i32 %conv15)
  %cmp16.not = icmp ult i32 %conv6, %conv15
  br i1 %cmp16.not, label %if.end19, label %lor.lhs.false14.cleanup_crit_edge

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false14
  %39 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %tobool.not = icmp sgt i32 %40, -1
  br i1 %tobool.not, label %if.end19.if.end42_crit_edge, label %if.then20

if.end19.if.end42_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then20:                                        ; preds = %if.end19
  %vlan_tci = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 4, i32 3
  %41 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vlan_tci, align 2
  %43 = and i16 %42, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %43)
  %cmp23.not = icmp eq i16 %43, 4095
  br i1 %cmp23.not, label %if.end26, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end26:                                         ; preds = %if.then20
  %vlan_tci27 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 2, i32 3
  %44 = ptrtoint ptr %vlan_tci27 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vlan_tci27, align 2
  %46 = and i16 %45, 4095
  %47 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %19, align 2
  %arrayidx = getelementptr %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 2, i32 4, i32 1
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx, align 4
  %50 = trunc i32 %49 to i16
  %51 = shl i16 %50, 2
  %52 = and i16 %51, 4
  %53 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %18, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 8
  %54 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops, align 4
  %port_vlan_add = getelementptr inbounds %struct.dsa_switch_ops, ptr %55, i32 0, i32 52
  %56 = ptrtoint ptr %port_vlan_add to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %port_vlan_add, align 4
  %call38 = call i32 %57(ptr noundef %ds, i32 noundef %conv6, ptr noundef nonnull %vlan, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end42thread-pre-split, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end42thread-pre-split:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %58 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr = load i32, ptr %fs, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.end42thread-pre-split, %if.end19.if.end42_crit_edge
  %59 = phi i32 [ %.pr, %if.end42thread-pre-split ], [ %40, %if.end19.if.end42_crit_edge ]
  %60 = trunc i64 %ring_cookie.0 to i32
  %conv43 = and i32 %60, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv6)
  %cmp44 = icmp ugt i32 %conv6, 6
  %sub = sext i1 %cmp44 to i32
  %spec.select = add i32 %sub, %conv6
  %and49 = and i32 %59, 2147483647
  %61 = zext i32 %and49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %and49, label %if.end42.cleanup_crit_edge [
    i32 1, label %if.end42.sw.bb_crit_edge
    i32 2, label %if.end42.sw.bb_crit_edge230
    i32 5, label %if.end42.sw.bb51_crit_edge
    i32 6, label %if.end42.sw.bb51_crit_edge231
  ]

if.end42.sw.bb51_crit_edge231:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb51

if.end42.sw.bb51_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb51

if.end42.sw.bb_crit_edge230:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end42.sw.bb_crit_edge:                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %if.end42.sw.bb_crit_edge, %if.end42.sw.bb_crit_edge230
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %input.i) #15
  %62 = ptrtoint ptr %input.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 0, ptr %input.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ipv4.i) #15
  %63 = ptrtoint ptr %ipv4.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 -1 to ptr), ptr %ipv4.i, align 4, !annotation !62
  %64 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %ipv4.i, i32 0, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 -1 to ptr), ptr %64, align 4, !annotation !62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ports.i109) #15
  %66 = ptrtoint ptr %ports.i109 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 -1 to ptr), ptr %ports.i109, align 4, !annotation !62
  %67 = getelementptr inbounds %struct.flow_match_ports, ptr %ports.i109, i32 0, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 -1 to ptr), ptr %67, align 4, !annotation !62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ip.i) #15
  %69 = ptrtoint ptr %ip.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 -1 to ptr), ptr %ip.i, align 4, !annotation !62
  %70 = getelementptr inbounds %struct.flow_match_ip, ptr %ip.i, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 -1 to ptr), ptr %70, align 4, !annotation !62
  %72 = zext i32 %and49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %and49, label %sw.bb.bcm_sf2_cfp_ipv4_rule_set.exit_crit_edge [
    i32 1, label %sw.bb.sw.epilog.i_crit_edge
    i32 2, label %sw.bb1.i
  ]

sw.bb.sw.epilog.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

sw.bb.bcm_sf2_cfp_ipv4_rule_set.exit_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_ipv4_rule_set.exit

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb.sw.epilog.i_crit_edge
  %ip_proto.0.i = phi i32 [ 4352, %sw.bb1.i ], [ 1536, %sw.bb.sw.epilog.i_crit_edge ]
  %data.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 2, i32 4
  %73 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %tobool6.not.i = icmp sgt i32 %59, -1
  br i1 %tobool6.not.i, label %sw.epilog.i.if.end.i_crit_edge, label %if.then.i

sw.epilog.i.if.end.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  %vlan_tci8.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 2, i32 3
  %75 = ptrtoint ptr %vlan_tci8.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %vlan_tci8.i, align 2
  %vlan_tci9.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 4, i32 3
  %77 = ptrtoint ptr %vlan_tci9.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %vlan_tci9.i, align 2
  %phi.cast.i = zext i16 %76 to i32
  %phi.cast207.i = zext i16 %78 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.epilog.i.if.end.i_crit_edge
  %vlan_tci.0.i = phi i32 [ %phi.cast.i, %if.then.i ], [ 0, %sw.epilog.i.if.end.i_crit_edge ]
  %vlan_m_tci.0.i = phi i32 [ %phi.cast207.i, %if.then.i ], [ 65535, %sw.epilog.i.if.end.i_crit_edge ]
  %location.i = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 6
  %79 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %location.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %cmp.i110 = icmp eq i32 %80, -1
  br i1 %cmp.i110, label %if.then11.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %used.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 32, i32 1
  %num_cfp_rules.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 10
  %81 = ptrtoint ptr %num_cfp_rules.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_cfp_rules.i, align 4
  %call.i = call i32 @_find_first_zero_bit_be(ptr noundef %used.i, i32 noundef %82) #15
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end.i.if.end13.i_crit_edge
  %rule_index.0.i = phi i32 [ %call.i, %if.then11.i ], [ %80, %if.end.i.if.end13.i_crit_edge ]
  %num_cfp_rules.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 10
  %83 = ptrtoint ptr %num_cfp_rules.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_cfp_rules.i.i, align 4
  %sub.i.i = add i32 %84, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %rule_index.0.i, i32 %sub.i.i)
  %cmp15.i = icmp ugt i32 %rule_index.0.i, %sub.i.i
  br i1 %cmp15.i, label %if.end13.i.bcm_sf2_cfp_ipv4_rule_set.exit_crit_edge, label %if.end18.i

if.end13.i.bcm_sf2_cfp_ipv4_rule_set.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_ipv4_rule_set.exit

if.end18.i:                                       ; preds = %if.end13.i
  %85 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %fs, ptr %input.i, align 8
  %call20.i = call ptr @ethtool_rx_flow_rule_create(ptr noundef nonnull %input.i) #15
  %cmp.i.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then22.i, label %if.end24.i

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  %86 = ptrtoint ptr %call20.i to i32
  br label %bcm_sf2_cfp_ipv4_rule_set.exit

if.end24.i:                                       ; preds = %if.end18.i
  %87 = ptrtoint ptr %call20.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call20.i, align 4
  call void @flow_rule_match_ipv4_addrs(ptr noundef %88, ptr noundef nonnull %ipv4.i) #15
  %89 = ptrtoint ptr %call20.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call20.i, align 4
  call void @flow_rule_match_ports(ptr noundef %90, ptr noundef nonnull %ports.i109) #15
  %91 = ptrtoint ptr %call20.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %call20.i, align 4
  call void @flow_rule_match_ip(ptr noundef %92, ptr noundef nonnull %ip.i) #15
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) @udf_tcpip4_layout, ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i111, label %if.end24.i.if.end31.i_crit_edge

if.end24.i.if.end31.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31.i

for.inc.i.i111:                                   ; preds = %if.end24.i
  %bcmp.i.1.i = call i32 @bcmp(ptr noundef dereferenceable(9) getelementptr inbounds (%struct.cfp_udf_layout, ptr @udf_tcpip4_layout, i32 0, i32 0, i32 1), ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %bcmp.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %for.inc.i.1.i, label %for.inc.i.i111.if.end31.i_crit_edge

for.inc.i.i111.if.end31.i_crit_edge:              ; preds = %for.inc.i.i111
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31.i

for.inc.i.1.i:                                    ; preds = %for.inc.i.i111
  %bcmp.i.2.i = call i32 @bcmp(ptr noundef dereferenceable(9) getelementptr inbounds (%struct.cfp_udf_layout, ptr @udf_tcpip4_layout, i32 0, i32 0, i32 2), ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.2.i)
  %tobool.not.i.2.i = icmp eq i32 %bcmp.i.2.i, 0
  br i1 %tobool.not.i.2.i, label %for.inc.i.2.i, label %for.inc.i.1.i.if.end31.i_crit_edge

for.inc.i.1.i.if.end31.i_crit_edge:               ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31.i

for.inc.i.2.i:                                    ; preds = %for.inc.i.1.i
  %bcmp.i.3.i = call i32 @bcmp(ptr noundef dereferenceable(9) getelementptr inbounds (%struct.cfp_udf_layout, ptr @udf_tcpip4_layout, i32 0, i32 0, i32 3), ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.3.i)
  %tobool.not.i.3.i = icmp eq i32 %bcmp.i.3.i, 0
  br i1 %tobool.not.i.3.i, label %for.inc.i.2.i.out_err_flow_rule.i_crit_edge, label %for.inc.i.2.i.if.end31.i_crit_edge

for.inc.i.2.i.if.end31.i_crit_edge:               ; preds = %for.inc.i.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31.i

for.inc.i.2.i.out_err_flow_rule.i_crit_edge:      ; preds = %for.inc.i.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err_flow_rule.i

if.end31.i:                                       ; preds = %for.inc.i.2.i.if.end31.i_crit_edge, %for.inc.i.1.i.if.end31.i_crit_edge, %for.inc.i.i111.if.end31.i_crit_edge, %if.end24.i.if.end31.i_crit_edge
  %slice_idx.05.i.lcssa.i = phi i32 [ 0, %if.end24.i.if.end31.i_crit_edge ], [ 1, %for.inc.i.i111.if.end31.i_crit_edge ], [ 2, %for.inc.i.1.i.if.end31.i_crit_edge ], [ 3, %for.inc.i.2.i.if.end31.i_crit_edge ]
  %arrayidx32.i = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr @udf_tcpip4_layout, i32 0, i32 %slice_idx.05.i.lcssa.i
  %93 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp1.not.i.i.not = icmp eq i8 %94, 0
  %arrayidx.1.i.i = getelementptr i8, ptr %arrayidx32.i, i32 1
  %95 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp1.not.1.i.i = icmp ne i8 %96, 0
  %inc.1.i.i.neg = sext i1 %cmp1.not.1.i.i to i32
  %arrayidx.2.i.i = getelementptr i8, ptr %arrayidx32.i, i32 2
  %97 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.2.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp1.not.2.i.i = icmp ne i8 %98, 0
  %inc.2.i.i.neg = sext i1 %cmp1.not.2.i.i to i32
  %arrayidx.3.i.i = getelementptr i8, ptr %arrayidx32.i, i32 3
  %99 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp1.not.3.i.i = icmp ne i8 %100, 0
  %inc.3.i.i.neg = sext i1 %cmp1.not.3.i.i to i32
  %arrayidx.4.i.i = getelementptr i8, ptr %arrayidx32.i, i32 4
  %101 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp1.not.4.i.i = icmp ne i8 %102, 0
  %inc.4.i.i.neg = sext i1 %cmp1.not.4.i.i to i32
  %arrayidx.5.i.i = getelementptr i8, ptr %arrayidx32.i, i32 5
  %103 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %cmp1.not.5.i.i = icmp ne i8 %104, 0
  %inc.5.i.i.neg = sext i1 %cmp1.not.5.i.i to i32
  %arrayidx.6.i.i = getelementptr i8, ptr %arrayidx32.i, i32 6
  %105 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.6.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp1.not.6.i.i = icmp ne i8 %106, 0
  %inc.6.i.i.neg = sext i1 %cmp1.not.6.i.i to i32
  %arrayidx.7.i.i = getelementptr i8, ptr %arrayidx32.i, i32 7
  %107 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %cmp1.not.7.i.i = icmp ne i8 %108, 0
  %inc.7.i.i.neg = sext i1 %cmp1.not.7.i.i to i32
  %arrayidx.8.i.i = getelementptr i8, ptr %arrayidx32.i, i32 8
  %109 = ptrtoint ptr %arrayidx.8.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp1.not.8.i.i = icmp ne i8 %110, 0
  %inc.8.i.i.neg = sext i1 %cmp1.not.8.i.i to i32
  call fastcc void @bcm_sf2_cfp_udf_set(ptr noundef %3, ptr noundef nonnull @udf_tcpip4_layout, i32 noundef %slice_idx.05.i.lcssa.i) #15
  %shl.i = shl nuw i32 1, %port
  %core_reg_align.i.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 9
  %111 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i.i = shl i32 164016, %112
  %113 = call i32 @llvm.bswap.i32(i32 %shl.i) #15
  %114 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %115, i32 %shl.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %113) #15, !srcloc !59
  %116 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i138.i = shl i32 164144, %117
  %118 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %3, align 4
  %add.ptr.i139.i = getelementptr i8, ptr %119, i32 %shl.i.i138.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139.i, i32 -16777216) #15, !srcloc !59
  %120 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ip.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %121, align 1
  %conv36.i = zext i8 %123 to i32
  %shl37.i = shl nuw nsw i32 %conv36.i, 16
  %or.i = or i32 %shl37.i, %ip_proto.0.i
  %124 = shl i32 %74, 7
  %shl41.i = and i32 %124, 128
  %or42.i = or i32 %or.i, %shl41.i
  %spec.select.1.i.i.neg = select i1 %cmp1.not.i.i.not, i32 32, i32 31
  %spec.select.2.i.i.neg = add nsw i32 %spec.select.1.i.i.neg, %inc.1.i.i.neg
  %spec.select.3.i.i.neg = add nsw i32 %spec.select.2.i.i.neg, %inc.2.i.i.neg
  %spec.select.4.i.i.neg = add nsw i32 %spec.select.3.i.i.neg, %inc.3.i.i.neg
  %spec.select.5.i.i.neg = add nsw i32 %spec.select.4.i.i.neg, %inc.4.i.i.neg
  %spec.select.6.i.i.neg = add nsw i32 %spec.select.5.i.i.neg, %inc.5.i.i.neg
  %spec.select.7.i.i.neg = add nsw i32 %spec.select.6.i.i.neg, %inc.6.i.i.neg
  %spec.select.8.i.i.neg = add nsw i32 %spec.select.7.i.i.neg, %inc.7.i.i.neg
  %sub1.i.i = add nsw i32 %spec.select.8.i.i.neg, %inc.8.i.i.neg
  %shr.i.i = lshr i32 -1, %sub1.i.i
  %shr2.i.i = lshr i32 %shr.i.i, 8
  %or45.i = or i32 %or42.i, %shr2.i.i
  %125 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i141.i = shl i32 164000, %126
  %127 = call i32 @llvm.bswap.i32(i32 %or45.i) #15
  %128 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %3, align 4
  %add.ptr.i142.i = getelementptr i8, ptr %129, i32 %shl.i.i141.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142.i, i32 %127) #15, !srcloc !59
  %mask_value.i = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr @udf_tcpip4_layout, i32 0, i32 %slice_idx.05.i.lcssa.i, i32 1
  %130 = ptrtoint ptr %mask_value.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %mask_value.i, align 4
  %or50.i = or i32 %131, %shr2.i.i
  %132 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i147.i = shl i32 164128, %133
  %134 = call i32 @llvm.bswap.i32(i32 %or50.i) #15
  %135 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %3, align 4
  %add.ptr.i148.i = getelementptr i8, ptr %136, i32 %shl.i.i147.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148.i, i32 %134) #15, !srcloc !59
  %137 = ptrtoint ptr %ipv4.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ipv4.i, align 4
  %139 = ptrtoint ptr %ports.i109 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ports.i109, align 4
  %or.i.i = call i32 @llvm.fshl.i32(i32 %shr.i.i, i32 %vlan_tci.0.i, i32 24) #15
  %141 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i88.i.i = shl i32 163984, %142
  %143 = call i32 @llvm.bswap.i32(i32 %or.i.i) #15
  %144 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %3, align 4
  %add.ptr.i89.i.i = getelementptr i8, ptr %145, i32 %shl.i.i88.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i.i, i32 %143) #15, !srcloc !59
  %146 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i91.i.i = shl i32 163968, %147
  %148 = and i32 %vlan_tci.0.i, 255
  %149 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %3, align 4
  %add.ptr.i92.i.i = getelementptr i8, ptr %150, i32 %shl.i.i91.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i.i, i32 %148) #15, !srcloc !59
  %dst.i.i = getelementptr inbounds %struct.anon.166, ptr %140, i32 0, i32 1
  %151 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %dst.i.i, align 2
  %153 = lshr i16 %152, 8
  %154 = zext i16 %153 to i32
  %155 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i94.i.i = shl i32 163952, %156
  %157 = shl nuw i32 %154, 24
  %158 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %3, align 4
  %add.ptr.i95.i.i = getelementptr i8, ptr %159, i32 %shl.i.i94.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95.i.i, i32 %157) #15, !srcloc !59
  %160 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %dst.i.i, align 2
  %and16.i.i = zext i16 %161 to i32
  %shl17.i.i = shl i32 %and16.i.i, 24
  %162 = ptrtoint ptr %140 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %140, align 4
  %conv18.i.i = zext i16 %163 to i32
  %shl19.i.i = shl nuw nsw i32 %conv18.i.i, 8
  %or20.i.i = or i32 %shl19.i.i, %shl17.i.i
  %dst21.i.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %138, i32 0, i32 1
  %164 = ptrtoint ptr %dst21.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %dst21.i.i, align 4
  %and22.i.i = lshr i32 %165, 8
  %shr23.i.i = and i32 %and22.i.i, 255
  %or24.i.i = or i32 %or20.i.i, %shr23.i.i
  %166 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i97.i.i = shl i32 163936, %167
  %168 = call i32 @llvm.bswap.i32(i32 %or24.i.i) #15
  %169 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %3, align 4
  %add.ptr.i98.i.i = getelementptr i8, ptr %170, i32 %shl.i.i97.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98.i.i, i32 %168) #15, !srcloc !59
  %171 = ptrtoint ptr %dst21.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %dst21.i.i, align 4
  %shl31.i.i = shl i32 %172, 24
  %173 = lshr i32 %172, 8
  %shl34.i.i = and i32 %173, 16776960
  %or35.i.i = or i32 %shl34.i.i, %shl31.i.i
  %174 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %138, align 4
  %and37.i.i = lshr i32 %175, 8
  %shr38.i.i = and i32 %and37.i.i, 255
  %or39.i.i = or i32 %or35.i.i, %shr38.i.i
  %176 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i100.i.i = shl i32 163920, %177
  %178 = call i32 @llvm.bswap.i32(i32 %or39.i.i) #15
  %179 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %3, align 4
  %add.ptr.i101.i.i = getelementptr i8, ptr %180, i32 %shl.i.i100.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.i.i, i32 %178) #15, !srcloc !59
  %181 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %138, align 4
  %shl46.i.i = shl i32 %182, 24
  %183 = lshr i32 %182, 8
  %shl49.i.i = and i32 %183, 16776960
  %or50.i.i = or i32 %shl49.i.i, %shl46.i.i
  %shl51.i.i = shl nuw nsw i32 %slice_idx.05.i.lcssa.i, 2
  %or52.i.i = or i32 %or50.i.i, %shl51.i.i
  %or53.i.i = or i32 %or52.i.i, 3
  %184 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i103.i.i = shl i32 163904, %185
  %186 = call i32 @llvm.bswap.i32(i32 %or53.i.i) #15
  %187 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %3, align 4
  %add.ptr.i104.i.i = getelementptr i8, ptr %188, i32 %shl.i.i103.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104.i.i, i32 %186) #15, !srcloc !59
  %189 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %64, align 4
  %191 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %67, align 4
  %or.i153.i = call i32 @llvm.fshl.i32(i32 %shr.i.i, i32 %vlan_m_tci.0.i, i32 24) #15
  %193 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i.i.i = shl i32 164112, %194
  %195 = call i32 @llvm.bswap.i32(i32 %or.i153.i) #15
  %196 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %3, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %197, i32 %shl.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %195) #15, !srcloc !59
  %198 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i91.i156.i = shl i32 164096, %199
  %200 = and i32 %vlan_m_tci.0.i, 255
  %201 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %3, align 4
  %add.ptr.i92.i157.i = getelementptr i8, ptr %202, i32 %shl.i.i91.i156.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i157.i, i32 %200) #15, !srcloc !59
  %dst.i158.i = getelementptr inbounds %struct.anon.166, ptr %192, i32 0, i32 1
  %203 = ptrtoint ptr %dst.i158.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %dst.i158.i, align 2
  %205 = lshr i16 %204, 8
  %206 = zext i16 %205 to i32
  %207 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i94.i159.i = shl i32 164080, %208
  %209 = shl nuw i32 %206, 24
  %210 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %3, align 4
  %add.ptr.i95.i160.i = getelementptr i8, ptr %211, i32 %shl.i.i94.i159.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95.i160.i, i32 %209) #15, !srcloc !59
  %212 = ptrtoint ptr %dst.i158.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %dst.i158.i, align 2
  %and16.i161.i = zext i16 %213 to i32
  %shl17.i162.i = shl i32 %and16.i161.i, 24
  %214 = ptrtoint ptr %192 to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %192, align 4
  %conv18.i163.i = zext i16 %215 to i32
  %shl19.i164.i = shl nuw nsw i32 %conv18.i163.i, 8
  %or20.i165.i = or i32 %shl19.i164.i, %shl17.i162.i
  %dst21.i166.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %190, i32 0, i32 1
  %216 = ptrtoint ptr %dst21.i166.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %dst21.i166.i, align 4
  %and22.i167.i = lshr i32 %217, 8
  %shr23.i168.i = and i32 %and22.i167.i, 255
  %or24.i169.i = or i32 %or20.i165.i, %shr23.i168.i
  %218 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i97.i170.i = shl i32 164064, %219
  %220 = call i32 @llvm.bswap.i32(i32 %or24.i169.i) #15
  %221 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %3, align 4
  %add.ptr.i98.i171.i = getelementptr i8, ptr %222, i32 %shl.i.i97.i170.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98.i171.i, i32 %220) #15, !srcloc !59
  %223 = ptrtoint ptr %dst21.i166.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %dst21.i166.i, align 4
  %shl31.i172.i = shl i32 %224, 24
  %225 = lshr i32 %224, 8
  %shl34.i173.i = and i32 %225, 16776960
  %or35.i174.i = or i32 %shl34.i173.i, %shl31.i172.i
  %226 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %190, align 4
  %and37.i175.i = lshr i32 %227, 8
  %shr38.i176.i = and i32 %and37.i175.i, 255
  %or39.i177.i = or i32 %or35.i174.i, %shr38.i176.i
  %228 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i100.i178.i = shl i32 164048, %229
  %230 = call i32 @llvm.bswap.i32(i32 %or39.i177.i) #15
  %231 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %3, align 4
  %add.ptr.i101.i179.i = getelementptr i8, ptr %232, i32 %shl.i.i100.i178.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.i179.i, i32 %230) #15, !srcloc !59
  %233 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %190, align 4
  %shl46.i180.i = shl i32 %234, 24
  %235 = lshr i32 %234, 8
  %shl49.i181.i = and i32 %235, 16776960
  %or50.i182.i = or i32 %shl49.i181.i, %shl46.i180.i
  %or53.i184.i = or i32 %or50.i182.i, 15
  %236 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i103.i185.i = shl i32 164032, %237
  %238 = call i32 @llvm.bswap.i32(i32 %or53.i184.i) #15
  %239 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %3, align 4
  %add.ptr.i104.i186.i = getelementptr i8, ptr %240, i32 %shl.i.i103.i185.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104.i186.i, i32 %238) #15, !srcloc !59
  %241 = ptrtoint ptr %num_cfp_rules.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %num_cfp_rules.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %242, i32 %rule_index.0.i)
  %cmp.not.i.i112 = icmp ugt i32 %242, %rule_index.0.i
  br i1 %cmp.not.i.i112, label %if.end31.i.bcm_sf2_cfp_rule_addr_set.exit.i_crit_edge, label %do.end.i.i, !prof !63

if.end31.i.bcm_sf2_cfp_rule_addr_set.exit.i_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_rule_addr_set.exit.i

do.end.i.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 198, i32 noundef 9, ptr noundef null) #15
  br label %bcm_sf2_cfp_rule_addr_set.exit.i

bcm_sf2_cfp_rule_addr_set.exit.i:                 ; preds = %do.end.i.i, %if.end31.i.bcm_sf2_cfp_rule_addr_set.exit.i_crit_edge
  %243 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i.i189.i = shl i32 163840, %244
  %245 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %3, align 4
  %add.ptr.i.i190.i = getelementptr i8, ptr %246, i32 %shl.i.i.i189.i
  %247 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i190.i) #15, !srcloc !58
  %248 = and i32 %247, -65281
  %249 = call i32 @llvm.bswap.i32(i32 %248) #15
  %shl.i.i = shl i32 %rule_index.0.i, 16
  %or.i191.i = or i32 %249, %shl.i.i
  %250 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i26.i.i = shl i32 163840, %251
  %252 = call i32 @llvm.bswap.i32(i32 %or.i191.i) #15
  %253 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %3, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %254, i32 %shl.i.i26.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 %252) #15, !srcloc !59
  %255 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i.i193.i = shl i32 163840, %256
  %257 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %3, align 4
  %add.ptr.i.i194.i = getelementptr i8, ptr %258, i32 %shl.i.i.i193.i
  %259 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i194.i) #15, !srcloc !58
  %260 = and i32 %259, -259784705
  %261 = or i32 %260, 84148224
  %262 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i25.i.i = shl i32 163840, %263
  %264 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %3, align 4
  %add.ptr.i26.i.i = getelementptr i8, ptr %265, i32 %shl.i.i25.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i.i, i32 %261) #15, !srcloc !59
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.end.i197.i.do.body.i.i_crit_edge, %bcm_sf2_cfp_rule_addr_set.exit.i
  %timeout.0.i.i = phi i32 [ 1000, %bcm_sf2_cfp_rule_addr_set.exit.i ], [ %dec.i.i, %do.end.i197.i.do.body.i.i_crit_edge ]
  %266 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i28.i.i = shl i32 163840, %267
  %268 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %3, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %269, i32 %shl.i.i28.i.i
  %270 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i.i) #15, !srcloc !58
  %271 = and i32 %270, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %tobool.not.i196.i = icmp eq i32 %271, 0
  br i1 %tobool.not.i196.i, label %do.end13.i.i, label %do.end.i197.i

do.end.i197.i:                                    ; preds = %do.body.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !64
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !65
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %tobool12.not.i.i = icmp eq i32 %timeout.0.i.i, 0
  br i1 %tobool12.not.i.i, label %do.end.i197.i.if.end58.i_crit_edge, label %do.end.i197.i.do.body.i.i_crit_edge

do.end.i197.i.do.body.i.i_crit_edge:              ; preds = %do.end.i197.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i

do.end.i197.i.if.end58.i_crit_edge:               ; preds = %do.end.i197.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58.i

do.end13.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i.i)
  %tobool14.not.i.i = icmp eq i32 %timeout.0.i.i, 0
  br i1 %tobool14.not.i.i, label %do.end.i, label %do.end13.i.i.if.end58.i_crit_edge

do.end13.i.i.if.end58.i_crit_edge:                ; preds = %do.end13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58.i

do.end.i:                                         ; preds = %do.end13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %rule_index.0.i) #20
  br label %out_err_flow_rule.i

if.end58.i:                                       ; preds = %do.end13.i.i.if.end58.i_crit_edge, %do.end.i197.i.if.end58.i_crit_edge
  %call59.i = call fastcc i32 @bcm_sf2_cfp_act_pol_set(ptr noundef %3, i32 noundef %rule_index.0.i, i32 noundef %port, i32 noundef %spec.select, i32 noundef %conv43, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.end62.i, label %if.end58.i.out_err_flow_rule.i_crit_edge

if.end58.i.out_err_flow_rule.i_crit_edge:         ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err_flow_rule.i

if.end62.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #17
  %272 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i199.i = shl i32 164864, %273
  %274 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %3, align 4
  %add.ptr.i200.i = getelementptr i8, ptr %275, i32 %shl.i.i199.i
  %276 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i200.i) #15, !srcloc !58
  %277 = call i32 @llvm.bswap.i32(i32 %276) #15
  %or65.i = or i32 %277, %shl.i
  %278 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i202.i = shl i32 164864, %279
  %280 = call i32 @llvm.bswap.i32(i32 %or65.i) #15
  %281 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %3, align 4
  %add.ptr.i203.i = getelementptr i8, ptr %282, i32 %shl.i.i202.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i203.i, i32 %280) #15, !srcloc !59
  %used67.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 32, i32 1
  call void @_set_bit(i32 noundef %rule_index.0.i, ptr noundef %used67.i) #15
  %unique.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 32, i32 2
  call void @_set_bit(i32 noundef %rule_index.0.i, ptr noundef %unique.i) #15
  %283 = ptrtoint ptr %location.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %rule_index.0.i, ptr %location.i, align 8
  br label %bcm_sf2_cfp_ipv4_rule_set.exit

out_err_flow_rule.i:                              ; preds = %if.end58.i.out_err_flow_rule.i_crit_edge, %do.end.i, %for.inc.i.2.i.out_err_flow_rule.i_crit_edge
  %ret.0.i = phi i32 [ -110, %do.end.i ], [ %call59.i, %if.end58.i.out_err_flow_rule.i_crit_edge ], [ -22, %for.inc.i.2.i.out_err_flow_rule.i_crit_edge ]
  call void @ethtool_rx_flow_rule_destroy(ptr noundef %call20.i) #15
  br label %bcm_sf2_cfp_ipv4_rule_set.exit

bcm_sf2_cfp_ipv4_rule_set.exit:                   ; preds = %out_err_flow_rule.i, %if.end62.i, %if.then22.i, %if.end13.i.bcm_sf2_cfp_ipv4_rule_set.exit_crit_edge, %sw.bb.bcm_sf2_cfp_ipv4_rule_set.exit_crit_edge
  %retval.0.i113 = phi i32 [ %86, %if.then22.i ], [ %ret.0.i, %out_err_flow_rule.i ], [ 0, %if.end62.i ], [ -22, %sw.bb.bcm_sf2_cfp_ipv4_rule_set.exit_crit_edge ], [ -28, %if.end13.i.bcm_sf2_cfp_ipv4_rule_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ip.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ports.i109) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipv4.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %input.i) #15
  br label %cleanup

sw.bb51:                                          ; preds = %if.end42.sw.bb51_crit_edge, %if.end42.sw.bb51_crit_edge231
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %input.i114) #15
  %284 = ptrtoint ptr %input.i114 to i32
  call void @__asan_store8_noabort(i32 %284)
  store i64 0, ptr %input.i114, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ipv6.i) #15
  %285 = ptrtoint ptr %ipv6.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr inttoptr (i32 -1 to ptr), ptr %ipv6.i, align 4, !annotation !62
  %286 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %ipv6.i, i32 0, i32 1
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr inttoptr (i32 -1 to ptr), ptr %286, align 4, !annotation !62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ports.i115) #15
  %288 = ptrtoint ptr %ports.i115 to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr inttoptr (i32 -1 to ptr), ptr %ports.i115, align 4, !annotation !62
  %289 = getelementptr inbounds %struct.flow_match_ports, ptr %ports.i115, i32 0, i32 1
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr inttoptr (i32 -1 to ptr), ptr %289, align 4, !annotation !62
  %291 = zext i32 %and49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %291, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %and49, label %sw.bb51.bcm_sf2_cfp_ipv6_rule_set.exit_crit_edge [
    i32 5, label %sw.bb51.sw.epilog.i121_crit_edge
    i32 6, label %sw.bb1.i117
  ]

sw.bb51.sw.epilog.i121_crit_edge:                 ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i121

sw.bb51.bcm_sf2_cfp_ipv6_rule_set.exit_crit_edge: ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_ipv6_rule_set.exit

sw.bb1.i117:                                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i121

sw.epilog.i121:                                   ; preds = %sw.bb1.i117, %sw.bb51.sw.epilog.i121_crit_edge
  %ip_proto.0.i118 = phi i32 [ 16781568, %sw.bb1.i117 ], [ 16778752, %sw.bb51.sw.epilog.i121_crit_edge ]
  %data.i119 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 2, i32 4
  %292 = ptrtoint ptr %data.i119 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %data.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %tobool6.not.i120 = icmp sgt i32 %59, -1
  br i1 %tobool6.not.i120, label %sw.epilog.i121.if.end.i130_crit_edge, label %if.then.i125

sw.epilog.i121.if.end.i130_crit_edge:             ; preds = %sw.epilog.i121
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i130

if.then.i125:                                     ; preds = %sw.epilog.i121
  call void @__sanitizer_cov_trace_pc() #17
  %vlan_tci8.i122 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 2, i32 3
  %294 = ptrtoint ptr %vlan_tci8.i122 to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %vlan_tci8.i122, align 2
  %vlan_tci9.i123 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 4, i32 3
  %296 = ptrtoint ptr %vlan_tci9.i123 to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %vlan_tci9.i123, align 2
  %phi.cast.i124 = zext i16 %295 to i32
  %phi.cast380.i = zext i16 %297 to i32
  br label %if.end.i130

if.end.i130:                                      ; preds = %if.then.i125, %sw.epilog.i121.if.end.i130_crit_edge
  %vlan_m_tci.0.i126 = phi i32 [ %phi.cast380.i, %if.then.i125 ], [ 65535, %sw.epilog.i121.if.end.i130_crit_edge ]
  %vlan_tci.0.i127 = phi i32 [ %phi.cast.i124, %if.then.i125 ], [ 0, %sw.epilog.i121.if.end.i130_crit_edge ]
  %bcmp.i.i128 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) @udf_tcpip6_layout, ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i128)
  %tobool.not.i.i129 = icmp eq i32 %bcmp.i.i128, 0
  br i1 %tobool.not.i.i129, label %for.inc.i.i133, label %if.end.i130.if.end12.i_crit_edge

if.end.i130.if.end12.i_crit_edge:                 ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

for.inc.i.i133:                                   ; preds = %if.end.i130
  %bcmp.i.1.i131 = call i32 @bcmp(ptr noundef dereferenceable(9) getelementptr inbounds (%struct.cfp_udf_layout, ptr @udf_tcpip6_layout, i32 0, i32 0, i32 1), ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.1.i131)
  %tobool.not.i.1.i132 = icmp eq i32 %bcmp.i.1.i131, 0
  br i1 %tobool.not.i.1.i132, label %for.inc.i.1.i136, label %for.inc.i.i133.if.end12.i_crit_edge

for.inc.i.i133.if.end12.i_crit_edge:              ; preds = %for.inc.i.i133
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

for.inc.i.1.i136:                                 ; preds = %for.inc.i.i133
  %bcmp.i.2.i134 = call i32 @bcmp(ptr noundef dereferenceable(9) getelementptr inbounds (%struct.cfp_udf_layout, ptr @udf_tcpip6_layout, i32 0, i32 0, i32 2), ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.2.i134)
  %tobool.not.i.2.i135 = icmp eq i32 %bcmp.i.2.i134, 0
  br i1 %tobool.not.i.2.i135, label %for.inc.i.2.i139, label %for.inc.i.1.i136.if.end12.i_crit_edge

for.inc.i.1.i136.if.end12.i_crit_edge:            ; preds = %for.inc.i.1.i136
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

for.inc.i.2.i139:                                 ; preds = %for.inc.i.1.i136
  %bcmp.i.3.i137 = call i32 @bcmp(ptr noundef dereferenceable(9) getelementptr inbounds (%struct.cfp_udf_layout, ptr @udf_tcpip6_layout, i32 0, i32 0, i32 3), ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.3.i137)
  %tobool.not.i.3.i138 = icmp eq i32 %bcmp.i.3.i137, 0
  br i1 %tobool.not.i.3.i138, label %for.inc.i.2.i139.bcm_sf2_cfp_ipv6_rule_set.exit_crit_edge, label %for.inc.i.2.i139.if.end12.i_crit_edge

for.inc.i.2.i139.if.end12.i_crit_edge:            ; preds = %for.inc.i.2.i139
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

for.inc.i.2.i139.bcm_sf2_cfp_ipv6_rule_set.exit_crit_edge: ; preds = %for.inc.i.2.i139
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_ipv6_rule_set.exit

if.end12.i:                                       ; preds = %for.inc.i.2.i139.if.end12.i_crit_edge, %for.inc.i.1.i136.if.end12.i_crit_edge, %for.inc.i.i133.if.end12.i_crit_edge, %if.end.i130.if.end12.i_crit_edge
  %slice_idx.05.i.lcssa.i140 = phi i32 [ 0, %if.end.i130.if.end12.i_crit_edge ], [ 1, %for.inc.i.i133.if.end12.i_crit_edge ], [ 2, %for.inc.i.1.i136.if.end12.i_crit_edge ], [ 3, %for.inc.i.2.i139.if.end12.i_crit_edge ]
  %arrayidx13.i = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr @udf_tcpip6_layout, i32 0, i32 %slice_idx.05.i.lcssa.i140
  %298 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %arrayidx13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %299)
  %cmp1.not.i.not.i = icmp eq i8 %299, 0
  %arrayidx.1.i.i141 = getelementptr i8, ptr %arrayidx13.i, i32 1
  %300 = ptrtoint ptr %arrayidx.1.i.i141 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %arrayidx.1.i.i141, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %301)
  %cmp1.not.1.i.i142 = icmp ne i8 %301, 0
  %inc.1.i.neg.i = sext i1 %cmp1.not.1.i.i142 to i32
  %arrayidx.2.i.i143 = getelementptr i8, ptr %arrayidx13.i, i32 2
  %302 = ptrtoint ptr %arrayidx.2.i.i143 to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %arrayidx.2.i.i143, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %303)
  %cmp1.not.2.i.i144 = icmp ne i8 %303, 0
  %inc.2.i.neg.i = sext i1 %cmp1.not.2.i.i144 to i32
  %arrayidx.3.i.i145 = getelementptr i8, ptr %arrayidx13.i, i32 3
  %304 = ptrtoint ptr %arrayidx.3.i.i145 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %arrayidx.3.i.i145, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %305)
  %cmp1.not.3.i.i146 = icmp ne i8 %305, 0
  %inc.3.i.neg.i = sext i1 %cmp1.not.3.i.i146 to i32
  %arrayidx.4.i.i147 = getelementptr i8, ptr %arrayidx13.i, i32 4
  %306 = ptrtoint ptr %arrayidx.4.i.i147 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %arrayidx.4.i.i147, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %307)
  %cmp1.not.4.i.i148 = icmp ne i8 %307, 0
  %inc.4.i.neg.i = sext i1 %cmp1.not.4.i.i148 to i32
  %arrayidx.5.i.i149 = getelementptr i8, ptr %arrayidx13.i, i32 5
  %308 = ptrtoint ptr %arrayidx.5.i.i149 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %arrayidx.5.i.i149, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %309)
  %cmp1.not.5.i.i150 = icmp ne i8 %309, 0
  %inc.5.i.neg.i = sext i1 %cmp1.not.5.i.i150 to i32
  %arrayidx.6.i.i151 = getelementptr i8, ptr %arrayidx13.i, i32 6
  %310 = ptrtoint ptr %arrayidx.6.i.i151 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx.6.i.i151, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %311)
  %cmp1.not.6.i.i152 = icmp ne i8 %311, 0
  %inc.6.i.neg.i = sext i1 %cmp1.not.6.i.i152 to i32
  %arrayidx.7.i.i153 = getelementptr i8, ptr %arrayidx13.i, i32 7
  %312 = ptrtoint ptr %arrayidx.7.i.i153 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %arrayidx.7.i.i153, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %313)
  %cmp1.not.7.i.i154 = icmp ne i8 %313, 0
  %inc.7.i.neg.i = sext i1 %cmp1.not.7.i.i154 to i32
  %arrayidx.8.i.i155 = getelementptr i8, ptr %arrayidx13.i, i32 8
  %314 = ptrtoint ptr %arrayidx.8.i.i155 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %arrayidx.8.i.i155, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %315)
  %cmp1.not.8.i.i156 = icmp ne i8 %315, 0
  %inc.8.i.neg.i = sext i1 %cmp1.not.8.i.i156 to i32
  %location.i157 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 6
  %316 = ptrtoint ptr %location.i157 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %location.i157, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %317)
  %cmp16.i = icmp eq i32 %317, -1
  br i1 %cmp16.i, label %if.then18.i, label %if.end12.i.if.end24.i163_crit_edge

if.end12.i.if.end24.i163_crit_edge:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i163

if.then18.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  %used.i158 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 32, i32 1
  %num_cfp_rules.i159 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 10
  %318 = ptrtoint ptr %num_cfp_rules.i159 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %num_cfp_rules.i159, align 4
  %call20.i160 = call i32 @_find_first_zero_bit_be(ptr noundef %used.i158, i32 noundef %319) #15
  br label %if.end24.i163

if.end24.i163:                                    ; preds = %if.then18.i, %if.end12.i.if.end24.i163_crit_edge
  %rule_index.sroa.10.0.i = phi i32 [ %call20.i160, %if.then18.i ], [ %317, %if.end12.i.if.end24.i163_crit_edge ]
  %num_cfp_rules.i.i161 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 10
  %320 = ptrtoint ptr %num_cfp_rules.i.i161 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %num_cfp_rules.i.i161, align 4
  %sub.i.i162 = add i32 %321, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %rule_index.sroa.10.0.i, i32 %sub.i.i162)
  %cmp27.i = icmp ugt i32 %rule_index.sroa.10.0.i, %sub.i.i162
  br i1 %cmp27.i, label %if.end24.i163.bcm_sf2_cfp_ipv6_rule_set.exit_crit_edge, label %if.end30.i

if.end24.i163.bcm_sf2_cfp_ipv6_rule_set.exit_crit_edge: ; preds = %if.end24.i163
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_ipv6_rule_set.exit

if.end30.i:                                       ; preds = %if.end24.i163
  %used33.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 32, i32 1
  call void @_set_bit(i32 noundef %rule_index.sroa.10.0.i, ptr noundef %used33.i) #15
  %322 = ptrtoint ptr %num_cfp_rules.i.i161 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %num_cfp_rules.i.i161, align 4
  %call39.i = call i32 @_find_first_zero_bit_be(ptr noundef %used33.i, i32 noundef %323) #15
  %324 = ptrtoint ptr %num_cfp_rules.i.i161 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %num_cfp_rules.i.i161, align 4
  %sub.i270.i = add i32 %325, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call39.i, i32 %sub.i270.i)
  %cmp43.i = icmp ugt i32 %call39.i, %sub.i270.i
  br i1 %cmp43.i, label %if.end30.i.out_err.i_crit_edge, label %if.end46.i

if.end30.i.out_err.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err.i

if.end46.i:                                       ; preds = %if.end30.i
  %326 = ptrtoint ptr %input.i114 to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr %fs, ptr %input.i114, align 8
  %call48.i = call ptr @ethtool_rx_flow_rule_create(ptr noundef nonnull %input.i114) #15
  %cmp.i.i164 = icmp ugt ptr %call48.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i164, label %if.then50.i, label %if.end52.i

if.then50.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #17
  %327 = ptrtoint ptr %call48.i to i32
  br label %out_err.i

if.end52.i:                                       ; preds = %if.end46.i
  %328 = ptrtoint ptr %call48.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %call48.i, align 4
  call void @flow_rule_match_ipv6_addrs(ptr noundef %329, ptr noundef nonnull %ipv6.i) #15
  %330 = ptrtoint ptr %call48.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %call48.i, align 4
  call void @flow_rule_match_ports(ptr noundef %331, ptr noundef nonnull %ports.i115) #15
  call fastcc void @bcm_sf2_cfp_udf_set(ptr noundef %3, ptr noundef nonnull @udf_tcpip6_layout, i32 noundef %slice_idx.05.i.lcssa.i140) #15
  %shl.i165 = shl nuw i32 1, %port
  %core_reg_align.i.i.i166 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 9
  %332 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i.i167 = shl i32 164016, %333
  %334 = call i32 @llvm.bswap.i32(i32 %shl.i165) #15
  %335 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %3, align 4
  %add.ptr.i.i168 = getelementptr i8, ptr %336, i32 %shl.i.i.i167
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i168, i32 %334) #15, !srcloc !59
  %337 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i272.i = shl i32 164144, %338
  %339 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %3, align 4
  %add.ptr.i273.i = getelementptr i8, ptr %340, i32 %shl.i.i272.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i273.i, i32 -16777216) #15, !srcloc !59
  %341 = shl i32 %293, 7
  %shl57.i = and i32 %341, 128
  %or58.i = or i32 %shl57.i, %ip_proto.0.i118
  %spec.select.1.i.neg.i = select i1 %cmp1.not.i.not.i, i32 32, i32 31
  %spec.select.2.i.neg.i = add nsw i32 %spec.select.1.i.neg.i, %inc.1.i.neg.i
  %spec.select.3.i.neg.i = add nsw i32 %spec.select.2.i.neg.i, %inc.2.i.neg.i
  %spec.select.4.i.neg.i = add nsw i32 %spec.select.3.i.neg.i, %inc.3.i.neg.i
  %spec.select.5.i.neg.i = add nsw i32 %spec.select.4.i.neg.i, %inc.4.i.neg.i
  %spec.select.6.i.neg.i = add nsw i32 %spec.select.5.i.neg.i, %inc.5.i.neg.i
  %spec.select.7.i.neg.i = add nsw i32 %spec.select.6.i.neg.i, %inc.6.i.neg.i
  %spec.select.8.i.neg.i = add nsw i32 %spec.select.7.i.neg.i, %inc.7.i.neg.i
  %sub1.i.i169 = add nsw i32 %spec.select.8.i.neg.i, %inc.8.i.neg.i
  %shr.i.i170 = lshr i32 -1, %sub1.i.i169
  %shr2.i.i171 = lshr i32 %shr.i.i170, 8
  %or61.i = or i32 %or58.i, %shr2.i.i171
  %342 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i275.i = shl i32 164000, %343
  %344 = call i32 @llvm.bswap.i32(i32 %or61.i) #15
  %345 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %3, align 4
  %add.ptr.i276.i = getelementptr i8, ptr %346, i32 %shl.i.i275.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i276.i, i32 %344) #15, !srcloc !59
  %mask_value.i172 = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr @udf_tcpip6_layout, i32 0, i32 %slice_idx.05.i.lcssa.i140, i32 1
  %347 = ptrtoint ptr %mask_value.i172 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %mask_value.i172, align 4
  %or66.i = or i32 %348, %shr2.i.i171
  %349 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i281.i = shl i32 164128, %350
  %351 = call i32 @llvm.bswap.i32(i32 %or66.i) #15
  %352 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %3, align 4
  %add.ptr.i282.i = getelementptr i8, ptr %353, i32 %shl.i.i281.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282.i, i32 %351) #15, !srcloc !59
  %354 = ptrtoint ptr %ipv6.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %ipv6.i, align 4
  %356 = ptrtoint ptr %ports.i115 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %ports.i115, align 4
  %358 = ptrtoint ptr %357 to i32
  call void @__asan_load2_noabort(i32 %358)
  %359 = load i16, ptr %357, align 4
  %or.i.i173 = call i32 @llvm.fshl.i32(i32 %shr.i.i170, i32 %vlan_tci.0.i127, i32 24) #15
  %360 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i101.i.i = shl i32 163984, %361
  %362 = call i32 @llvm.bswap.i32(i32 %or.i.i173) #15
  %363 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %3, align 4
  %add.ptr.i102.i.i = getelementptr i8, ptr %364, i32 %shl.i.i101.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102.i.i, i32 %362) #15, !srcloc !59
  %arrayidx.i285.i = getelementptr i32, ptr %355, i32 3
  %365 = ptrtoint ptr %arrayidx.i285.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %arrayidx.i285.i, align 4
  %conv1.i.i = zext i16 %359 to i32
  %shl2.i.i = shl nuw nsw i32 %conv1.i.i, 8
  %shr3.i.i = lshr i32 %366, 8
  %and.i.i = and i32 %shr3.i.i, 255
  %or4.i.i = or i32 %and.i.i, %shl2.i.i
  %shl7.i.i = shl i32 %vlan_tci.0.i127, 24
  %or8.i.i = or i32 %or4.i.i, %shl7.i.i
  %367 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i104.i.i = shl i32 163968, %368
  %369 = call i32 @llvm.bswap.i32(i32 %or8.i.i) #15
  %370 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %3, align 4
  %add.ptr.i105.i.i = getelementptr i8, ptr %371, i32 %shl.i.i104.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105.i.i, i32 %369) #15, !srcloc !59
  %arrayidx13.i.i = getelementptr i32, ptr %355, i32 2
  %372 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %arrayidx13.i.i, align 4
  %shl15.i.i = shl i32 %366, 24
  %shl17.i.i174 = and i32 %shr3.i.i, 16776960
  %or18.i.i = or i32 %shl17.i.i174, %shl15.i.i
  %shr19.i.i = lshr i32 %373, 8
  %and20.i.i = and i32 %shr19.i.i, 255
  %or21.i.i = or i32 %and20.i.i, %or18.i.i
  %374 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i107.i.i = shl i32 163952, %375
  %376 = call i32 @llvm.bswap.i32(i32 %or21.i.i) #15
  %377 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %3, align 4
  %add.ptr.i108.i.i = getelementptr i8, ptr %378, i32 %shl.i.i107.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108.i.i, i32 %376) #15, !srcloc !59
  %arrayidx26.i.i = getelementptr i32, ptr %355, i32 1
  %379 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %arrayidx26.i.i, align 4
  %shl28.i.i = shl i32 %373, 24
  %shl30.i.i = and i32 %shr19.i.i, 16776960
  %or31.i.i = or i32 %shl30.i.i, %shl28.i.i
  %shr32.i.i = lshr i32 %380, 8
  %and33.i.i = and i32 %shr32.i.i, 255
  %or34.i.i = or i32 %and33.i.i, %or31.i.i
  %381 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i110.i.i = shl i32 163936, %382
  %383 = call i32 @llvm.bswap.i32(i32 %or34.i.i) #15
  %384 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %3, align 4
  %add.ptr.i111.i.i = getelementptr i8, ptr %385, i32 %shl.i.i110.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111.i.i, i32 %383) #15, !srcloc !59
  %386 = ptrtoint ptr %355 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %355, align 4
  %shl41.i.i = shl i32 %380, 24
  %shl43.i.i = and i32 %shr32.i.i, 16776960
  %or44.i.i = or i32 %shl43.i.i, %shl41.i.i
  %shr45.i.i = lshr i32 %387, 8
  %and46.i.i = and i32 %shr45.i.i, 255
  %or47.i.i = or i32 %and46.i.i, %or44.i.i
  %388 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i113.i.i = shl i32 163920, %389
  %390 = call i32 @llvm.bswap.i32(i32 %or47.i.i) #15
  %391 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %3, align 4
  %add.ptr.i114.i.i = getelementptr i8, ptr %392, i32 %shl.i.i113.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114.i.i, i32 %390) #15, !srcloc !59
  %shl53.i.i = shl i32 %387, 24
  %shl55.i.i = and i32 %shr45.i.i, 16776960
  %or56.i.i = or i32 %shl55.i.i, %shl53.i.i
  %shl57.i.i = shl nuw nsw i32 %slice_idx.05.i.lcssa.i140, 2
  %or58.i.i = or i32 %or56.i.i, %shl57.i.i
  %or59.i.i = or i32 %or58.i.i, 3
  %393 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i116.i.i = shl i32 163904, %394
  %395 = call i32 @llvm.bswap.i32(i32 %or59.i.i) #15
  %396 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %3, align 4
  %add.ptr.i117.i.i = getelementptr i8, ptr %397, i32 %shl.i.i116.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117.i.i, i32 %395) #15, !srcloc !59
  %398 = ptrtoint ptr %286 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %286, align 4
  %400 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %289, align 4
  %402 = ptrtoint ptr %401 to i32
  call void @__asan_load2_noabort(i32 %402)
  %403 = load i16, ptr %401, align 4
  %or.i290.i = call i32 @llvm.fshl.i32(i32 %shr.i.i170, i32 %vlan_m_tci.0.i126, i32 24) #15
  %404 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i.i.i175 = shl i32 164112, %405
  %406 = call i32 @llvm.bswap.i32(i32 %or.i290.i) #15
  %407 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %3, align 4
  %add.ptr.i.i.i176 = getelementptr i8, ptr %408, i32 %shl.i.i.i.i175
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i176, i32 %406) #15, !srcloc !59
  %arrayidx.i292.i = getelementptr i32, ptr %399, i32 3
  %409 = ptrtoint ptr %arrayidx.i292.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %arrayidx.i292.i, align 4
  %conv1.i293.i = zext i16 %403 to i32
  %shl2.i294.i = shl nuw nsw i32 %conv1.i293.i, 8
  %shr3.i295.i = lshr i32 %410, 8
  %and.i296.i = and i32 %shr3.i295.i, 255
  %or4.i297.i = or i32 %and.i296.i, %shl2.i294.i
  %shl7.i298.i = shl i32 %vlan_m_tci.0.i126, 24
  %or8.i299.i = or i32 %or4.i297.i, %shl7.i298.i
  %411 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i104.i301.i = shl i32 164096, %412
  %413 = call i32 @llvm.bswap.i32(i32 %or8.i299.i) #15
  %414 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %3, align 4
  %add.ptr.i105.i302.i = getelementptr i8, ptr %415, i32 %shl.i.i104.i301.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105.i302.i, i32 %413) #15, !srcloc !59
  %arrayidx13.i303.i = getelementptr i32, ptr %399, i32 2
  %416 = ptrtoint ptr %arrayidx13.i303.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %arrayidx13.i303.i, align 4
  %shl15.i304.i = shl i32 %410, 24
  %shl17.i305.i = and i32 %shr3.i295.i, 16776960
  %or18.i306.i = or i32 %shl17.i305.i, %shl15.i304.i
  %shr19.i307.i = lshr i32 %417, 8
  %and20.i308.i = and i32 %shr19.i307.i, 255
  %or21.i309.i = or i32 %and20.i308.i, %or18.i306.i
  %418 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i107.i310.i = shl i32 164080, %419
  %420 = call i32 @llvm.bswap.i32(i32 %or21.i309.i) #15
  %421 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %3, align 4
  %add.ptr.i108.i311.i = getelementptr i8, ptr %422, i32 %shl.i.i107.i310.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108.i311.i, i32 %420) #15, !srcloc !59
  %arrayidx26.i312.i = getelementptr i32, ptr %399, i32 1
  %423 = ptrtoint ptr %arrayidx26.i312.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %arrayidx26.i312.i, align 4
  %shl28.i313.i = shl i32 %417, 24
  %shl30.i314.i = and i32 %shr19.i307.i, 16776960
  %or31.i315.i = or i32 %shl30.i314.i, %shl28.i313.i
  %shr32.i316.i = lshr i32 %424, 8
  %and33.i317.i = and i32 %shr32.i316.i, 255
  %or34.i318.i = or i32 %and33.i317.i, %or31.i315.i
  %425 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i110.i319.i = shl i32 164064, %426
  %427 = call i32 @llvm.bswap.i32(i32 %or34.i318.i) #15
  %428 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %3, align 4
  %add.ptr.i111.i320.i = getelementptr i8, ptr %429, i32 %shl.i.i110.i319.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111.i320.i, i32 %427) #15, !srcloc !59
  %430 = ptrtoint ptr %399 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %399, align 4
  %shl41.i321.i = shl i32 %424, 24
  %shl43.i322.i = and i32 %shr32.i316.i, 16776960
  %or44.i323.i = or i32 %shl43.i322.i, %shl41.i321.i
  %shr45.i324.i = lshr i32 %431, 8
  %and46.i325.i = and i32 %shr45.i324.i, 255
  %or47.i326.i = or i32 %and46.i325.i, %or44.i323.i
  %432 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i113.i327.i = shl i32 164048, %433
  %434 = call i32 @llvm.bswap.i32(i32 %or47.i326.i) #15
  %435 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %3, align 4
  %add.ptr.i114.i328.i = getelementptr i8, ptr %436, i32 %shl.i.i113.i327.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114.i328.i, i32 %434) #15, !srcloc !59
  %shl53.i329.i = shl i32 %431, 24
  %shl55.i330.i = and i32 %shr45.i324.i, 16776960
  %or56.i331.i = or i32 %shl55.i330.i, %shl53.i329.i
  %or59.i333.i = or i32 %or56.i331.i, 15
  %437 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i116.i334.i = shl i32 164032, %438
  %439 = call i32 @llvm.bswap.i32(i32 %or59.i333.i) #15
  %440 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %3, align 4
  %add.ptr.i117.i335.i = getelementptr i8, ptr %441, i32 %shl.i.i116.i334.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117.i335.i, i32 %439) #15, !srcloc !59
  %442 = ptrtoint ptr %num_cfp_rules.i.i161 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %num_cfp_rules.i.i161, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %443, i32 %call39.i)
  %cmp.not.i.i177 = icmp ugt i32 %443, %call39.i
  br i1 %cmp.not.i.i177, label %if.end52.i.bcm_sf2_cfp_rule_addr_set.exit.i184_crit_edge, label %do.end.i.i178, !prof !63

if.end52.i.bcm_sf2_cfp_rule_addr_set.exit.i184_crit_edge: ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_rule_addr_set.exit.i184

do.end.i.i178:                                    ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 198, i32 noundef 9, ptr noundef null) #15
  br label %bcm_sf2_cfp_rule_addr_set.exit.i184

bcm_sf2_cfp_rule_addr_set.exit.i184:              ; preds = %do.end.i.i178, %if.end52.i.bcm_sf2_cfp_rule_addr_set.exit.i184_crit_edge
  %444 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i.i338.i = shl i32 163840, %445
  %446 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %3, align 4
  %add.ptr.i.i339.i = getelementptr i8, ptr %447, i32 %shl.i.i.i338.i
  %448 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i339.i) #15, !srcloc !58
  %449 = and i32 %448, -65281
  %450 = call i32 @llvm.bswap.i32(i32 %449) #15
  %shl.i.i179 = shl i32 %call39.i, 16
  %or.i340.i = or i32 %450, %shl.i.i179
  %451 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i26.i.i180 = shl i32 163840, %452
  %453 = call i32 @llvm.bswap.i32(i32 %or.i340.i) #15
  %454 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %3, align 4
  %add.ptr.i27.i.i181 = getelementptr i8, ptr %455, i32 %shl.i.i26.i.i180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i181, i32 %453) #15, !srcloc !59
  %456 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i.i342.i = shl i32 163840, %457
  %458 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %3, align 4
  %add.ptr.i.i343.i = getelementptr i8, ptr %459, i32 %shl.i.i.i342.i
  %460 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i343.i) #15, !srcloc !58
  %461 = and i32 %460, -259784705
  %462 = or i32 %461, 84148224
  %463 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i25.i.i182 = shl i32 163840, %464
  %465 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %3, align 4
  %add.ptr.i26.i.i183 = getelementptr i8, ptr %466, i32 %shl.i.i25.i.i182
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i.i183, i32 %462) #15, !srcloc !59
  br label %do.body.i.i188

do.body.i.i188:                                   ; preds = %do.end.i346.i.do.body.i.i188_crit_edge, %bcm_sf2_cfp_rule_addr_set.exit.i184
  %timeout.0.i.i185 = phi i32 [ 1000, %bcm_sf2_cfp_rule_addr_set.exit.i184 ], [ %dec.i.i189, %do.end.i346.i.do.body.i.i188_crit_edge ]
  %467 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i28.i.i186 = shl i32 163840, %468
  %469 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %3, align 4
  %add.ptr.i29.i.i187 = getelementptr i8, ptr %470, i32 %shl.i.i28.i.i186
  %471 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i.i187) #15, !srcloc !58
  %472 = and i32 %471, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %472)
  %tobool.not.i345.i = icmp eq i32 %472, 0
  br i1 %tobool.not.i345.i, label %do.end13.i.i192, label %do.end.i346.i

do.end.i346.i:                                    ; preds = %do.body.i.i188
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !64
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !65
  %dec.i.i189 = add nsw i32 %timeout.0.i.i185, -1
  %tobool12.not.i.i190 = icmp eq i32 %timeout.0.i.i185, 0
  br i1 %tobool12.not.i.i190, label %do.end.i346.i.if.end85.i_crit_edge, label %do.end.i346.i.do.body.i.i188_crit_edge

do.end.i346.i.do.body.i.i188_crit_edge:           ; preds = %do.end.i346.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i188

do.end.i346.i.if.end85.i_crit_edge:               ; preds = %do.end.i346.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end85.i

do.end13.i.i192:                                  ; preds = %do.body.i.i188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i.i185)
  %tobool14.not.i.i191 = icmp eq i32 %timeout.0.i.i185, 0
  br i1 %tobool14.not.i.i191, label %do.end13.i.i192.out_err_flow_rule.sink.split.i_crit_edge, label %do.end13.i.i192.if.end85.i_crit_edge

do.end13.i.i192.if.end85.i_crit_edge:             ; preds = %do.end13.i.i192
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end85.i

do.end13.i.i192.out_err_flow_rule.sink.split.i_crit_edge: ; preds = %do.end13.i.i192
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err_flow_rule.sink.split.i

if.end85.i:                                       ; preds = %do.end13.i.i192.if.end85.i_crit_edge, %do.end.i346.i.if.end85.i_crit_edge
  %call87.i = call fastcc i32 @bcm_sf2_cfp_act_pol_set(ptr noundef %3, i32 noundef %call39.i, i32 noundef %port, i32 noundef %spec.select, i32 noundef %conv43, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %tobool88.not.i = icmp eq i32 %call87.i, 0
  br i1 %tobool88.not.i, label %if.end90.i, label %if.end85.i.out_err_flow_rule.i195_crit_edge

if.end85.i.out_err_flow_rule.i195_crit_edge:      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err_flow_rule.i195

if.end90.i:                                       ; preds = %if.end85.i
  %add.i = add nuw nsw i32 %slice_idx.05.i.lcssa.i140, 1
  %call91.i = call fastcc i32 @bcm_sf2_get_slice_number(ptr noundef nonnull @udf_tcpip6_layout, i32 noundef %add.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call91.i)
  %cmp92.i = icmp eq i32 %call91.i, 4
  br i1 %cmp92.i, label %if.end90.i.out_err_flow_rule.i195_crit_edge, label %if.end95.i

if.end90.i.out_err_flow_rule.i195_crit_edge:      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err_flow_rule.i195

if.end95.i:                                       ; preds = %if.end90.i
  %arrayidx97.i = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr @udf_tcpip6_layout, i32 0, i32 %call91.i
  %call100.i = call fastcc i32 @bcm_sf2_get_num_udf_slices(ptr noundef %arrayidx97.i) #15
  call fastcc void @bcm_sf2_cfp_udf_set(ptr noundef %3, ptr noundef nonnull @udf_tcpip6_layout, i32 noundef %call91.i) #15
  %473 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i348.i = shl i32 164016, %474
  %475 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %3, align 4
  %add.ptr.i349.i = getelementptr i8, ptr %476, i32 %shl.i.i348.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i349.i, i32 0) #15, !srcloc !59
  %477 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i351.i = shl i32 164144, %478
  %479 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %3, align 4
  %add.ptr.i352.i = getelementptr i8, ptr %480, i32 %shl.i.i351.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i352.i, i32 0) #15, !srcloc !59
  %shl103.i = shl i32 %call39.i, 24
  %conv104.i = and i32 %call100.i, 255
  %sub1.i353.i = sub nsw i32 32, %conv104.i
  %shr.i354.i = lshr i32 -1, %sub1.i353.i
  %481 = shl i32 %shr.i354.i, 8
  %or111.i = or i32 %481, %shl103.i
  %482 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i360.i = shl i32 164000, %483
  %484 = call i32 @llvm.bswap.i32(i32 %or111.i) #15
  %485 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %3, align 4
  %add.ptr.i361.i = getelementptr i8, ptr %486, i32 %shl.i.i360.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i361.i, i32 %484) #15, !srcloc !59
  %or119.i = or i32 %481, -16777216
  %487 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i369.i = shl i32 164128, %488
  %489 = call i32 @llvm.bswap.i32(i32 %or119.i) #15
  %490 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %3, align 4
  %add.ptr.i370.i = getelementptr i8, ptr %491, i32 %shl.i.i369.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i370.i, i32 %489) #15, !srcloc !59
  %492 = ptrtoint ptr %ipv6.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %ipv6.i, align 4
  %dst.i = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %493, i32 0, i32 1
  %494 = ptrtoint ptr %ports.i115 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %ports.i115, align 4
  %dst124.i = getelementptr inbounds %struct.anon.166, ptr %495, i32 0, i32 1
  %496 = ptrtoint ptr %dst124.i to i32
  call void @__asan_load2_noabort(i32 %496)
  %497 = load i16, ptr %dst124.i, align 2
  call fastcc void @bcm_sf2_cfp_slice_ipv6(ptr noundef %3, ptr noundef %dst.i, i16 noundef zeroext %497, i16 noundef zeroext 0, i32 noundef %call91.i, i32 noundef 0, i1 noundef zeroext false) #15
  %498 = ptrtoint ptr %286 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %286, align 4
  %dst126.i = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %499, i32 0, i32 1
  %500 = ptrtoint ptr %ports.i115 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %ports.i115, align 4
  %dst130.i = getelementptr inbounds %struct.anon.166, ptr %501, i32 0, i32 1
  %502 = ptrtoint ptr %dst130.i to i32
  call void @__asan_load2_noabort(i32 %502)
  %503 = load i16, ptr %dst130.i, align 2
  call fastcc void @bcm_sf2_cfp_slice_ipv6(ptr noundef %3, ptr noundef %dst126.i, i16 noundef zeroext %503, i16 noundef zeroext 0, i32 noundef 3, i32 noundef 0, i1 noundef zeroext true) #15
  call fastcc void @bcm_sf2_cfp_rule_addr_set(ptr noundef %3, i32 noundef %rule_index.sroa.10.0.i) #15
  %call132.i = call fastcc i32 @bcm_sf2_cfp_op(ptr noundef %3, i32 noundef 1028) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132.i)
  %tobool133.not.i = icmp eq i32 %call132.i, 0
  br i1 %tobool133.not.i, label %if.end141.i, label %if.end95.i.out_err_flow_rule.sink.split.i_crit_edge

if.end95.i.out_err_flow_rule.sink.split.i_crit_edge: ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err_flow_rule.sink.split.i

if.end141.i:                                      ; preds = %if.end95.i
  %call143.i = call fastcc i32 @bcm_sf2_cfp_act_pol_set(ptr noundef %3, i32 noundef %rule_index.sroa.10.0.i, i32 noundef %port, i32 noundef %spec.select, i32 noundef %conv43, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143.i)
  %tobool144.not.i = icmp eq i32 %call143.i, 0
  br i1 %tobool144.not.i, label %if.end146.i, label %if.end141.i.out_err_flow_rule.i195_crit_edge

if.end141.i.out_err_flow_rule.i195_crit_edge:     ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err_flow_rule.i195

if.end146.i:                                      ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #17
  %504 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i372.i = shl i32 164864, %505
  %506 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %3, align 4
  %add.ptr.i373.i = getelementptr i8, ptr %507, i32 %shl.i.i372.i
  %508 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i373.i) #15, !srcloc !58
  %509 = call i32 @llvm.bswap.i32(i32 %508) #15
  %or149.i = or i32 %509, %shl.i165
  %510 = ptrtoint ptr %core_reg_align.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %core_reg_align.i.i.i166, align 4
  %shl.i.i375.i = shl i32 164864, %511
  %512 = call i32 @llvm.bswap.i32(i32 %or149.i) #15
  %513 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %3, align 4
  %add.ptr.i376.i = getelementptr i8, ptr %514, i32 %shl.i.i375.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i376.i, i32 %512) #15, !srcloc !59
  call void @_set_bit(i32 noundef %call39.i, ptr noundef %used33.i) #15
  %unique.i193 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 32, i32 2
  call void @_set_bit(i32 noundef %rule_index.sroa.10.0.i, ptr noundef %unique.i193) #15
  %515 = ptrtoint ptr %location.i157 to i32
  call void @__asan_store4_noabort(i32 %515)
  store i32 %rule_index.sroa.10.0.i, ptr %location.i157, align 8
  br label %bcm_sf2_cfp_ipv6_rule_set.exit

out_err_flow_rule.sink.split.i:                   ; preds = %if.end95.i.out_err_flow_rule.sink.split.i_crit_edge, %do.end13.i.i192.out_err_flow_rule.sink.split.i_crit_edge
  %rule_index.sroa.10.0.sink.i = phi i32 [ %call39.i, %do.end13.i.i192.out_err_flow_rule.sink.split.i_crit_edge ], [ %rule_index.sroa.10.0.i, %if.end95.i.out_err_flow_rule.sink.split.i_crit_edge ]
  %ret.0.ph.i = phi i32 [ -110, %do.end13.i.i192.out_err_flow_rule.sink.split.i_crit_edge ], [ %call132.i, %if.end95.i.out_err_flow_rule.sink.split.i_crit_edge ]
  %call140.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %rule_index.sroa.10.0.sink.i) #20
  br label %out_err_flow_rule.i195

out_err_flow_rule.i195:                           ; preds = %out_err_flow_rule.sink.split.i, %if.end141.i.out_err_flow_rule.i195_crit_edge, %if.end90.i.out_err_flow_rule.i195_crit_edge, %if.end85.i.out_err_flow_rule.i195_crit_edge
  %ret.0.i194 = phi i32 [ %call87.i, %if.end85.i.out_err_flow_rule.i195_crit_edge ], [ %call143.i, %if.end141.i.out_err_flow_rule.i195_crit_edge ], [ -22, %if.end90.i.out_err_flow_rule.i195_crit_edge ], [ %ret.0.ph.i, %out_err_flow_rule.sink.split.i ]
  call void @ethtool_rx_flow_rule_destroy(ptr noundef %call48.i) #15
  br label %out_err.i

out_err.i:                                        ; preds = %out_err_flow_rule.i195, %if.then50.i, %if.end30.i.out_err.i_crit_edge
  %ret.1.i = phi i32 [ %327, %if.then50.i ], [ %ret.0.i194, %out_err_flow_rule.i195 ], [ -28, %if.end30.i.out_err.i_crit_edge ]
  call void @_clear_bit(i32 noundef %rule_index.sroa.10.0.i, ptr noundef %used33.i) #15
  br label %bcm_sf2_cfp_ipv6_rule_set.exit

bcm_sf2_cfp_ipv6_rule_set.exit:                   ; preds = %out_err.i, %if.end146.i, %if.end24.i163.bcm_sf2_cfp_ipv6_rule_set.exit_crit_edge, %for.inc.i.2.i139.bcm_sf2_cfp_ipv6_rule_set.exit_crit_edge, %sw.bb51.bcm_sf2_cfp_ipv6_rule_set.exit_crit_edge
  %retval.0.i196 = phi i32 [ %ret.1.i, %out_err.i ], [ 0, %if.end146.i ], [ -22, %sw.bb51.bcm_sf2_cfp_ipv6_rule_set.exit_crit_edge ], [ -28, %if.end24.i163.bcm_sf2_cfp_ipv6_rule_set.exit_crit_edge ], [ -22, %for.inc.i.2.i139.bcm_sf2_cfp_ipv6_rule_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ports.i115) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipv6.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %input.i114) #15
  br label %cleanup

cleanup:                                          ; preds = %bcm_sf2_cfp_ipv6_rule_set.exit, %bcm_sf2_cfp_ipv4_rule_set.exit, %if.end42.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %dsa_is_cpu_port.exit.cleanup_crit_edge, %dsa_to_port.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false14.cleanup_crit_edge ], [ -22, %dsa_is_cpu_port.exit.cleanup_crit_edge ], [ -22, %dsa_to_port.exit.cleanup_crit_edge ], [ -22, %if.then20.cleanup_crit_edge ], [ %call38, %if.end26.cleanup_crit_edge ], [ %retval.0.i196, %bcm_sf2_cfp_ipv6_rule_set.exit ], [ %retval.0.i113, %bcm_sf2_cfp_ipv4_rule_set.exit ], [ -22, %if.end42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vlan) #15
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcm_sf2_cfp_get_strings(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %stringset, ptr noundef %data) local_unnamed_addr #4 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  %4 = call ptr @memset(ptr %buf, i32 255, i32 32)
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_cfp_rules = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %num_cfp_rules to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_cfp_rules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp125 = icmp ugt i32 %6, 1
  br i1 %cmp125, label %for.cond.preheader.for.cond2.preheader_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader.for.cond2.preheader_crit_edge: ; preds = %for.cond.preheader
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.for.cond2.preheader_crit_edge, %for.cond.preheader.for.cond2.preheader_crit_edge
  %i.026 = phi i32 [ %inc10, %for.cond2.preheader.for.cond2.preheader_crit_edge ], [ 1, %for.cond.preheader.for.cond2.preheader_crit_edge ]
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %i.026, ptr noundef nonnull @.str.19)
  %mul = mul i32 %i.026, 96
  %mul6 = add i32 %mul, -96
  %add.ptr = getelementptr i8, ptr %data, i32 %mul6
  %call8 = call i32 @strlcpy(ptr noundef %add.ptr, ptr noundef nonnull %buf, i32 noundef 32) #15
  %call5.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %i.026, ptr noundef nonnull @.str.20)
  %add.1 = mul i32 %i.026, 96
  %mul6.1 = add i32 %add.1, -64
  %add.ptr.1 = getelementptr i8, ptr %data, i32 %mul6.1
  %call8.1 = call i32 @strlcpy(ptr noundef %add.ptr.1, ptr noundef nonnull %buf, i32 noundef 32) #15
  %call5.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %i.026, ptr noundef nonnull @.str.21)
  %add.2 = mul i32 %i.026, 96
  %mul6.2 = add i32 %add.2, -32
  %add.ptr.2 = getelementptr i8, ptr %data, i32 %mul6.2
  %call8.2 = call i32 @strlcpy(ptr noundef %add.ptr.2, ptr noundef nonnull %buf, i32 noundef 32) #15
  %inc10 = add nuw i32 %i.026, 1
  %7 = ptrtoint ptr %num_cfp_rules to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_cfp_rules, align 4
  %cmp1 = icmp ult i32 %inc10, %8
  br i1 %cmp1, label %for.cond2.preheader.for.cond2.preheader_crit_edge, label %for.cond2.preheader.cleanup_crit_edge

for.cond2.preheader.cleanup_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond2.preheader.for.cond2.preheader_crit_edge: ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond2.preheader

cleanup:                                          ; preds = %for.cond2.preheader.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #15
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcm_sf2_cfp_get_ethtool_stats(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  %cfp = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %cfp, i32 noundef 0) #15
  %num_cfp_rules = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %num_cfp_rules to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cfp_rules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp41 = icmp ugt i32 %5, 1
  br i1 %cmp41, label %for.body.lr.ph, label %entry.for.end13_crit_edge

entry.for.end13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end13

for.body.lr.ph:                                   ; preds = %entry
  %rules_list.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 32, i32 4
  %core_reg_align.i.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc11.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 1, %for.body.lr.ph ], [ %inc12, %for.inc11.for.body_crit_edge ]
  %6 = ptrtoint ptr %rules_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn18.i = load ptr, ptr %rules_list.i, align 4
  %rule.019.i = getelementptr i8, ptr %.pn18.i, i32 -176
  %cmp.not20.i = icmp eq ptr %.pn18.i, %rules_list.i
  br i1 %cmp.not20.i, label %for.body.bcm_sf2_cfp_rule_find.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.bcm_sf2_cfp_rule_find.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_rule_find.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %rule.022.i = phi ptr [ %rule.0.i, %for.inc.i.for.body.i_crit_edge ], [ %rule.019.i, %for.body.for.body.i_crit_edge ]
  %.pn21.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn18.i, %for.body.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %rule.022.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rule.022.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %port)
  %cmp5.i = icmp eq i32 %8, %port
  br i1 %cmp5.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %location6.i = getelementptr i8, ptr %.pn21.i, i32 -8
  %9 = ptrtoint ptr %location6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %location6.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %i.042)
  %cmp7.i = icmp eq i32 %10, %i.042
  br i1 %cmp7.i, label %land.lhs.true.i.bcm_sf2_cfp_rule_find.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i.bcm_sf2_cfp_rule_find.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_rule_find.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %.pn21.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn21.i, align 4
  %rule.0.i = getelementptr i8, ptr %.pn.i, i32 -176
  %cmp.not.i = icmp eq ptr %.pn.i, %rules_list.i
  br i1 %cmp.not.i, label %for.inc.i.bcm_sf2_cfp_rule_find.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.bcm_sf2_cfp_rule_find.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_rule_find.exit

bcm_sf2_cfp_rule_find.exit:                       ; preds = %for.inc.i.bcm_sf2_cfp_rule_find.exit_crit_edge, %land.lhs.true.i.bcm_sf2_cfp_rule_find.exit_crit_edge, %for.body.bcm_sf2_cfp_rule_find.exit_crit_edge
  %rule.0.lcssa.i = phi ptr [ %rule.019.i, %for.body.bcm_sf2_cfp_rule_find.exit_crit_edge ], [ %rule.0.i, %for.inc.i.bcm_sf2_cfp_rule_find.exit_crit_edge ], [ %rule.022.i, %land.lhs.true.i.bcm_sf2_cfp_rule_find.exit_crit_edge ]
  %tobool.not = icmp eq ptr %rule.0.lcssa.i, null
  br i1 %tobool.not, label %bcm_sf2_cfp_rule_find.exit.for.inc11_crit_edge, label %for.cond2.preheader

bcm_sf2_cfp_rule_find.exit.for.inc11_crit_edge:   ; preds = %bcm_sf2_cfp_rule_find.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc11

for.cond2.preheader:                              ; preds = %bcm_sf2_cfp_rule_find.exit
  %shl.i = shl i32 %i.042, 16
  %12 = mul i32 %i.042, 3
  %mul = add i32 %12, -3
  br label %for.body4

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.cond2.preheader
  %j.039 = phi i32 [ 0, %for.cond2.preheader ], [ %inc, %for.inc.for.body4_crit_edge ]
  %13 = ptrtoint ptr %num_cfp_rules to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_cfp_rules, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %i.042)
  %cmp.not.i31 = icmp ugt i32 %14, %i.042
  br i1 %cmp.not.i31, label %for.body4.bcm_sf2_cfp_rule_addr_set.exit_crit_edge, label %do.end.i, !prof !63

for.body4.bcm_sf2_cfp_rule_addr_set.exit_crit_edge: ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_rule_addr_set.exit

do.end.i:                                         ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 198, i32 noundef 9, ptr noundef null) #15
  br label %bcm_sf2_cfp_rule_addr_set.exit

bcm_sf2_cfp_rule_addr_set.exit:                   ; preds = %do.end.i, %for.body4.bcm_sf2_cfp_rule_addr_set.exit_crit_edge
  %15 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i.i = shl i32 163840, %16
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %shl.i.i.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !58
  %20 = and i32 %19, -65281
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #15
  %or.i = or i32 %21, %shl.i
  %22 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i26.i = shl i32 163840, %23
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #15
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %26, i32 %shl.i.i26.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %24) #15, !srcloc !59
  %ram_loc = getelementptr [3 x %struct.bcm_sf2_cfp_stat], ptr @bcm_sf2_cfp_stats, i32 0, i32 %j.039, i32 1
  %27 = ptrtoint ptr %ram_loc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ram_loc, align 4
  %29 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i.i33 = shl i32 163840, %30
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %32, i32 %shl.i.i.i33
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34) #15, !srcloc !58
  %34 = and i32 %33, -259784705
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #15
  %or.i35 = or i32 %28, %35
  %or1.i = or i32 %or.i35, 3
  %36 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i25.i = shl i32 163840, %37
  %38 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #15
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %40, i32 %shl.i.i25.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %38) #15, !srcloc !59
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i36.do.body.i_crit_edge, %bcm_sf2_cfp_rule_addr_set.exit
  %timeout.0.i = phi i32 [ 1000, %bcm_sf2_cfp_rule_addr_set.exit ], [ %dec.i, %do.end.i36.do.body.i_crit_edge ]
  %41 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i28.i = shl i32 163840, %42
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %3, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %44, i32 %shl.i.i28.i
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #15, !srcloc !58
  %46 = and i32 %45, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i, label %do.end13.i, label %do.end.i36

do.end.i36:                                       ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !64
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !65
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool12.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %tobool12.not.i, label %do.end.i36.if.end8_crit_edge, label %do.end.i36.do.body.i_crit_edge

do.end.i36.do.body.i_crit_edge:                   ; preds = %do.end.i36
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

do.end.i36.if.end8_crit_edge:                     ; preds = %do.end.i36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

do.end13.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %tobool14.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %tobool14.not.i, label %do.end13.i.for.inc_crit_edge, label %do.end13.i.if.end8_crit_edge

do.end13.i.if.end8_crit_edge:                     ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

do.end13.i.for.inc_crit_edge:                     ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end8:                                          ; preds = %do.end13.i.if.end8_crit_edge, %do.end.i36.if.end8_crit_edge
  %arrayidx = getelementptr [3 x %struct.bcm_sf2_cfp_stat], ptr @bcm_sf2_cfp_stats, i32 0, i32 %j.039
  %add = add i32 %mul, %j.039
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx, align 4
  %49 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i = shl i32 %48, %50
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %52, i32 %shl.i.i
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !58
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #15
  %conv = zext i32 %54 to i64
  %arrayidx10 = getelementptr i64, ptr %data, i32 %add
  %55 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv, ptr %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %do.end13.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.039, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.for.inc11_crit_edge, label %for.inc.for.body4_crit_edge

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body4

for.inc.for.inc11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc11

for.inc11:                                        ; preds = %for.inc.for.inc11_crit_edge, %bcm_sf2_cfp_rule_find.exit.for.inc11_crit_edge
  %inc12 = add nuw i32 %i.042, 1
  %56 = ptrtoint ptr %num_cfp_rules to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_cfp_rules, align 4
  %cmp = icmp ult i32 %inc12, %57
  br i1 %cmp, label %for.inc11.for.body_crit_edge, label %for.inc11.for.end13_crit_edge

for.inc11.for.end13_crit_edge:                    ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end13

for.inc11.for.body_crit_edge:                     ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end13:                                        ; preds = %for.inc11.for.end13_crit_edge, %entry.for.end13_crit_edge
  tail call void @mutex_unlock(ptr noundef %cfp) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_sf2_cfp_rule_addr_set(ptr nocapture noundef readonly %priv, i32 noundef %addr) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %num_cfp_rules = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %num_cfp_rules to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_cfp_rules, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %addr)
  %cmp.not = icmp ugt i32 %1, %addr
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !63

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 198, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %core_reg_align.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 9
  %2 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i = shl i32 163840, %3
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %shl.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !58
  %7 = and i32 %6, -65281
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %shl = shl i32 %addr, 16
  %or = or i32 %8, %shl
  %9 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i26 = shl i32 163840, %10
  %11 = tail call i32 @llvm.bswap.i32(i32 %or) #15
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %add.ptr.i27 = getelementptr i8, ptr %13, i32 %shl.i.i26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %11) #15, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sf2_cfp_op(ptr nocapture noundef readonly %priv, i32 noundef %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %core_reg_align.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i = shl i32 163840, %1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !58
  %5 = and i32 %4, -259784705
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %or = or i32 %6, %op
  %or1 = or i32 %or, 1
  %7 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i25 = shl i32 163840, %8
  %9 = tail call i32 @llvm.bswap.i32(i32 %or1) #15
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %add.ptr.i26 = getelementptr i8, ptr %11, i32 %shl.i.i25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %9) #15, !srcloc !59
  br label %do.body

do.body:                                          ; preds = %do.end.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 1000, %entry ], [ %dec, %do.end.do.body_crit_edge ]
  %12 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i28 = shl i32 163840, %13
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %add.ptr.i29 = getelementptr i8, ptr %15, i32 %shl.i.i28
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #15, !srcloc !58
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %do.end13, label %do.end

do.end:                                           ; preds = %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !64
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !65
  %dec = add nsw i32 %timeout.0, -1
  %tobool12.not = icmp eq i32 %timeout.0, 0
  br i1 %tobool12.not, label %do.end.do.end13.thread_crit_edge, label %do.end.do.body_crit_edge

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.end.do.end13.thread_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13.thread

do.end13:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %tobool14.not = icmp eq i32 %timeout.0, 0
  %spec.select = select i1 %tobool14.not, i32 -110, i32 0
  br label %do.end13.thread

do.end13.thread:                                  ; preds = %do.end13, %do.end.do.end13.thread_crit_edge
  %18 = phi i32 [ %spec.select, %do.end13 ], [ 0, %do.end.do.end13.thread_crit_edge ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bcm_sf2_cfp_get_sset_count(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %sset) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp.not = icmp eq i32 %sset, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  %num_cfp_rules = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %num_cfp_rules to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cfp_rules, align 4
  %6 = mul i32 %5, 3
  %mul = add i32 %6, -3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sf2_cfp_rule_del_one(ptr noundef %priv, i32 noundef %loc, ptr noundef writeonly %next_loc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %num_cfp_rules.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %num_cfp_rules.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_cfp_rules.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %loc)
  %cmp.not.i = icmp ugt i32 %1, %loc
  br i1 %cmp.not.i, label %entry.bcm_sf2_cfp_rule_addr_set.exit_crit_edge, label %do.end.i, !prof !63

entry.bcm_sf2_cfp_rule_addr_set.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %bcm_sf2_cfp_rule_addr_set.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 198, i32 noundef 9, ptr noundef null) #15
  br label %bcm_sf2_cfp_rule_addr_set.exit

bcm_sf2_cfp_rule_addr_set.exit:                   ; preds = %do.end.i, %entry.bcm_sf2_cfp_rule_addr_set.exit_crit_edge
  %core_reg_align.i.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 9
  %2 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i.i = shl i32 163840, %3
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %shl.i.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !58
  %7 = and i32 %6, -65281
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #15
  %shl.i = shl i32 %loc, 16
  %or.i = or i32 %8, %shl.i
  %9 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i26.i = shl i32 163840, %10
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #15
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %13, i32 %shl.i.i26.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %11) #15, !srcloc !59
  %14 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i.i2 = shl i32 163840, %15
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 4
  %add.ptr.i.i3 = getelementptr i8, ptr %17, i32 %shl.i.i.i2
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3) #15, !srcloc !58
  %19 = and i32 %18, -259784705
  %20 = or i32 %19, 50593792
  %21 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i25.i = shl i32 163840, %22
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %24, i32 %shl.i.i25.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %20) #15, !srcloc !59
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i5.do.body.i_crit_edge, %bcm_sf2_cfp_rule_addr_set.exit
  %timeout.0.i = phi i32 [ 1000, %bcm_sf2_cfp_rule_addr_set.exit ], [ %dec.i, %do.end.i5.do.body.i_crit_edge ]
  %25 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i28.i = shl i32 163840, %26
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %28, i32 %shl.i.i28.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #15, !srcloc !58
  %30 = and i32 %29, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %do.end13.i, label %do.end.i5

do.end.i5:                                        ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !64
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !65
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool12.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %tobool12.not.i, label %do.end.i5.if.end_crit_edge, label %do.end.i5.do.body.i_crit_edge

do.end.i5.do.body.i_crit_edge:                    ; preds = %do.end.i5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

do.end.i5.if.end_crit_edge:                       ; preds = %do.end.i5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end13.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %tobool14.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %tobool14.not.i, label %do.end13.i.cleanup_crit_edge, label %do.end13.i.if.end_crit_edge

do.end13.i.if.end_crit_edge:                      ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end13.i.cleanup_crit_edge:                     ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %do.end13.i.if.end_crit_edge, %do.end.i5.if.end_crit_edge
  %31 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i = shl i32 164000, %32
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 %shl.i.i
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !58
  %tobool2.not = icmp eq ptr %next_loc, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %36 = and i32 %35, 255
  %37 = ptrtoint ptr %next_loc to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %next_loc, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %38 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i7 = shl i32 163904, %39
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 4
  %add.ptr.i8 = getelementptr i8, ptr %41, i32 %shl.i.i7
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #15, !srcloc !58
  %43 = and i32 %42, -50331649
  %44 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i10 = shl i32 163904, %45
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 4
  %add.ptr.i11 = getelementptr i8, ptr %47, i32 %shl.i.i10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %43) #15, !srcloc !59
  %48 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i.i13 = shl i32 163840, %49
  %50 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %51, i32 %shl.i.i.i13
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i14) #15, !srcloc !58
  %53 = and i32 %52, -259784705
  %54 = or i32 %53, 84148224
  %55 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i25.i17 = shl i32 163840, %56
  %57 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv, align 4
  %add.ptr.i26.i18 = getelementptr i8, ptr %58, i32 %shl.i.i25.i17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i18, i32 %54) #15, !srcloc !59
  br label %do.body.i23

do.body.i23:                                      ; preds = %do.end.i26.do.body.i23_crit_edge, %if.end4
  %timeout.0.i19 = phi i32 [ 1000, %if.end4 ], [ %dec.i24, %do.end.i26.do.body.i23_crit_edge ]
  %59 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i28.i20 = shl i32 163840, %60
  %61 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv, align 4
  %add.ptr.i29.i21 = getelementptr i8, ptr %62, i32 %shl.i.i28.i20
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i21) #15, !srcloc !58
  %64 = and i32 %63, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i22 = icmp eq i32 %64, 0
  br i1 %tobool.not.i22, label %do.end13.i29, label %do.end.i26

do.end.i26:                                       ; preds = %do.body.i23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !64
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !65
  %dec.i24 = add nsw i32 %timeout.0.i19, -1
  %tobool12.not.i25 = icmp eq i32 %timeout.0.i19, 0
  br i1 %tobool12.not.i25, label %do.end.i26.if.end10_crit_edge, label %do.end.i26.do.body.i23_crit_edge

do.end.i26.do.body.i23_crit_edge:                 ; preds = %do.end.i26
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i23

do.end.i26.if.end10_crit_edge:                    ; preds = %do.end.i26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

do.end13.i29:                                     ; preds = %do.body.i23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i19)
  %tobool14.not.i27 = icmp eq i32 %timeout.0.i19, 0
  br i1 %tobool14.not.i27, label %do.end13.i29.cleanup_crit_edge, label %do.end13.i29.if.end10_crit_edge

do.end13.i29.if.end10_crit_edge:                  ; preds = %do.end13.i29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

do.end13.i29.cleanup_crit_edge:                   ; preds = %do.end13.i29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %do.end13.i29.if.end10_crit_edge, %do.end.i26.if.end10_crit_edge
  %used = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 32, i32 1
  tail call void @_clear_bit(i32 noundef %loc, ptr noundef %used) #15
  %unique = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 32, i32 2
  tail call void @_clear_bit(i32 noundef %loc, ptr noundef %unique) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end13.i29.cleanup_crit_edge, %do.end13.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -110, %do.end13.i.cleanup_crit_edge ], [ -110, %do.end13.i29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ethtool_rx_flow_rule_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ports(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ip(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sf2_get_slice_number(ptr nocapture noundef readonly %l, i32 noundef %start) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %start)
  %cmp4 = icmp ult i32 %start, 4
  br i1 %cmp4, label %for.body, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %entry
  %arrayidx = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr %l, i32 0, i32 %start
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(9) %arrayidx, ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add i32 %start, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.body.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr %l, i32 0, i32 %inc
  %bcmp.1 = tail call i32 @bcmp(ptr noundef dereferenceable(9) %arrayidx.1, ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1)
  %tobool.not.1 = icmp eq i32 %bcmp.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.body.1.for.end_crit_edge

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.1:                                        ; preds = %for.body.1
  %inc.1 = add i32 %start, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.1)
  %exitcond.not.1 = icmp eq i32 %inc.1, 4
  br i1 %exitcond.not.1, label %for.inc.1.for.end_crit_edge, label %for.body.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  %arrayidx.2 = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr %l, i32 0, i32 %inc.1
  %bcmp.2 = tail call i32 @bcmp(ptr noundef dereferenceable(9) %arrayidx.2, ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2)
  %tobool.not.2 = icmp eq i32 %bcmp.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.body.2.for.end_crit_edge

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.2:                                        ; preds = %for.body.2
  %inc.2 = add i32 %start, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.2)
  %exitcond.not.2 = icmp eq i32 %inc.2, 4
  br i1 %exitcond.not.2, label %for.inc.2.for.end_crit_edge, label %for.body.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.3 = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr %l, i32 0, i32 %inc.2
  %bcmp.3 = tail call i32 @bcmp(ptr noundef dereferenceable(9) %arrayidx.3, ptr noundef nonnull dereferenceable(9) @zero_slice, i32 9) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.3)
  %tobool.not.3 = icmp eq i32 %bcmp.3, 0
  %spec.select = select i1 %tobool.not.3, i32 4, i32 %inc.2
  br label %for.end

for.end:                                          ; preds = %for.body.3, %for.inc.2.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %slice_idx.0.lcssa = phi i32 [ %start, %entry.for.end_crit_edge ], [ %start, %for.body.for.end_crit_edge ], [ 4, %for.inc.for.end_crit_edge ], [ %inc, %for.body.1.for.end_crit_edge ], [ 4, %for.inc.1.for.end_crit_edge ], [ %inc.1, %for.body.2.for.end_crit_edge ], [ 4, %for.inc.2.for.end_crit_edge ], [ %spec.select, %for.body.3 ]
  ret i32 %slice_idx.0.lcssa
}

; Function Attrs: argmemonly inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sf2_get_num_udf_slices(ptr nocapture noundef readonly %layout) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %layout to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %layout, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1.not = icmp ne i8 %1, 0
  %inc = zext i1 %cmp1.not to i32
  %arrayidx.1 = getelementptr i8, ptr %layout, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1.not.1 = icmp ne i8 %3, 0
  %inc.1 = zext i1 %cmp1.not.1 to i32
  %spec.select.1 = add nuw nsw i32 %inc, %inc.1
  %arrayidx.2 = getelementptr i8, ptr %layout, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp1.not.2 = icmp ne i8 %5, 0
  %inc.2 = zext i1 %cmp1.not.2 to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %inc.2
  %arrayidx.3 = getelementptr i8, ptr %layout, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp1.not.3 = icmp ne i8 %7, 0
  %inc.3 = zext i1 %cmp1.not.3 to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %inc.3
  %arrayidx.4 = getelementptr i8, ptr %layout, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp1.not.4 = icmp ne i8 %9, 0
  %inc.4 = zext i1 %cmp1.not.4 to i32
  %spec.select.4 = add nuw nsw i32 %spec.select.3, %inc.4
  %arrayidx.5 = getelementptr i8, ptr %layout, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp1.not.5 = icmp ne i8 %11, 0
  %inc.5 = zext i1 %cmp1.not.5 to i32
  %spec.select.5 = add nuw nsw i32 %spec.select.4, %inc.5
  %arrayidx.6 = getelementptr i8, ptr %layout, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp1.not.6 = icmp ne i8 %13, 0
  %inc.6 = zext i1 %cmp1.not.6 to i32
  %spec.select.6 = add nuw nsw i32 %spec.select.5, %inc.6
  %arrayidx.7 = getelementptr i8, ptr %layout, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp1.not.7 = icmp ne i8 %15, 0
  %inc.7 = zext i1 %cmp1.not.7 to i32
  %spec.select.7 = add nuw nsw i32 %spec.select.6, %inc.7
  %arrayidx.8 = getelementptr i8, ptr %layout, i32 8
  %16 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp1.not.8 = icmp ne i8 %17, 0
  %inc.8 = zext i1 %cmp1.not.8 to i32
  %spec.select.8 = add nuw nsw i32 %spec.select.7, %inc.8
  ret i32 %spec.select.8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_sf2_cfp_udf_set(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %layout, i32 noundef %slice_num) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr %layout, i32 0, i32 %slice_num
  %base_offset = getelementptr [4 x %struct.cfp_udf_slice_layout], ptr %layout, i32 0, i32 %slice_num, i32 2
  %0 = ptrtoint ptr %base_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_offset, align 4
  %core_reg_align.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i = shl i32 %1, %5
  %6 = shl nuw i32 %conv, 24
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #15, !srcloc !59
  %arrayidx3.1 = getelementptr [9 x i8], ptr %arrayidx, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx3.1, align 1
  %conv.1 = zext i8 %10 to i32
  %add.1 = add i32 %1, 4
  %11 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i.1 = shl i32 %add.1, %12
  %13 = shl nuw i32 %conv.1, 24
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %15, i32 %shl.i.i.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %13) #15, !srcloc !59
  %arrayidx3.2 = getelementptr [9 x i8], ptr %arrayidx, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx3.2, align 1
  %conv.2 = zext i8 %17 to i32
  %add.2 = add i32 %1, 8
  %18 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i.2 = shl i32 %add.2, %19
  %20 = shl nuw i32 %conv.2, 24
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %22, i32 %shl.i.i.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 %20) #15, !srcloc !59
  %arrayidx3.3 = getelementptr [9 x i8], ptr %arrayidx, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx3.3, align 1
  %conv.3 = zext i8 %24 to i32
  %add.3 = add i32 %1, 12
  %25 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i.3 = shl i32 %add.3, %26
  %27 = shl nuw i32 %conv.3, 24
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %29, i32 %shl.i.i.3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 %27) #15, !srcloc !59
  %arrayidx3.4 = getelementptr [9 x i8], ptr %arrayidx, i32 0, i32 4
  %30 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx3.4, align 1
  %conv.4 = zext i8 %31 to i32
  %add.4 = add i32 %1, 16
  %32 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i.4 = shl i32 %add.4, %33
  %34 = shl nuw i32 %conv.4, 24
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %36, i32 %shl.i.i.4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4, i32 %34) #15, !srcloc !59
  %arrayidx3.5 = getelementptr [9 x i8], ptr %arrayidx, i32 0, i32 5
  %37 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx3.5, align 1
  %conv.5 = zext i8 %38 to i32
  %add.5 = add i32 %1, 20
  %39 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i.5 = shl i32 %add.5, %40
  %41 = shl nuw i32 %conv.5, 24
  %42 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %43, i32 %shl.i.i.5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5, i32 %41) #15, !srcloc !59
  %arrayidx3.6 = getelementptr [9 x i8], ptr %arrayidx, i32 0, i32 6
  %44 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx3.6, align 1
  %conv.6 = zext i8 %45 to i32
  %add.6 = add i32 %1, 24
  %46 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i.6 = shl i32 %add.6, %47
  %48 = shl nuw i32 %conv.6, 24
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %50, i32 %shl.i.i.6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6, i32 %48) #15, !srcloc !59
  %arrayidx3.7 = getelementptr [9 x i8], ptr %arrayidx, i32 0, i32 7
  %51 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx3.7, align 1
  %conv.7 = zext i8 %52 to i32
  %add.7 = add i32 %1, 28
  %53 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i.7 = shl i32 %add.7, %54
  %55 = shl nuw i32 %conv.7, 24
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %57, i32 %shl.i.i.7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.7, i32 %55) #15, !srcloc !59
  %arrayidx3.8 = getelementptr [9 x i8], ptr %arrayidx, i32 0, i32 8
  %58 = ptrtoint ptr %arrayidx3.8 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx3.8, align 1
  %conv.8 = zext i8 %59 to i32
  %add.8 = add i32 %1, 32
  %60 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i.8 = shl i32 %add.8, %61
  %62 = shl nuw i32 %conv.8, 24
  %63 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv, align 4
  %add.ptr.i.8 = getelementptr i8, ptr %64, i32 %shl.i.i.8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.8, i32 %62) #15, !srcloc !59
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sf2_cfp_act_pol_set(ptr nocapture noundef readonly %priv, i32 noundef %rule_index, i32 noundef %src_port, i32 noundef %port_num, i32 noundef %queue_num, i1 noundef zeroext %fwd_map_change) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %port_num, 14
  %shl = shl nuw i32 1, %add
  %shl2 = shl i32 %queue_num, 10
  %or1 = or i32 %shl2, %shl
  %or3 = or i32 %or1, 33562624
  %reg.0 = select i1 %fwd_map_change, i32 %or3, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %src_port, i32 %port_num)
  %cmp = icmp eq i32 %src_port, %port_num
  %or5 = or i32 %reg.0, 512
  %reg.1 = select i1 %cmp, i32 %or5, i32 %reg.0
  %core_reg_align.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i = shl i32 164160, %1
  %2 = tail call i32 @llvm.bswap.i32(i32 %reg.1) #15
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #15, !srcloc !59
  %shl7 = shl i32 %rule_index, 20
  %5 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i35 = shl i32 164176, %6
  %7 = tail call i32 @llvm.bswap.i32(i32 %shl7) #15
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %add.ptr.i36 = getelementptr i8, ptr %9, i32 %shl.i.i35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %7) #15, !srcloc !59
  %10 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i38 = shl i32 164192, %11
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %add.ptr.i39 = getelementptr i8, ptr %13, i32 %shl.i.i38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 0) #15, !srcloc !59
  %14 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i.i = shl i32 163840, %15
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %shl.i.i.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !58
  %19 = and i32 %18, -259784705
  %20 = or i32 %19, 84410368
  %21 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i25.i = shl i32 163840, %22
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %24, i32 %shl.i.i25.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %20) #15, !srcloc !59
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 1000, %entry ], [ %dec.i, %do.end.i.do.body.i_crit_edge ]
  %25 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i28.i = shl i32 163840, %26
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %28, i32 %shl.i.i28.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #15, !srcloc !58
  %30 = and i32 %29, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %do.end13.i, label %do.end.i

do.end.i:                                         ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !64
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !65
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool12.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %tobool12.not.i, label %do.end.i.if.end11_crit_edge, label %do.end.i.do.body.i_crit_edge

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

do.end.i.if.end11_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

do.end13.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %tobool14.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %tobool14.not.i, label %do.end13.i.cleanup.sink.split_crit_edge, label %do.end13.i.if.end11_crit_edge

do.end13.i.if.end11_crit_edge:                    ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

do.end13.i.cleanup.sink.split_crit_edge:          ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end11:                                         ; preds = %do.end13.i.if.end11_crit_edge, %do.end.i.if.end11_crit_edge
  %31 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i41 = shl i32 164224, %32
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 4
  %add.ptr.i42 = getelementptr i8, ptr %34, i32 %shl.i.i41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 402653184) #15, !srcloc !59
  %35 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i.i44 = shl i32 163840, %36
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %38, i32 %shl.i.i.i44
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i45) #15, !srcloc !58
  %40 = and i32 %39, -259784705
  %41 = or i32 %40, 84934656
  %42 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i25.i48 = shl i32 163840, %43
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 4
  %add.ptr.i26.i49 = getelementptr i8, ptr %45, i32 %shl.i.i25.i48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i49, i32 %41) #15, !srcloc !59
  br label %do.body.i54

do.body.i54:                                      ; preds = %do.end.i57.do.body.i54_crit_edge, %if.end11
  %timeout.0.i50 = phi i32 [ 1000, %if.end11 ], [ %dec.i55, %do.end.i57.do.body.i54_crit_edge ]
  %46 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i28.i51 = shl i32 163840, %47
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv, align 4
  %add.ptr.i29.i52 = getelementptr i8, ptr %49, i32 %shl.i.i28.i51
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i52) #15, !srcloc !58
  %51 = and i32 %50, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i53 = icmp eq i32 %51, 0
  br i1 %tobool.not.i53, label %do.end13.i60, label %do.end.i57

do.end.i57:                                       ; preds = %do.body.i54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !64
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !65
  %dec.i55 = add nsw i32 %timeout.0.i50, -1
  %tobool12.not.i56 = icmp eq i32 %timeout.0.i50, 0
  br i1 %tobool12.not.i56, label %do.end.i57.cleanup_crit_edge, label %do.end.i57.do.body.i54_crit_edge

do.end.i57.do.body.i54_crit_edge:                 ; preds = %do.end.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i54

do.end.i57.cleanup_crit_edge:                     ; preds = %do.end.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end13.i60:                                     ; preds = %do.body.i54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i50)
  %tobool14.not.i58 = icmp eq i32 %timeout.0.i50, 0
  br i1 %tobool14.not.i58, label %do.end13.i60.cleanup.sink.split_crit_edge, label %do.end13.i60.cleanup_crit_edge

do.end13.i60.cleanup_crit_edge:                   ; preds = %do.end13.i60
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end13.i60.cleanup.sink.split_crit_edge:        ; preds = %do.end13.i60
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end13.i60.cleanup.sink.split_crit_edge, %do.end13.i.cleanup.sink.split_crit_edge
  %.str.14.sink = phi ptr [ @.str.11, %do.end13.i.cleanup.sink.split_crit_edge ], [ @.str.14, %do.end13.i60.cleanup.sink.split_crit_edge ]
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.14.sink, i32 noundef %rule_index) #20
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end13.i60.cleanup_crit_edge, %do.end.i57.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end13.i60.cleanup_crit_edge ], [ -110, %cleanup.sink.split ], [ 0, %do.end.i57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_rx_flow_rule_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv6_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_sf2_cfp_slice_ipv6(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %ip6_addr, i16 noundef zeroext %port, i16 noundef zeroext %vlan_tci, i32 noundef %slice_num, i32 noundef %udf_bits, i1 noundef zeroext %mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vlan_tci to i32
  %or = tail call i32 @llvm.fshl.i32(i32 %udf_bits, i32 %conv, i32 24)
  %core_reg_align.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %core_reg_align.i.i, align 4
  br i1 %mask, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %shl.i.i = shl i32 164112, %1
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #15
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #15, !srcloc !59
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %shl.i.i101 = shl i32 163984, %1
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #15
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %add.ptr.i102 = getelementptr i8, ptr %7, i32 %shl.i.i101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %5) #15, !srcloc !59
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %offset.4 = phi i32 [ 163904, %if.else ], [ 164032, %if.then ]
  %offset.3 = phi i32 [ 163920, %if.else ], [ 164048, %if.then ]
  %offset.2 = phi i32 [ 163936, %if.else ], [ 164064, %if.then ]
  %offset.1 = phi i32 [ 163952, %if.else ], [ 164080, %if.then ]
  %. = phi i32 [ 163968, %if.else ], [ 164096, %if.then ]
  %arrayidx = getelementptr i32, ptr %ip6_addr, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %conv1 = zext i16 %port to i32
  %shl2 = shl nuw nsw i32 %conv1, 8
  %shr3 = lshr i32 %9, 8
  %and = and i32 %shr3, 255
  %or4 = or i32 %and, %shl2
  %shl7 = shl i32 %conv, 24
  %or8 = or i32 %or4, %shl7
  %core_reg_align.i.i103 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 9
  %10 = ptrtoint ptr %core_reg_align.i.i103 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %core_reg_align.i.i103, align 4
  %shl.i.i104 = shl i32 %., %11
  %12 = tail call i32 @llvm.bswap.i32(i32 %or8) #15
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %add.ptr.i105 = getelementptr i8, ptr %14, i32 %shl.i.i104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 %12) #15, !srcloc !59
  %arrayidx13 = getelementptr i32, ptr %ip6_addr, i32 2
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx13, align 4
  %shl15 = shl i32 %9, 24
  %shl17 = and i32 %shr3, 16776960
  %or18 = or i32 %shl17, %shl15
  %shr19 = lshr i32 %16, 8
  %and20 = and i32 %shr19, 255
  %or21 = or i32 %and20, %or18
  %17 = ptrtoint ptr %core_reg_align.i.i103 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %core_reg_align.i.i103, align 4
  %shl.i.i107 = shl i32 %offset.1, %18
  %19 = tail call i32 @llvm.bswap.i32(i32 %or21) #15
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  %add.ptr.i108 = getelementptr i8, ptr %21, i32 %shl.i.i107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %19) #15, !srcloc !59
  %arrayidx26 = getelementptr i32, ptr %ip6_addr, i32 1
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx26, align 4
  %shl28 = shl i32 %16, 24
  %shl30 = and i32 %shr19, 16776960
  %or31 = or i32 %shl30, %shl28
  %shr32 = lshr i32 %23, 8
  %and33 = and i32 %shr32, 255
  %or34 = or i32 %and33, %or31
  %24 = ptrtoint ptr %core_reg_align.i.i103 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %core_reg_align.i.i103, align 4
  %shl.i.i110 = shl i32 %offset.2, %25
  %26 = tail call i32 @llvm.bswap.i32(i32 %or34) #15
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 4
  %add.ptr.i111 = getelementptr i8, ptr %28, i32 %shl.i.i110
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 %26) #15, !srcloc !59
  %29 = ptrtoint ptr %ip6_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ip6_addr, align 4
  %shl41 = shl i32 %23, 24
  %shl43 = and i32 %shr32, 16776960
  %or44 = or i32 %shl43, %shl41
  %shr45 = lshr i32 %30, 8
  %and46 = and i32 %shr45, 255
  %or47 = or i32 %and46, %or44
  %31 = ptrtoint ptr %core_reg_align.i.i103 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %core_reg_align.i.i103, align 4
  %shl.i.i113 = shl i32 %offset.3, %32
  %33 = tail call i32 @llvm.bswap.i32(i32 %or47) #15
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 4
  %add.ptr.i114 = getelementptr i8, ptr %35, i32 %shl.i.i113
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %33) #15, !srcloc !59
  %shl53 = shl i32 %30, 24
  %shl55 = and i32 %shr45, 16776960
  %or56 = or i32 %shl55, %shl53
  %shl57 = shl i32 %slice_num, 2
  %or58 = or i32 %shl57, %or56
  %or59 = or i32 %or58, 3
  %36 = ptrtoint ptr %core_reg_align.i.i103 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %core_reg_align.i.i103, align 4
  %shl.i.i116 = shl i32 %offset.4, %37
  %38 = tail call i32 @llvm.bswap.i32(i32 %or59) #15
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv, align 4
  %add.ptr.i117 = getelementptr i8, ptr %40, i32 %shl.i.i116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 %38) #15, !srcloc !59
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold nounwind }
attributes #21 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/bcm_sf2_cfp.c", i32 1246, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @bcm_sf2_cfp_resume._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @bcm_sf2_cfp_resume._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/dsa/bcm_sf2_cfp.c", i32 1252, i32 4}
!10 = !{ptr @bcm_sf2_cfp_resume._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @bcm_sf2_cfp_resume._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/bcm_sf2_cfp.c", i32 1296, i32 6}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/bcm_sf2_cfp.c", i32 455, i32 3}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @bcm_sf2_cfp_ipv4_rule_set._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @bcm_sf2_cfp_ipv4_rule_set._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @udf_tcpip4_layout, !20, !"udf_tcpip4_layout", i1 false, i1 false}
!20 = !{!"../drivers/net/dsa/bcm_sf2_cfp.c", i32 41, i32 36}
!21 = !{ptr @zero_slice, !22, !"zero_slice", i1 false, i1 false}
!22 = !{!"../drivers/net/dsa/bcm_sf2_cfp.c", i32 38, i32 17}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/dsa/bcm_sf2_cfp.c", i32 246, i32 3}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @bcm_sf2_cfp_act_pol_set._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @bcm_sf2_cfp_act_pol_set._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/dsa/bcm_sf2_cfp.c", i32 256, i32 3}
!30 = !{ptr @bcm_sf2_cfp_act_pol_set._entry.13, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @bcm_sf2_cfp_act_pol_set._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/dsa/bcm_sf2_cfp.c", i32 757, i32 3}
!34 = !{ptr @bcm_sf2_cfp_ipv6_rule_set._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @bcm_sf2_cfp_ipv6_rule_set._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @bcm_sf2_cfp_ipv6_rule_set._entry.17, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/net/dsa/bcm_sf2_cfp.c", i32 813, i32 3}
!38 = !{ptr @bcm_sf2_cfp_ipv6_rule_set._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @udf_tcpip6_layout, !40, !"udf_tcpip6_layout", i1 false, i1 false}
!40 = !{!"../drivers/net/dsa/bcm_sf2_cfp.c", i32 66, i32 36}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/dsa/bcm_sf2_cfp.c", i32 1268, i32 11}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/dsa/bcm_sf2_cfp.c", i32 1273, i32 11}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/dsa/bcm_sf2_cfp.c", i32 1278, i32 11}
!47 = !{ptr @bcm_sf2_cfp_stats, !48, !"bcm_sf2_cfp_stats", i1 false, i1 false}
!48 = !{!"../drivers/net/dsa/bcm_sf2_cfp.c", i32 1264, i32 3}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 6204282}
!59 = !{i64 6203864}
!60 = !{i64 2158189481}
!61 = !{i64 2158189323}
!62 = !{!"auto-init"}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i64 2158166480}
!65 = !{i64 2158166322}
