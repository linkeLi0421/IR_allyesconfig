; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_sp_flow_block = type { %struct.list_head, %struct.anon.164, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.anon.164 = type { %struct.list_head, i32, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_match_ip = type { ptr, ptr }
%struct.flow_match_tcp = type { ptr, ptr }
%struct.flow_match_ports = type { ptr, ptr }
%struct.flow_match_ipv6_addrs = type { ptr, ptr }
%struct.flow_match_ipv4_addrs = type { ptr, ptr }
%struct.flow_match_meta = type { ptr, ptr }
%struct.flow_match_control = type { ptr, ptr }
%struct.flow_match_basic = type { ptr, ptr }
%struct.flow_match_eth_addrs = type { ptr, ptr }
%struct.flow_match_vlan = type { ptr, ptr }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlxsw_bus_info = type { ptr, ptr, ptr, %struct.mlxsw_fw_rev, [208 x i8], [16 x i8], i8, i8, [4 x i8] }
%struct.mlxsw_fw_rev = type { i16, i16, i16, i16 }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_eth_addrs = type { [6 x i8], [6 x i8] }
%struct.mlxsw_sp_acl_rule_info = type { i32, %struct.mlxsw_afk_element_values, ptr, i8, i32, i16 }
%struct.mlxsw_afk_element_values = type { %struct.mlxsw_afk_element_usage, %struct.anon.170 }
%struct.mlxsw_afk_element_usage = type { [1 x i32] }
%struct.anon.170 = type { [64 x i8], [64 x i8] }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.anon.197 = type { i16, i16 }
%struct.flow_dissector_key_ip = type { i8, i8 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.178, ptr }
%union.anon.178 = type { %struct.anon.186 }
%struct.anon.186 = type { i32, i64, i64, i64, i32 }
%struct.anon.179 = type { i16, i16, i8 }
%struct.anon.180 = type { i32, i32, i32, i32 }
%struct.anon.185 = type { ptr, i32, i32, i8 }

@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c\00", [42 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_mall_prio_check.__msg = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get matchall priorities\00", [62 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_mall_prio_check.__msg.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to add in front of existing matchall rules\00", [46 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_mall_prio_check.__msg.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to add behind of existing matchall rules\00", [48 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 445, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Unsupported key\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlxsw_sp_flower_parse\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse._entry_ptr = internal global ptr @mlxsw_sp_flower_parse._entry, section ".printk_index", align 4
@mlxsw_sp_flower_parse.__msg = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mlxsw_spectrum: Unsupported key\00", [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse.__msg.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"mlxsw_spectrum: vlan_id key is not supported on egress\00", [41 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_meta.__msg = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mlxsw_spectrum: Unsupported ingress ifindex mask\00", [47 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_meta.__msg.8 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"mlxsw_spectrum: Can't find specified ingress port to match on\00", [34 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_meta.__msg.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"mlxsw_spectrum: Can't match on non-mlxsw ingress port\00", [42 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_meta.__msg.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"mlxsw_spectrum: Can't match on a port from different device\00", [36 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_ports.__msg = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"mlxsw_spectrum: Only UDP and TCP keys are supported\00", [44 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 343, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Only UDP and TCP keys are supported\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlxsw_sp_flower_parse_ports\00", [36 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_ports._entry_ptr = internal global ptr @mlxsw_sp_flower_parse_ports._entry, section ".printk_index", align 4
@mlxsw_sp_flower_parse_tcp.__msg = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"mlxsw_spectrum: TCP keys supported only for TCP\00", [48 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_tcp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 370, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TCP keys supported only for TCP\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlxsw_sp_flower_parse_tcp\00", [38 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_tcp._entry_ptr = internal global ptr @mlxsw_sp_flower_parse_tcp._entry, section ".printk_index", align 4
@mlxsw_sp_flower_parse_tcp.__msg.15 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"mlxsw_spectrum: TCP flags match not supported on reserved bits\00", [33 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_tcp._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str, i32 378, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"TCP flags match not supported on reserved bits\0A\00", [48 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_tcp._entry_ptr.18 = internal global ptr @mlxsw_sp_flower_parse_tcp._entry.16, section ".printk_index", align 4
@mlxsw_sp_flower_parse_ip.__msg = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"mlxsw_spectrum: IP keys supported only for IPv4/6\00", [46 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_ip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 401, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IP keys supported only for IPv4/6\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlxsw_sp_flower_parse_ip\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_ip._entry_ptr = internal global ptr @mlxsw_sp_flower_parse_ip._entry, section ".printk_index", align 4
@mlxsw_sp_flower_parse_actions.__msg = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mlxsw_spectrum: Unsupported action HW stats type\00", [47 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_actions.__msg.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"mlxsw_spectrum: Cannot append terminate action\00", [49 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_actions.__msg.22 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"mlxsw_spectrum: Drop action is not supported when block is bound to ingress and egress\00", [41 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_actions.__msg.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mlxsw_spectrum: Cannot append drop action\00", [54 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_actions.__msg.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mlxsw_spectrum: Cannot append trap action\00", [54 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_actions.__msg.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mlxsw_spectrum: Cannot append jump action\00", [54 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_actions.__msg.26 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"mlxsw_spectrum: Redirect action is not supported on egress\00", [37 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_actions.__msg.27 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"mlxsw_spectrum: Multiple mirror actions per rule are not supported\00", [61 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_actions.__msg.28 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"mlxsw_spectrum: Multiple police actions per rule are not supported\00", [61 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_actions.__msg.29 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"mlxsw_spectrum: QoS offload not support packets per second\00", [37 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_actions.__msg.30 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"mlxsw_spectrum: Multiple sample actions per rule are not supported\00", [61 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_actions.__msg.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mlxsw_spectrum: Unsupported action\00", [61 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_actions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str, i32 232, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unsupported action\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlxsw_sp_flower_parse_actions\00", [34 x i8] zeroinitializer }, align 32
@mlxsw_sp_flower_parse_actions._entry_ptr = internal global ptr @mlxsw_sp_flower_parse_actions._entry, section ".printk_index", align 4
@flow_action_mixed_hw_stats_check.__msg = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"mlxsw_spectrum: Mixing HW stats types for actions is not supported\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/net/flow_offload.h\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.39 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 10, i64 13, i64 18, i64 21, i64 22]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 673, i32 6 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 570, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 574, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 578, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 445, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 446, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 513, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 253, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 260, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 265, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 271, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 342, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 343, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 369, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 370, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 377, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 378, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 400, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 401, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 44, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 53, i32 5 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 61, i32 5 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 68, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 85, i32 5 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 103, i32 5 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 114, i32 5 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 141, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 190, i32 5 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 195, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 215, i32 5 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 231, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private constant [57 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 232, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 323, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [30 x i8] c"../include/net/flow_offload.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 334, i32 2 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @mlxsw_sp_flower_parse._entry, ptr @mlxsw_sp_flower_parse._entry_ptr, ptr @mlxsw_sp_flower_parse_actions._entry, ptr @mlxsw_sp_flower_parse_actions._entry_ptr, ptr @mlxsw_sp_flower_parse_ip._entry, ptr @mlxsw_sp_flower_parse_ip._entry_ptr, ptr @mlxsw_sp_flower_parse_ports._entry, ptr @mlxsw_sp_flower_parse_ports._entry_ptr, ptr @mlxsw_sp_flower_parse_tcp._entry, ptr @mlxsw_sp_flower_parse_tcp._entry.16, ptr @mlxsw_sp_flower_parse_tcp._entry_ptr, ptr @mlxsw_sp_flower_parse_tcp._entry_ptr.18, ptr @.str, ptr @mlxsw_sp_flower_mall_prio_check.__msg, ptr @mlxsw_sp_flower_mall_prio_check.__msg.1, ptr @mlxsw_sp_flower_mall_prio_check.__msg.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mlxsw_sp_flower_parse.__msg, ptr @mlxsw_sp_flower_parse.__msg.7, ptr @mlxsw_sp_flower_parse_meta.__msg, ptr @mlxsw_sp_flower_parse_meta.__msg.8, ptr @mlxsw_sp_flower_parse_meta.__msg.9, ptr @mlxsw_sp_flower_parse_meta.__msg.10, ptr @mlxsw_sp_flower_parse_ports.__msg, ptr @.str.11, ptr @.str.12, ptr @mlxsw_sp_flower_parse_tcp.__msg, ptr @.str.13, ptr @.str.14, ptr @mlxsw_sp_flower_parse_tcp.__msg.15, ptr @.str.17, ptr @mlxsw_sp_flower_parse_ip.__msg, ptr @.str.19, ptr @.str.20, ptr @mlxsw_sp_flower_parse_actions.__msg, ptr @mlxsw_sp_flower_parse_actions.__msg.21, ptr @mlxsw_sp_flower_parse_actions.__msg.22, ptr @mlxsw_sp_flower_parse_actions.__msg.23, ptr @mlxsw_sp_flower_parse_actions.__msg.24, ptr @mlxsw_sp_flower_parse_actions.__msg.25, ptr @mlxsw_sp_flower_parse_actions.__msg.26, ptr @mlxsw_sp_flower_parse_actions.__msg.27, ptr @mlxsw_sp_flower_parse_actions.__msg.28, ptr @mlxsw_sp_flower_parse_actions.__msg.29, ptr @mlxsw_sp_flower_parse_actions.__msg.30, ptr @mlxsw_sp_flower_parse_actions.__msg.31, ptr @.str.32, ptr @.str.33, ptr @flow_action_mixed_hw_stats_check.__msg, ptr @.str.34], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_mall_prio_check.__msg to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_mall_prio_check.__msg.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_mall_prio_check.__msg.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse.__msg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse.__msg.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_meta.__msg to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_meta.__msg.8 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_meta.__msg.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_meta.__msg.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_ports.__msg to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_tcp.__msg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_tcp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_tcp.__msg.15 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_tcp._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_ip.__msg to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_ip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_actions.__msg to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_actions.__msg.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_actions.__msg.22 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_actions.__msg.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_actions.__msg.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_actions.__msg.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_actions.__msg.26 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_actions.__msg.27 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_actions.__msg.28 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_actions.__msg.29 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_actions.__msg.30 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_actions.__msg.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_flower_parse_actions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_action_mixed_hw_stats_check.__msg to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_flower_replace(ptr noundef %mlxsw_sp, ptr noundef %block, ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  %mall_min_prio.i = alloca i32, align 4
  %mall_max_prio.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ingress_binding_count.i.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 8
  %0 = ptrtoint ptr %ingress_binding_count.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ingress_binding_count.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mall_min_prio.i) #5
  %2 = ptrtoint ptr %mall_min_prio.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mall_min_prio.i, align 4, !annotation !96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mall_max_prio.i) #5
  %3 = ptrtoint ptr %mall_max_prio.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mall_max_prio.i, align 4, !annotation !96
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 8
  %call1.i = call i32 @mlxsw_sp_mall_prio_get(ptr noundef %block, i32 noundef %5, ptr noundef nonnull %mall_min_prio.i, ptr noundef nonnull %mall_max_prio.i) #5
  %6 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i, label %do.body.i [
    i32 0, label %if.end7.i
    i32 -2, label %entry.mlxsw_sp_flower_mall_prio_check.exit.thread58_crit_edge
  ]

entry.mlxsw_sp_flower_mall_prio_check.exit.thread58_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_flower_mall_prio_check.exit.thread58

do.body.i:                                        ; preds = %entry
  %extack.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %7 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %extack.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_mall_prio_check.__msg) #5
  %tobool4.not.i = icmp eq ptr %8, null
  br i1 %tobool4.not.i, label %do.body.i.mlxsw_sp_flower_mall_prio_check.exit_crit_edge, label %if.then5.i

do.body.i.mlxsw_sp_flower_mall_prio_check.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_flower_mall_prio_check.exit

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mlxsw_sp_flower_mall_prio_check.__msg, ptr %8, align 4
  br label %mlxsw_sp_flower_mall_prio_check.exit

if.end7.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i = icmp eq i32 %1, 0
  %prio26.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 2
  %10 = ptrtoint ptr %prio26.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prio26.i, align 8
  br i1 %tobool.i.not.i, label %land.lhs.true24.critedge.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  %12 = ptrtoint ptr %mall_min_prio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mall_min_prio.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp10.not.i = icmp ugt i32 %11, %13
  br i1 %cmp10.not.i, label %land.lhs.true.i.mlxsw_sp_flower_mall_prio_check.exit.thread58_crit_edge, label %do.body12.i

land.lhs.true.i.mlxsw_sp_flower_mall_prio_check.exit.thread58_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_flower_mall_prio_check.exit.thread58

do.body12.i:                                      ; preds = %land.lhs.true.i
  %extack15.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %14 = ptrtoint ptr %extack15.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %extack15.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_mall_prio_check.__msg.1) #5
  %tobool16.not.i = icmp eq ptr %15, null
  br i1 %tobool16.not.i, label %do.body12.i.mlxsw_sp_flower_mall_prio_check.exit.thread_crit_edge, label %if.then17.i

do.body12.i.mlxsw_sp_flower_mall_prio_check.exit.thread_crit_edge: ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_flower_mall_prio_check.exit.thread

if.then17.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mlxsw_sp_flower_mall_prio_check.__msg.1, ptr %15, align 4
  br label %mlxsw_sp_flower_mall_prio_check.exit.thread

land.lhs.true24.critedge.i:                       ; preds = %if.end7.i
  %17 = ptrtoint ptr %mall_max_prio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mall_max_prio.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %18)
  %cmp27.not.i = icmp ult i32 %11, %18
  br i1 %cmp27.not.i, label %land.lhs.true24.critedge.i.mlxsw_sp_flower_mall_prio_check.exit.thread58_crit_edge, label %do.body29.i

land.lhs.true24.critedge.i.mlxsw_sp_flower_mall_prio_check.exit.thread58_crit_edge: ; preds = %land.lhs.true24.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_flower_mall_prio_check.exit.thread58

do.body29.i:                                      ; preds = %land.lhs.true24.critedge.i
  %extack32.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %19 = ptrtoint ptr %extack32.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %extack32.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_mall_prio_check.__msg.2) #5
  %tobool33.not.i = icmp eq ptr %20, null
  br i1 %tobool33.not.i, label %do.body29.i.mlxsw_sp_flower_mall_prio_check.exit.thread_crit_edge, label %if.then34.i

do.body29.i.mlxsw_sp_flower_mall_prio_check.exit.thread_crit_edge: ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_flower_mall_prio_check.exit.thread

if.then34.i:                                      ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mlxsw_sp_flower_mall_prio_check.__msg.2, ptr %20, align 4
  br label %mlxsw_sp_flower_mall_prio_check.exit.thread

mlxsw_sp_flower_mall_prio_check.exit.thread:      ; preds = %if.then34.i, %do.body29.i.mlxsw_sp_flower_mall_prio_check.exit.thread_crit_edge, %if.then17.i, %do.body12.i.mlxsw_sp_flower_mall_prio_check.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mall_max_prio.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mall_min_prio.i) #5
  br label %cleanup

mlxsw_sp_flower_mall_prio_check.exit.thread58:    ; preds = %land.lhs.true24.critedge.i.mlxsw_sp_flower_mall_prio_check.exit.thread58_crit_edge, %land.lhs.true.i.mlxsw_sp_flower_mall_prio_check.exit.thread58_crit_edge, %entry.mlxsw_sp_flower_mall_prio_check.exit.thread58_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mall_max_prio.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mall_min_prio.i) #5
  br label %if.end

mlxsw_sp_flower_mall_prio_check.exit:             ; preds = %if.then5.i, %do.body.i.mlxsw_sp_flower_mall_prio_check.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mall_max_prio.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mall_min_prio.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %mlxsw_sp_flower_mall_prio_check.exit.if.end_crit_edge, label %mlxsw_sp_flower_mall_prio_check.exit.cleanup_crit_edge

mlxsw_sp_flower_mall_prio_check.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_flower_mall_prio_check.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

mlxsw_sp_flower_mall_prio_check.exit.if.end_crit_edge: ; preds = %mlxsw_sp_flower_mall_prio_check.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %mlxsw_sp_flower_mall_prio_check.exit.if.end_crit_edge, %mlxsw_sp_flower_mall_prio_check.exit.thread58
  %22 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f, align 8
  %call1 = call ptr @mlxsw_sp_acl_ruleset_get(ptr noundef %mlxsw_sp, ptr noundef %block, i32 noundef %23, i32 noundef 0, ptr noundef null) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 2
  %25 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cookie, align 4
  %extack = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %27 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %extack, align 4
  %call7 = call ptr @mlxsw_sp_acl_rule_create(ptr noundef %mlxsw_sp, ptr noundef %call1, i32 noundef %26, ptr noundef null, ptr noundef %28) #5
  %cmp.i54 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %call7 to i32
  br label %err_rule_create

if.end11:                                         ; preds = %if.end5
  %call12 = call ptr @mlxsw_sp_acl_rule_rulei(ptr noundef %call7) #5
  %call13 = call fastcc i32 @mlxsw_sp_flower_parse(ptr noundef %mlxsw_sp, ptr noundef %block, ptr noundef %call12, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.err_flower_parse_crit_edge

if.end11.err_flower_parse_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_flower_parse

if.end16:                                         ; preds = %if.end11
  %call17 = call i32 @mlxsw_sp_acl_rulei_commit(ptr noundef %call12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.err_flower_parse_crit_edge

if.end16.err_flower_parse_crit_edge:              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_flower_parse

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @mlxsw_sp_acl_rule_add(ptr noundef %mlxsw_sp, ptr noundef %call7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.err_flower_parse_crit_edge

if.end20.err_flower_parse_crit_edge:              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_flower_parse

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  call void @mlxsw_sp_acl_ruleset_put(ptr noundef %mlxsw_sp, ptr noundef %call1) #5
  br label %cleanup

err_flower_parse:                                 ; preds = %if.end20.err_flower_parse_crit_edge, %if.end16.err_flower_parse_crit_edge, %if.end11.err_flower_parse_crit_edge
  %err.0 = phi i32 [ %call13, %if.end11.err_flower_parse_crit_edge ], [ %call17, %if.end16.err_flower_parse_crit_edge ], [ %call21, %if.end20.err_flower_parse_crit_edge ]
  call void @mlxsw_sp_acl_rule_destroy(ptr noundef %mlxsw_sp, ptr noundef %call7) #5
  br label %err_rule_create

err_rule_create:                                  ; preds = %err_flower_parse, %if.then9
  %err.1 = phi i32 [ %29, %if.then9 ], [ %err.0, %err_flower_parse ]
  call void @mlxsw_sp_acl_ruleset_put(ptr noundef %mlxsw_sp, ptr noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %err_rule_create, %if.end24, %if.then3, %mlxsw_sp_flower_mall_prio_check.exit.cleanup_crit_edge, %mlxsw_sp_flower_mall_prio_check.exit.thread
  %retval.0 = phi i32 [ %24, %if.then3 ], [ %err.1, %err_rule_create ], [ 0, %if.end24 ], [ %call1.i, %mlxsw_sp_flower_mall_prio_check.exit.cleanup_crit_edge ], [ -95, %mlxsw_sp_flower_mall_prio_check.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_acl_ruleset_get(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_acl_rule_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_acl_rule_rulei(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_flower_parse(ptr noundef %mlxsw_sp, ptr noundef %block, ptr noundef %rulei, ptr nocapture noundef readonly %f) unnamed_addr #0 align 64 {
entry:
  %match.i250 = alloca %struct.flow_match_ip, align 4
  %match.i236 = alloca %struct.flow_match_tcp, align 4
  %match.i226 = alloca %struct.flow_match_ports, align 4
  %match.i223 = alloca %struct.flow_match_ipv6_addrs, align 4
  %match.i221 = alloca %struct.flow_match_ipv4_addrs, align 4
  %match.i = alloca %struct.flow_match_meta, align 4
  %match15 = alloca %struct.flow_match_control, align 4
  %match20 = alloca %struct.flow_match_basic, align 4
  %match39 = alloca %struct.flow_match_eth_addrs, align 4
  %match67 = alloca %struct.flow_match_vlan, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rule.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 3
  %0 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, -36701344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %do.end

do.end:                                           ; preds = %entry
  %bus_info = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  %6 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_info, align 4
  %dev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.3) #8
  %extack = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse.__msg) #5
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %do.end.cleanup149_crit_edge, label %if.then4

do.end.cleanup149_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup149

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mlxsw_sp_flower_parse.__msg, ptr %11, align 4
  br label %cleanup149

if.end7:                                          ; preds = %entry
  %prio = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 2
  %13 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prio, align 8
  tail call void @mlxsw_sp_acl_rulei_priority(ptr noundef %rulei, i32 noundef %14) #5
  %15 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rule.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i) #5
  %17 = ptrtoint ptr %match.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i, align 4, !annotation !96
  %18 = getelementptr inbounds %struct.flow_match_meta, ptr %match.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %18, align 4, !annotation !96
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %16, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %and.i.i.i = and i32 %23, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.end7.if.end12_crit_edge, label %if.end.i

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end.i:                                         ; preds = %if.end7
  call void @flow_rule_match_meta(ptr noundef %16, ptr noundef nonnull %match.i) #5
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %18, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp.not.i = icmp eq i32 %27, -1
  br i1 %cmp.not.i, label %if.end5.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  %extack.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %28 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %extack.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse_meta.__msg) #5
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %do.body.i.mlxsw_sp_flower_parse_meta.exit.thread_crit_edge, label %if.then3.i

do.body.i.mlxsw_sp_flower_parse_meta.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_flower_parse_meta.exit.thread

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @mlxsw_sp_flower_parse_meta.__msg, ptr %29, align 4
  br label %mlxsw_sp_flower_parse_meta.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %net.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 10
  %31 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net.i, align 4
  %33 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %match.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %call7.i = call ptr @__dev_get_by_index(ptr noundef %32, i32 noundef %36) #5
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %do.body10.i, label %if.end20.i

do.body10.i:                                      ; preds = %if.end5.i
  %extack13.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %37 = ptrtoint ptr %extack13.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %extack13.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse_meta.__msg.8) #5
  %tobool14.not.i = icmp eq ptr %38, null
  br i1 %tobool14.not.i, label %do.body10.i.mlxsw_sp_flower_parse_meta.exit.thread_crit_edge, label %if.then15.i

do.body10.i.mlxsw_sp_flower_parse_meta.exit.thread_crit_edge: ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_flower_parse_meta.exit.thread

if.then15.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @mlxsw_sp_flower_parse_meta.__msg.8, ptr %38, align 4
  br label %mlxsw_sp_flower_parse_meta.exit.thread

if.end20.i:                                       ; preds = %if.end5.i
  %call21.i = call zeroext i1 @mlxsw_sp_port_dev_check(ptr noundef nonnull %call7.i) #5
  br i1 %call21.i, label %if.end33.i, label %do.body23.i

do.body23.i:                                      ; preds = %if.end20.i
  %extack26.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %40 = ptrtoint ptr %extack26.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %extack26.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse_meta.__msg.9) #5
  %tobool27.not.i = icmp eq ptr %41, null
  br i1 %tobool27.not.i, label %do.body23.i.mlxsw_sp_flower_parse_meta.exit.thread_crit_edge, label %if.then28.i

do.body23.i.mlxsw_sp_flower_parse_meta.exit.thread_crit_edge: ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_flower_parse_meta.exit.thread

if.then28.i:                                      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @mlxsw_sp_flower_parse_meta.__msg.9, ptr %41, align 4
  br label %mlxsw_sp_flower_parse_meta.exit.thread

if.end33.i:                                       ; preds = %if.end20.i
  %mlxsw_sp.i = getelementptr i8, ptr %call7.i, i32 2312
  %43 = ptrtoint ptr %mlxsw_sp.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mlxsw_sp.i, align 8
  %mlxsw_sp35.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 3
  %45 = ptrtoint ptr %mlxsw_sp35.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mlxsw_sp35.i, align 4
  %cmp36.not.i = icmp eq ptr %44, %46
  br i1 %cmp36.not.i, label %if.end48.i, label %do.body38.i

do.body38.i:                                      ; preds = %if.end33.i
  %extack41.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %47 = ptrtoint ptr %extack41.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %extack41.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse_meta.__msg.10) #5
  %tobool42.not.i = icmp eq ptr %48, null
  br i1 %tobool42.not.i, label %do.body38.i.mlxsw_sp_flower_parse_meta.exit.thread_crit_edge, label %if.then43.i

do.body38.i.mlxsw_sp_flower_parse_meta.exit.thread_crit_edge: ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_flower_parse_meta.exit.thread

if.then43.i:                                      ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @mlxsw_sp_flower_parse_meta.__msg.10, ptr %48, align 4
  br label %mlxsw_sp_flower_parse_meta.exit.thread

if.end48.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  %local_port.i = getelementptr i8, ptr %call7.i, i32 2316
  %50 = ptrtoint ptr %local_port.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %local_port.i, align 4
  %conv.i = zext i16 %51 to i32
  call void @mlxsw_sp_acl_rulei_keymask_u32(ptr noundef %rulei, i32 noundef 0, i32 noundef %conv.i, i32 noundef -1) #5
  br label %if.end12

mlxsw_sp_flower_parse_meta.exit.thread:           ; preds = %if.then43.i, %do.body38.i.mlxsw_sp_flower_parse_meta.exit.thread_crit_edge, %if.then28.i, %do.body23.i.mlxsw_sp_flower_parse_meta.exit.thread_crit_edge, %if.then15.i, %do.body10.i.mlxsw_sp_flower_parse_meta.exit.thread_crit_edge, %if.then3.i, %do.body.i.mlxsw_sp_flower_parse_meta.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i) #5
  br label %cleanup149

if.end12:                                         ; preds = %if.end48.i, %if.end7.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i) #5
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %and.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %if.end12.if.end17_crit_edge, label %if.then14

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match15) #5
  %56 = ptrtoint ptr %match15 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 -1 to ptr), ptr %match15, align 4, !annotation !96
  %57 = getelementptr inbounds %struct.flow_match_control, ptr %match15, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 -1 to ptr), ptr %57, align 4, !annotation !96
  call void @flow_rule_match_control(ptr noundef %1, ptr noundef nonnull %match15) #5
  %59 = ptrtoint ptr %match15 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %match15, align 4
  %addr_type16 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %addr_type16 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %addr_type16, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match15) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12.if.end17_crit_edge
  %addr_type.0 = phi i16 [ %62, %if.then14 ], [ 0, %if.end12.if.end17_crit_edge ]
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %and.i.i215 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i215)
  %tobool.i.i216.not = icmp eq i32 %and.i.i215, 0
  br i1 %tobool.i.i216.not, label %if.end17.if.end36_crit_edge, label %if.then19

if.end17.if.end36_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match20) #5
  %67 = ptrtoint ptr %match20 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 -1 to ptr), ptr %match20, align 4, !annotation !96
  %68 = getelementptr inbounds %struct.flow_match_basic, ptr %match20, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 -1 to ptr), ptr %68, align 4, !annotation !96
  call void @flow_rule_match_basic(ptr noundef %1, ptr noundef nonnull %match20) #5
  %70 = ptrtoint ptr %match20 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %match20, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %71, align 2
  %74 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %68, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %75, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %73)
  %cmp = icmp eq i16 %73, 3
  %spec.select = select i1 %cmp, i16 0, i16 %77
  %spec.select213 = select i1 %cmp, i16 0, i16 %73
  %conv26 = zext i16 %spec.select213 to i32
  %conv27 = zext i16 %spec.select to i32
  call void @mlxsw_sp_acl_rulei_keymask_u32(ptr noundef %rulei, i32 noundef 5, i32 noundef %conv26, i32 noundef %conv27) #5
  %78 = ptrtoint ptr %match20 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %match20, align 4
  %ip_proto29 = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %ip_proto29 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ip_proto29, align 2
  %conv32 = zext i8 %81 to i32
  %82 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %68, align 4
  %ip_proto34 = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %ip_proto34 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %ip_proto34, align 2
  %conv35 = zext i8 %85 to i32
  call void @mlxsw_sp_acl_rulei_keymask_u32(ptr noundef %rulei, i32 noundef 6, i32 noundef %conv32, i32 noundef %conv35) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match20) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then19, %if.end17.if.end36_crit_edge
  %n_proto_mask.1 = phi i16 [ %spec.select, %if.then19 ], [ 0, %if.end17.if.end36_crit_edge ]
  %n_proto_key.1 = phi i16 [ %spec.select213, %if.then19 ], [ 0, %if.end17.if.end36_crit_edge ]
  %ip_proto.0 = phi i8 [ %81, %if.then19 ], [ 0, %if.end17.if.end36_crit_edge ]
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %and.i.i217 = and i32 %89, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i217)
  %tobool.i.i218.not = icmp eq i32 %and.i.i217, 0
  br i1 %tobool.i.i218.not, label %if.end36.if.end64_crit_edge, label %if.then38

if.end36.if.end64_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match39) #5
  %90 = ptrtoint ptr %match39 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 -1 to ptr), ptr %match39, align 4, !annotation !96
  %91 = getelementptr inbounds %struct.flow_match_eth_addrs, ptr %match39, i32 0, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 -1 to ptr), ptr %91, align 4, !annotation !96
  call void @flow_rule_match_eth_addrs(ptr noundef %1, ptr noundef nonnull %match39) #5
  %93 = ptrtoint ptr %match39 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %match39, align 4
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %91, align 4
  call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %rulei, i32 noundef 1, ptr noundef %94, ptr noundef %96, i32 noundef 2) #5
  %97 = ptrtoint ptr %match39 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %match39, align 4
  %add.ptr = getelementptr i8, ptr %98, i32 2
  %99 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %91, align 4
  %add.ptr50 = getelementptr i8, ptr %100, i32 2
  call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %rulei, i32 noundef 2, ptr noundef %add.ptr, ptr noundef %add.ptr50, i32 noundef 4) #5
  %101 = ptrtoint ptr %match39 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %match39, align 4
  %src = getelementptr inbounds %struct.flow_dissector_key_eth_addrs, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %91, align 4
  %src54 = getelementptr inbounds %struct.flow_dissector_key_eth_addrs, ptr %104, i32 0, i32 1
  call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %rulei, i32 noundef 3, ptr noundef %src, ptr noundef %src54, i32 noundef 2) #5
  %105 = ptrtoint ptr %match39 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %match39, align 4
  %add.ptr59 = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %106, i32 0, i32 1, i32 2
  %107 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %91, align 4
  %add.ptr63 = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %108, i32 0, i32 1, i32 2
  call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %rulei, i32 noundef 4, ptr noundef %add.ptr59, ptr noundef %add.ptr63, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match39) #5
  br label %if.end64

if.end64:                                         ; preds = %if.then38, %if.end36.if.end64_crit_edge
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %1, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %and.i.i219 = and i32 %112, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i219)
  %tobool.i.i220.not = icmp eq i32 %and.i.i219, 0
  br i1 %tobool.i.i220.not, label %if.end64.if.end118_crit_edge, label %if.then66

if.end64.if.end118_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

if.then66:                                        ; preds = %if.end64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match67) #5
  %113 = ptrtoint ptr %match67 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr inttoptr (i32 -1 to ptr), ptr %match67, align 4, !annotation !96
  %114 = getelementptr inbounds %struct.flow_match_vlan, ptr %match67, i32 0, i32 1
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr inttoptr (i32 -1 to ptr), ptr %114, align 4, !annotation !96
  call void @flow_rule_match_vlan(ptr noundef %1, ptr noundef nonnull %match67) #5
  %egress_binding_count.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 9
  %116 = ptrtoint ptr %egress_binding_count.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %egress_binding_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool.i.not = icmp eq i32 %117, 0
  br i1 %tobool.i.not, label %if.then66.if.end84_crit_edge, label %land.lhs.true

if.then66.if.end84_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

land.lhs.true:                                    ; preds = %if.then66
  %118 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %114, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load2_noabort(i32 %120)
  %bf.load = load i16, ptr %119, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %bf.load)
  %tobool72.not = icmp ult i16 %bf.load, 16
  br i1 %tobool72.not, label %land.lhs.true.if.end84_crit_edge, label %do.body74

land.lhs.true.if.end84_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

do.body74:                                        ; preds = %land.lhs.true
  %extack77 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %121 = ptrtoint ptr %extack77 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %extack77, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse.__msg.7) #5
  %tobool78.not = icmp eq ptr %122, null
  br i1 %tobool78.not, label %cleanup149.critedge214, label %if.then79

if.then79:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @mlxsw_sp_flower_parse.__msg.7, ptr %122, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match67) #5
  br label %cleanup149

if.end84:                                         ; preds = %land.lhs.true.if.end84_crit_edge, %if.then66.if.end84_crit_edge
  %egress_bind_blocker = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 3
  %124 = ptrtoint ptr %egress_bind_blocker to i32
  call void @__asan_load1_noabort(i32 %124)
  %bf.load85 = load i8, ptr %egress_bind_blocker, align 4
  %bf.set = or i8 %bf.load85, 32
  store i8 %bf.set, ptr %egress_bind_blocker, align 4
  %125 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %114, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load2_noabort(i32 %127)
  %bf.load87 = load i16, ptr %126, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %bf.load87)
  %cmp90.not = icmp ult i16 %bf.load87, 16
  br i1 %cmp90.not, label %if.end84.if.end101_crit_edge, label %if.then92

if.end84.if.end101_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

if.then92:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  %bf.lshr88 = lshr i16 %bf.load87, 4
  %conv89 = zext i16 %bf.lshr88 to i32
  %128 = ptrtoint ptr %match67 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %match67, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load2_noabort(i32 %130)
  %bf.load94 = load i16, ptr %129, align 2
  %bf.lshr95 = lshr i16 %bf.load94, 4
  %conv96 = zext i16 %bf.lshr95 to i32
  call void @mlxsw_sp_acl_rulei_keymask_u32(ptr noundef %rulei, i32 noundef 17, i32 noundef %conv96, i32 noundef %conv89) #5
  br label %if.end101

if.end101:                                        ; preds = %if.then92, %if.end84.if.end101_crit_edge
  %131 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %114, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load2_noabort(i32 %133)
  %bf.load103 = load i16, ptr %132, align 2
  %bf.clear104 = and i16 %bf.load103, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear104)
  %cmp106.not = icmp eq i16 %bf.clear104, 0
  br i1 %cmp106.not, label %if.end101.cleanup_crit_edge, label %if.then108

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then108:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  %conv105 = zext i16 %bf.clear104 to i32
  %134 = ptrtoint ptr %match67 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %match67, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load2_noabort(i32 %136)
  %bf.load110 = load i16, ptr %135, align 2
  %bf.clear111 = and i16 %bf.load110, 7
  %conv112 = zext i16 %bf.clear111 to i32
  call void @mlxsw_sp_acl_rulei_keymask_u32(ptr noundef %rulei, i32 noundef 18, i32 noundef %conv112, i32 noundef %conv105) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then108, %if.end101.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match67) #5
  br label %if.end118

if.end118:                                        ; preds = %cleanup, %if.end64.if.end118_crit_edge
  %137 = zext i16 %addr_type.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %addr_type.0, label %if.end118.if.end128_crit_edge [
    i16 2, label %if.then122
    i16 3, label %if.then127
  ]

if.end118.if.end128_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end128

if.then122:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i221) #5
  %138 = ptrtoint ptr %match.i221 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i221, align 4, !annotation !96
  %139 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match.i221, i32 0, i32 1
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr inttoptr (i32 -1 to ptr), ptr %139, align 4, !annotation !96
  %141 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rule.i, align 8
  call void @flow_rule_match_ipv4_addrs(ptr noundef %142, ptr noundef nonnull %match.i221) #5
  %143 = ptrtoint ptr %match.i221 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %match.i221, align 4
  %145 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %139, align 4
  call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %rulei, i32 noundef 10, ptr noundef %144, ptr noundef %146, i32 noundef 4) #5
  %147 = ptrtoint ptr %match.i221 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %match.i221, align 4
  %dst.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %139, align 4
  %dst4.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %150, i32 0, i32 1
  call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %rulei, i32 noundef 14, ptr noundef %dst.i, ptr noundef %dst4.i, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i221) #5
  br label %if.end128

if.then127:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i223) #5
  %151 = ptrtoint ptr %match.i223 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i223, align 4, !annotation !96
  %152 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %match.i223, i32 0, i32 1
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr inttoptr (i32 -1 to ptr), ptr %152, align 4, !annotation !96
  %154 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rule.i, align 8
  call void @flow_rule_match_ipv6_addrs(ptr noundef %155, ptr noundef nonnull %match.i223) #5
  %156 = ptrtoint ptr %match.i223 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %match.i223, align 4
  %158 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %152, align 4
  call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %rulei, i32 noundef 7, ptr noundef %157, ptr noundef %159, i32 noundef 4) #5
  %160 = ptrtoint ptr %match.i223 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %match.i223, align 4
  %arrayidx7.i = getelementptr [16 x i8], ptr %161, i32 0, i32 4
  %162 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %152, align 4
  %arrayidx11.i = getelementptr [16 x i8], ptr %163, i32 0, i32 4
  call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %rulei, i32 noundef 8, ptr noundef %arrayidx7.i, ptr noundef %arrayidx11.i, i32 noundef 4) #5
  %164 = ptrtoint ptr %match.i223 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %match.i223, align 4
  %arrayidx15.i = getelementptr [16 x i8], ptr %165, i32 0, i32 8
  %166 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %152, align 4
  %arrayidx19.i = getelementptr [16 x i8], ptr %167, i32 0, i32 8
  call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %rulei, i32 noundef 9, ptr noundef %arrayidx15.i, ptr noundef %arrayidx19.i, i32 noundef 4) #5
  %168 = ptrtoint ptr %match.i223 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %match.i223, align 4
  %arrayidx23.i = getelementptr [16 x i8], ptr %169, i32 0, i32 12
  %170 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %152, align 4
  %arrayidx27.i = getelementptr [16 x i8], ptr %171, i32 0, i32 12
  call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %rulei, i32 noundef 10, ptr noundef %arrayidx23.i, ptr noundef %arrayidx27.i, i32 noundef 4) #5
  %172 = ptrtoint ptr %match.i223 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %match.i223, align 4
  %dst.i225 = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %152, align 4
  %dst32.i = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %175, i32 0, i32 1
  call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %rulei, i32 noundef 11, ptr noundef %dst.i225, ptr noundef %dst32.i, i32 noundef 4) #5
  %176 = ptrtoint ptr %match.i223 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %match.i223, align 4
  %arrayidx38.i = getelementptr %struct.flow_dissector_key_ipv6_addrs, ptr %177, i32 0, i32 1, i32 0, i32 0, i32 1
  %178 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %152, align 4
  %arrayidx42.i = getelementptr %struct.flow_dissector_key_ipv6_addrs, ptr %179, i32 0, i32 1, i32 0, i32 0, i32 1
  call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %rulei, i32 noundef 12, ptr noundef %arrayidx38.i, ptr noundef %arrayidx42.i, i32 noundef 4) #5
  %180 = ptrtoint ptr %match.i223 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %match.i223, align 4
  %arrayidx46.i = getelementptr %struct.flow_dissector_key_ipv6_addrs, ptr %181, i32 0, i32 1, i32 0, i32 0, i32 2
  %182 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %152, align 4
  %arrayidx50.i = getelementptr %struct.flow_dissector_key_ipv6_addrs, ptr %183, i32 0, i32 1, i32 0, i32 0, i32 2
  call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %rulei, i32 noundef 13, ptr noundef %arrayidx46.i, ptr noundef %arrayidx50.i, i32 noundef 4) #5
  %184 = ptrtoint ptr %match.i223 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %match.i223, align 4
  %arrayidx54.i = getelementptr %struct.flow_dissector_key_ipv6_addrs, ptr %185, i32 0, i32 1, i32 0, i32 0, i32 3
  %186 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %152, align 4
  %arrayidx58.i = getelementptr %struct.flow_dissector_key_ipv6_addrs, ptr %187, i32 0, i32 1, i32 0, i32 0, i32 3
  call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %rulei, i32 noundef 14, ptr noundef %arrayidx54.i, ptr noundef %arrayidx58.i, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i223) #5
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %if.then122, %if.end118.if.end128_crit_edge
  %188 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %rule.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i226) #5
  %190 = ptrtoint ptr %match.i226 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i226, align 4, !annotation !96
  %191 = getelementptr inbounds %struct.flow_match_ports, ptr %match.i226, i32 0, i32 1
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr inttoptr (i32 -1 to ptr), ptr %191, align 4, !annotation !96
  %193 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %189, align 8
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %194, align 4
  %and.i.i.i228 = and i32 %196, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i228)
  %tobool.i.i.not.i229 = icmp eq i32 %and.i.i.i228, 0
  br i1 %tobool.i.i.not.i229, label %if.end128.if.end132_crit_edge, label %if.end.i230

if.end128.if.end132_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end132

if.end.i230:                                      ; preds = %if.end128
  %197 = zext i8 %ip_proto.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %197, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %ip_proto.0, label %do.body.i233 [
    i8 6, label %if.end.i230.if.end12.i_crit_edge
    i8 17, label %if.end.i230.if.end12.i_crit_edge276
  ]

if.end.i230.if.end12.i_crit_edge276:              ; preds = %if.end.i230
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.end.i230.if.end12.i_crit_edge:                 ; preds = %if.end.i230
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

do.body.i233:                                     ; preds = %if.end.i230
  %extack.i231 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %198 = ptrtoint ptr %extack.i231 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %extack.i231, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse_ports.__msg) #5
  %tobool.not.i232 = icmp eq ptr %199, null
  br i1 %tobool.not.i232, label %do.body.i233.mlxsw_sp_flower_parse_ports.exit_crit_edge, label %if.then7.i

do.body.i233.mlxsw_sp_flower_parse_ports.exit_crit_edge: ; preds = %do.body.i233
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_flower_parse_ports.exit

if.then7.i:                                       ; preds = %do.body.i233
  call void @__sanitizer_cov_trace_pc() #7
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr @mlxsw_sp_flower_parse_ports.__msg, ptr %199, align 4
  br label %mlxsw_sp_flower_parse_ports.exit

if.end12.i:                                       ; preds = %if.end.i230.if.end12.i_crit_edge, %if.end.i230.if.end12.i_crit_edge276
  call void @flow_rule_match_ports(ptr noundef %189, ptr noundef nonnull %match.i226) #5
  %201 = ptrtoint ptr %match.i226 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %match.i226, align 4
  %dst.i234 = getelementptr inbounds %struct.anon.197, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %dst.i234 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %dst.i234, align 2
  %conv13.i = zext i16 %204 to i32
  %205 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %191, align 4
  %dst14.i = getelementptr inbounds %struct.anon.197, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %dst14.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %dst14.i, align 2
  %conv15.i = zext i16 %208 to i32
  call void @mlxsw_sp_acl_rulei_keymask_u32(ptr noundef %rulei, i32 noundef 15, i32 noundef %conv13.i, i32 noundef %conv15.i) #5
  %209 = ptrtoint ptr %match.i226 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %match.i226, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %210, align 4
  %conv17.i = zext i16 %212 to i32
  %213 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %191, align 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %214, align 4
  %conv20.i = zext i16 %216 to i32
  call void @mlxsw_sp_acl_rulei_keymask_u32(ptr noundef %rulei, i32 noundef 16, i32 noundef %conv17.i, i32 noundef %conv20.i) #5
  br label %if.end132

mlxsw_sp_flower_parse_ports.exit:                 ; preds = %if.then7.i, %do.body.i233.mlxsw_sp_flower_parse_ports.exit_crit_edge
  %bus_info.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  %217 = ptrtoint ptr %bus_info.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %bus_info.i, align 4
  %dev.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %218, i32 0, i32 2
  %219 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %220, ptr noundef nonnull @.str.11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i226) #5
  br label %cleanup149

if.end132:                                        ; preds = %if.end12.i, %if.end128.if.end132_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i226) #5
  %221 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %rule.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i236) #5
  %223 = ptrtoint ptr %match.i236 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i236, align 4, !annotation !96
  %224 = getelementptr inbounds %struct.flow_match_tcp, ptr %match.i236, i32 0, i32 1
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr inttoptr (i32 -1 to ptr), ptr %224, align 4, !annotation !96
  %226 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %222, align 8
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %227, align 4
  %and.i.i.i238 = and i32 %229, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i238)
  %tobool.i.i.not.i239 = icmp eq i32 %and.i.i.i238, 0
  br i1 %tobool.i.i.not.i239, label %if.end132.if.end136_crit_edge, label %if.end.i241

if.end132.if.end136_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end136

if.end.i241:                                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %ip_proto.0)
  %cmp.not.i240 = icmp eq i8 %ip_proto.0, 6
  br i1 %cmp.not.i240, label %if.end9.i, label %do.body.i244

do.body.i244:                                     ; preds = %if.end.i241
  %extack.i242 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %230 = ptrtoint ptr %extack.i242 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %extack.i242, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse_tcp.__msg) #5
  %tobool.not.i243 = icmp eq ptr %231, null
  br i1 %tobool.not.i243, label %do.body.i244.mlxsw_sp_flower_parse_tcp.exit_crit_edge, label %if.then4.i

do.body.i244.mlxsw_sp_flower_parse_tcp.exit_crit_edge: ; preds = %do.body.i244
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_flower_parse_tcp.exit

if.then4.i:                                       ; preds = %do.body.i244
  call void @__sanitizer_cov_trace_pc() #7
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr @mlxsw_sp_flower_parse_tcp.__msg, ptr %231, align 4
  br label %mlxsw_sp_flower_parse_tcp.exit

if.end9.i:                                        ; preds = %if.end.i241
  call void @flow_rule_match_tcp(ptr noundef %222, ptr noundef nonnull %match.i236) #5
  %233 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %224, align 4
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %234, align 2
  %conv10.i = zext i16 %236 to i32
  %and.i = and i32 %conv10.i, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %if.end28.i, label %do.body13.i

do.body13.i:                                      ; preds = %if.end9.i
  %extack16.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %237 = ptrtoint ptr %extack16.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %extack16.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse_tcp.__msg.15) #5
  %tobool17.not.i = icmp eq ptr %238, null
  br i1 %tobool17.not.i, label %do.body13.i.mlxsw_sp_flower_parse_tcp.exit_crit_edge, label %if.then18.i

do.body13.i.mlxsw_sp_flower_parse_tcp.exit_crit_edge: ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_flower_parse_tcp.exit

if.then18.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr @mlxsw_sp_flower_parse_tcp.__msg.15, ptr %238, align 4
  br label %mlxsw_sp_flower_parse_tcp.exit

if.end28.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %240 = ptrtoint ptr %match.i236 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %match.i236, align 4
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %241, align 2
  %conv30.i = zext i16 %243 to i32
  call void @mlxsw_sp_acl_rulei_keymask_u32(ptr noundef %rulei, i32 noundef 19, i32 noundef %conv30.i, i32 noundef %conv10.i) #5
  br label %if.end136

mlxsw_sp_flower_parse_tcp.exit:                   ; preds = %if.then18.i, %do.body13.i.mlxsw_sp_flower_parse_tcp.exit_crit_edge, %if.then4.i, %do.body.i244.mlxsw_sp_flower_parse_tcp.exit_crit_edge
  %.str.13.sink = phi ptr [ @.str.13, %if.then4.i ], [ @.str.13, %do.body.i244.mlxsw_sp_flower_parse_tcp.exit_crit_edge ], [ @.str.17, %if.then18.i ], [ @.str.17, %do.body13.i.mlxsw_sp_flower_parse_tcp.exit_crit_edge ]
  %bus_info.i245 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  %244 = ptrtoint ptr %bus_info.i245 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %bus_info.i245, align 4
  %dev.i246 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %245, i32 0, i32 2
  %246 = ptrtoint ptr %dev.i246 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %dev.i246, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %247, ptr noundef nonnull %.str.13.sink) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i236) #5
  br label %cleanup149

if.end136:                                        ; preds = %if.end28.i, %if.end132.if.end136_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i236) #5
  %248 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %rule.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i250) #5
  %250 = ptrtoint ptr %match.i250 to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i250, align 4, !annotation !96
  %251 = getelementptr inbounds %struct.flow_match_ip, ptr %match.i250, i32 0, i32 1
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr inttoptr (i32 -1 to ptr), ptr %251, align 4, !annotation !96
  %253 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %249, align 8
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %254, align 4
  %and.i.i.i252 = and i32 %256, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i252)
  %tobool.i.i.not.i253 = icmp eq i32 %and.i.i.i252, 0
  br i1 %tobool.i.i.not.i253, label %if.end136.if.end144_crit_edge, label %if.end.i254

if.end136.if.end144_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end144

if.end.i254:                                      ; preds = %if.end136
  %and139212 = and i16 %n_proto_key.1, %n_proto_mask.1
  %257 = zext i16 %and139212 to i64
  call void @__sanitizer_cov_trace_switch(i64 %257, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %and139212, label %do.body.i257 [
    i16 2048, label %if.end.i254.if.end12.i265_crit_edge
    i16 -31011, label %if.end.i254.if.end12.i265_crit_edge277
  ]

if.end.i254.if.end12.i265_crit_edge277:           ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i265

if.end.i254.if.end12.i265_crit_edge:              ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i265

do.body.i257:                                     ; preds = %if.end.i254
  %extack.i255 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %258 = ptrtoint ptr %extack.i255 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %extack.i255, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse_ip.__msg) #5
  %tobool.not.i256 = icmp eq ptr %259, null
  br i1 %tobool.not.i256, label %do.body.i257.mlxsw_sp_flower_parse_ip.exit_crit_edge, label %if.then7.i258

do.body.i257.mlxsw_sp_flower_parse_ip.exit_crit_edge: ; preds = %do.body.i257
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_flower_parse_ip.exit

if.then7.i258:                                    ; preds = %do.body.i257
  call void @__sanitizer_cov_trace_pc() #7
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr @mlxsw_sp_flower_parse_ip.__msg, ptr %259, align 4
  br label %mlxsw_sp_flower_parse_ip.exit

if.end12.i265:                                    ; preds = %if.end.i254.if.end12.i265_crit_edge, %if.end.i254.if.end12.i265_crit_edge277
  call void @flow_rule_match_ip(ptr noundef %249, ptr noundef nonnull %match.i250) #5
  %261 = ptrtoint ptr %match.i250 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %match.i250, align 4
  %ttl.i = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %ttl.i, align 1
  %conv13.i262 = zext i8 %264 to i32
  %265 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %251, align 4
  %ttl14.i = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %266, i32 0, i32 1
  %267 = ptrtoint ptr %ttl14.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %ttl14.i, align 1
  %conv15.i263 = zext i8 %268 to i32
  call void @mlxsw_sp_acl_rulei_keymask_u32(ptr noundef %rulei, i32 noundef 20, i32 noundef %conv13.i262, i32 noundef %conv15.i263) #5
  %269 = ptrtoint ptr %match.i250 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %match.i250, align 4
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %270, align 1
  %273 = and i8 %272, 3
  %and.i264 = zext i8 %273 to i32
  %274 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %251, align 4
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %275, align 1
  %278 = and i8 %277, 3
  %and21.i = zext i8 %278 to i32
  call void @mlxsw_sp_acl_rulei_keymask_u32(ptr noundef %rulei, i32 noundef 21, i32 noundef %and.i264, i32 noundef %and21.i) #5
  %279 = ptrtoint ptr %match.i250 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %match.i250, align 4
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %280, align 1
  %283 = lshr i8 %282, 2
  %284 = zext i8 %283 to i32
  %285 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %251, align 4
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %286, align 1
  %289 = lshr i8 %288, 2
  %290 = zext i8 %289 to i32
  call void @mlxsw_sp_acl_rulei_keymask_u32(ptr noundef %rulei, i32 noundef 22, i32 noundef %284, i32 noundef %290) #5
  br label %if.end144

mlxsw_sp_flower_parse_ip.exit:                    ; preds = %if.then7.i258, %do.body.i257.mlxsw_sp_flower_parse_ip.exit_crit_edge
  %bus_info.i259 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  %291 = ptrtoint ptr %bus_info.i259 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %bus_info.i259, align 4
  %dev.i260 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %292, i32 0, i32 2
  %293 = ptrtoint ptr %dev.i260 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %dev.i260, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %294, ptr noundef nonnull @.str.19) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i250) #5
  br label %cleanup149

if.end144:                                        ; preds = %if.end12.i265, %if.end136.if.end144_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i250) #5
  %295 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %rule.i, align 8
  %action = getelementptr inbounds %struct.flow_rule, ptr %296, i32 0, i32 1
  %extack147 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %f, i32 0, i32 3
  %297 = ptrtoint ptr %extack147 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %extack147, align 4
  %call148 = call fastcc i32 @mlxsw_sp_flower_parse_actions(ptr noundef %mlxsw_sp, ptr noundef %block, ptr noundef %rulei, ptr noundef %action, ptr noundef %298)
  br label %cleanup149

cleanup149.critedge214:                           ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match67) #5
  br label %cleanup149

cleanup149:                                       ; preds = %cleanup149.critedge214, %if.end144, %mlxsw_sp_flower_parse_ip.exit, %mlxsw_sp_flower_parse_tcp.exit, %mlxsw_sp_flower_parse_ports.exit, %if.then79, %mlxsw_sp_flower_parse_meta.exit.thread, %if.then4, %do.end.cleanup149_crit_edge
  %retval.1 = phi i32 [ %call148, %if.end144 ], [ -95, %if.then4 ], [ -95, %do.end.cleanup149_crit_edge ], [ -95, %if.then79 ], [ -95, %cleanup149.critedge214 ], [ -22, %mlxsw_sp_flower_parse_ports.exit ], [ -22, %mlxsw_sp_flower_parse_tcp.exit ], [ -22, %mlxsw_sp_flower_parse_ip.exit ], [ -22, %mlxsw_sp_flower_parse_meta.exit.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_rulei_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_rule_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_ruleset_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_rule_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_flower_destroy(ptr noundef %mlxsw_sp, ptr noundef %block, ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 8
  %call = tail call ptr @mlxsw_sp_acl_ruleset_get(ptr noundef %mlxsw_sp, ptr noundef %block, i32 noundef %1, i32 noundef 0, ptr noundef null) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 2
  %2 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cookie, align 4
  %call2 = tail call ptr @mlxsw_sp_acl_rule_lookup(ptr noundef %mlxsw_sp, ptr noundef %call, i32 noundef %3) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mlxsw_sp_acl_rule_del(ptr noundef %mlxsw_sp, ptr noundef nonnull %call2) #5
  tail call void @mlxsw_sp_acl_rule_destroy(ptr noundef %mlxsw_sp, ptr noundef nonnull %call2) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @mlxsw_sp_acl_ruleset_put(ptr noundef %mlxsw_sp, ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_acl_rule_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_rule_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_flower_stats(ptr noundef %mlxsw_sp, ptr noundef %block, ptr nocapture noundef %f) local_unnamed_addr #0 align 64 {
entry:
  %used_hw_stats = alloca i32, align 4
  %packets = alloca i64, align 8
  %lastuse = alloca i64, align 8
  %bytes = alloca i64, align 8
  %drops = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %used_hw_stats) #5
  %0 = ptrtoint ptr %used_hw_stats to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %used_hw_stats, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %packets) #5
  %1 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %packets, align 8, !annotation !96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lastuse) #5
  %2 = ptrtoint ptr %lastuse to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %lastuse, align 8, !annotation !96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes) #5
  %3 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %bytes, align 8, !annotation !96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %drops) #5
  %4 = ptrtoint ptr %drops to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %drops, align 8, !annotation !96
  %5 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f, align 8
  %call = tail call ptr @mlxsw_sp_acl_ruleset_get(ptr noundef %mlxsw_sp, ptr noundef %block, i32 noundef %6, i32 noundef 0, ptr noundef null) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end22, !prof !97

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 673, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end22:                                         ; preds = %entry
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 2
  %7 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cookie, align 4
  %call23 = tail call ptr @mlxsw_sp_acl_rule_lookup(ptr noundef %mlxsw_sp, ptr noundef %call, i32 noundef %8) #5
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %call27 = call i32 @mlxsw_sp_acl_rule_get_stats(ptr noundef %mlxsw_sp, ptr noundef nonnull %call23, ptr noundef nonnull %packets, ptr noundef nonnull %bytes, ptr noundef nonnull %drops, ptr noundef nonnull %lastuse, ptr noundef nonnull %used_hw_stats) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %err_rule_get_stats

if.end30:                                         ; preds = %if.end26
  %stats = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 4
  %9 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %bytes, align 8
  %11 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %packets, align 8
  %13 = ptrtoint ptr %drops to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %drops, align 8
  %15 = ptrtoint ptr %lastuse to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %lastuse, align 8
  %17 = ptrtoint ptr %used_hw_stats to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %used_hw_stats, align 4
  %19 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %stats, align 8
  %add.i = add i64 %20, %12
  store i64 %add.i, ptr %stats, align 8
  %bytes2.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %bytes2.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bytes2.i, align 8
  %add3.i = add i64 %22, %10
  store i64 %add3.i, ptr %bytes2.i, align 8
  %drops4.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 4, i32 2
  %23 = ptrtoint ptr %drops4.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %drops4.i, align 8
  %add5.i = add i64 %24, %14
  store i64 %add5.i, ptr %drops4.i, align 8
  %lastused6.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %lastused6.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %lastused6.i, align 8
  %27 = call i64 @llvm.umax.i64(i64 %26, i64 %16) #5
  %28 = ptrtoint ptr %lastused6.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %lastused6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp8.i = icmp eq i32 %18, 3
  br i1 %cmp8.i, label %do.end.i, label %if.end30.flow_stats_update.exit_crit_edge, !prof !97

if.end30.flow_stats_update.exit_crit_edge:        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %flow_stats_update.exit

do.end.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 418, i32 noundef 9, ptr noundef null) #5
  br label %flow_stats_update.exit

flow_stats_update.exit:                           ; preds = %do.end.i, %if.end30.flow_stats_update.exit_crit_edge
  %used_hw_stats28.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 4, i32 4
  %29 = ptrtoint ptr %used_hw_stats28.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %used_hw_stats28.i, align 8
  %or.i = or i32 %30, %18
  store i32 %or.i, ptr %used_hw_stats28.i, align 8
  %used_hw_stats_valid.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 4, i32 5
  %31 = ptrtoint ptr %used_hw_stats_valid.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %used_hw_stats_valid.i, align 4
  call void @mlxsw_sp_acl_ruleset_put(ptr noundef %mlxsw_sp, ptr noundef %call) #5
  br label %cleanup

err_rule_get_stats:                               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  call void @mlxsw_sp_acl_ruleset_put(ptr noundef %mlxsw_sp, ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %err_rule_get_stats, %flow_stats_update.exit, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call27, %err_rule_get_stats ], [ 0, %flow_stats_update.exit ], [ -22, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %drops) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lastuse) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %packets) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %used_hw_stats) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_rule_get_stats(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_flower_tmplt_create(ptr noundef %mlxsw_sp, ptr noundef %block, ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  %rulei = alloca %struct.mlxsw_sp_acl_rule_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %rulei) #5
  %0 = call ptr @memset(ptr %rulei, i32 0, i32 152)
  %call = call fastcc i32 @mlxsw_sp_flower_parse(ptr noundef %mlxsw_sp, ptr noundef %block, ptr noundef nonnull %rulei, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f, align 8
  %values = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 1
  %call1 = call ptr @mlxsw_sp_acl_ruleset_get(ptr noundef %mlxsw_sp, ptr noundef %block, i32 noundef %2, i32 noundef 0, ptr noundef %values) #5
  %cmp.i.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  %3 = ptrtoint ptr %call1 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %3, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %rulei) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_flower_tmplt_destroy(ptr noundef %mlxsw_sp, ptr noundef %block, ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 8
  %call = tail call ptr @mlxsw_sp_acl_ruleset_get(ptr noundef %mlxsw_sp, ptr noundef %block, i32 noundef %1, i32 noundef 0, ptr noundef null) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mlxsw_sp_acl_ruleset_put(ptr noundef %mlxsw_sp, ptr noundef %call) #5
  tail call void @mlxsw_sp_acl_ruleset_put(ptr noundef %mlxsw_sp, ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_flower_prio_get(ptr noundef %mlxsw_sp, ptr noundef %block, i32 noundef %chain_index, ptr noundef %p_min_prio, ptr noundef %p_max_prio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_sp_acl_ruleset_lookup(ptr noundef %mlxsw_sp, ptr noundef %block, i32 noundef %chain_index, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mlxsw_sp_acl_ruleset_prio_get(ptr noundef %call, ptr noundef %p_min_prio, ptr noundef %p_max_prio) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_acl_ruleset_lookup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_ruleset_prio_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_mall_prio_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_rulei_priority(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_control(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_basic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_rulei_keymask_u32(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_eth_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_vlan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_flower_parse_actions(ptr noundef %mlxsw_sp, ptr noundef %block, ptr noundef %rulei, ptr nocapture noundef readonly %flow_action, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flow_action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flow_action, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %1, label %for.body.preheader.i [
    i32 0, label %entry.cleanup276_crit_edge
    i32 1, label %entry.flow_action_first_entry_get.exit_crit_edge
  ]

entry.flow_action_first_entry_get.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %flow_action_first_entry_get.exit

entry.cleanup276_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

for.body.preheader.i:                             ; preds = %entry
  %entries.i = getelementptr inbounds %struct.flow_action, ptr %flow_action, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.024.i = phi i32 [ %inc.i, %if.end7.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %last_hw_stats.023.i = phi i32 [ %7, %if.end7.i.for.body.i_crit_edge ], [ 255, %for.body.preheader.i ]
  %action_entry.022.i = phi ptr [ %arrayidx11.i, %if.end7.i.for.body.i_crit_edge ], [ %entries.i, %for.body.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.024.i)
  %tobool.not.i = icmp eq i32 %i.024.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end7.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end7.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %hw_stats.i = getelementptr inbounds %struct.flow_action_entry, ptr %action_entry.022.i, i32 0, i32 2
  %3 = ptrtoint ptr %hw_stats.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw_stats.i, align 8
  %conv.i = and i32 %last_hw_stats.023.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv.i)
  %cmp1.not.i = icmp eq i32 %4, %conv.i
  br i1 %cmp1.not.i, label %land.lhs.true.i.if.end7.i_crit_edge, label %do.body.i

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

do.body.i:                                        ; preds = %land.lhs.true.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @flow_action_mixed_hw_stats_check.__msg) #5
  %tobool4.not.i = icmp eq ptr %extack, null
  br i1 %tobool4.not.i, label %do.body.i.cleanup276_crit_edge, label %if.then5.i

do.body.i.cleanup276_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @flow_action_mixed_hw_stats_check.__msg, ptr %extack, align 4
  br label %cleanup276

if.end7.i:                                        ; preds = %land.lhs.true.i.if.end7.i_crit_edge, %for.body.i.if.end7.i_crit_edge
  %hw_stats8.i = getelementptr inbounds %struct.flow_action_entry, ptr %action_entry.022.i, i32 0, i32 2
  %6 = ptrtoint ptr %hw_stats8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_stats8.i, align 8
  %inc.i = add nuw i32 %i.024.i, 1
  %arrayidx11.i = getelementptr %struct.flow_action, ptr %flow_action, i32 0, i32 1, i32 %inc.i
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %if.end3, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end3:                                          ; preds = %if.end7.i
  %8 = ptrtoint ptr %flow_action to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %flow_action, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.i.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool.i.not.i, label %do.end.i, label %if.end3.flow_action_first_entry_get.exit_crit_edge, !prof !97

if.end3.flow_action_first_entry_get.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %flow_action_first_entry_get.exit

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 334, i32 noundef 9, ptr noundef null) #5
  br label %flow_action_first_entry_get.exit

flow_action_first_entry_get.exit:                 ; preds = %do.end.i, %if.end3.flow_action_first_entry_get.exit_crit_edge, %entry.flow_action_first_entry_get.exit_crit_edge
  %entries.i426 = getelementptr inbounds %struct.flow_action, ptr %flow_action, i32 0, i32 1
  %hw_stats = getelementptr inbounds %struct.flow_action, ptr %flow_action, i32 2
  %9 = ptrtoint ptr %hw_stats to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_stats, align 8
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %flow_action_first_entry_get.exit.if.end19_crit_edge

flow_action_first_entry_get.exit.if.end19_crit_edge: ; preds = %flow_action_first_entry_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.else:                                          ; preds = %flow_action_first_entry_get.exit
  %and7 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body, label %if.then9

if.then9:                                         ; preds = %if.else
  %call10 = tail call i32 @mlxsw_sp_acl_rulei_act_count(ptr noundef %mlxsw_sp, ptr noundef %rulei, ptr noundef %extack) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end19_crit_edge, label %if.then9.cleanup276_crit_edge

if.then9.cleanup276_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

if.then9.if.end19_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

do.body:                                          ; preds = %if.else
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse_actions.__msg) #5
  %tobool15.not = icmp eq ptr %extack, null
  br i1 %tobool15.not, label %do.body.cleanup276_crit_edge, label %if.then16

do.body.cleanup276_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mlxsw_sp_flower_parse_actions.__msg, ptr %extack, align 4
  br label %cleanup276

if.end19:                                         ; preds = %if.then9.if.end19_crit_edge, %flow_action_first_entry_get.exit.if.end19_crit_edge
  %12 = ptrtoint ptr %flow_action to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flow_action, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp446.not = icmp eq i32 %13, 0
  br i1 %cmp446.not, label %if.end19.cleanup276_crit_edge, label %for.body.lr.ph

if.end19.cleanup276_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

for.body.lr.ph:                                   ; preds = %if.end19
  %egress_binding_count.i430 = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 9
  %egress_bind_blocker114 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 3
  %ingress_binding_count.i = getelementptr inbounds %struct.mlxsw_sp_flow_block, ptr %block, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %act.0451 = phi ptr [ %entries.i426, %for.body.lr.ph ], [ %arrayidx275, %for.inc.for.body_crit_edge ]
  %mirror_act_count.0450 = phi i32 [ 0, %for.body.lr.ph ], [ %mirror_act_count.1, %for.inc.for.body_crit_edge ]
  %police_act_count.0449 = phi i32 [ 0, %for.body.lr.ph ], [ %police_act_count.1, %for.inc.for.body_crit_edge ]
  %sample_act_count.0448 = phi i32 [ 0, %for.body.lr.ph ], [ %sample_act_count.1, %for.inc.for.body_crit_edge ]
  %i.0447 = phi i32 [ 0, %for.body.lr.ph ], [ %inc274, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %act.0451 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %act.0451, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %15, label %do.body262 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb32
    i32 2, label %sw.bb65
    i32 3, label %sw.bb78
    i32 4, label %sw.bb102
    i32 5, label %sw.bb133
    i32 10, label %sw.bb153
    i32 18, label %sw.bb166
    i32 13, label %sw.bb171
    i32 22, label %sw.bb187
    i32 21, label %sw.bb244
  ]

sw.bb:                                            ; preds = %for.body
  %call20 = tail call i32 @mlxsw_sp_acl_rulei_act_terminate(ptr noundef %rulei) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %sw.bb.for.inc_crit_edge, label %do.body23

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body23:                                        ; preds = %sw.bb
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse_actions.__msg.21) #5
  %tobool25.not = icmp eq ptr %extack, null
  br i1 %tobool25.not, label %do.body23.cleanup276_crit_edge, label %if.then26

do.body23.cleanup276_crit_edge:                   ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

if.then26:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mlxsw_sp_flower_parse_actions.__msg.21, ptr %extack, align 4
  br label %cleanup276

sw.bb32:                                          ; preds = %for.body
  %18 = ptrtoint ptr %ingress_binding_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ingress_binding_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i427 = icmp eq i32 %19, 0
  br i1 %tobool.not.i427, label %sw.bb32.if.end43_crit_edge, label %mlxsw_sp_flow_block_is_mixed_bound.exit

sw.bb32.if.end43_crit_edge:                       ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

mlxsw_sp_flow_block_is_mixed_bound.exit:          ; preds = %sw.bb32
  %20 = ptrtoint ptr %egress_binding_count.i430 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %egress_binding_count.i430, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.i.not = icmp eq i32 %21, 0
  br i1 %tobool1.i.not, label %mlxsw_sp_flow_block_is_mixed_bound.exit.if.end43_crit_edge, label %do.body35

mlxsw_sp_flow_block_is_mixed_bound.exit.if.end43_crit_edge: ; preds = %mlxsw_sp_flow_block_is_mixed_bound.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

do.body35:                                        ; preds = %mlxsw_sp_flow_block_is_mixed_bound.exit
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse_actions.__msg.22) #5
  %tobool37.not = icmp eq ptr %extack, null
  br i1 %tobool37.not, label %do.body35.cleanup276_crit_edge, label %if.then38

do.body35.cleanup276_crit_edge:                   ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

if.then38:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mlxsw_sp_flower_parse_actions.__msg.22, ptr %extack, align 4
  br label %cleanup276

if.end43:                                         ; preds = %mlxsw_sp_flow_block_is_mixed_bound.exit.if.end43_crit_edge, %sw.bb32.if.end43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i429 = icmp ne i32 %19, 0
  %cookie = getelementptr inbounds %struct.flow_action_entry, ptr %act.0451, i32 0, i32 6
  %23 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cookie, align 8
  %call46 = tail call i32 @mlxsw_sp_acl_rulei_act_drop(ptr noundef %rulei, i1 noundef zeroext %tobool.i429, ptr noundef %24, ptr noundef %extack) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end57, label %do.body49

do.body49:                                        ; preds = %if.end43
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse_actions.__msg.23) #5
  %tobool51.not = icmp eq ptr %extack, null
  br i1 %tobool51.not, label %do.body49.cleanup276_crit_edge, label %if.then52

do.body49.cleanup276_crit_edge:                   ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

if.then52:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mlxsw_sp_flower_parse_actions.__msg.23, ptr %extack, align 4
  br label %cleanup276

if.end57:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %egress_bind_blocker114 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %egress_bind_blocker114, align 4
  %. = select i1 %tobool.i429, i8 32, i8 64
  %bf.set63 = or i8 %bf.load, %.
  store i8 %bf.set63, ptr %egress_bind_blocker114, align 4
  br label %for.inc

sw.bb65:                                          ; preds = %for.body
  %call66 = tail call i32 @mlxsw_sp_acl_rulei_act_trap(ptr noundef %rulei) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %sw.bb65.for.inc_crit_edge, label %do.body69

sw.bb65.for.inc_crit_edge:                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body69:                                        ; preds = %sw.bb65
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse_actions.__msg.24) #5
  %tobool71.not = icmp eq ptr %extack, null
  br i1 %tobool71.not, label %do.body69.cleanup276_crit_edge, label %if.then72

do.body69.cleanup276_crit_edge:                   ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

if.then72:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @mlxsw_sp_flower_parse_actions.__msg.24, ptr %extack, align 4
  br label %cleanup276

sw.bb78:                                          ; preds = %for.body
  %28 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0451, i32 0, i32 5
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %call79 = tail call ptr @mlxsw_sp_acl_ruleset_lookup(ptr noundef %mlxsw_sp, ptr noundef %block, i32 noundef %30, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call79, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then81, label %if.end83

if.then81:                                        ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %call79 to i32
  br label %cleanup276

if.end83:                                         ; preds = %sw.bb78
  %call84 = tail call zeroext i16 @mlxsw_sp_acl_ruleset_group_id(ptr noundef %call79) #5
  %call85 = tail call i32 @mlxsw_sp_acl_rulei_act_jump(ptr noundef %rulei, i16 noundef zeroext %call84) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end83.for.inc_crit_edge, label %do.body88

if.end83.for.inc_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body88:                                        ; preds = %if.end83
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse_actions.__msg.25) #5
  %tobool90.not = icmp eq ptr %extack, null
  br i1 %tobool90.not, label %do.body88.cleanup276_crit_edge, label %if.then91

do.body88.cleanup276_crit_edge:                   ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

if.then91:                                        ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mlxsw_sp_flower_parse_actions.__msg.25, ptr %extack, align 4
  br label %cleanup276

sw.bb102:                                         ; preds = %for.body
  %33 = ptrtoint ptr %egress_binding_count.i430 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %egress_binding_count.i430, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i431.not = icmp eq i32 %34, 0
  br i1 %tobool.i431.not, label %if.end113, label %do.body105

do.body105:                                       ; preds = %sw.bb102
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse_actions.__msg.26) #5
  %tobool107.not = icmp eq ptr %extack, null
  br i1 %tobool107.not, label %do.body105.cleanup276_crit_edge, label %if.then108

do.body105.cleanup276_crit_edge:                  ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

if.then108:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @mlxsw_sp_flower_parse_actions.__msg.26, ptr %extack, align 4
  br label %cleanup276

if.end113:                                        ; preds = %sw.bb102
  %36 = ptrtoint ptr %egress_bind_blocker114 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load115 = load i8, ptr %egress_bind_blocker114, align 4
  %bf.set117 = or i8 %bf.load115, 32
  store i8 %bf.set117, ptr %egress_bind_blocker114, align 4
  %call118 = tail call ptr @mlxsw_sp_acl_dummy_fid(ptr noundef %mlxsw_sp) #5
  %call119 = tail call zeroext i16 @mlxsw_sp_fid_index(ptr noundef %call118) #5
  %call120 = tail call i32 @mlxsw_sp_acl_rulei_act_fid_set(ptr noundef %mlxsw_sp, ptr noundef %rulei, i16 noundef zeroext %call119, ptr noundef %extack) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %cleanup128, label %if.end113.cleanup276_crit_edge

if.end113.cleanup276_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

cleanup128:                                       ; preds = %if.end113
  %37 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0451, i32 0, i32 5
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %call124 = tail call i32 @mlxsw_sp_acl_rulei_act_fwd(ptr noundef %mlxsw_sp, ptr noundef %rulei, ptr noundef %39, ptr noundef %extack) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %cleanup128.for.inc_crit_edge, label %cleanup128.cleanup276_crit_edge

cleanup128.cleanup276_crit_edge:                  ; preds = %cleanup128
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

cleanup128.for.inc_crit_edge:                     ; preds = %cleanup128
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb133:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mirror_act_count.0450)
  %tobool135.not = icmp eq i32 %mirror_act_count.0450, 0
  br i1 %tobool135.not, label %cleanup150, label %do.body137

do.body137:                                       ; preds = %sw.bb133
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse_actions.__msg.27) #5
  %tobool139.not = icmp eq ptr %extack, null
  br i1 %tobool139.not, label %do.body137.cleanup276_crit_edge, label %if.then140

do.body137.cleanup276_crit_edge:                  ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

if.then140:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @mlxsw_sp_flower_parse_actions.__msg.27, ptr %extack, align 4
  br label %cleanup276

cleanup150:                                       ; preds = %sw.bb133
  %41 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0451, i32 0, i32 5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %call146 = tail call i32 @mlxsw_sp_acl_rulei_act_mirror(ptr noundef %mlxsw_sp, ptr noundef %rulei, ptr noundef %block, ptr noundef %43, ptr noundef %extack) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %cleanup150.for.inc_crit_edge, label %cleanup150.cleanup276_crit_edge

cleanup150.cleanup276_crit_edge:                  ; preds = %cleanup150
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

cleanup150.for.inc_crit_edge:                     ; preds = %cleanup150
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb153:                                         ; preds = %for.body
  %44 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0451, i32 0, i32 5
  %proto154 = getelementptr inbounds %struct.anon.179, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %proto154 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %proto154, align 2
  %prio155 = getelementptr inbounds %struct.anon.179, ptr %44, i32 0, i32 2
  %47 = ptrtoint ptr %prio155 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %prio155, align 4
  %49 = ptrtoint ptr %44 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %44, align 8
  %call158 = tail call i32 @mlxsw_sp_acl_rulei_act_vlan(ptr noundef %mlxsw_sp, ptr noundef %rulei, i32 noundef 10, i16 noundef zeroext %50, i16 noundef zeroext %46, i8 noundef zeroext %48, ptr noundef %extack) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %sw.bb153.for.inc_crit_edge, label %sw.bb153.cleanup276_crit_edge

sw.bb153.cleanup276_crit_edge:                    ; preds = %sw.bb153
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

sw.bb153.for.inc_crit_edge:                       ; preds = %sw.bb153
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb166:                                         ; preds = %for.body
  %51 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0451, i32 0, i32 5
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %call167 = tail call i32 @mlxsw_sp_acl_rulei_act_priority(ptr noundef %mlxsw_sp, ptr noundef %rulei, i32 noundef %53, ptr noundef %extack) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %sw.bb166.for.inc_crit_edge, label %sw.bb166.cleanup276_crit_edge

sw.bb166.cleanup276_crit_edge:                    ; preds = %sw.bb166
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

sw.bb166.for.inc_crit_edge:                       ; preds = %sw.bb166
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb171:                                         ; preds = %for.body
  %54 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0451, i32 0, i32 5
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 8
  %mask = getelementptr inbounds %struct.flow_action_entry, ptr %act.0451, i32 0, i32 5, i32 0, i32 1
  %57 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mask, align 8
  %val = getelementptr inbounds %struct.anon.180, ptr %54, i32 0, i32 3
  %59 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val, align 4
  %offset173 = getelementptr inbounds %struct.anon.180, ptr %54, i32 0, i32 1
  %61 = ptrtoint ptr %offset173 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %offset173, align 4
  %call176 = tail call i32 @mlxsw_sp_acl_rulei_act_mangle(ptr noundef %mlxsw_sp, ptr noundef %rulei, i32 noundef %56, i32 noundef %62, i32 noundef %58, i32 noundef %60, ptr noundef %extack) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %sw.bb171.for.inc_crit_edge, label %sw.bb171.cleanup276_crit_edge

sw.bb171.cleanup276_crit_edge:                    ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

sw.bb171.for.inc_crit_edge:                       ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb187:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %police_act_count.0449)
  %tobool189.not = icmp eq i32 %police_act_count.0449, 0
  br i1 %tobool189.not, label %if.end199, label %do.body191

do.body191:                                       ; preds = %sw.bb187
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse_actions.__msg.28) #5
  %tobool193.not = icmp eq ptr %extack, null
  br i1 %tobool193.not, label %do.body191.cleanup276_crit_edge, label %if.then194

do.body191.cleanup276_crit_edge:                  ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

if.then194:                                       ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @mlxsw_sp_flower_parse_actions.__msg.28, ptr %extack, align 4
  br label %cleanup276

if.end199:                                        ; preds = %sw.bb187
  %rate_pkt_ps = getelementptr inbounds %struct.flow_action_entry, ptr %act.0451, i32 0, i32 5, i32 0, i32 3
  %64 = ptrtoint ptr %rate_pkt_ps to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %rate_pkt_ps, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %65)
  %tobool200.not = icmp eq i64 %65, 0
  br i1 %tobool200.not, label %cleanup242, label %do.body202

do.body202:                                       ; preds = %if.end199
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse_actions.__msg.29) #5
  %tobool204.not = icmp eq ptr %extack, null
  br i1 %tobool204.not, label %do.body202.cleanup276_crit_edge, label %if.then205

do.body202.cleanup276_crit_edge:                  ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

if.then205:                                       ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @mlxsw_sp_flower_parse_actions.__msg.29, ptr %extack, align 4
  br label %cleanup276

cleanup242:                                       ; preds = %if.end199
  %67 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0451, i32 0, i32 5
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 8
  %sub.i432 = add i32 %69, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i432)
  %tobool.not.i.i.i = icmp eq i32 %sub.i432, 0
  %70 = tail call i32 @llvm.ctlz.i32(i32 %sub.i432, i1 true) #5, !range !98
  %sub.i.i.i = sub nuw nsw i32 32, %70
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  %hw_index = getelementptr inbounds %struct.flow_action_entry, ptr %act.0451, i32 0, i32 1
  %71 = ptrtoint ptr %hw_index to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %hw_index, align 4
  %rate_bytes_ps = getelementptr inbounds %struct.flow_action_entry, ptr %act.0451, i32 0, i32 5, i32 0, i32 1
  %73 = ptrtoint ptr %rate_bytes_ps to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %rate_bytes_ps, align 8
  %call238 = tail call i32 @mlxsw_sp_acl_rulei_act_police(ptr noundef %mlxsw_sp, ptr noundef %rulei, i32 noundef %72, i64 noundef %74, i32 noundef %shl.i, ptr noundef %extack) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %cleanup242.for.inc_crit_edge, label %cleanup242.cleanup276_crit_edge

cleanup242.cleanup276_crit_edge:                  ; preds = %cleanup242
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

cleanup242.for.inc_crit_edge:                     ; preds = %cleanup242
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb244:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sample_act_count.0448)
  %tobool246.not = icmp eq i32 %sample_act_count.0448, 0
  br i1 %tobool246.not, label %if.end256, label %do.body248

do.body248:                                       ; preds = %sw.bb244
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse_actions.__msg.30) #5
  %tobool250.not = icmp eq ptr %extack, null
  br i1 %tobool250.not, label %do.body248.cleanup276_crit_edge, label %if.then251

do.body248.cleanup276_crit_edge:                  ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

if.then251:                                       ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @mlxsw_sp_flower_parse_actions.__msg.30, ptr %extack, align 4
  br label %cleanup276

if.end256:                                        ; preds = %sw.bb244
  %76 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0451, i32 0, i32 5
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 8
  %rate = getelementptr inbounds %struct.anon.185, ptr %76, i32 0, i32 1
  %79 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rate, align 4
  %trunc_size = getelementptr inbounds %struct.flow_action_entry, ptr %act.0451, i32 0, i32 5, i32 0, i32 1
  %81 = ptrtoint ptr %trunc_size to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %trunc_size, align 8
  %truncate = getelementptr inbounds %struct.anon.185, ptr %76, i32 0, i32 3
  %83 = ptrtoint ptr %truncate to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %truncate, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool257 = icmp ne i8 %84, 0
  %call258 = tail call i32 @mlxsw_sp_acl_rulei_act_sample(ptr noundef %mlxsw_sp, ptr noundef %rulei, ptr noundef %block, ptr noundef %78, i32 noundef %80, i32 noundef %82, i1 noundef zeroext %tobool257, ptr noundef %extack) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %tobool259.not = icmp eq i32 %call258, 0
  br i1 %tobool259.not, label %if.end256.for.inc_crit_edge, label %if.end256.cleanup276_crit_edge

if.end256.cleanup276_crit_edge:                   ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

if.end256.for.inc_crit_edge:                      ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body262:                                       ; preds = %for.body
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_flower_parse_actions.__msg.31) #5
  %tobool264.not = icmp eq ptr %extack, null
  br i1 %tobool264.not, label %do.body262.if.end267_crit_edge, label %if.then265

do.body262.if.end267_crit_edge:                   ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end267

if.then265:                                       ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @mlxsw_sp_flower_parse_actions.__msg.31, ptr %extack, align 4
  br label %if.end267

if.end267:                                        ; preds = %if.then265, %do.body262.if.end267_crit_edge
  %bus_info = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  %86 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bus_info, align 4
  %dev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.32) #8
  br label %cleanup276

for.inc:                                          ; preds = %if.end256.for.inc_crit_edge, %cleanup242.for.inc_crit_edge, %sw.bb171.for.inc_crit_edge, %sw.bb166.for.inc_crit_edge, %sw.bb153.for.inc_crit_edge, %cleanup150.for.inc_crit_edge, %cleanup128.for.inc_crit_edge, %if.end83.for.inc_crit_edge, %sw.bb65.for.inc_crit_edge, %if.end57, %sw.bb.for.inc_crit_edge
  %sample_act_count.1 = phi i32 [ 1, %if.end256.for.inc_crit_edge ], [ %sample_act_count.0448, %cleanup242.for.inc_crit_edge ], [ %sample_act_count.0448, %sw.bb171.for.inc_crit_edge ], [ %sample_act_count.0448, %sw.bb166.for.inc_crit_edge ], [ %sample_act_count.0448, %sw.bb153.for.inc_crit_edge ], [ %sample_act_count.0448, %cleanup150.for.inc_crit_edge ], [ %sample_act_count.0448, %cleanup128.for.inc_crit_edge ], [ %sample_act_count.0448, %sw.bb65.for.inc_crit_edge ], [ %sample_act_count.0448, %sw.bb.for.inc_crit_edge ], [ %sample_act_count.0448, %if.end83.for.inc_crit_edge ], [ %sample_act_count.0448, %if.end57 ]
  %police_act_count.1 = phi i32 [ %police_act_count.0449, %if.end256.for.inc_crit_edge ], [ 1, %cleanup242.for.inc_crit_edge ], [ %police_act_count.0449, %sw.bb171.for.inc_crit_edge ], [ %police_act_count.0449, %sw.bb166.for.inc_crit_edge ], [ %police_act_count.0449, %sw.bb153.for.inc_crit_edge ], [ %police_act_count.0449, %cleanup150.for.inc_crit_edge ], [ %police_act_count.0449, %cleanup128.for.inc_crit_edge ], [ %police_act_count.0449, %sw.bb65.for.inc_crit_edge ], [ %police_act_count.0449, %sw.bb.for.inc_crit_edge ], [ %police_act_count.0449, %if.end83.for.inc_crit_edge ], [ %police_act_count.0449, %if.end57 ]
  %mirror_act_count.1 = phi i32 [ %mirror_act_count.0450, %if.end256.for.inc_crit_edge ], [ %mirror_act_count.0450, %cleanup242.for.inc_crit_edge ], [ %mirror_act_count.0450, %sw.bb171.for.inc_crit_edge ], [ %mirror_act_count.0450, %sw.bb166.for.inc_crit_edge ], [ %mirror_act_count.0450, %sw.bb153.for.inc_crit_edge ], [ 1, %cleanup150.for.inc_crit_edge ], [ %mirror_act_count.0450, %cleanup128.for.inc_crit_edge ], [ %mirror_act_count.0450, %sw.bb65.for.inc_crit_edge ], [ %mirror_act_count.0450, %sw.bb.for.inc_crit_edge ], [ %mirror_act_count.0450, %if.end83.for.inc_crit_edge ], [ %mirror_act_count.0450, %if.end57 ]
  %inc274 = add nuw i32 %i.0447, 1
  %arrayidx275 = getelementptr %struct.flow_action, ptr %flow_action, i32 0, i32 1, i32 %inc274
  %90 = ptrtoint ptr %flow_action to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flow_action, align 8
  %cmp = icmp ult i32 %inc274, %91
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup276_crit_edge

for.inc.cleanup276_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup276

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup276:                                       ; preds = %for.inc.cleanup276_crit_edge, %if.end267, %if.end256.cleanup276_crit_edge, %if.then251, %do.body248.cleanup276_crit_edge, %cleanup242.cleanup276_crit_edge, %if.then205, %do.body202.cleanup276_crit_edge, %if.then194, %do.body191.cleanup276_crit_edge, %sw.bb171.cleanup276_crit_edge, %sw.bb166.cleanup276_crit_edge, %sw.bb153.cleanup276_crit_edge, %cleanup150.cleanup276_crit_edge, %if.then140, %do.body137.cleanup276_crit_edge, %cleanup128.cleanup276_crit_edge, %if.end113.cleanup276_crit_edge, %if.then108, %do.body105.cleanup276_crit_edge, %if.then91, %do.body88.cleanup276_crit_edge, %if.then81, %if.then72, %do.body69.cleanup276_crit_edge, %if.then52, %do.body49.cleanup276_crit_edge, %if.then38, %do.body35.cleanup276_crit_edge, %if.then26, %do.body23.cleanup276_crit_edge, %if.end19.cleanup276_crit_edge, %if.then16, %do.body.cleanup276_crit_edge, %if.then9.cleanup276_crit_edge, %if.then5.i, %do.body.i.cleanup276_crit_edge, %entry.cleanup276_crit_edge
  %retval.9 = phi i32 [ -95, %if.end267 ], [ %1, %entry.cleanup276_crit_edge ], [ %call10, %if.then9.cleanup276_crit_edge ], [ -95, %if.then16 ], [ -95, %do.body.cleanup276_crit_edge ], [ %call20, %if.then26 ], [ %call20, %do.body23.cleanup276_crit_edge ], [ %call66, %if.then72 ], [ %call66, %do.body69.cleanup276_crit_edge ], [ -95, %if.then251 ], [ -95, %do.body248.cleanup276_crit_edge ], [ -95, %do.body.i.cleanup276_crit_edge ], [ -95, %if.then5.i ], [ %call46, %do.body49.cleanup276_crit_edge ], [ %call46, %if.then52 ], [ -95, %do.body35.cleanup276_crit_edge ], [ -95, %if.then38 ], [ %call85, %do.body88.cleanup276_crit_edge ], [ %call85, %if.then91 ], [ %31, %if.then81 ], [ -95, %do.body105.cleanup276_crit_edge ], [ -95, %if.then108 ], [ -95, %if.then140 ], [ -95, %do.body137.cleanup276_crit_edge ], [ -95, %if.then194 ], [ -95, %do.body191.cleanup276_crit_edge ], [ -95, %if.then205 ], [ -95, %do.body202.cleanup276_crit_edge ], [ 0, %if.end19.cleanup276_crit_edge ], [ %call238, %cleanup242.cleanup276_crit_edge ], [ %call176, %sw.bb171.cleanup276_crit_edge ], [ %call158, %sw.bb153.cleanup276_crit_edge ], [ %call146, %cleanup150.cleanup276_crit_edge ], [ %call124, %cleanup128.cleanup276_crit_edge ], [ %call167, %sw.bb166.cleanup276_crit_edge ], [ %call258, %if.end256.cleanup276_crit_edge ], [ 0, %for.inc.cleanup276_crit_edge ], [ %call120, %if.end113.cleanup276_crit_edge ]
  ret i32 %retval.9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_meta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_sp_port_dev_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv6_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ports(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_tcp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ip(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_rulei_act_count(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_rulei_act_terminate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_rulei_act_drop(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_rulei_act_trap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlxsw_sp_acl_ruleset_group_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_rulei_act_jump(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_acl_dummy_fid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlxsw_sp_fid_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_rulei_act_fid_set(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_rulei_act_fwd(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_rulei_act_mirror(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_rulei_act_vlan(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_rulei_act_priority(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_rulei_act_mangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_rulei_act_police(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_rulei_act_sample(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !36, !38, !39, !40, !41, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 673, i32 6}
!2 = !{ptr @mlxsw_sp_flower_mall_prio_check.__msg, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 570, i32 3}
!4 = !{ptr @mlxsw_sp_flower_mall_prio_check.__msg.1, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 574, i32 3}
!6 = !{ptr @mlxsw_sp_flower_mall_prio_check.__msg.2, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 578, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 445, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mlxsw_sp_flower_parse._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @mlxsw_sp_flower_parse._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @mlxsw_sp_flower_parse.__msg, !16, !"__msg", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 446, i32 3}
!17 = !{ptr @mlxsw_sp_flower_parse.__msg.7, !18, !"__msg", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 513, i32 4}
!19 = !{ptr @mlxsw_sp_flower_parse_meta.__msg, !20, !"__msg", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 253, i32 3}
!21 = !{ptr @mlxsw_sp_flower_parse_meta.__msg.8, !22, !"__msg", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 260, i32 3}
!23 = !{ptr @mlxsw_sp_flower_parse_meta.__msg.9, !24, !"__msg", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 265, i32 3}
!25 = !{ptr @mlxsw_sp_flower_parse_meta.__msg.10, !26, !"__msg", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 271, i32 3}
!27 = !{ptr @mlxsw_sp_flower_parse_ports.__msg, !28, !"__msg", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 342, i32 3}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 343, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mlxsw_sp_flower_parse_ports._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @mlxsw_sp_flower_parse_ports._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @mlxsw_sp_flower_parse_tcp.__msg, !35, !"__msg", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 369, i32 3}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 370, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mlxsw_sp_flower_parse_tcp._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @mlxsw_sp_flower_parse_tcp._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @mlxsw_sp_flower_parse_tcp.__msg.15, !42, !"__msg", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 377, i32 3}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 378, i32 3}
!45 = !{ptr @mlxsw_sp_flower_parse_tcp._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mlxsw_sp_flower_parse_tcp._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @mlxsw_sp_flower_parse_ip.__msg, !48, !"__msg", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 400, i32 3}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 401, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mlxsw_sp_flower_parse_ip._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @mlxsw_sp_flower_parse_ip._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @mlxsw_sp_flower_parse_actions.__msg, !55, !"__msg", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 44, i32 3}
!56 = !{ptr @mlxsw_sp_flower_parse_actions.__msg.21, !57, !"__msg", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 53, i32 5}
!58 = !{ptr @mlxsw_sp_flower_parse_actions.__msg.22, !59, !"__msg", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 61, i32 5}
!60 = !{ptr @mlxsw_sp_flower_parse_actions.__msg.23, !61, !"__msg", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 68, i32 5}
!62 = !{ptr @mlxsw_sp_flower_parse_actions.__msg.24, !63, !"__msg", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 85, i32 5}
!64 = !{ptr @mlxsw_sp_flower_parse_actions.__msg.25, !65, !"__msg", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 103, i32 5}
!66 = !{ptr @mlxsw_sp_flower_parse_actions.__msg.26, !67, !"__msg", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 114, i32 5}
!68 = !{ptr @mlxsw_sp_flower_parse_actions.__msg.27, !69, !"__msg", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 141, i32 5}
!70 = !{ptr @mlxsw_sp_flower_parse_actions.__msg.28, !71, !"__msg", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 190, i32 5}
!72 = !{ptr @mlxsw_sp_flower_parse_actions.__msg.29, !73, !"__msg", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 195, i32 5}
!74 = !{ptr @mlxsw_sp_flower_parse_actions.__msg.30, !75, !"__msg", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 215, i32 5}
!76 = !{ptr @mlxsw_sp_flower_parse_actions.__msg.31, !77, !"__msg", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 231, i32 4}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_flower.c", i32 232, i32 4}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mlxsw_sp_flower_parse_actions._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @mlxsw_sp_flower_parse_actions._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @flow_action_mixed_hw_stats_check.__msg, !84, !"__msg", i1 false, i1 false}
!84 = !{!"../include/net/flow_offload.h", i32 323, i32 4}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/net/flow_offload.h", i32 334, i32 2}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"auto-init"}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i32 0, i32 33}
!99 = !{i8 0, i8 2}
